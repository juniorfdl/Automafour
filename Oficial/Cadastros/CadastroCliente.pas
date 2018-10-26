unit CadastroCliente;

interface

uses
  Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, RXCtrls, StdCtrls, Mask,
  Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, jpeg, DBCtrls, RxDBComb,
  VarSYS, FormResources, ToolEdit, RXDBCtrl, CurrEdit, MemTable, DBActns, ActnList, ImgList,
  EDBNum, OleCtrls, RxLookup, UCrpe32, Placemnt, ExtDlgs, ppDB, ppDBPipe,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls, ppPrnabl, ppBands,
  ppCache, UnSoundPlay, ppStrtch, ppRichTx, Serial, AdvOfficeStatusBar, ppViewr,
  AdvOfficeStatusBarStylers, AdvPanel, ppDBBDE, XMLDoc, XMLIntf, ACBrBase,
  ACBrSocket, ACBrCEP;

type
  TProtectDBGrid = class(TDBGrid);
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
    SQLTemplateCLIEN2RENDA: TFloatField;
    SQLTemplateCLIEN2LIMITECRED: TFloatField;
    SQLTemplateCLIECESTADOCIVIL: TStringField;
    SQLTemplateCLIEA60CONJUGE: TStringField;
    SQLTemplateCLIEN2CONJUGERENDA: TFloatField;
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
    DBGridItens: TDBGrid;
    SQLItem: TRxQuery;
    DSSQLItem: TDataSource;
    SQLParcelasCUPOA13ID: TStringField;
    SQLParcelasCLIEA13ID: TStringField;
    SQLParcelasCTRCA13ID: TStringField;
    SQLParcelasCTRCINROPARC: TIntegerField;
    SQLParcelasCTRCDVENC: TDateTimeField;
    SQLParcelasCTRCDEMIS: TDateTimeField;
    SQLParcelasCTRCDULTREC: TDateTimeField;
    SQLParcelasCTRCCSTATUS: TStringField;
    SQLParcelasEMPRICODULTREC: TIntegerField;
    SQLParcelasCUPOCTIPOPADRAO: TStringField;
    SQLParcelasValorPagar: TFloatField;
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
    TblDadosCompraCTRCDULTREC: TDateTimeField;
    TblDadosCompraCTRCCSTATUS: TStringField;
    TblDadosCompraEMPRICODULTREC: TIntegerField;
    TblDadosCompraCUPOCTIPOPADRAO: TStringField;
    TblDadosCompraNUMEICOD: TIntegerField;
    TblDadosCompraValorPagar: TFloatField;
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
    SQLCadernoCLCAN2VLRCREDITO: TFloatField;
    SQLCadernoCLCAN2VLRDEBITO: TFloatField;
    SQLCadernoCUPOA13ID: TStringField;
    SQLCadernoCLCAA60HIST: TStringField;
    TblCadernoCliente: TTable;
    TblCadernoClienteCLIEA13ID: TStringField;
    TblCadernoClienteCLCADLANC: TDateTimeField;
    TblCadernoClienteCLCAICOD: TIntegerField;
    TblCadernoClienteCLCAN2VLRCREDITO: TFloatField;
    TblCadernoClienteCLCAN2VLRDEBITO: TFloatField;
    TblCadernoClienteCUPOA13ID: TStringField;
    TblCadernoClienteCLCAA60HIST: TStringField;
    BatchMoveCaderno: TBatchMove;
    SQLItemPRODICOD: TIntegerField;
    SQLItemQTDE: TFloatField;
    SQLItemVLRUNIT: TFloatField;
    SQLItemVLRDESC: TFloatField;
    SQLItemSTATUS: TStringField;
    SQLItemEMPRICOD: TIntegerField;
    SQLItemCLIEA13ID: TStringField;
    SQLItemDEMISSAO: TDateTimeField;
    SQLItemPRODA60DESCR: TStringField;
    SQLParcelasNOFIA13ID: TStringField;
    TblDadosCompraNOFIA13ID: TStringField;
    TblDadosCompraDocumento: TStringField;
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
    DBEditCgc: TDBEdit;
    DBEditIE: TDBEdit;
    PanelDocFis: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label80: TLabel;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    PanelFisica: TPanel;
    Label6: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    RxDBComboBox2: TRxDBComboBox;
    FormStorage: TFormStorage;
    MnCartasAvisos: TMenuItem;
    Picture: TOpenPictureDialog;
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
    Label50: TLabel;
    Label23: TLabel;
    AcessaMotBloq: TSpeedButton;
    DBEdit33: TRxDBComboBox;
    SQLItemDOCUMENTO: TStringField;
    PanelRodape: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label69: TLabel;
    Label22: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    ComboTipoCliente: TRxDBLookupCombo;
    EvDBNumEdit2: TEvDBNumEdit;
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
    Label76: TLabel;
    DBEdit51: TDBEdit;
    TblCarneTaxaCrediario: TFloatField;
    TblCarneValorDesconto: TFloatField;
    TblCarneAcrescimo: TFloatField;
    TblCarneEntrada: TFloatField;
    SQLCartaPrimeiroAvisoPRAVCENVIADO: TStringField;
    SQLCartaAvisoSPCAVSPCENVIADO: TStringField;
    SQLCartaSegundoAvisoSGAVCENVIADO: TStringField;
    Label77: TLabel;
    DBDateEdit8: TDBDateEdit;
    Label49: TLabel;
    DBEdit32: TDBEdit;
    TblItensComprados: TTable;
    TblItensCompradosDOCUMENTO: TStringField;
    TblItensCompradosPRODICOD: TIntegerField;
    TblItensCompradosQTDE: TFloatField;
    TblItensCompradosVLRUNIT: TFloatField;
    TblItensCompradosVLRDESC: TFloatField;
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
    Button10: TRxSpeedButton;
    PopupMenuParcelas: TPopupMenu;
    LanarHistrico1: TMenuItem;
    PageControlDadosCompra: TPageControl;
    TabCarne: TTabSheet;
    TabCheques: TTabSheet;
    DBGridDadosCompra: TDBGrid;
    GroupBoxCupomObs: TGroupBox;
    GroupAvisos: TGroupBox;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    GroupBox2: TGroupBox;
    Label25: TLabel;
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
    SQLChequesCTRCN2VLR: TFloatField;
    SQLChequesNUMEICOD: TIntegerField;
    SQLChequesCTRCDULTREC: TDateTimeField;
    SQLChequesCTRCN2TOTREC: TFloatField;
    SQLChequesCTRCN2TOTJUROREC: TFloatField;
    SQLChequesCTRCN2TOTMULTAREC: TFloatField;
    SQLChequesCTRCN2TOTDESCREC: TFloatField;
    SQLChequesEMPRICODULTREC: TIntegerField;
    SQLChequesCUPOA13ID: TStringField;
    SQLChequesCTRCA5TIPOPADRAO: TStringField;
    SQLChequesCTRCN2TXMULTA: TFloatField;
    SQLChequesCTRCN2TXJURO: TFloatField;
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
    SQLDadosCompraCTRCDULTREC: TDateTimeField;
    SQLDadosCompraCTRCN2TOTREC: TFloatField;
    SQLDadosCompraCTRCCSTATUS: TStringField;
    SQLDadosCompraEMPRICODULTREC: TIntegerField;
    SQLDadosCompraCUPOCTIPOPADRAO: TStringField;
    SQLDadosCompraNUMEICOD: TIntegerField;
    SQLDadosCompraValorPagar: TFloatField;
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
    Label97: TLabel;
    BtnPlanoRecebimento: TSpeedButton;
    GroupBox9: TGroupBox;
    ComboProfissao: TRxDBLookupCombo;
    SQLProfissao: TRxQuery;
    DSSQLProfissao: TDataSource;
    SQLProfissaoPROFICOD: TIntegerField;
    SQLProfissaoPROFA60DESCR: TStringField;
    SQLProfissaoPENDENTE: TStringField;
    SQLProfissaoREGISTRO: TDateTimeField;
    ComboMotivoBloqueio: TRxDBLookupCombo;
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
    ComboPlano: TRxDBLookupCombo;
    DSSQLPlanoRecebimento: TDataSource;
    Label78: TLabel;
    DBEdit10: TDBEdit;
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
    TblFichaClienteCLIEN2RENDA: TFloatField;
    TblFichaClienteCLIEN2LIMITECRED: TFloatField;
    TblFichaClienteCLIECESTADOCIVIL: TStringField;
    TblFichaClienteCLIEA60CONJUGE: TStringField;
    TblFichaClienteCLIEA60CONJUGEMAE: TStringField;
    TblFichaClienteCLIEN2CONJUGERENDA: TFloatField;
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
    TblFichaClienteCLIEN2VLRALUGUEL: TFloatField;
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
    SQLTemplateCLIEA30CODCONTABIL: TStringField;
    GroupBox11: TGroupBox;
    DBEdit27: TDBEdit;
    Label64: TLabel;
    Label108: TLabel;
    SQLParcelasPDVDA13ID: TStringField;
    SQLDadosCompraPDVDA13ID: TStringField;
    TblDadosCompraPDVDA13ID: TStringField;
    AcessaTipoCliente: TSpeedButton;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label109: TLabel;
    ComboRota: TRxDBLookupCombo;
    AcessaRota: TSpeedButton;
    SQLRota: TRxQuery;
    SQLRotaROTAICOD: TIntegerField;
    SQLRotaROTAA60NOME: TStringField;
    DSSQLRota: TDataSource;
    SQLTemplateROTAICOD: TIntegerField;
    TblItensCompradosVLRTOTITEM: TFloatField;
    MnCorrigeemailparaminusculo: TMenuItem;
    SQLTemplateRAMOICOD: TIntegerField;
    SQLTemplateSRAMICOD: TIntegerField;
    DSSQLRamo: TDataSource;
    SQLRamo: TRxQuery;
    SQLRamoRAMOICOD: TIntegerField;
    SQLRamoRAMOA30DESCR: TStringField;
    SQLSubRamo: TRxQuery;
    SQLSubRamoRAMOICOD: TIntegerField;
    SQLSubRamoSRAMICOD: TIntegerField;
    SQLSubRamoSRAMA30DESCR: TStringField;
    DSSQLSubRamo: TDataSource;
    Label110: TLabel;
    ComboRamo: TRxDBLookupCombo;
    SQLTemplateCLIEINDIACHQSJURO: TIntegerField;
    Label112: TLabel;
    DBEdit34: TDBEdit;
    DBMemo1: TDBMemo;
    Label26: TLabel;
    TotalMulta: TCurrencyEdit;
    Label27: TLabel;
    TotalDesconto: TCurrencyEdit;
    TotalJuros: TCurrencyEdit;
    CKAviso1: TCheckBox;
    CKAviso2: TCheckBox;
    LbAvisos: TLabel;
    CKAvisoSPC: TCheckBox;
    SQLParcelasBANCA5CODCHQ: TStringField;
    SQLParcelasCTRCA15NROCHQ: TStringField;
    TblDadosCompraBANCA5CODCHQ: TStringField;
    TblDadosCompraCTRCA15NROCHQ: TStringField;
    SQLDadosCompraBANCA5CODCHQ: TStringField;
    SQLDadosCompraCTRCA15NROCHQ: TStringField;
    DBEdit35: TDBEdit;
    Label28: TLabel;
    Label61: TLabel;
    ComboAtivo: TRxDBComboBox;
    SQLTemplateCLIECATIVO: TStringField;
    SQLParcelasALINICOD: TIntegerField;
    TblDadosCompraALINICOD: TIntegerField;
    SQLDadosCompraALINICOD: TIntegerField;
    SQLParcelasCHEQDEVOLVIDO: TStringField;
    TblDadosCompraCHEQDEVOLVIDO: TStringField;
    SQLDadosCompraCHEQDEVOLVIDO: TStringField;
    MnExtratoCliente: TMenuItem;
    SQLTemplateCLIECVNDCHEQ: TStringField;
    SQLTemplateCLIECVNDCRED: TStringField;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    GroupLegenda: TGroupBox;
    Shape1: TShape;
    Label81: TLabel;
    Label82: TLabel;
    Shape2: TShape;
    Label113: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Label114: TLabel;
    Shape5: TShape;
    Label115: TLabel;
    Shape6: TShape;
    Label116: TLabel;
    TblCarneClienteDependente: TIntegerField;
    BloquearClientesqueestejamemSPC1: TMenuItem;
    Label117: TLabel;
    ComboTipoPrecoVenda: TRxDBComboBox;
    SQLTemplateCLIECTPPRCVENDA: TStringField;
    SQLTemplateCLIECCHEKCHEK: TStringField;
    Label118: TLabel;
    ComboChekChek: TRxDBComboBox;
    TblItensCompradosNroVolumes: TFloatField;
    SQLItemCUPOM: TIntegerField;
    Label119: TLabel;
    EvDBNumEdit4: TEvDBNumEdit;
    MnRecalcularoLimitedeCreditoInicial: TMenuItem;
    ReportTextos: TppReport;
    ppDetailBand8: TppDetailBand;
    ppTexto: TppRichText;
    MnContratoCredito: TMenuItem;
    SQLTemplateCLIEIMUNICODFED: TIntegerField;
    DBEdit49: TDBEdit;
    Label120: TLabel;
    MnProdutoscomDescontoporCliente: TMenuItem;
    SQLParcelasCTRCN2TOTDESCREC: TFloatField;
    SQLParcelasCTRCN2TOTJUROREC: TFloatField;
    SQLParcelasCTRCN2TOTMULTAREC: TFloatField;
    SQLParcelasCTRCN2TOTREC: TFloatField;
    SQLParcelasCTRCN2TXJURO: TFloatField;
    SQLParcelasCTRCN2TXMULTA: TFloatField;
    SQLParcelasCTRCN2VLR: TFloatField;
    TblDadosCompraCTRCN2TOTDESCREC: TFloatField;
    TblDadosCompraCTRCN2TOTJUROREC: TFloatField;
    TblDadosCompraCTRCN2TOTMULTAREC: TFloatField;
    TblDadosCompraCTRCN2TOTREC: TFloatField;
    TblDadosCompraCTRCN2TXJURO: TFloatField;
    TblDadosCompraCTRCN2TXMULTA: TFloatField;
    TblDadosCompraCTRCN2VLR: TFloatField;
    SQLDadosCompraCTRCN2TOTDESCREC: TFloatField;
    SQLDadosCompraCTRCN2TOTJUROREC: TFloatField;
    SQLDadosCompraCTRCN2TOTMULTAREC: TFloatField;
    SQLDadosCompraCTRCN2TXJURO: TFloatField;
    SQLDadosCompraCTRCN2TXMULTA: TFloatField;
    SQLDadosCompraCTRCN2VLR: TFloatField;
    TblDadosCompraCUPON2TOTITENS: TFloatField;
    SQLDadosCompraCUPON2TOTITENS: TFloatField;
    SQLProfissional: TRxQuery;
    dsSQLProfissional: TDataSource;
    SQLProfissionalPROFA13ID: TStringField;
    SQLProfissionalPROFA60NOME: TStringField;
    SQLTemplatePROFA13ID: TStringField;
    AcessaProfissional: TSpeedButton;
    TblItensCompradosCUPOM: TIntegerField;
    SQLTemplateTPDCICOD: TIntegerField;
    SQLTemplatePORTICOD: TIntegerField;
    SQLTemplateDIAVENCTO: TStringField;
    SQLTemplateCTRCN2VLR: TFloatField;
    SQLTemplatePLCTA15COD: TStringField;
    dsSQLTipoDoc: TDataSource;
    SQLTipoDoc: TRxQuery;
    SQLTipoDocTPDCICOD: TIntegerField;
    SQLTipoDocTPDCA60DESCR: TStringField;
    Label24: TLabel;
    ComboTipoDoc: TRxDBLookupCombo;
    ComboPortador: TRxDBLookupCombo;
    Label98: TLabel;
    SQLPortador: TRxQuery;
    dsSQLPortador: TDataSource;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    dsSQLPlanoConta: TDataSource;
    SQLPlanoConta: TRxQuery;
    SQLPlanoContaPLCTA15COD: TStringField;
    SQLPlanoContaPLCTA60DESCR: TStringField;
    Label99: TLabel;
    ComboPlanoContas: TRxDBLookupCombo;
    EvDBNumEdit5: TEvDBNumEdit;
    Label100: TLabel;
    Button12: TRxSpeedButton;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    MemoOBS: TDBMemo;
    Label121: TLabel;
    comboProfissional: TRxDBLookupCombo;
    DBMemo2: TDBMemo;
    TabSheet4: TTabSheet;
    DBMemo3: TDBMemo;
    SQLTemplateCLIETOBS1: TMemoField;
    SQLTemplateCLIETOBSCOB: TBlobField;
    SQLTemplateCLIETOBS2: TBlobField;
    RadioIgnoracheque: TCheckBox;
    DBComboBox1: TDBComboBox;
    SQLCidades: TRxQuery;
    SQLTemplateCLIEICODPAIS: TIntegerField;
    Label75: TLabel;
    DBEdit9: TDBEdit;
    SQLTemplateCLIEA5NROENDRES: TStringField;
    Label91: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    SQLTemplateCLIECENQUADRAMENTO: TStringField;
    Button13: TRxSpeedButton;
    TotalJuroDev: TCurrencyEdit;
    SQLTemplateVendedorLookup: TStringField;
    ComboVendedor: TRxDBLookupCombo;
    Label96: TLabel;
    AcessaVendedor: TSpeedButton;
    Button14: TRxSpeedButton;
    SQLTemplateCLIEDREVISAO: TDateTimeField;
    rxComboPais: TRxDBComboBox;
    Label21: TLabel;
    DBDateEdit9: TDBDateEdit;
    Label92: TLabel;
    CorrigeCamposparaMaiusculo1: TMenuItem;
    ScrollBoxFoto: TScrollBox;
    Panel4: TPanel;
    FotoCliente: TImage;
    BtnLocalizar: TSpeedButton;
    btImprimeComprasCliente: TRxSpeedButton;
    btImpConferenciaDeposito: TRxSpeedButton;
    SQLClientePdvs: TRxQuery;
    MnCargaemmassaparaosPDVs: TMenuItem;
    TabCredito: TTabSheet;
    DBGrid1: TDBGrid;
    DSSQLCredito: TDataSource;
    SQLCredito: TRxQuery;
    SQLCreditoID: TIntegerField;
    SQLCreditoDATA: TDateTimeField;
    SQLCreditoCLIEA13ID: TStringField;
    SQLCreditoCUPOA13ID: TStringField;
    SQLCreditoVALORCREDITO: TFloatField;
    SQLCreditoVALORDEBITO: TFloatField;
    SQLCreditoHISTORICO: TStringField;
    RadioSomenteParcelasAbertas: TCheckBox;
    GroupBox5: TGroupBox;
    Label94: TLabel;
    Label101: TLabel;
    TotalDebitosAntecipados: TCurrencyEdit;
    TotalCreditosAntecipados: TCurrencyEdit;
    Label93: TLabel;
    SaldoTotalCreditosAntecipados: TCurrencyEdit;
    btCreditoResumido: TRxSpeedButton;
    PipeExtratoCreditoResumido: TppBDEPipeline;
    ppExtratoCreditoResumido: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine1: TppLine;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLbClienteExtratoCredito: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppLBSaldo: TppLabel;
    btCancelaCredito: TSpeedButton;
    ConsultaClienteSefaz1: TMenuItem;
    RxSpeedButton1: TRxSpeedButton;
    btnReceituario: TRxSpeedButton;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    RadioContribuinteJ: TDBRadioGroup;
    RadioContribuinteF: TDBRadioGroup;
    SQLTemplateTIPO_CONTRIBUINTE: TStringField;
    SQLTemplateIM: TStringField;
    Label79: TLabel;
    DBEdit11: TDBEdit;
    ACBrCEP1: TACBrCEP;
    btnBuscaCep: TBitBtn;
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
    procedure DBGridItensCellClick(Column: TColumn);
    procedure FichaCliente1Click(Sender: TObject);
    procedure DBEdit38KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    procedure MnGeracaoMalaDiretaClick(Sender: TObject);
    procedure ButtonCepClick(Sender: TObject);
    procedure DBEdit20KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButtonCepEmpresaClick(Sender: TObject);
    procedure DBEdit28KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButtonCepCobrClick(Sender: TObject);
    procedure DBGridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabelRetornarClick(Sender: TObject);
    procedure RadioFisJurClick(Sender: TObject);
    procedure DBEdit52KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MnCartasAvisosClick(Sender: TObject);
    procedure FotoClienteDblClick(Sender: TObject);
    procedure MnOcultaObservacaoClick(Sender: TObject);
    procedure DSSQLParcelasDataChange(Sender: TObject; Field: TField);
    procedure MnRelPlanilhadeVendasClick(Sender: TObject);
    procedure BtnPlanoRecebimentoClick(Sender: TObject);
    procedure SQLTemplateCLIEA14CGCChange(Sender: TField);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure MnFichaClienteResumidaClick(Sender: TObject);
    procedure BtnLocalizarClick(Sender: TObject);
    procedure ComboProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheetItensEnter(Sender: TObject);
    procedure TabSheetItensExit(Sender: TObject);
    procedure LanarHistrico1Click(Sender: TObject);
    procedure LancaHistorico(IDCliente, IDCupom, IDContasReceber, Parcela: string);
    procedure SQLChequesCalcFields(DataSet: TDataSet);
    procedure TabChequesShow(Sender: TObject);
    procedure TabCarneShow(Sender: TObject);
    procedure DBGridDadosCompraTitleClick(Column: TColumn);
    procedure SQLDadosCompraCalcFields(DataSet: TDataSet);
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
    procedure SQLDadosCompraAfterScroll(DataSet: TDataSet);
    procedure AcessaTipoClienteClick(Sender: TObject);
    procedure DBEditNomeExit(Sender: TObject);
    procedure MnCorrigeemailparaminusculoClick(Sender: TObject);
    procedure MnExtratoClienteClick(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BloquearClientesqueestejamemSPC1Click(Sender: TObject);
    procedure MnRecalcularoLimitedeCreditoInicialClick(Sender: TObject);
    procedure MnContratoCreditoClick(Sender: TObject);
    procedure MnProdutoscomDescontoporClienteClick(Sender: TObject);
    procedure AcessaProfissionalClick(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBEdit49Enter(Sender: TObject);
    procedure rxComboPaisExit(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure DBGridDadosCompraDblClick(Sender: TObject);
    procedure CorrigeCamposparaMaiusculo1Click(Sender: TObject);
    procedure btImprimeComprasClienteClick(Sender: TObject);
    procedure btImpConferenciaDepositoClick(Sender: TObject);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure MnCargaemmassaparaosPDVsClick(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure btCreditoResumidoClick(Sender: TObject);
    procedure ppExtratoCreditoResumidoPreviewFormCreate(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure btCancelaCreditoClick(Sender: TObject);
    procedure ListagemPersonalizada1Click(Sender: TObject);
    procedure ConsultaClienteSefaz1Click(Sender: TObject);
    procedure RxSpeedButton1Click(Sender: TObject);
    procedure ACBrCEP1BuscaEfetuada(Sender: TObject);
    procedure btnBuscaCepClick(Sender: TObject);
  private
    { Private declarations }
    VlrSaldo,
      VlrJuro,
      VlrMulta,
      PerJurDia: double;
    RGAlterado,
      CPFAlterado,
      CGCAlterado,
      CalcTot: boolean;
    DataBase: TDateTime;
    NroCupom: string;
    procedure BuscarCep;
    function EnviaClientePDVs(Tipo: string): boolean;
    procedure MontaDadosCompra;
    procedure MontaDadosCheque;
    function consultarCadastro(UF, Documento: string): string;
  public
    Produto: string;

    { Public declarations }
  end;

var
  FormCadastroCliente: TFormCadastroCliente;

implementation

uses //CadastroVendedor, TelaClienteHistorico, RelatorioExtratoCliente
  DataModulo, CadastroProfissao, CadastroMotivoBloqueio, CadastroBanco, CadastroClienteReferencia, CadastroClienteDependente,
  CadastroClienteContato, UnitLibrary, TelaConsultaTabelaPreco, CadastroConsulta, CadastroCep, CadastroClienteExtintor,
  CadastroClienteHistorico, TelaConsultaPlanoRecebimento, TelaNegociacaoDivida, WaitWindow, TelaDadosTeleEntrega,
  CadastroTipoCliente, TelaGeracaoMalaDireta, CadastroClienteProduto, CadastroProfissional, CadastroClienteVeiculos,
  TelaDetalheRecebimento, TelaClienteHistorico, CadastroAnimais, TelaReceituario;
     //CadastroAnimais, TelaDetalheRecebimento;


{$R *.DFM}

procedure TFormCadastroCliente.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CLIENTE';
  DataBase := Date;
  SQLProfissao.Open;
  SQLProfissional.Open;
  SQLMotivoBloqueio.Open;
  SQLVendedor.Open;
  SQLPlanoRecebimento.Open;
  SQLRota.Open;
  SQLRamo.Open;
  SQLSubRamo.Open;
  SQLTipoDoc.Open;
  SQLPortador.Open;
  SQLPlanoConta.Open;
  PageControlEndercos.ActivePageIndex := 0;
  if not dm.SQLConfigCrediario.Active then
    DM.SQLConfigCrediario.Open;

  if not dm.SQLConfigGeral.Active then
    dm.SQLConfigGeral.Open;
end;

procedure TFormCadastroCliente.MontaDadosCompra;
var
  JuroParc,
    MultaParc,
    TxCobrParc,
    DescParc,
    MyTotal,
    Saldo: double;
  Documento: string;
  TotDiasAtraso,
    i,
    NroParcAtraso: integer;
  Vencimento: TDate;
begin
  if PagePrincipal.ActivePage <> TabSheetDadosCompra then
    exit;

  NroParcelasAbertas.Value := 0;
  TotalJuros.Value := 0;
  TotalMulta.Value := 0;
  TotalDesconto.Value := 0;
  TotalVencidas.Value := 0;
  TotalJuroDev.Value := 0;
  TotalCompras.Value := 0;
  DivitaAtual.Value := 0;

  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Clear;
  DM.SQLTemplate.SQL.Add('Select');
  DM.SQLTemplate.SQL.Add('Sum(CTRCN2TOTJUROREC) as TOTALJUROS,');
  DM.SQLTemplate.SQL.Add('Sum(CTRCN2TOTMULTAREC) as TOTALMULTA,');
  DM.SQLTemplate.SQL.Add('Sum(CTRCN2TOTDESCREC) as TOTALDESC,');
  DM.SQLTemplate.SQL.Add('Sum(CTRCN2VLR-CTRCN2TOTREC) as TOTALAPAGAR,');
  DM.SQLTemplate.SQL.Add('Sum(CTRCN2TOTREC) as TOTALPAGO');
  DM.SQLTemplate.SQL.Add('From CONTASRECEBER');
  DM.SQLTemplate.SQL.Add('Where CLIEA13ID = ''' + SQLTemplateCLIEA13ID.AsString + '''');
  DM.SQLTemplate.SQL.Add(' And (CTRCCSTATUS = ''A'' OR CTRCCSTATUS = ''N'')');
  DM.SQLTemplate.SQL.Add(' And (PDVDA13ID = '''' OR PDVDA13ID is Null)');
  if RadioSomenteParcelasAbertas.Checked then
    Dm.SQLTemplate.SQL.Add(' and (CONTASRECEBER.CTRCN2VLR-CONTASRECEBER.CTRCN2TOTREC>0) ');
  if RadioIgnoracheque.Checked then
    Dm.SQLTemplate.SQL.Add(' and ( CONTASRECEBER.CTRCA5TIPOPADRAO <> ''CHQ'') ');
//  DM.SQLTemplate.SQL.Add(' And (CTRCCTIPOREGISTRO = ''N'' OR CTRCCTIPOREGISTRO is Null or CTRCCTIPOREGISTRO = '''') And (PDVDA13ID = '''' OR PDVDA13ID is Null)') ;
  DM.SQLTemplate.Open;
  if DM.SQLTemplate.FieldByName('TOTALJUROS').Value > 0 then
    TotalJuros.Value := DM.SQLTemplate.FieldByName('TOTALJUROS').Value;
  if DM.SQLTemplate.FieldByName('TOTALMULTA').Value > 0 then
    TotalMulta.Value := DM.SQLTemplate.FieldByName('TOTALMULTA').Value;
  if DM.SQLTemplate.FieldByName('TOTALDESC').Value > 0 then
    TotalDesconto.Value := DM.SQLTemplate.FieldByName('TOTALDESC').Value;

  TotalJuros.Value := TotalJuros.Value + TotalMulta.Value;

  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Clear;
  DM.SQLTemplate.SQL.Add('select');
  DM.SQLTemplate.SQL.Add('Count(*) as NROPARCVENC');
  DM.SQLTemplate.SQL.Add('from CONTASRECEBER');
  DM.SQLTemplate.SQL.Add('where CLIEA13ID = ''' + SQLTemplateCLIEA13ID.AsString + '''');
  DM.SQLTemplate.SQL.Add(' and (CTRCN2VLR-CTRCN2TOTREC) > 0');
  DM.SQLTemplate.SQL.Add(' and (CTRCCSTATUS = ''A'' OR CTRCCSTATUS = ''N'')');
  DM.SQLTemplate.SQL.Add(' and (PDVDA13ID = '''' OR PDVDA13ID is Null)');
  if RadioIgnoracheque.Checked then
    Dm.SQLTemplate.SQL.Add(' and (CONTASRECEBER.CTRCA5TIPOPADRAO <> ''CHQ'') ');

  //  DM.SQLTemplate.SQL.Add(' and (CTRCCTIPOREGISTRO = ''N'' OR CTRCCTIPOREGISTRO is Null or CTRCCTIPOREGISTRO = '''') and (PDVDA13ID = '''' or PDVDA13ID is null)') ;
  DM.SQLTemplate.Open;
  if DM.SQLTemplate.FieldByName('NROPARCVENC').Value > 0 then
    NroParcelasAbertas.Value := DM.SQLTemplate.FieldByName('NROPARCVENC').Value;

  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Clear;
  DM.SQLTemplate.SQL.Add('select Count(CLIEA13ID) as NROCOMPRAS,');
  DM.SQLTemplate.SQL.Add('sum(CUPON2TOTITENS+CUPON3CREDTAXA+CUPON2ACRESC-CUPON2DESC-CUPON3BONUSTROCA) as TOTALCOMPRAS');
  DM.SQLTemplate.SQL.Add('from CUPOM');
  DM.SQLTemplate.SQL.Add('where CLIEA13ID = ''' + SQLTemplateCLIEA13ID.AsString + '''');
  DM.SQLTemplate.SQL.Add(' and (CUPOCSTATUS = ''A'' or CUPOCSTATUS = ''N'')');
  if RadioIgnoracheque.Checked then
    Dm.SQLTemplate.SQL.Add(' and (CUPOCTIPOPADRAO NOT CONTAINING ''CHQ'') ');

  DM.SQLTemplate.Open;
  if DM.SQLTemplate.FieldByName('NROCOMPRAS').Value > 0 then
    NroCompras.Value := DM.SQLTemplate.FieldByName('NROCOMPRAS').Value;
  if DM.SQLTemplate.FieldByName('TOTALCOMPRAS').Value > 0 then
    TotalCompras.Value := DM.SQLTemplate.FieldByName('TOTALCOMPRAS').Value;

  SQLParcelas.Close;
  SQLParcelas.MacroByName('MCliente').Value := 'CONTASRECEBER.CLIEA13ID = ''' + SQLTemplateCLIEA13ID.AsString + '''';
  SQLParcelas.MacroByName('MCliente2').Value := 'CUPOM.CLIEA13ID = ''' + SQLTemplateCLIEA13ID.AsString + '''';
  if RadioIgnoracheque.Checked then
    SQLParcelas.MacroByName('MCheques').Value := ' CONTASRECEBER.CTRCA5TIPOPADRAO <> ''CHQ'' '
  else
    SQLParcelas.MacroByName('MCheques').Value := '0=0';

  if RadioSomenteParcelasAbertas.Checked then
  begin
    SQLParcelas.MacroByName('MAbertas').Value := ' CONTASRECEBER.CTRCN2VLR-CONTASRECEBER.CTRCN2TOTREC>0 ';
    SQLParcelas.MacroByName('MAbertas2').Value := ' CUPOM.EMPRICOD = 0'; {igual a zero para nao aparecer na lista}
  end
  else
  begin
    SQLParcelas.MacroByName('MAbertas').Value := '0=0';
    SQLParcelas.MacroByName('MAbertas2').Value := '0=0';
  end;
  if not SQLParcelas.Active then
    SQLParcelas.Open;

  CalcTot := true;
  //O LAST ABAIXO SERVE PARA CALCULAR OS TOTAIS
  SQLParcelas.DisableControls;
  SQLParcelas.First;

  DivitaAtual.Value := 0;
  TotalPago.Value := 0;
  TotalVencidas.Value := 0;
  TotalJuroDev.Value := 0;
  TotalPagar.Value := 0;

  while not SQLParcelas.EOF do
  begin
    try
      Saldo := SQLParcelas.FieldByName('CTRCN2VLR').Value;
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

      JuroParc := 0;
      MultaParc := 0;
      TxCobrParc := 0;
      DescParc := 0;

      if (SQLParcelasCTRCA13ID.AsString <> '') and (Length(SQLParcelasCTRCA13ID.AsString) = 13) then
        Documento := SQLParcelasCTRCA13ID.AsString;
      if (SQLParcelasCUPOA13ID.AsString <> '') and (Length(SQLParcelasCUPOA13ID.AsString) = 13) then
        Documento := SQLParcelasCUPOA13ID.AsString;
      if (SQLParcelasNOFIA13ID.AsString <> '') and (Length(SQLParcelasNOFIA13ID.AsString) = 13) then
        Documento := SQLParcelasNOFIA13ID.AsString;
      if SQLParcelasCTRCA30NRODUPLICBANCO.AsString <> '' then
        Documento := 'Dupl.' + SQLParcelasCTRCA30NRODUPLICBANCO.AsString;

      if (SQLParcelas.FieldByName('CTRCN2TXJURO').asFloat > 0) and
        (DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').Value >= 0) and
        (Documento <> '') then

        // alterado pelo judi... calcular os juros corretamente.
        if SQLParcelas.FieldByname('CTRCDULTREC').ISNULL then
          JuroParc := CalculaJuroMultaDesc(Saldo,
            SQLParcelasCTRCN2TXJURO.asFloat,
            SQLParcelasCTRCDVENC.Value, // Adilson Troquei a variavel Vencimento pelo campo SQLParcelasCTRCDVENC.Value.
            DataBase,
            0,
            DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').Value,
            'Juro',
            Documento,
            SQLParcelasCTRCINROPARC.AsString)
        else
        begin
          if SQLParcelasCTRCDVENC.asDateTime < SQLParcelasCTRCDULTREC.asDateTime then
            JuroParc := CalculaJuroMultaDesc(Saldo,
              SQLParcelasCTRCN2TXJURO.asFloat,
              SQLParcelasCTRCDVENC.Value, // Adilson Troquei a variavel Vencimento pelo campo SQLParcelasCTRCDVENC.Value.
              SQLParcelasCTRCDULTREC.asDateTime,
              0,
              DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').Value,
              'Juro',
              Documento,
              SQLParcelasCTRCINROPARC.AsString)
          else
            JuroParc := CalculaJuroMultaDesc(Saldo,
              SQLParcelasCTRCN2TXJURO.asFloat,
              SQLParcelasCTRCDVENC.Value, // Adilson Troquei a variavel Vencimento pelo campo SQLParcelasCTRCDVENC.Value.
              SQLParcelasCTRCDVENC.asDateTime,
              0,
              DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').Value,
              'Juro',
              Documento,
              SQLParcelasCTRCINROPARC.AsString);

        end;

      if (SQLParcelas.FieldByName('CTRCN2TXMULTA').asFloat > 0) and
        (DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLMUL').Value >= 0) and
        (Documento <> '') then
        MultaParc := CalculaJuroMultaDesc(Saldo,
          SQLParcelasCTRCN2TXMULTA.Value,
          Vencimento,
          DataBase,
          0,
          DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLMUL').Value,
          'Multa',
          Documento,
          SQLParcelasCTRCINROPARC.AsString);

      if (DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCTAXACOBR').asFloat > 0) and (Documento <> '') then
        TxCobrParc := CalculaJuroMultaDesc(Saldo,
          DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCTAXACOBR').AsFloat,
          Vencimento,
          DataBase,
          0,
          0,
          'TaxaCobranca',
          Documento,
          SQLParcelasCTRCINROPARC.AsString);


      if (DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').asFloat > 0) and
        (DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value >= 0) and
        (DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASADIANT').Value >= 0) and
        (Documento <> '') then
        DescParc := CalculaJuroMultaDesc(Saldo,
          DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value,
          Vencimento,
          DataBase,
          0,
          DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASADIANT').Value,
          'Desconto',
          Documento,
          SQLParcelasCTRCINROPARC.AsString);

      MyTotal := Saldo + JuroParc + MultaParc + TxCobrParc - DescParc;
      TotalJuroDev.Value := TotalJuroDev.Value + JuroParc + TxCobrParc;

      //DivitaAtual.Value := DivitaAtual.Value + MyTotal ; {adilson descomentei para ver se calcula correto a divida}

      if SQLParcelas.FieldByName('CTRCN2TOTREC').Value > 0 then
        TotalPago.Value := TotalPago.Value + SQLParcelas.FieldByName('CTRCN2TOTREC').Value;

      if (DataBase >= SQLParcelas.FieldByName('CTRCDVENC').Value) and (Saldo > 0) then
        TotalVencidas.Value := TotalVencidas.Value + MyTotal;

      if DataBase < SQLParcelas.FieldByName('CTRCDVENC').Value then
        TotalPagar.Value := TotalPagar.Value + Saldo;
    except
      on E: Exception do
      begin
        Informa('Problemas ao montar dados de compra : ' + #13 +
          'Cupom..............: ' + SQLParcelas.Fieldbyname('CUPOA13ID').AsString + #13 +
          'Contas Receber(ID).: ' + SQLParcelas.Fieldbyname('CTRCA13ID').AsString + #13 +
          'Anote a mensagem abaixo e tecle ENTER para continuar:' + #13 + E.Message);
      end;
    end;

    SQLParcelas.Next;
  end;
  //A VARIAVEL CalcTot SERA SETADA P/FALSE P/NAO CALCULAR TOTAIS NOVAMENTE
  //NO BROWSE DA TABELA
  CalcTot := false;

  DivitaAtual.Value := TotalVencidas.Value + TotalPagar.Value; {adilson comentei para ver se calculta correto}

  AtrasoMedio.Value := 0;
  TotDiasAtraso := 0;
  NroParcAtraso := 0;
  //PARCELAS PAGAS EM ATRASO
  SQLGeral.Close;
  SQLGeral.SQL.Clear;
  SQLGeral.SQL.Add('select sum(CTRCDULTREC-CTRCDVENC) TotDias, count(CTRCA13ID) as NroParc from CONTASRECEBER');
  SQLGeral.SQL.Add('where CLIEA13ID = ''' + SQLTemplateCLIEA13ID.AsString + ''' and');
  SQLGeral.SQL.Add('not (CTRCDULTREC is null) and');
  SQLGeral.SQL.Add('CTRCDULTREC > CTRCDVENC and');
  SQLGeral.SQL.Add('CTRCDVENC < ''' + FormatDateTime('mm/dd/yyyy', DataBase) + '''');
  SQLGeral.SQL.Add(' and (CTRCCSTATUS = ''A'' OR CTRCCSTATUS = ''N'')');
  SQLGeral.SQL.Add(' and (PDVDA13ID = '''' OR PDVDA13ID is Null)');
  if RadioIgnoracheque.Checked then
    Dm.SQLTemplate.SQL.Add(' and (CTRCA5TIPOPADRAO <> ''CHQ'' ) ');
  SQLGeral.Open;
  if SQLGeral.FieldByName('TotDias').Value > 0 then
    TotDiasAtraso := TotDiasAtraso + SQLGeral.FieldByName('TotDias').Value;
  if SQLGeral.FieldByName('NroParc').Value > 0 then
    NroParcAtraso := NroParcAtraso + SQLGeral.FieldByName('NroParc').Value;
  //PARCELAS VENCIDAS Nï¿½O PAGAS
  SQLGeral.Close;
  SQLGeral.SQL.Clear;
  SQLGeral.SQL.Add('Select Sum(''' + FormatDateTime('mm/dd/yyyy', DataBase) + ''' -CTRCDVENC) TotDias, count(CTRCA13ID) as NroParc from CONTASRECEBER');
  SQLGeral.SQL.Add('Where CLIEA13ID = ''' + SQLTemplateCLIEA13ID.AsString + ''' and');
  SQLGeral.SQL.Add(' (CTRCDULTREC is null) and');
  SQLGeral.SQL.Add(' CTRCDVENC < ''' + FormatDateTime('mm/dd/yyyy', DataBase) + '''');
  SQLGeral.SQL.Add(' and (CTRCCSTATUS = ''A'' OR CTRCCSTATUS = ''N'')');
  SQLGeral.SQL.Add(' and (PDVDA13ID = '''' OR PDVDA13ID is Null)');
  if RadioIgnoracheque.Checked then
    Dm.SQLTemplate.SQL.Add(' and (CTRCA5TIPOPADRAO <> ''CHQ'') ');
  SQLGeral.Open;
  if SQLGeral.FieldByName('TotDias').Value > 0 then
    TotDiasAtraso := TotDiasAtraso + SQLGeral.FieldByName('TotDias').Value;
  if SQLGeral.FieldByName('NroParc').Value > 0 then
    NroParcAtraso := NroParcAtraso + SQLGeral.FieldByName('NroParc').Value;

  if (TotDiasAtraso > 0) and (NroParcAtraso > 0) then
    AtrasoMedio.Value := TotDiasAtraso / NroParcAtraso;

  TblDadosCompra.Close;
  try
    TblDadosCompra.DeleteTable;
    TblDadosCompra.CreateTable;
  except
    TblDadosCompra.CreateTable;
  end;

  TblDadosCompra.IndexFieldNames := '';

  BatchMoveParc.Execute;

  TblDadosCompra.AddIndex('', 'CUPOA13ID;NOFIA13ID;CTRCA30NRODUPLICBANCO;CLIEA13ID;CTRCA13ID', [ixPrimary]);
  TblDadosCompra.AddIndex('Indice3', 'CTRCDEMIS;CUPOA13ID;NOFIA13ID;CTRCINROPARC', [ixCaseInsensitive]);
  TblDadosCompra.IndexFieldNames := 'CTRCDEMIS;CUPOA13ID;NOFIA13ID;CTRCINROPARC';
  TblDadosCompra.Open;

  //ESTA ROTINA FOI COLOCADA POIS QUANDO NAO TEM NOTA FISCAL E TEM ENTRADA GRAVA
  //O ID CUPOM NO NOFIA13ID E ORDENA AS PARCELAS DE MANEIRA ERRADA
  TblDadosCompra.DisableControls;
  TblDadosCompra.Open;
  while not TblDadosCompra.Eof do
  begin
    if TblDadosCompraCUPOA13ID.Value = TblDadosCompraNOFIA13ID.Value then
    begin
      TblDadosCompra.Edit;
      TblDadosCompraNOFIA13ID.Clear;
      TblDadosCompra.Post;
    end;
    if TblDadosCompraALINICOD.AsString <> '' then
      if sqllocate('ALINEA', 'ALINICOD', 'ALINCCHEQDEV', TblDadosCompraALINICOD.AsString) = 'S' then
      begin
        TblDadosCompra.Edit;
        TblDadosCompraCHEQDEVOLVIDO.Value := 'S';
        TblDadosCompra.Post;
      end;

    TblDadosCompra.Next;
  end;
  TblDadosCompra.First;
  TblDadosCompra.EnableControls;

  SQLParcelas.First;
  SQLParcelas.EnableControls;
  SQLParcelas.Close;
  SQLDadosCompra.Close;
  SQLDadosCompra.MacroByName('MOrdem').AsString := 'ORDER BY CTRCDVENC DESC';
  SQLDadosCompra.Open;
  NroParcelasAbertas.Refresh;
  TotalJuros.Refresh;
  TotalMulta.Refresh;
  TotalDesconto.Refresh;
  TotalJuroDev.Refresh;

  if DivitaAtual.Value < 0 then
    DivitaAtual.Value := TotalVencidas.Value;

  DivitaAtual.Refresh;
  NroCompras.Refresh;
  TotalCompras.Refresh;
  TotalPago.Refresh;
  TotalPagar.Refresh;
  TotalVencidas.Refresh;
  AtrasoMedio.Refresh;

  // Adilson - Subtrai apenas para mostrar na tela, ficar mais facil para o usuario identificar
  TotalVencidas.Value := TotalVencidas.Value - TotalJuroDev.Value;
  TotalVencidas.Refresh;

  {Calcula Totais tabela credito cliente}
  dm.sqlconsulta.close;
  dm.sqlconsulta.sql.text := 'select sum(valorcredito) as TotalCredito, sum(valordebito) as TotalDebito, sum(valorcredito-ValorDebito) as Saldo from CLIENTECREDITO where cliea13id = ''' + SQLtemplateCLIEA13ID.value + '''';
  dm.sqlconsulta.open;
  try TotalCreditosAntecipados.Value := dm.sqlconsulta.findfield('TotalCredito').Value; except TotalCreditosAntecipados.Value := 0; end;
  try TotalDebitosAntecipados.Value := dm.sqlconsulta.findfield('TotalDebito').Value; except TotalDebitosAntecipados.Value := 0; end;
  try SaldoTotalCreditosAntecipados.Value := dm.sqlconsulta.findfield('Saldo').Value; except SaldoTotalCreditosAntecipados.Value := 0; end;
end;

procedure TFormCadastroCliente.AcessaVendedorClick(Sender: TObject);
begin
  inherited;
  {FieldLookup := DsTemplate.DataSet.FieldByName('VENDICOD');  #ver
  FieldOrigem := 'VENDICOD' ;
  DataSetLookup :=  SQLVendedor;
  CriaFormulario(TFormCadastroVendedor,'FormCadastroVendedor', False,True,True,'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.Value) ;
  }
end;

procedure TFormCadastroCliente.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dataset.FieldByName('CLIEA5FISJURID').Value := 'F';
  Dataset.FieldByName('TIPO_CONTRIBUINTE').Value := 'N';
  Dataset.FieldByName('CLIECRECEBECARTAO').Value := 'S';
  Dataset.FieldByName('CLIECRECAVISATRASO').Value := 'S';
  Dataset.FieldByName('CLIECATIVO').Value := 'S';
  Dataset.FieldByName('CLIEN2LIMITECRED').Value := 0;
  Dataset.FieldByName('CLIEN2RENDA').Value := 0;
  Dataset.FieldByName('CLIEN2CONJUGERENDA').Value := 0;
  Dataset.FieldByName('CLIEDCAD').Value := Now;
  Dataset.FieldByName('CLIEA2UFRES').Value := 'RS';
  Dataset.FieldByName('CLIECVNDCRED').Value := 'N';
  Dataset.FieldByName('CLIECVNDCHEQ').Value := 'N';
  Dataset.FieldByName('CLIECTPPRCVENDA').Value := 'V';
  DataSet.FieldByName('CLIEICODPAIS').Value := 1058;
  //  Dataset.FieldByName('CLIEA2UFRES').Value        :=  SQLLocate('Empresa','EMPRICOD','EMPRA2UF',EmpresaPadrao);
end;

procedure TFormCadastroCliente.AcessaProfissaoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PROFICOD');
  FieldOrigem := 'PROFICOD';
  DataSetLookup := SQLProfissao;
  CriaFormulario(TFormCadastroProfissao, 'FormCadastroProfissao', False, True, True, 'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.Value);
end;

procedure TFormCadastroCliente.AcessaMotBloqClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('MTBLICOD');
  FieldOrigem := 'MTBLICOD';
  DataSetLookup := SQLMotivoBloqueio;
  CriaFormulario(TFormCadastroMotivoBloqueio, 'FormCadastroMotivoBloqueio', False, True, True, 'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.Value);
end;

procedure TFormCadastroCliente.Button1Click(Sender: TObject);
begin
  inherited;
  SQLParcelas.Close;
  SQLItem.Close;
  SQLProduto.Close;
  //-------------------------------------------------------------------------\\
  if TRxSpeedButton(Sender).Name = 'Button3' then
  begin

    PagePrincipal.ActivePage := TabSheetAdicional;
  end;
  //-------------------------------------------------------------------------\\
  if TRxSpeedButton(Sender).Name = 'Button4' then
  begin
    PagePrincipal.ActivePage := TabSheetAdicional2;
  end;
  //-------------------------------------------------------------------------\\
  if TRxSpeedButton(Sender).Name = 'Button5' then
  begin
    DSMasterSys := DSTemplate;
    CriaFormulario(TFormCadastroClienteContato,
      'FormCadastroClienteContato',
      True,
      False, True, 'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.asString);
  end;
  //-------------------------------------------------------------------------\\
  if TRxSpeedButton(Sender).Name = 'Button6' then
  begin
    DSMasterSys := DSTemplate;
    CriaFormulario(TFormCadastroClienteReferencia,
      'FormCadastroClienteReferencia',
      True,
      False, True, 'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.asString);
  end;
  //-------------------------------------------------------------------------\\
  if TRxSpeedButton(Sender).Name = 'Button7' then
  begin
    DSMasterSys := DSTemplate;
    CriaFormulario(TFormCadastroClienteDependente,
      'FormCadastroClienteDependente',
      True,
      False, True, 'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.asString);
  end;
  //-------------------------------------------------------------------------\\
  if TRxSpeedButton(Sender).Name = 'Button8' then
  begin
    if SQLLocate('USUARIO', 'USUAICOD', 'USUACVERDADCOMPRCLI', IntToStr(DM.UsuarioAtual)) <> 'S' then
    begin
      Informa('Você não tem permissão para ver os dados de compra!');
      exit;
    end;

    SQLCartaPrimeiroAviso.Close;
    SQLCartaSegundoAviso.Close;
    SQLCartaAvisoSPC.Close;
    SQLCartaPrimeiroAviso.Open;
    SQLCartaSegundoAviso.Open;
    SQLCartaAvisoSPC.Open;
    PagePrincipal.ActivePage := TabSheetDadosCompra;
    GroupAvisos.Visible := False;
    if not SQLCartaPrimeiroAviso.IsEmpty then
      CKAviso1.Checked := True
    else
      CKAviso1.Checked := False;
    if not SQLCartaSegundoAviso.IsEmpty then
      CKAviso2.Checked := True
    else
      CKAviso2.Checked := False;
    if not SQLCartaAvisoSPC.IsEmpty then
      CKAvisoSPC.Checked := True
    else
      CKAvisoSPC.Checked := False;

    MontaDadosCompra;
    MontaDadosCheque;

    sqlCredito.Close;
    sqlCredito.MacroByName('MFiltro').AsString := 'CLIEA13ID = ''' + SQLTEMPLATECLIEA13ID.Value + '''';
    sqlCredito.Open;

    if not Dm.SQLConfigVenda.Active then Dm.SQLConfigVenda.Open;
    if Dm.SQLConfigVenda.fieldbyname('CFVECTESTALIMTCRED').AsString = 'S' then
      EditLimiteCredito.Value := CalculaLimiteCredito(SQLTemplateCLIEA13ID.AsString, 0, SQLLimiteParcelas, SQLLimiteCliente);
  end;
  //-------------------------------------------------------------------------\\
  if TRxSpeedButton(Sender).Name = 'Button9' then
  begin
    SQLItem.Open;
    SQLProduto.Open;
    EditDe.Date;
    PagePrincipal.ActivePage := TabSheetItens;
    MontaDadosCompra;
    sqlCredito.Close;
    sqlCredito.MacroByName('MFiltro').AsString := 'CLIEA13ID = ''' + SQLTEMPLATECLIEA13ID.Value + '''';
    sqlCredito.Open;

  end;
  if TRxSpeedButton(Sender).Name = 'Button10' then
  begin
    DSMasterSys := DSTemplate;
    CriaFormulario(TFormCadastroClienteHistorico,
      'FormCadastroClienteHistorico',
      True,
      False, True,
      SQLTemplateCLIEA60RAZAOSOC.AsString);
  end;
  if TRxSpeedButton(Sender).Name = 'Button11' then
  begin
    DSMasterSys := DSTemplate;
    CriaFormulario(TFormTelaNegociacaoDivida,
      'FormTelaNegociacaoDivida',
      False,
      False, True,
      '');
  end;
  if TRxSpeedButton(Sender).Name = 'Button12' then
  begin
    DSMasterSys := DSTemplate;
    CriaFormulario(TFormCadastroClienteVeiculos,
      'FormCadastroClienteVeiculos',
      True,
      False, True, 'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.asString);
  end;

  if TRxSpeedButton(Sender).Name = 'Button13' then
  begin
      DSMasterSys := DSTemplate;     //#ver
      CriaFormulario(TFormCadastroAnimais,
                     'FormCadastroAnimais',
                     True,
                     False,True, 'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.asString); 
  end;

  if TRxSpeedButton(Sender).Name = 'Button14' then
  begin
    DSMasterSys := DSTemplate;
    CriaFormulario(TFormCadastroClienteExtintor,
      'FormCadastroClienteExtintor',
      True,
      False, True, 'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.asString);
  end;

  if TRxSpeedButton(Sender).Name = 'btnReceituario' then
  begin
    ClienteVenda := SQLTemplateCLIEA13ID.AsString;
    if ClienteVenda <> '' then
    begin
      DSMasterSys := DSTemplate;
      Application.CreateForm(TFormTelaReceituario, FormTelaReceituario);
      FormTelaReceituario.ShowModal;
    end;

   { CriaFormulario(TFormTelaReceituario,
      'FormTelaReceituario',
      True,
      False, True, 'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.asString);}
  end;


end;

procedure TFormCadastroCliente.AcessaBancoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('BANCA5COD');
  FieldOrigem := 'BANCA5COD';
  CriaFormulario(TFormCadastroBanco, 'FormCadastroBanco', False, True, True, 'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.Value);
end;

procedure TFormCadastroCliente.SQLTemplateBeforePost(DataSet: TDataSet);
var LimiteInicial: double;
var IdCliente: string;
begin
  inherited;
  if SQLTemplate.State in [DsInsert] then

    if SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString <> '' then
    begin
      IdCliente := SQLLocate('CLIENTE', 'CLIEA60RAZAOSOC', 'CLIEA13ID', '''' + SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString + '''');
      if IdCliente <> '' then
      begin
        if not Pergunta('NAO', 'O Sistema verificou que já existe no ID = ' + IdCliente + ' um Cliente com este Nome/Razï¿½o Social. Deseja Continuar Mesmo Assim ?') then
          Abort;
      end;
      IdCliente := '';
      IdCliente := SQLLocate('CLIENTEDEPENDENTE', 'CLDPA60NOME', 'CLIEA13ID', '''' + SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString + '''');
      if IdCliente <> '' then
      begin
        if not Pergunta('NAO', 'O Sistema verificou que já existe no ID = ' + IdCliente + ' um Dependente com este Nome/Razï¿½o Social. Deseja Continuar Mesmo Assim ?') then
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
      Informa('O CPF digitado está incompleto !');
      Abort;
    end;
  end
  else
    if SqlTemplate.FieldByName('CLIEA5FISJURID').AsString = 'F' then
      Informa('O CPF não foi informado !');

  if SqlTemplate.FieldByName('CLIEA14CGC').AsString <> '' then
  begin
    if Length(SqlTemplate.FieldByName('CLIEA14CGC').AsString) = 14 then
    begin
      if not ValidaCGC(SqlTemplate.FieldByName('CLIEA14CGC').AsString) then
      begin
        Informa('O CNPJ digitado é inválido !');
        Abort;
      end;
    end
    else
    begin
      Informa('O CCG digitado está incompleto !');
      Abort;
    end;
  end
  else
    if SqlTemplate.FieldByName('CLIEA5FISJURID').AsString = 'J' then
      Informa('O CCG não foi informado !');

  if CPFAlterado then
    if SQLLocate('CLIENTE', 'CLIEA11CPF', 'CLIEA11CPF', '''' + DataSet.FieldByName('CLIEA11CPF').AsString + '''') <> '' then
    begin
      if not Pergunta('NAO', 'O Sistema verificou que já existe um cliente com este CPF. Deseja Continuar Mesmo Assim ?') then
      begin
        Abort;
        DataSet.FieldByName('CLIEA11CPF').FocusControl;
      end;
    end;

  if RGAlterado then
    if SQLLocate('CLIENTE', 'CLIEA10RG', 'CLIEA10RG', '''' + DataSet.FieldByName('CLIEA10RG').AsString + '''') <> '' then
    begin
      if not Pergunta('NAO', 'O Sistema verificou que já existe um cliente com este RG. Deseja Continuar Mesmo Assim ?') then
      begin
        Abort;
        DataSet.FieldByName('CLIEA10RG').FocusControl;
      end;
    end;

  if CGCAlterado then
    if SQLLocate('CLIENTE', 'CLIEA14CGC', 'CLIEA14CGC', '''' + DataSet.FieldByName('CLIEA14CGC').AsString + '''') <> '' then
    begin
      if not Pergunta('NAO', 'O Sistema verificou que já existe um cliente com este CNPJ. Deseja Continuar Mesmo Assim ?') then
      begin
        Abort;
        DataSet.FieldByName('CLIEA14CGC').FocusControl;
      end;
    end;

  if SqlTemplate.FieldByName('TIPO_CONTRIBUINTE').AsString = '' then
  begin
    Informa('Informe um tipo de contribuinte!');
    Abort;
    DataSet.FieldByName('TIPO_CONTRIBUINTE').FocusControl;
  end;

  if (SqlTemplate.FieldByName('TIPO_CONTRIBUINTE').AsString = 'I') and (SqlTemplate.FieldByName('CLIEA5FISJURID').AsString = 'J') then
  begin
    Informa('Informe um tipo de contribuinte!');
    Abort;
    DataSet.FieldByName('TIPO_CONTRIBUINTE').FocusControl;
  end;

  if (SqlTemplate.FieldByName('TIPO_CONTRIBUINTE').AsString = 'C') and (SqlTemplate.FieldByName('CLIEA5FISJURID').AsString = 'F') then
  begin
    Informa('Informe um tipo de contribuinte!');
    Abort;
    DataSet.FieldByName('TIPO_CONTRIBUINTE').FocusControl;
  end;


  if SQLTemplate.FieldByName('CLIEA5FISJURID').asstring = 'J' then
  begin
    if SQLTemplate.FieldByName('CLIECENQUADRAMENTO').AsString = '' then
    begin
      Informa('Informe o Regime Tributário !');
      DataSet.FieldByName('CLIECENQUADRAMENTO').FocusControl;
      Abort;
    end
  end;

  if (SqlTemplate.FieldByName('CLIEA5FISJURID').AsString = 'J') and (UpperCase(SqlTemplate.FieldByName('CLIEA20IE').AsString) = 'ISENTO') then
  begin
    begin
      Informa('Cliente pessoa jurídica não pode ser ISENTO !');
      DataSet.FieldByName('CLIEA20IE').FocusControl;
      Abort;
    end
  end;

  // Calcula limite Original
  if SQLTemplateCLIEN2RENDA.Value > 0 then
  begin
    try
      if (DM.SQLConfigVenda.FieldByName('CFVECRENDCONJNOLIM').Value = 'S') and (SQLTemplateCLIEN2CONJUGERENDA.Value > 0) then
        LimiteInicial := (SQLTemplate.FieldByName('CLIEN2RENDA').Value +
          SQLTemplate.FieldByName('CLIEN2CONJUGERENDA').Value) *
          (DM.SQLConfigVenda.FieldByName('CFVEN2PERCLIMCRED').Value / 100)
      else
        LimiteInicial := (SQLTemplate.FieldByName('CLIEN2RENDA').Value) *
          (DM.SQLConfigVenda.FieldByName('CFVEN2PERCLIMCRED').Value / 100);

      SQLTemplateCLIEN2LIMITECRED.Value := LimiteInicial;
    except
      Application.ProcessMessages;
    end;
  end;

  if (SQLTemplateTIPO_CONTRIBUINTE.AsString = 'I') then
  begin
    if SQLTemplateCLIEA5FISJURID.AsString = 'F' then
      SQLTemplateCLIEA20IE.AsString := 'ISENTO'
    else
     SQLTemplateCLIEA20IE.AsString := '';
  end;
  if (SQLTemplateTIPO_CONTRIBUINTE.AsString = 'N') then
  begin
    if SQLTemplateCLIEA5FISJURID.AsString = 'F' then
      SQLTemplateCLIEA20IE.AsString := '';
  end;
  if (SQLTemplateTIPO_CONTRIBUINTE.AsString = 'C') then
  begin
    if SQLTemplateCLIEA5FISJURID.AsString = 'F' then
      SQLTemplateCLIEA20IE.AsString := '';
  end;

end;

procedure TFormCadastroCliente.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if ((Sender as TDataSource).DataSet <> nil) and
    ((Sender as TDataSource).DataSet.Active) and
    ((PagePrincipal.ActivePage.Name = 'TabSheetDadosCompra') or (PagePrincipal.ActivePage.Name = 'TabSheetItens')) then
  begin
    MontaDadosCompra;
    MontaDadosCheque;
    sqlCredito.Close;
    sqlCredito.MacroByName('MFiltro').AsString := 'CLIEA13ID = ''' + SQLTEMPLATECLIEA13ID.Value + '''';
    sqlCredito.Open;

    if not Dm.SQLConfigVenda.Active then Dm.SQLConfigVenda.Open;
    if Dm.SQLConfigVenda.fieldbyname('CFVECTESTALIMTCRED').AsString = 'S' then
      EditLimiteCredito.Value := CalculaLimiteCredito(SQLTemplateCLIEA13ID.AsString, 0, SQLLimiteParcelas, SQLLimiteCliente);
  end;
  if SQLTemplateCLIEDNASC.AsDateTime > 0 then
    if FormatDateTime('dd/mm', SQLTemplateCLIEDNASC.AsDateTime) = FormatDateTime('dd/mm', Now) then
      Informa('O Cliente está fazendo Aniversário hoje!');

  if DSTemplate.DataSet.FieldByName('CLIEA5FISJURID').AsString <> '' then
  begin
    PanelDocFis.Visible := DSTemplate.DataSet.FieldByName('CLIEA5FISJURID').AsString[1] = 'F';
    PanelDocJur.Visible := DSTemplate.DataSet.FieldByName('CLIEA5FISJURID').AsString[1] = 'J';
    PanelFisica.Visible := DSTemplate.DataSet.FieldByName('CLIEA5FISJURID').AsString[1] = 'F';
    LabelNomeFantasia.Visible := DSTemplate.DataSet.FieldByName('CLIEA5FISJURID').AsString[1] = 'J';
    DBEditNomeFantasia.Visible := DSTemplate.DataSet.FieldByName('CLIEA5FISJURID').AsString[1] = 'J';
    if DSTemplate.DataSet.FieldByName('CLIEA5FISJURID').AsString[1] = 'F' then
      DBEditNome.Width := 429
    else
      DBEditNome.Width := 265;
  end;
  if SQLTemplateCLIEA254PATHFOTO.AsString <> '' then
  begin
    try
      FotoCliente.Picture.LoadFromFile(SQLTemplateCLIEA254PATHFOTO.AsString);
    except
      FotoCliente.Picture := nil;
    end;
    FotoCliente.Refresh;
  end
  else
    FotoCliente.Picture := nil;
end;

procedure TFormCadastroCliente.ImprimirCarneAvulsoClick(Sender: TObject);
var
  DocParc: string;
  NumParcelas: integer;
  VlrVista: double;
begin
  inherited;
  if Pergunta('SIM', '* * * CONFIRMA A IMPRESSï¿½O DO CARNï¿½ AVULSO PARA O DOCUMENTO ' +
    SQLDadosCompraCUPOA13ID.AsString + ' ? * * *') then
  begin
    TblCarne.Close;
    try
      TblCarne.DeleteTable;
    except
    end;
    TblCarne.CreateTable;
    TblCarne.Open;
    //GRAVAR PARCELA A PRAZO NA TEBLA TEMPORARIA DE CARNE
    SQLGeral.Close;
    SQLGeral.SQL.Clear;
    SQLGeral.SQL.Add('select * from CUPOMNUMERARIO');
    SQLGeral.SQL.Add('where CUPOA13ID = ''' + SQLDadosCompraCUPOA13ID.AsString + '''');
//    SQLGeral.SQL.Add('and   CPNMCAUTENT <> ''S''') ;
    SQLGeral.Open;
    SQLGeral.First;
    VlrVista := 0;
    while not SQLGeral.EOF do
    begin
      VlrVista := VlrVista + SQLGeral.FieldByName('CPNMN2VLR').Value;
      SQLGeral.Next;
    end;

    NroCupom := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPOINRO', '''' + SQLDadosCompraCUPOA13ID.AsString + '''');

    if VlrVista > 0 then
    begin
      NumParcelas := 1;

      TblCarne.Append;
      TblCarneEmpresaNome.AsString := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', EmpresaPadrao);
      TblCarneEmpresaEnder.AsString := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60END', EmpresaPadrao);
      TblCarneEmpresaBairro.AsString := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60BAI', EmpresaPadrao);
      TblCarneEmpresaCidade.AsString := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60CID', EmpresaPadrao);
      TblCarneEmpresaUF.AsString := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA2UF', EmpresaPadrao);
      TblCarneEmpresaFone.AsString := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20FONE', EmpresaPadrao);
      TblCarneMensagem.AsString := DM.SQLTerminalAtivo.fieldbyname('TERMA255MSGCARNE').Value;
      TblCarneCliente.AsString := SQLTemplateCLIEA60RAZAOSOC.AsString;
      TblCarneEndereco.AsString := SQLTemplateCLIEA60ENDRES.AsString;
      TblCarneBairro.AsString := SQLTemplateCLIEA60CIDRES.AsString;
      TblCarneCidade.AsString := SQLTemplateCLIEA60BAIRES.AsString;
      TblCarneCodigoCliente.AsString := SQLTemplateCLIEA13ID.AsString;
      TblCarneClienteDependente.AsString := SQLLocate('CUPOM', 'CUPOA13ID', 'CLDPICOD', '''' + SQLDadosCompraCUPOA13ID.AsString + '''');
      TblCarneNumeroContrato.AsString := SQLDadosCompraCUPOA13ID.AsString;
      TblCarneNumeroParcela.Value := 0;
      TblCarneContadorParcelas.Value := NumParcelas;
      TblCarneDataVencimento.AsString := SQLDadosCompraCTRCDEMIS.AsString;
      TblCarneValorParcela.Value := VlrVista;
      TblCarneDataEmissao.AsString := SQLDadosCompraCTRCDEMIS.AsString;
      TblCarneNroCupom.AsString := NroCupom;
      TblCarneVendedor.AsString := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', SQLLocate('CUPOM', 'CUPOA13ID', 'VENDICOD', '''' + TblCarneNumeroContrato.AsString + ''''));
      TblCarneTotalCupom.AsString := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPON2TOTITENS', '''' + TblCarneNumeroContrato.AsString + '''');
      TblCarneAcrescimo.AsString := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPON2ACRESC', '''' + TblCarneNumeroContrato.AsString + '''');
      TblCarneValorDesconto.AsString := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPON2DESC', '''' + TblCarneNumeroContrato.AsString + '''');
      TblCarneTotalCupom.AsString := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPON2TOTITENS', '''' + TblCarneNumeroContrato.AsString + '''');
      TblCarneTaxaCrediario.AsString := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPON3CREDTAXA', '''' + TblCarneNumeroContrato.AsString + '''');
      TblCarneTotalCupom.AsString := FloatToStr(TblCarneTotalCupom.Value + TblCarneTaxaCrediario.Value);

      Dm.SQLTemplate.Close;
      Dm.SQLTemplate.SQL.Clear;
      Dm.SQLTemplate.SQL.Add('SELECT CPNMN2VLR FROM CUPOMNUMERARIO WHERE CONMCSTATUS = ''A'' AND ');
      Dm.SQLTemplate.SQL.Add('CUPOA13ID = ''' + TblCarneNumeroContrato.AsString + '''');
      Dm.SQLTemplate.Open;
      if not Dm.SQLTemplate.IsEmpty then
        TblCarneEntrada.Value := Dm.SQLTemplate.FieldByName('CPNMN2VLR').AsFloat
      else
        TblCarneEntrada.Value := 0;
      TblCarneTaxaCrediario.AsString := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPON3CREDTAXA', '''' + TblCarneNumeroContrato.AsString + '''');
      TblCarnePlano.AsString := SQLLocate('PLANORECEBIMENTO', 'PLRCICOD', 'PLRCA60DESCR', SQLLocate('CUPOM', 'CUPOA13ID', 'PLRCICOD', '''' + TblCarneNumeroContrato.AsString + ''''));

      TblCarne.Post;

      SQLGeral.Next;
    end;
    //GRAVAR PARCELAS A PRAZO NA TABELA TEMPORARIA DE CARNE
    NumParcelas := NumParcelas + SQLRecCount('CONTASRECEBER', 'where CUPOA13ID = ''' + SQLDadosCompraCUPOA13ID.AsString + '''');
    SQLGeral.Close;
    SQLGeral.SQL.Clear;
    SQLGeral.SQL.Add('select * from CONTASRECEBER');
    SQLGeral.SQL.Add('where CUPOA13ID = ''' + SQLDadosCompraCUPOA13ID.AsString + '''');
    SQLGeral.Open;
    SQLGeral.First;

    while not SQLGeral.EOF do
    begin
      TblCarne.Append;
      TblCarneEmpresaNome.AsString := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', EmpresaPadrao);
      TblCarneEmpresaEnder.AsString := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60END', EmpresaPadrao);
      TblCarneEmpresaBairro.AsString := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60BAI', EmpresaPadrao);
      TblCarneEmpresaCidade.AsString := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60CID', EmpresaPadrao);
      TblCarneEmpresaUF.AsString := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA2UF', EmpresaPadrao);
      TblCarneEmpresaFone.AsString := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20FONE', EmpresaPadrao);
      TblCarneMensagem.AsString := '';
      TblCarneCliente.AsString := SQLTemplateCLIEA60RAZAOSOC.AsString;
      TblCarneEndereco.AsString := SQLTemplateCLIEA60ENDRES.AsString;
      TblCarneBairro.AsString := SQLTemplateCLIEA60CIDRES.AsString;
      TblCarneCidade.AsString := SQLTemplateCLIEA60BAIRES.AsString;
      TblCarneCodigoCliente.AsString := SQLTemplateCLIEA13ID.AsString;
      TblCarneClienteDependente.AsString := SQLLocate('CUPOM', 'CUPOA13ID', 'CLDPICOD', '''' + SQLDadosCompraCUPOA13ID.AsString + '''');
      TblCarneNumeroContrato.AsString := SQLDadosCompraCUPOA13ID.AsString;
      TblCarneNumeroParcela.AsString := SQLGeral.FieldByName('CTRCINROPARC').AsString;
      TblCarneContadorParcelas.Value := NumParcelas;
      TblCarneDataVencimento.AsString := SQLGeral.FieldByName('CTRCDVENC').AsString;
      TblCarneValorParcela.AsString := SQLGeral.FieldByName('CTRCN2VLR').AsString;
      TblCarneDataEmissao.AsString := SQLGeral.FieldByName('CTRCDEMIS').AsString;
      TblCarneNroCupom.AsString := NroCupom;
      TblCarneVendedor.AsString := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', SQLLocate('CUPOM', 'CUPOA13ID', 'VENDICOD', '''' + TblCarneNumeroContrato.AsString + ''''));
      TblCarneTotalCupom.AsString := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPON2TOTITENS', '''' + TblCarneNumeroContrato.AsString + '''');
      TblCarneAcrescimo.AsString := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPON2ACRESC', '''' + TblCarneNumeroContrato.AsString + '''');
      TblCarneValorDesconto.AsString := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPON2DESC', '''' + TblCarneNumeroContrato.AsString + '''');
      TblCarneTotalCupom.AsString := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPON2TOTITENS', '''' + TblCarneNumeroContrato.AsString + '''');
      TblCarneTaxaCrediario.AsString := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPON3CREDTAXA', '''' + TblCarneNumeroContrato.AsString + '''');
      TblCarneTotalCupom.AsString := FloatToStr(TblCarneTotalCupom.Value + TblCarneTaxaCrediario.Value);

      Dm.SQLTemplate.Close;
      Dm.SQLTemplate.SQL.Clear;
      Dm.SQLTemplate.SQL.Add('SELECT CPNMN2VLR FROM CUPOMNUMERARIO WHERE CONMCSTATUS = ''A'' AND ');
      Dm.SQLTemplate.SQL.Add('CUPOA13ID = ''' + TblCarneNumeroContrato.AsString + '''');
      Dm.SQLTemplate.Open;
      if not Dm.SQLTemplate.IsEmpty then
        TblCarneEntrada.Value := Dm.SQLTemplate.FieldByName('CPNMN2VLR').AsFloat
      else
        TblCarneEntrada.Value := 0;
      TblCarneTaxaCrediario.AsString := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPON3CREDTAXA', '''' + TblCarneNumeroContrato.AsString + '''');
      TblCarnePlano.AsString := SQLLocate('PLANORECEBIMENTO', 'PLRCICOD', 'PLRCA60DESCR', SQLLocate('CUPOM', 'CUPOA13ID', 'PLRCICOD', '''' + TblCarneNumeroContrato.AsString + ''''));

      TblCarne.Post;

      SQLGeral.Next;
    end;
    if FileExists(DM.PathAplicacao + 'CARNES.EXE') then
    begin
      if FileExists('ToScreen.Arq') then
        WinExec(Pchar(DM.PathAplicacao + 'Carnes.EXE ' + IntToStr(TerminalAtual) + ' SCR ' + '0'), sw_Show)
      else
        WinExec(Pchar(DM.PathAplicacao + 'Carnes.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'), sw_Show);
    end
    else
      if FileExists('CARNESITEM.EXE') then
      begin
        if FileExists('ToScreen.Arq') then
          WinExec(Pchar(DM.PathAplicacao + 'CARNESITEM.EXE ' + IntToStr(TerminalAtual) + ' SCR ' + '0'), sw_Show)
        else
          WinExec(Pchar(DM.PathAplicacao + 'CARNESITEM.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'), sw_Show);
      end
      else
        Informa('O programa de impressão de carnê não foi encontrado !');
  end;
end;

procedure TFormCadastroCliente.ImprimirParcelaCarneAvulsaClick(
  Sender: TObject);
begin
  inherited;
  if SQLDadosCompraCUPOCTIPOPADRAO.Value <> 'CRD' then
  begin
    ShowMessage('*** ESTA VENDA Nï¿½O PODE IMPRIMIR CARNï¿½ ***');
    Abort;
  end;

  if SQLDadosCompraCTRCN2TOTREC.Value = SQLDadosCompraCTRCN2VLR.Value then
  begin
    Informa('Esta parcela já está quitada !');
    exit;
  end;

  if Pergunta('SIM', '* * * CONFIRMA A IMPRESSÃO DO CARNÊ AVULSO PARA O DOCUMENTO ' +
    SQLDadosCompraCUPOA13ID.AsString + '/' +
    SQLDadosCompraCTRCINROPARC.AsString + ' ? * * *') then
  begin
    TblCarne.Close;
    try
      TblCarne.DeleteTable;
    except
    end;
    TblCarne.CreateTable;
    TblCarne.Open;

    NroCupom := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPOINRO', '''' + SQLDadosCompraCUPOA13ID.AsString + '''');

    TblCarne.Append;
    TblCarneEmpresaNome.AsString := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', EmpresaPadrao);
    TblCarneEmpresaEnder.AsString := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60END', EmpresaPadrao);
    TblCarneEmpresaBairro.AsString := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60BAI', EmpresaPadrao);
    TblCarneEmpresaCidade.AsString := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60CID', EmpresaPadrao);
    TblCarneEmpresaUF.AsString := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA2UF', EmpresaPadrao);
    TblCarneEmpresaFone.AsString := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20FONE', EmpresaPadrao);
    TblCarneMensagem.AsString := '';
    TblCarneCliente.AsString := SQLTemplateCLIEA60RAZAOSOC.AsString;
    TblCarneEndereco.AsString := SQLTemplateCLIEA60ENDRES.AsString;
    TblCarneBairro.AsString := SQLTemplateCLIEA60CIDRES.AsString;
    TblCarneCidade.AsString := SQLTemplateCLIEA60BAIRES.AsString;
    TblCarneCodigoCliente.AsString := SQLTemplateCLIEA13ID.AsString;
    TblCarneNumeroContrato.AsString := SQLDadosCompraCUPOA13ID.AsString;
    TblCarneNumeroParcela.AsString := SQLDadosCompraCTRCINROPARC.AsString;
    //TblCarneContadorParcelas.AsString :=
    TblCarneDataVencimento.AsString := SQLDadosCompraCTRCDVENC.AsString;
    TblCarneValorParcela.AsString := SQLDadosCompraCTRCN2VLR.AsString;
    TblCarneTotalCupom.AsString := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPON2TOTITENS', '''' + TblCarneNumeroContrato.AsString + '''');
    TblCarneAcrescimo.AsString := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPON2ACRESC', '''' + TblCarneNumeroContrato.AsString + '''');
    TblCarneValorDesconto.AsString := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPON2DESC', '''' + TblCarneNumeroContrato.AsString + '''');
    TblCarneTaxaCrediario.AsString := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPON3CREDTAXA', '''' + TblCarneNumeroContrato.AsString + '''');
    TblCarneTotalCupom.AsString := FloatToStr(TblCarneTotalCupom.Value + TblCarneTaxaCrediario.Value);

    //TblCarneVendedor.AsString       := LblNomeVendedor.Caption ;
    TblCarneNroCupom.AsString := NroCupom;
    TblCarne.Post;

    {if FileExists('carne.rpt') then
    begin
      TicketPreVenda.PrinterName   := Copy(TargetPrinter, 1, Pos('=', TargetPrinter)-1) ;
      TicketPreVenda.PrinterDriver := Copy(TargetPrinter, Pos('=', TargetPrinter)+1, Pos(',', TargetPrinter)-Pos('=', TargetPrinter)-1) ;
      TicketPreVenda.PrinterPort   := Copy(TargetPrinter, Pos(',', TargetPrinter)+1, 200) ;

      ReportCarne.PrintReport ;
    end
    else
      Informa('O programa de impressï¿½o de carnï¿½ nï¿½o foi encontrado !') ;}
    if FileExists(DM.PathAplicacao + 'CARNES.EXE') then
    begin
      if FileExists('ToScreen.arq') then
        WinExec(Pchar(DM.PathAplicacao + 'CARNES.EXE ' + IntToStr(TerminalAtual) + ' SCR ' + '0'), sw_Show)
      else
        WinExec(Pchar(DM.PathAplicacao + 'CARNES.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'), sw_Show);
    end
    else
    begin
      if FileExists('CARNESITEM.EXE') then
      begin
        if FileExists('ToScreen.Arq') then
          WinExec(Pchar(DM.PathAplicacao + 'CARNESITEM.EXE ' + IntToStr(TerminalAtual) + ' SCR ' + '0'), sw_Show)
        else
          WinExec(Pchar(DM.PathAplicacao + 'CARNESITEM.EXE ' + IntToStr(TerminalAtual) + ' PRN ' + '0'), sw_Show);
      end
      else
        Informa('O programa de impressão de carnê não foi encontrado !');
    end;
  end;
end;

procedure TFormCadastroCliente.SQLTemplateBeforeDelete(DataSet: TDataSet);
begin
  DM.SQLTemplate.Close;
  DM.SQLTemplate.SQL.Text := 'Select * From USUARIO Where USUAICOD = ' + IntToStr(UsuarioCorrente);
  DM.SQLTemplate.Open;
  if DM.SQLTemplate.FindField('USUACEXCLCLI').asString <> 'S' then
  begin
    Informa('Você não tem poder para excluir clientes!');
    Sysutils.Abort;
  end;
  if SQLLocate('CUPOM', 'CLIEA13ID', 'CLIEA13ID', '''' + SQLTemplateCLIEA13ID.Value + '''') <> '' then
  begin
    Informa('Este cliente não pode ser excluído pois possui compras !');
    Sysutils.Abort;
  end;
  if SQLLocate('NOTAFISCAL', 'CLIEA13ID', 'CLIEA13ID', '''' + SQLTemplateCLIEA13ID.Value + '''') <> '' then
  begin
    Informa('Este cliente não pode ser excluído pois possui compras !');
    Sysutils.Abort;
  end;

  EnviaClientePDVs('S');

  inherited;
end;

procedure TFormCadastroCliente.DBGridItensCellClick(Column: TColumn);
begin
  inherited;
{  SQLItem.Close;
  SQLItem.MacroByName('MOrdem').Value := 'order by ' + Column.FieldName ;
  SQLItem.Open ;}
end;

procedure TFormCadastroCliente.FichaCliente1Click(Sender: TObject);
var
  TargetPrinter: string;
  i: integer;
begin
  inherited;
  try
    MakeWindowMessage('Gerando Ficha de Cliente');
    TblFichaCliente.Close;
    try
      TblFichaCliente.DeleteTable;
      TblFichaCliente.CreateTable;
    except
      TblFichaCliente.CreateTable;
    end;
    TblFichaCliente.Open;

    TblFichaCliente.Append;
    for i := 0 to SQLTemplate.FieldCount - 1 do
    begin
      if (SQLTemplate.Fields[i].AsString <> '') and (TblFichaCliente.FindField(SQLTemplate.Fields[i].FieldName) <> nil) then
        TblFichaCliente.FieldByName(SQLTemplate.Fields[i].FieldName).AsVariant := SQLTemplate.Fields[i].AsVariant;
    end;
    TblFichaCliente.Post;

    // Cliente Contato
    TblFichaClienteContato.Close;
    try
      TblFichaClienteContato.DeleteTable;
      TblFichaClienteContato.CreateTable;
    except
      TblFichaClienteContato.CreateTable;
    end;
    TblFichaClienteContato.Open;
    if not SQLClienteContato.Active then SQLClienteContato.Open;

    TblFichaClienteContato.Append;
    for i := 0 to SQLClienteContato.FieldCount - 1 do
    begin
      if (SQLClienteContato.Fields[i].AsString <> '') and (TblFichaClienteContato.FindField(SQLClienteContato.Fields[i].FieldName) <> nil) then
        TblFichaClienteContato.FieldByName(SQLClienteContato.Fields[i].FieldName).AsVariant := SQLClienteContato.Fields[i].AsVariant;
    end;
    TblFichaClienteContato.Post;

    // Cliente Referencia
    TblFichaClienteReferencia.Close;
    try
      TblFichaClienteReferencia.DeleteTable;
      TblFichaClienteReferencia.CreateTable;
    except
      TblFichaClienteReferencia.CreateTable;
    end;
    TblFichaClienteReferencia.Open;
    if not SQLClienteReferencia.Active then SQLClienteReferencia.Open;

    TblFichaClienteReferencia.Append;
    for i := 0 to SQLClienteReferencia.FieldCount - 1 do
    begin
      if (SQLClienteReferencia.Fields[i].AsString <> '') and (TblFichaClienteReferencia.FindField(SQLClienteReferencia.Fields[i].FieldName) <> nil) then
        TblFichaClienteReferencia.FieldByName(SQLClienteReferencia.Fields[i].FieldName).AsVariant := SQLClienteReferencia.Fields[i].AsVariant;
    end;
    TblFichaClienteReferencia.Post;

    // Impressao
    Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Ficha de Cliente.rpt';
    Report.WindowStyle.Title := 'Impressï¿½o Ficha de Cliente';
    Report.ReportTitle := 'Impressï¿½o Ficha de Cliente';
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
    on E: Exception do
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

procedure TFormCadastroCliente.AlterarDataBasepDadosdeCompra1Click(
  Sender: TObject);
begin
  inherited;
  try
    DataBase := StrToDate(InputBox('Alterar Data Base Dados Compra', 'Informa a nova data base', DateToStr(DataBase)));
    MontaDadosCompra;
  except
    Informa('Data inválida');
  end;
end;

procedure TFormCadastroCliente.SQLTemplateCLIEA10RGChange(Sender: TField);
begin
  inherited;
  RGAlterado := true;
end;

procedure TFormCadastroCliente.SQLTemplateAfterInsert(DataSet: TDataSet);
begin
  inherited;
  RGAlterado := false;
  CPFAlterado := false;
  CGCAlterado := False;
end;

procedure TFormCadastroCliente.SQLTemplateAfterEdit(DataSet: TDataSet);
begin
  inherited;
  RGAlterado := false;
  CPFAlterado := false;
  CGCAlterado := False;
end;

procedure TFormCadastroCliente.SQLTemplateCLIEA11CPFChange(Sender: TField);
begin
  inherited;
  CPFAlterado := true;
end;

procedure TFormCadastroCliente.RetornaTabelaPrecoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('TPRCICOD');
  FieldOrigem := 'TPRCICOD';
  CriaFormulario(TFormTelaConsultaTabelaPreco, 'FormTelaConsultaTabelaPreco', False, True, True, 'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.Value);
end;

procedure TFormCadastroCliente.DBEdit46KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaTabelaPreco.Click;
end;

procedure TFormCadastroCliente.ImprimeExtratoCadernoClick(Sender: TObject);
begin
  inherited;
  BatchMoveCaderno.Execute;
  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Extrato de Caderno Cliente.rpt';
  Report.ReportTitle := 'Extrato de Caderno de Cliente';
  Report.WindowStyle.Title := 'Extrato de Caderno de Cliente';
  //SETAR LEGENDA DE FILTROS NO RPT\\
  Report.Formulas.Retrieve;
  Report.Formulas.Name := 'Emissao';
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '''';
  //-------------------------------------------------\\
  Report.Formulas.Name := 'NomeCliente';
  Report.Formulas.Formula.Text := '''' + SQLTemplateCLIEA60RAZAOSOC.Value + '''';
  Report.Execute;
end;

procedure TFormCadastroCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  // Rotina que retorna o cliente para o Front Loja;
  DataSetLookup := nil;
end;

procedure TFormCadastroCliente.DBEdit42Enter(Sender: TObject);
begin
  inherited;
  if DSTemplate.DataSet.State in DsEditModes then
    if SQLTemplateCLIEA60RAZAOSOC.AsString <> '' then
      SQLTemplateCLIEA60TITULAR.AsString := SQLTemplateCLIEA60RAZAOSOC.AsString;
end;

procedure TFormCadastroCliente.MnGeracaoMalaDiretaClick(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormTelaGeracaoMalaDireta, 'FormTelaGeracaoMalaDireta', False, False, True, '');
end;

procedure TFormCadastroCliente.ButtonCepClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CLIEA8CEPRES');
  FieldOrigem := 'CEPA8CEP';
  Application.CreateForm(TFormCadastroCep, FormCadastroCep);
  FormCadastroCep.EditProcura.Text := '*' + SQLTemplateCLIEA60ENDRES.AsString;
  FormCadastroCep.ShowModal;
  if FormCadastroCep.ModalResult = MrOK then
  begin
    SQLTemplateCLIEA60ENDRES.AsString := FormCadastroCep.SQLTemplateCEPA60LOGRADOURO.AsString;
    SQLTemplateCLIEA60BAIRES.AsString := FormCadastroCep.SQLTemplateCEPA60BAIRRO1.AsString;
    SQLTemplateCLIEA60CIDRES.AsString := FormCadastroCep.SQLTemplateCEPA60CIDADE.AsString;
    SQLTemplateCLIEA2UFRES.AsString := FormCadastroCep.SQLTemplateCEPA2ESTADO.AsString;
    SQLTemplateCLIEIMUNICODFED.AsInteger := FormCadastroCep.SQLTemplateCEPICODMUNICIPIO.AsInteger;
    DBEditEnd.SetFocus;
    DBEditEnd.SelStart := Length(DBEditEnd.Text) + 1;
  end;
end;

procedure TFormCadastroCliente.DBEdit20KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCep.Click;
end;

procedure TFormCadastroCliente.ButtonCepEmpresaClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CLIEA8CEPEMPRESA');
  FieldOrigem := 'CEPA8CEP';
  Application.CreateForm(TFormCadastroCep, FormCadastroCep);
  FormCadastroCep.EditProcura.Text := '*' + SQLTemplateCLIEA60ENDEMPRESA.AsString;
  FormCadastroCep.ShowModal;
  if FormCadastroCep.ModalResult = MrOK then
  begin
    SQLTemplateCLIEA60ENDEMPRESA.AsString := FormCadastroCep.SQLTemplateCEPA60LOGRADOURO.AsString;
    SQLTemplateCLIEA60BAIEMPRESA.AsString := FormCadastroCep.SQLTemplateCEPA60BAIRRO1.AsString;
    SQLTemplateCLIEA60CIDEMPRESA.AsString := FormCadastroCep.SQLTemplateCEPA60CIDADE.AsString;
    SQLTemplateCLIEA2UFEMPRESA.AsString := FormCadastroCep.SQLTemplateCEPA2ESTADO.AsString;
  end;
end;

procedure TFormCadastroCliente.DBEdit28KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCepEmpresa.Click;
end;

procedure TFormCadastroCliente.ButtonCepCobrClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CLIEA8CEPCOB');
  FieldOrigem := 'CEPA8CEP';
  Application.CreateForm(TFormCadastroCep, FormCadastroCep);
  FormCadastroCep.EditProcura.Text := '*' + SQLTemplateCLIEA60ENDCOB.AsString;
  FormCadastroCep.ShowModal;
  if FormCadastroCep.ModalResult = MrOK then
  begin
    SQLTemplateCLIEA60ENDCOB.AsString := FormCadastroCep.SQLTemplateCEPA60LOGRADOURO.AsString;
    SQLTemplateCLIEA60BAICOB.AsString := FormCadastroCep.SQLTemplateCEPA60BAIRRO1.AsString;
    SQLTemplateCLIEA60CIDCOB.AsString := FormCadastroCep.SQLTemplateCEPA60CIDADE.AsString;
    SQLTemplateCLIEA2UFCOB.AsString := FormCadastroCep.SQLTemplateCEPA2ESTADO.AsString;
  end;
end;

procedure TFormCadastroCliente.DBGridItensKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    SQLItem.First;
    Produto := UPPERCASE(InputBox('Pesquisa de Produtos', 'Digite a descriï¿½ï¿½o do produto :', ''));
    SQLItem.Close;
    if POS('*', Produto) > 0 then
    begin
      Delete(Produto, POS('*', Produto), 1);
      SQLItem.MacroByName('MProdutoCP').Value := 'PRODUTO.PRODA60DESCR Like ''%' + Produto + '%''';
      SQLItem.MacroByName('MProdutoNF').Value := 'PRODUTO.PRODA60DESCR Like ''%' + Produto + '%''';
    end
    else
    begin
      SQLItem.MacroByName('MProdutoCP').Value := 'PRODUTO.PRODA60DESCR Like ''' + Produto + '%''';
      SQLItem.MacroByName('MProdutoNF').Value := 'PRODUTO.PRODA60DESCR Like ''' + Produto + '%''';
    end;
    SQLItem.Open;
  end;
  if Key = VK_Return then
  begin
    SQLItem.Close;
    SQLItem.MacroByName('MProdutoCP').Value := '0=0';
    SQLItem.MacroByName('MProdutoNF').Value := '0=0';
    SQLItem.Open;
  end;
end;

procedure TFormCadastroCliente.LabelRetornarClick(Sender: TObject);
begin
{  if Application.FindComponent('FormTelaFechamentoVenda') <> Nil then
    begin }
    // Verifica Limite de Crï¿½dito;
    {if (DM.SQLConfigVendaCFVECTESTALIMTCRED.AsString = 'S') then
      if not VerificaLimiteCredito(SQLTemplateCLIEA13ID.AsString,ValorVenda,DM.SQLParcelas,DM.SQLCliente) then
        Abort;}
  ClienteCadastro := SQLTemplateCLIEA13ID.AsString;
  UsaPrecoVenda := copy(SQLTemplateCLIECTPPRCVENDA.AsString, 1, 1);
  {  end;   }
  inherited;
end;

procedure TFormCadastroCliente.RadioFisJurClick(Sender: TObject);
begin
  inherited;
  if DSTemplate.DataSet.FieldByName('CLIEA5FISJURID').AsString <> '' then
  begin
    PanelDocFis.Visible := RadioFisJur.ItemIndex = 0;
    PanelDocJur.Visible := RadioFisJur.ItemIndex = 1;
    PanelFisica.Visible := RadioFisJur.ItemIndex = 0;
    LabelNomeFantasia.Visible := RadioFisJur.ItemIndex = 1;
    DBEditNomeFantasia.Visible := RadioFisJur.ItemIndex = 1;
    if RadioFisJur.ItemIndex = 0 then
      DBEditNome.Width := 429
    else
      DBEditNome.Width := 265;
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
  begin
    GroupAvisos.Visible := False;
    SQLCartaPrimeiroAviso.Close;
    SQLCartaSegundoAviso.Close;
    SQLCartaAvisoSPC.Close;
  end
  else
  begin
    SQLCartaPrimeiroAviso.Open;
    SQLCartaSegundoAviso.Open;
    SQLCartaAvisoSPC.Open;
    GroupAvisos.Visible := True;
  end;
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
    SQLCupomObs.ParamByName('Cupom').AsString := SQLDadosCompraCUPOA13ID.AsString;
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
    SQLCupomObs.ParamByName('Cupom').AsString := SQLDadosCompraCUPOA13ID.AsString;
    SQLCupomObs.Open;
  end
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
  FieldOrigem := 'PLRCICOD';
  DataSetLookup := SQLPlanoRecebimento;
  CriaFormulario(TFormTelaConsultaPlanoRecebimento, 'FormTelaConsultaPlanoRecebimento', False, True, True, 'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.Value);
end;

procedure TFormCadastroCliente.SQLTemplateCLIEA14CGCChange(Sender: TField);
begin
  inherited;
  CGCAlterado := True;
end;

function TFormCadastroCliente.consultarCadastro(UF, Documento: string): string;
var
  Node1, Node2, ender: IXMLNode;
  XMLDocument1: TXMLDocument;
  MemoResp, msg: WideString;
  xNome, xFant, IE, CNPJ, CNAE, xLgr, nro, xCpl, xBairro, xMun, CEP: string;
begin
  dm.Inicia_NFeCad;
  XMLDocument1 := TXMLDocument.Create(XMLDocument1);
  dm.ACBrNFeCad.WebServices.ConsultaCadastro.UF := UpperCase(UF);

  if Length(Documento) > 11 then
    dm.ACBrNFeCad.WebServices.ConsultaCadastro.CNPJ := Documento
  else
    dm.ACBrNFeCad.WebServices.ConsultaCadastro.CPF := Documento;

  dm.ACBrNFeCad.WebServices.ConsultaCadastro.Executar;

  if dm.ACBrNFeCad.WebServices.ConsultaCadastro.xMotivo <> 'Rejeicao: CNPJ da consulta nao cadastrado como contribuinte na UF' then
  begin
    MemoResp := UTF8Encode(dm.ACBrNFeCad.WebServices.ConsultaCadastro.RetWS);
    XMLDocument1.Active := False;
    XMLDocument1.XML.Clear;
    XMLDocument1.XML.Text := memoResp;
    try
      XMLDocument1.Active := True;
    except
      //ShowMessage('Não foi possível verificar o estado. Espaços em branco no XML!');
      Exit;
    end;

    //XMLDocument1.SaveToFile('consultacadastro.xml');

    Node1 := nil;
    Node1 := XMLDocument1.DocumentElement.ChildNodes.FindNode('infCons');

    if Node1.ChildNodes.FindNode('infCad') <> nil then
    begin
      Node2 := nil;
      Node2 := Node1.ChildNodes.FindNode('infCad');

      if Node2.ChildNodes.FindNode('xNome') <> nil then
        xNome := Node2.ChildNodes['xNome'].Text;

      if Node2.ChildNodes.FindNode('xFant') <> nil then
        xFant := Node2.ChildNodes['xFant'].Text;

      if Node2.ChildNodes.FindNode('IE') <> nil then
        IE := Node2.ChildNodes['IE'].Text;

      if Node2.ChildNodes.FindNode('CNPJ') <> nil then
        CNPJ := Node2.ChildNodes['CNPJ'].Text;

      if Node2.ChildNodes.FindNode('CNAE') <> nil then
        CNAE := Node2.ChildNodes['CNAE'].Text;

      if Node2.ChildNodes.FindNode('ender') <> nil then
      begin
        ender := Node2.ChildNodes.FindNode('ender');

        if ender.ChildNodes.FindNode('xLgr') <> nil then
          xLgr := ender.ChildNodes['xLgr'].Text;

        if ender.ChildNodes.FindNode('nro') <> nil then
          nro := ender.ChildNodes['nro'].Text;

        if ender.ChildNodes.FindNode('xCpl') <> nil then
          xCpl := ender.ChildNodes['xCpl'].Text;

        if ender.ChildNodes.FindNode('xBairro') <> nil then
          xBairro := ender.ChildNodes['xBairro'].Text;

        if ender.ChildNodes.FindNode('xMun') <> nil then
          xMun := ender.ChildNodes['xMun'].Text;

        if ender.ChildNodes.FindNode('CEP') <> nil then
          CEP := ender.ChildNodes['CEP'].Text;
      end;

      if SQLTemplate.State in dsEditModes then
      begin
        if xNome <> '' then
        begin
          SQLTemplateCLIEA60RAZAOSOC.AsString := xNome;
          SQLTemplateCLIEA60NOMEFANT.AsString := xFant;
          SQLTemplateCLIEA20IE.AsString := IE;
          if CEP <> '' then
          begin
            SQLTemplateCLIEA8CEPRES.AsString := CEP;
            BuscarCep;
          end;
          SQLTemplateCLIEA5NROENDRES.AsString := nro;
        end;
      end;     
    end;

  end
  else
    ShowMessage(dm.ACBrNFeCad.WebServices.ConsultaCadastro.xMotivo);
end;

procedure TFormCadastroCliente.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if SQLCartaPrimeiroAvisoPRAVCENVIADO.AsString = UpperCase('N') then
    DBGrid2.Canvas.Brush.Color := ClRed
  else
    DBGrid2.Canvas.Brush.Color := $00FFD9D9;
  DBGrid2.Canvas.FillRect(Rect);
  DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormCadastroCliente.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if SQLCartaSegundoAvisoSGAVCENVIADO.AsString = UpperCase('N') then
    DBGrid3.Canvas.Brush.Color := ClRed
  else
    DBGrid3.Canvas.Brush.Color := $00FFD9D9;
  DBGrid3.Canvas.FillRect(Rect);
  DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormCadastroCliente.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if SQLCartaAvisoSPCAVSPCENVIADO.AsString = UpperCase('N') then
    DBGrid4.Canvas.Brush.Color := ClRed
  else
    DBGrid4.Canvas.Brush.Color := $00FFD9D9;
  DBGrid4.Canvas.FillRect(Rect);
  DBGrid4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormCadastroCliente.MnFichaClienteResumidaClick(
  Sender: TObject);
var
  I: Integer;
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
  for i := 0 to SQLTemplate.FieldCount - 1 do
    if (SQLTemplate.Fields[i].AsString <> '') and (TblFichaCliente.FindField(SQLTemplate.Fields[i].FieldName) <> nil) then
      TblFichaCliente.FieldByName(SQLTemplate.Fields[i].FieldName).AsVariant := SQLTemplate.Fields[i].AsVariant;
  TblFichaCliente.Post;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Ficha de Cliente Resumida.rpt';
  Report.Execute;
end;

procedure TFormCadastroCliente.BtnLocalizarClick(Sender: TObject);
var
  ClausulaCP, ClausulaNF: string;
begin
  inherited;
  ClausulaCP := '';
  ClausulaNF := '';
  if (EditDe.Text <> '  /  /    ') and (EditDe.Text <> '  /  /    ') then
  begin
    ClausulaCP := 'CUPOM.CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyyy', EditDe.Date) + ''' AND ' +
      'CUPOM.CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyyy', EditAte.Date) + '''';
    ClausulaNF := 'NOTAFISCAL.NOFIDEMIS >= ''' + FormatDateTime('mm/dd/yyyy', EditDe.Date) + ''' AND ' +
      'NOTAFISCAL.NOFIDEMIS <= ''' + FormatDateTime('mm/dd/yyyy', EditAte.Date) + '''';
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

procedure TFormCadastroCliente.LancaHistorico(IDCliente, IDCupom, IDContasReceber, Parcela: string);
begin
  Application.CreateForm(TFormTelaClienteHistorico, FormTelaClienteHistorico);
  FormTelaClienteHistorico.Cliente := IDCliente;
  FormTelaClienteHistorico.Cupom := IDCupom;
  FormTelaClienteHistorico.ContasReceber := IDcontasReceber;
  FormTelaClienteHistorico.Parcela := Parcela;
  FormTelaClienteHistorico.SQLTemplate.Close;
  FormTelaClienteHistorico.SQLTemplate.ParamByName('Cliente').AsString := IDCliente;
  FormTelaClienteHistorico.SQLTemplate.ParamByName('Cupom').AsString := IDCupom;
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
    DiasAtraso: Double;
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
  while not SQLCheques.Eof do
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
  if (DiasAtraso > 0) and (NroChequesVencidos > 0) then
    EditMedioChq.Value := DiasAtraso / NroChequesVencidos;
  EditNroChq.Value := NroCheques;
  EditPagoChq.Value := TotalPagoCheque;
  EditVencidoChq.Value := TotalVencido;
  EditDividaChq.Value := TotalDivida;
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
    DataSet.FieldByName('NOFIINUMERO').AsString := SQLLocate('NOTAFISCAL', 'NOFIA13ID', 'NOFIINUMERO', '''' + DataSet.FieldByName('NOFIA13ID').AsString + '''');
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
    SQLDadosCompra.Close; //,
    SQLDadosCompra.MacroByName('MOrdem').AsString := 'ORDER BY CTRCDVENC DESC';
    SQLDadosCompra.Open;
  end;
  if Column.FieldName = 'CTRCDULTREC' then
  begin
    SQLDadosCompra.Close; //,
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
  Vencimento: TDate;
  ValorItens, Vendedor: string;
begin
  inherited;
  VlrSaldo := DataSet.FieldByName('CTRCN2VLR').Value;
  if DataSet.FieldByName('NOFIA13ID').AsString <> '' then
  begin
    ValorItens := SQLLocate('NOTAFISCAL', 'NOFIA13ID', 'NOFIN2VLRPRODUTO', '''' + DataSet.FieldByName('NOFIA13ID').AsString + '''');
    if ValorItens <> '' then
      DataSet.FieldByName('CUPON2TOTITENS').AsFloat := StrToFloat(ValorItens)
    else
      DataSet.FieldByName('CUPON2TOTITENS').AsFloat := 0;
  end;
  if DataSet.FieldByName('CUPOA13ID').AsString <> '' then
  begin
    try
      DataSet.FieldByName('CUPON2TOTITENS').AsFloat := StrToFloat(SQLLocate('CUPOM', 'CUPOA13ID', 'CUPON2TOTITENS', '''' + DataSet.FieldByName('CUPOA13ID').AsString + ''''));
    except
      DataSet.FieldByName('CUPON2TOTITENS').AsFloat := 0; // Quando nao tem cabecalho por exemplo na exclusao de movimentos.
    end;
  end;
  if (DataSet.FieldByName('CTRCDULTREC').AsVariant <> Null) and (DataSet.FieldByName('CTRCDULTREC').AsVariant > DataSet.FieldByName('CTRCDVENC').AsVariant) then
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

  DataSet.FieldByName('ValorPagar').Value := 0;
  DataSet.FieldByName('JuroParc').Value := 0;
  DataSet.FieldByName('MultaParc').Value := 0;
  DataSet.FieldByName('DescParc').Value := 0;

  if DataSet.FieldByName('NOFIA13ID').AsString <> '' then
  begin
    DataSet.FieldByName('Documento').asString := 'NF ' + SQLLocate('NOTAFISCAL', 'NOFIA13ID', 'SERIA5COD', '''' + DataSet.FieldByName('NOFIA13ID').asString + '''') + '-' + SQLLocate('NOTAFISCAL', 'NOFIA13ID', 'NOFIINUMERO', '''' + DataSet.FieldByName('NOFIA13ID').asString + '''');
    if DataSet.FieldByName('Documento').AsString[1] = 'N' then
      DataSet.FieldByName('Documento').asString := DataSet.FieldByName('EMPRICOD').AsString +
        ' - NF ' + DataSet.FieldByName('CTRCA30NRODUPLICBANCO').AsString;
    try
      Vendedor := SQLLocate('NOTAFISCAL', 'NOFIA13ID', 'VENDICOD', '''' + DataSet.FieldByName('NOFIA13ID').asString + '''');
      if Vendedor <> '' then
        DataSet.FieldByName('VENDA60NOME').asString := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', Vendedor);
    except
    end;
  end
  else
  begin
    if DataSet.FieldByName('CUPOA13ID').AsString <> '' then
    begin
      try
        Vendedor := SQLLocate('CUPOM', 'CUPOA13ID', 'VENDICOD', '''' + DataSet.FieldByName('CUPOA13ID').asString + '''');
        if Vendedor <> '' then
          DataSet.FieldByName('VENDA60NOME').asString := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', Vendedor);
      except
      end;
      DataSet.FieldByName('Documento').asString := 'CP - ' + DataSet.FieldByName('CUPOA13ID').asString;
    end
    else
    begin
      if DataSet.FieldByName('PDVDA13ID').AsString <> '' then
      begin
        try
          Vendedor := SQLLocate('PEDIDOVENDA', 'PDVDA13ID', 'VENDICOD', '''' + DataSet.FieldByName('PDVDA13ID').asString + '''');
          if Vendedor <> '' then
            DataSet.FieldByName('VENDA60NOME').asString := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', Vendedor);
        except
        end;
        DataSet.FieldByName('Documento').asString := 'PV - ' + DataSet.FieldByName('PDVDA13ID').asString;
      end;
    end;
  end;

  //AVALISTA
  if DataSet.FieldByName('AVALA13ID').asVariant <> Null then
    DataSet.FieldByName('AVALA60RAZAOSOC').AsString := SQLLocate('AVALISTA', 'AVALA13ID', 'AVALA60RAZAOSOC', '''' + DataSet.FieldByName('AVALA13ID').AsString + '''')
  else
    DataSet.FieldByName('AVALA60RAZAOSOC').AsString := 'NAO INFORMADO';

  if DataSet.FieldByName('AVALA60RAZAOSOC').AsString = '' then
    DataSet.FieldByName('AVALA60RAZAOSOC').AsString := MensagemLookUp;

  //PORTADOR
  if DataSet.FieldByName('PORTICOD').asVariant <> Null then
    DataSet.FieldByName('PORTA60DESCR').AsString := SQLLocate('PORTADOR', 'PORTICOD', 'PORTA60DESCR', DataSet.FieldByName('PORTICOD').AsString)
  else
    DataSet.FieldByName('PORTA60DESCR').AsString := 'NAO INFORMADO';

  if DataSet.FieldByName('PORTA60DESCR').AsString = '' then
    DataSet.FieldByName('PORTA60DESCR').AsString := MensagemLookUp;

  if (DataSet.FieldByName('CTRCA30NRODUPLICBANCO').asVariant <> Null) and (DataSet.FieldByName('Documento').AsString = '') then
    DataSet.FieldByName('Documento').asString := DataSet.FieldByName('CTRCA30NRODUPLICBANCO').Value;

  if (DataSet.FieldByName('CTRCA13ID').asVariant <> Null) and (DataSet.FieldByName('Documento').AsString = '') then
    DataSet.FieldByName('Documento').asString := DataSet.FieldByName('CTRCA13ID').Value;

  if (DataSet.FieldByName('CTRCDVENC').AsVariant <> Null) and (DataSet.FieldByName('CTRCDULTREC').AsVariant = null) then
    DataSet.FieldByName('Atraso').AsFloat := (DataBase - Vencimento);

  if (DataSet.FieldByName('CTRCDVENC').AsVariant <> Null) and (DataSet.FieldByName('CTRCDULTREC').AsVariant <> null) then
    DataSet.FieldByName('Atraso').AsFloat := (DataSet.FieldByName('CTRCDULTREC').AsDateTime - DataSet.FieldByName('CTRCDVENC').AsVariant);

  // Se pagou com antecedencia, Zera para nao influenciar no calculo do atraso medio!
  if (DataSet.FieldByName('Atraso').Value < 0) then
    DataSet.FieldByName('Atraso').Value := 0;

  if VlrSaldo > 0 then
  begin
    if DataSet.FieldByName('CTRCN2TXJURO').Value > 0 then
      DataSet.FieldByName('JuroParc').Value := CalculaJuroMultaDesc(VlrSaldo,
        DataSet.FieldByName('CTRCN2TXJURO').Value,
        Vencimento,
        DataBase,
        0,
        DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').AsInteger,
        'Juro',
        DataSet.FieldByName('CUPOA13ID').AsString,
        DataSet.FieldByName('CTRCINROPARC').AsString)
    else
      DataSet.FieldByName('JuroParc').Value := 0;


    if DataSet.FieldByName('CTRCN2TXMULTA').Value > 0 then
      DataSet.FieldByName('MultaParc').Value := CalculaJuroMultaDesc(VlrSaldo,
        DataSet.FieldByName('CTRCN2TXMULTA').Value,
        Vencimento,
        DataBase,
        0,
        DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLMUL').Value,
        'Multa',
        DataSet.FieldByName('CUPOA13ID').AsString,
        DataSet.FieldByName('CTRCINROPARC').AsString)
    else
      DataSet.FieldByName('MultaParc').Value := 0;

    if DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCTAXACOBR').Value > 0 then
      DataSet.FieldByName('TxCobrParc').Value := CalculaJuroMultaDesc(VlrSaldo,
        DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCTAXACOBR').Value,
        Vencimento,
        DataBase,
        0,
        0,
        'TaxaCobranca',
        DataSet.FieldByName('CUPOA13ID').AsString,
        DataSet.FieldByName('CTRCINROPARC').AsString)
    else
      DataSet.FieldByName('TxCobrParc').Value := 0;


    if DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value > 0 then
      DataSet.FieldByName('DescParc').Value := CalculaJuroMultaDesc(VlrSaldo,
        DM.SQLConfigCrediario.Fieldbyname('CFCRN2PERCADIANT').Value,
        Vencimento,
        DataBase,
        0,
        DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASADIANT').Value,
        'Desconto',
        DataSet.FieldByName('CUPOA13ID').AsString,
        DataSet.FieldByName('CTRCINROPARC').AsString)
    else
      DataSet.FieldByName('DescParc').Value := 0;

    DataSet.FieldByName('ValorPagar').Value := VlrSaldo +
      DataSet.FieldByName('JuroParc').Value +
      DataSet.FieldByName('MultaParc').Value +
      DataSet.FieldByName('TxCobrParc').Value -
      DataSet.FieldByName('DescParc').Value;
  end;
end;

procedure TFormCadastroCliente.DBGridDadosCompraDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (SQLDadosCompra.Fieldbyname('ValorPagar').Value = 0) then
    DBGridDadosCompra.Canvas.Font.Color := clNavy;

  if SQLDadosCompraCTRCCSTATUS.AsString = 'N' then
    DBGridDadosCompra.Canvas.Font.Color := clBlue;

  if (SQLDadosCompra.Fieldbyname('CTRCDVENC').AsDateTime > DataBase) and (SQLDadosCompra.Fieldbyname('ValorPagar').Value > 0) then
    DBGridDadosCompra.Canvas.Font.Color := clGreen;

  if (SQLDadosCompra.Fieldbyname('CTRCDVENC').AsDateTime < DataBase) and (SQLDadosCompra.Fieldbyname('ValorPagar').Value > 0) then
    DBGridDadosCompra.Canvas.Font.Color := clRed;

  if SQLDadosCompra.Fieldbyname('CheqDevolvido').AsString = 'S' then
    DBGridDadosCompra.Canvas.Font.Color := clMaroon;

  TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormCadastroCliente.SQLTemplateMTBLICODChange(Sender: TField);
begin
  inherited;
  if (SQLTemplate.State = dsEdit) and
    (SQLLocate('USUARIO', 'USUAICOD', 'USUACDESBLOQCLI', IntToStr(DM.UsuarioAtual)) <> 'S') then
  begin
    Informa('Você não tem permissão para desbloquear clientes !');
    TField(Sender).Value := TField(Sender).OldValue;
  end;
end;

procedure TFormCadastroCliente.ComboPlanoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F2 then
    BtnPlanoRecebimento.Click;

  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
      or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormCadastroCliente.ComboProfissaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    AcessaProfissao.Click;

  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
      or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormCadastroCliente.ComboMotivoBloqueioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    AcessaMotBloq.Click;

  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
      or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormCadastroCliente.ComboVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F2 then
    AcessaVendedor.Click;

  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
      or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormCadastroCliente.SQLDadosCompraAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  // Redesenha o Grid por causa do Zebrado
  DBGridDadosCompra.Repaint;
end;

procedure TFormCadastroCliente.AcessaTipoClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('TPCLICOD');
  FieldOrigem := 'TPCLICOD';
  DataSetLookup := SQLTipoCliente;
  CriaFormulario(TFormCadastroTipoCliente, 'FormCadastroTipoCliente', False, True, True, 'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.Value);
end;

procedure TFormCadastroCliente.DBEditNomeExit(Sender: TObject);
begin
  inherited;
  if (dstemplate.State in [dsinsert, dsedit]) and (sqltemplateCLIEA60NOMEFANT.Value = '') and (SQLTemplateCLIEA5FISJURID.Value = 'F') then
    sqltemplateCLIEA60NOMEFANT.Value := SQLTemplateCLIEA60RAZAOSOC.Value;
end;

procedure TFormCadastroCliente.MnCorrigeemailparaminusculoClick(
  Sender: TObject);
begin
  inherited;
  SQLTemplate.First;
  while not SQLTemplate.eof do
  begin
    if SQLTemplateCLIEA60EMAIL.Value <> '' then
    begin
      SQLTemplate.Edit;
      SQLTemplateCLIEA60EMAIL.Value := LowerCase(SQLTemplateCLIEA60EMAIL.Value);
      SQLTemplate.Post;
    end;
    SQLTemplate.next;
  end;
end;

procedure TFormCadastroCliente.MnExtratoClienteClick(Sender: TObject);
begin
  inherited;
  //CriaFormulario(TFormRelatorioExtratoCliente,'FormRelatorioExtratoCliente',False,True,True,'') ;  #ver
end;

procedure TFormCadastroCliente.DBGridListaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if SQLTemplateMTBLICOD.AsString <> '' then
    DBGridLista.Canvas.Font.Color := clRed;

  DBGridLista.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TFormCadastroCliente.BloquearClientesqueestejamemSPC1Click(
  Sender: TObject);
var IDCliente: string;
begin
  inherited;
  if not SQLTemplate.Active then SQLTemplate.Open;
  SQLTemplate.First;
  if not SQLTemplate.IsEmpty then
  begin
    while not SQLTemplate.eof do
    begin
      if Pergunta('Nï¿½o', 'Deseja bloquear todos os clientes que estejam na lista de SPC pela cobranï¿½a?') then
      begin
        if SQLLocate('CARTAAVISOSPC', 'CLIEA13ID', 'CLIEA13ID', '''' + SQLTemplateCLIEA13ID.Value + '''') = SQLTemplateCLIEA13ID.Value then
        begin
          SQLTemplate.Edit;
          SQLTemplateMTBLICOD.Value := 2;
          SQLTemplate.Post;
        end;
      end;
      SQLTemplate.Next;
    end;
    ShowMessage('Concluído com Sucesso!');
  end;
end;

procedure TFormCadastroCliente.MnRecalcularoLimitedeCreditoInicialClick(
  Sender: TObject);
var LimiteInicial: Double;
begin
  inherited;
  // Calcula limite Original
  while not SQLTemplate.Eof do
  begin
    if SQLTemplateCLIEN2RENDA.Value > 0 then
    begin
      try
        if (DM.SQLConfigVenda.FieldByName('CFVECRENDCONJNOLIM').Value = 'S') and (SQLTemplateCLIEN2CONJUGERENDA.Value > 0) then
          LimiteInicial := (SQLTemplate.FieldByName('CLIEN2RENDA').Value +
            SQLTemplate.FieldByName('CLIEN2CONJUGERENDA').Value) *
            (DM.SQLConfigVenda.FieldByName('CFVEN2PERCLIMCRED').Value / 100)
        else
          LimiteInicial := (SQLTemplate.FieldByName('CLIEN2RENDA').Value) *
            (DM.SQLConfigVenda.FieldByName('CFVEN2PERCLIMCRED').Value / 100);

        SQLTemplate.Edit;
        SQLTemplateCLIEN2LIMITECRED.Value := LimiteInicial;
        SQLTemplate.Post;
      except
        Application.ProcessMessages;
      end;
    end;
    SQLTemplate.Next;
  end;
end;

procedure TFormCadastroCliente.MnContratoCreditoClick(Sender: TObject);
begin
  inherited;
  ppTexto.LoadFromFile('..\LAY-OUTS\CONTRATOASSOCIADO.rtf');
  ReportTextos.Print;
end;

procedure TFormCadastroCliente.MnProdutoscomDescontoporClienteClick(
  Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  CriaFormulario(TFormCadastroClienteProduto,
    'FormCadastroClienteProduto',
    True,
    False, True,
    SQLTemplateCLIEA60RAZAOSOC.AsString);
end;

procedure TFormCadastroCliente.AcessaProfissionalClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PROFA13ID');
  FieldOrigem := 'PROFA13ID';
  DataSetLookup := SQLProfissional;
  CriaFormulario(TFormCadastroProfissional, 'FormCadastroProfissional', False, True, False, 'Cliente ' + SQLTemplateCLIEA60RAZAOSOC.Value);
end;

procedure TFormCadastroCliente.DBComboBox1Enter(Sender: TObject);
begin
  inherited;
//  SQLCidades.SQL.Text := 'Select Distinct  CLIEA60CIDRES from CLIENTE order by CLIEA60CIDRES';
  if SQLTemplateCLIEA2UFRES.AsString <> '' then
  begin
    SQLCidades.SQL.Text := 'select * from cidade where sigla = ''' + SQLTemplateCLIEA2UFRES.AsString + '''order by NOME';
    SQLCidades.Prepare;
    SQLCidades.Open;
    DBComboBox1.Items.Clear;
    while not SQLCidades.Eof do
    begin
      DBComboBox1.Items.Add(SQLCidades.Fieldbyname('NOME').AsString);
      SQLCidades.Next;
    end;
    SQLCidades.Close;
  end;
end;

procedure TFormCadastroCliente.DBEdit49Enter(Sender: TObject);
begin
  inherited;
{  if (DBComboBox1.Text <> '') and (SQLTemplateCLIEIMUNICODFED.asstring = '') then
  begin
    SQLCidades.SQL.Text := 'Select DISTINCT CLIEIMUNICODFED from CLIENTE where (CLIEA60CIDRES = :xCidade) AND (CLIEIMUNICODFED IS NOT NULL)';
    SQLCidades.Prepare;
    SQLCidades.ParamByName('xCidade').asstring := DBComboBox1.Text;
    SQLCidades.Open;
    if SQLCidades.FieldByName('CLIEIMUNICODFED').AsString <> '' then
      SQLTemplateCLIEIMUNICODFED.asstring := SQLCidades.FieldByName('CLIEIMUNICODFED').AsString;
    SQLCidades.Close;
  end;}
  SQLCidades.Close;
  SQLCidades.SQL.Clear;
  SQLCidades.SQL.Text := 'select id from cidade where nome = ''' + SQLTemplateCLIEA60CIDRES.AsString + ''' and SIGLA = ''' + SQLTemplateCLIEA2UFRES.AsString + '''';
  SQLCidades.Open;
  if not (SQLCidades.IsEmpty) then
    SQLTemplateCLIEIMUNICODFED.asstring := SQLCidades.FieldByName('ID').AsString;
  SQLCidades.Close;
end;

procedure TFormCadastroCliente.rxComboPaisExit(Sender: TObject);
begin
  inherited;
  if rxComboPais.Text <> 'BRASIL' then
  begin
    SQLTemplateCLIEA60CIDRES.asstring := 'EXTERIOR';
    SQLTemplateCLIEIMUNICODFED.AsInteger := 9999999;
  end;
end;

procedure TFormCadastroCliente.DBEdit20Exit(Sender: TObject);
begin
  inherited;
//  BuscarCep;
  btnBuscaCep.Click;
end;

procedure TFormCadastroCliente.DBGridDadosCompraDblClick(Sender: TObject);
begin
  inherited;
  {Abrir Resumo de Pagamentos}
  Application.CreateForm(TFormTelaDetalheRecebimento, FormTelaDetalheRecebimento);
  FormTelaDetalheRecebimento.LabelTitulo.Caption := 'Detalhamento do Contrato => ' + SQLDadosCompraDocumento.Value;
  FormTelaDetalheRecebimento.SQLRecebimento.Close;
  FormTelaDetalheRecebimento.SQLRecebimento.ParamByName('CTRCA13ID').Value := SQLDadosCompraCTRCA13ID.Value;
  FormTelaDetalheRecebimento.SQLRecebimento.Open;
  FormTelaDetalheRecebimento.ShowModal;
end;

procedure TFormCadastroCliente.CorrigeCamposparaMaiusculo1Click(
  Sender: TObject);
begin
  inherited;
  sqltemplate.DisableControls;
  while not SQLTemplate.eof do
  begin
    SQLTemplate.Edit;
    SQLTemplateCLIEA60RAZAOSOC.Value := UpperCase(SQLTemplateCLIEA60RAZAOSOC.Value);
    SQLTemplateCLIEA60NOMEFANT.Value := UpperCase(SQLTemplateCLIEA60NOMEFANT.Value);
    SQLTemplateCLIEA60NOMEMAE.Value := UpperCase(SQLTemplateCLIEA60NOMEMAE.Value);
    SQLTemplateCLIEA60NOMEPAI.Value := UpperCase(SQLTemplateCLIEA60NOMEPAI.Value);

    SQLTemplateCLIEA60BAICOB.Value := UpperCase(SQLTemplateCLIEA60BAICOB.Value);
    SQLTemplateCLIEA60BAIEMPRESA.Value := UpperCase(SQLTemplateCLIEA60BAIEMPRESA.Value);
    SQLTemplateCLIEA60BAIRES.Value := UpperCase(SQLTemplateCLIEA60BAIRES.Value);

    SQLTemplateCLIEA60CIDCOB.Value := UpperCase(SQLTemplateCLIEA60CIDCOB.Value);
    SQLTemplateCLIEA60CIDEMPRESA.Value := UpperCase(SQLTemplateCLIEA60CIDEMPRESA.Value);
    SQLTemplateCLIEA60CIDRES.Value := UpperCase(SQLTemplateCLIEA60CIDRES.Value);

    SQLTemplateCLIEA60ENDCOB.Value := UpperCase(SQLTemplateCLIEA60ENDCOB.Value);
    SQLTemplateCLIEA60ENDEMPRESA.Value := UpperCase(SQLTemplateCLIEA60ENDEMPRESA.Value);
    SQLTemplateCLIEA60ENDRES.Value := UpperCase(SQLTemplateCLIEA60ENDRES.Value);

    SQLTemplateCLIETOBS1.Value := UpperCase(SQLTemplateCLIETOBS1.Value);
    SQLTemplateCLIETOBS2.Value := UpperCase(SQLTemplateCLIETOBS2.Value);
    SQLTemplateCLIETOBSCOB.Value := UpperCase(SQLTemplateCLIETOBSCOB.Value);

    SQLTemplate.Post;

    SQLTemplate.next;
  end;
  Showmessage('Concluido!');
  sqltemplate.EnableControls;
end;

procedure TFormCadastroCliente.btImprimeComprasClienteClick(
  Sender: TObject);
var QtdVolume: Double;
begin
  inherited;
  if PagePrincipal.ActivePage <> TabSheetItens then
  begin
    Informa('Por favor selecione a página ''Itens Comprados'' antes de executar esta função!');
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
  TblItensComprados.close;
  TblItensComprados.open;
  TblItensComprados.First;
  while not TblItensComprados.eof do
  begin
    TblItensComprados.Edit;
    try
      QtdVolume := StrToFloat(SQLLocate('Produto', 'PRODICOD', 'PRODN3PESOBRUTO', TblItensCompradosPRODICOD.AsString));
    except
      QtdVolume := 0;
    end;
    if QtdVolume > 0 then
      TblItensCompradosNroVolumes.Value := TblItensCompradosQTDE.Value / QtdVolume
    else
      TblItensCompradosNroVolumes.Value := 0;
    TblItensCompradosVLRTOTITEM.Value := TblItensCompradosVLRUNIT.Value * TblItensCompradosQTDE.Value;
    TblItensComprados.Post;
    TblItensComprados.next;
  end;
  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem de Itens Comprados.rpt';
  Report.ReportTitle := 'Listagem de Itens Comprados';
  Report.WindowStyle.Title := 'Listagem de Itens Comprados';
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Empresa';
  Report.Formulas.Formula.Text := '''' + SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60RAZAOSOC', EmpresaPadrao) + '''';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Emissao';
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '''';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Cliente';
  Report.Formulas.Formula.Text := '''' + SQLTemplateCLIEA60RAZAOSOC.AsString + '''';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Send;
  Report.Execute;
end;

procedure TFormCadastroCliente.btImpConferenciaDepositoClick(
  Sender: TObject);
var QtdVolume: Double;
begin
  inherited;
  if PagePrincipal.ActivePage <> TabSheetItens then
  begin
    Informa('Por favor selecione a página ''Itens Comprados'' antes de executar esta função!');
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
  TblItensComprados.close;
  TblItensComprados.open;
  TblItensComprados.First;
  while not TblItensComprados.eof do
  begin
    TblItensComprados.Edit;
    TblItensCompradosVLRTOTITEM.Value := TblItensCompradosVLRUNIT.Value * TblItensCompradosQTDE.Value;
    QtdVolume := StrToFloat(SQLLocate('Produto', 'PRODICOD', 'PRODN3PESOBRUTO', TblItensCompradosPRODICOD.AsString));
    if QtdVolume > 0 then
      TblItensCompradosNroVolumes.Value := TblItensCompradosQTDE.Value / QtdVolume
    else
      TblItensCompradosNroVolumes.Value := 0;
    TblItensComprados.Post;
    TblItensComprados.next;
  end;
  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem de Itens Comprados Conferencia.rpt';
  Report.ReportTitle := 'Listagem de Itens Comprados';
  Report.WindowStyle.Title := 'Listagem de Itens Comprados';
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Empresa';
  Report.Formulas.Formula.Text := '''' + SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60RAZAOSOC', EmpresaPadrao) + '''';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Emissao';
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '''';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Cliente';
  Report.Formulas.Formula.Text := '''' + SQLTemplateCLIEA60RAZAOSOC.AsString + '''';
  //--------------------------------------------------------------------------\\
  Report.Formulas.Send;
  Report.Execute;
end;

procedure TFormCadastroCliente.SQLTemplateAfterPost(DataSet: TDataSet);
begin
  inherited;
  EnviaClientePDVs('N');
end;

function TFormCadastroCliente.EnviaClientePDVs(Tipo: string): boolean;
var i: integer;
begin
  {Atualiza a tabela ClientePDVs}

  {Filtra Terminais que devem receber carga}
  dm.sqlconsulta.Close;
  dm.sqlconsulta.sql.clear;
  dm.sqlconsulta.sql.Text := 'Select Termicod from TERMINAL where TERMCTIPO = ''C''';
  dm.sqlconsulta.Open;
  if not dm.sqlconsulta.IsEmpty then
  begin
    while not dm.sqlconsulta.eof do
    begin
      SQLClientePdvs.close;
      SQLClientePdvs.MacroByName('MFiltro').Value := 'CLIEA13ID=''' + SQLTemplateCLIEA13ID.AsString + ''' and TERMICOD=' + dm.sqlconsulta.fieldbyname('TERMICOD').AsString;
      SQLClientePdvs.Open;
      if SQLClientePdvs.IsEmpty then
      begin
        SQLClientePdvs.Append;
        SQLClientePdvs.fieldbyname('TERMICOD').AsString := dm.SQLConsulta.fieldbyname('TERMICOD').AsString;
        SQLClientePdvs.fieldbyname('CLIEA13ID').AsString := SQLTemplateCLIEA13ID.AsString;
        SQLClientePdvs.fieldbyname('EXCLUIR').AsString := Tipo;
        SQLClientePdvs.Post;
      end;
          {PULA Terminal}
      dm.sqlconsulta.next;
    end;
  end;
end;

procedure TFormCadastroCliente.MnCargaemmassaparaosPDVsClick(
  Sender: TObject);
begin
  inherited;
  sqltemplate.DisableControls;
  sqltemplate.Close;
  sqltemplate.macrobyname('MFiltro').value := '0=0';
  sqltemplate.Open;
  while not sqltemplate.eof do
  begin
    labelstatus.Caption := 'Cliente: ' + SQLTemplateCLIEA13ID.AsString;
    labelstatus.Update;
    Application.ProcessMessages;

    EnviaClientePDVs('N');
    sqltemplate.Next;
  end;
  sqltemplate.Close;
  sqltemplate.EnableControls;
end;

procedure TFormCadastroCliente.ppHeaderBand2BeforePrint(Sender: TObject);
begin
  inherited;
  ppLbClienteExtratoCredito.caption := 'Cliente: ' + SQLTemplateCLIEA60RAZAOSOC.Value;
end;

procedure TFormCadastroCliente.btCreditoResumidoClick(Sender: TObject);
begin
  inherited;
  ppExtratoCreditoResumido.print;
end;

procedure TFormCadastroCliente.ppExtratoCreditoResumidoPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppExtratoCreditoResumido.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppExtratoCreditoResumido.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormCadastroCliente.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  inherited;
  pplbsaldo.caption := 'Saldo Atual de Credito Antecipado esta em R$ ' + formatfloat('##0.00', SaldoTotalCreditosAntecipados.Value);
end;

procedure TFormCadastroCliente.btCancelaCreditoClick(Sender: TObject);
var ValorDebito: double;
var Historico: string;
begin
  inherited;
{  ValorDebito := 0;
  ValorDebito := StrToFloat(InputBox('Informe o Valor', 'Prompt', FormatFloat('##0.00', ValorDebito)));
  Historico   := UpperCase(InputBox('Informe o Motivo', 'Prompt',Historico));

  if Historico = '' then
    begin
      Showmessage('ï¿½ obrigado informar um motivo!');
      Exit;
    end;
  if ValorDebito <= 0 then
    begin
      Showmessage('ï¿½ obrigado informar um valor maior que zero!');
      Exit;
    end;

  SQLCredito.Append;
  SQLCreditoID.Value            := SQLMax('CLIENTECREDITO','ID','0=0');
  SQLCreditoDATA.AsString       := FormatDateTime('dd/mm/yyyy',now);
  SQLCreditoCUPOA13ID.Value     := '';
  SQLCreditoCLIEA13ID.Value     := sqltemplatecliea13id.Value;
  SQLCreditoVALORCREDITO.Value  := 0;
  SQLCreditoVALORDEBITO.Value   := ValorDebito;
  SQLCreditoHISTORICO.Value     := Historico;
  SQLCredito.Post; }
end;

procedure TFormCadastroCliente.ListagemPersonalizada1Click(
  Sender: TObject);
var CaminhoNomeArquivo, Linha, sFone1, sFone2, S: string;
  I: Integer;
  Arquivo: TextFile;
begin
  inherited;
  if Pergunta('Nao', 'Deseja gerar na pasta o arquivo para o Clientes Telefones.txt?') then
  begin
    CaminhoNomeArquivo := 'C:\Clientes_Telefones.txt';
    AssignFile(Arquivo, CaminhoNomeArquivo);
    Rewrite(Arquivo);
    Reset(Arquivo);
    Append(Arquivo);
    dm.zConsulta.Close;
    dm.zConsulta.sql.Clear;
    dm.zConsulta.sql.Add('Select CLIEA15FONE1, CLIEA15FONE2 from CLIENTE');
    dm.zConsulta.Open;
    dm.zConsulta.First;
    Linha := '';
      // Criar Proximas Linhas
    while not dm.zConsulta.Eof do
    begin
      sFone1 := dm.zConsulta.fieldbyname('CLIEA15FONE1').AsString;
      sFone2 := dm.zConsulta.fieldbyname('CLIEA15FONE2').AsString;

          {Deixa Apenas Numeros}
      S := '';
      for I := 1 to Length(sFone1) do
      begin
        if (sFone1[I] in ['0'..'9']) then
        begin
          S := S + Copy(sFone1, I, 1);
        end;
      end;
      sFone1 := S;

      S := '';
      for I := 1 to Length(sFone2) do
      begin
        if (sFone2[I] in ['0'..'9']) then
        begin
          S := S + Copy(sFone2, I, 1);
        end;
      end;
      sFone2 := S;
          {Fim Limpa Fone}

      try
        if (sFone1 <> '') and (length(sFone1) > 7) then
        begin
          Linha := sFone1;
          Writeln(Arquivo, Linha);
        end;
        if (sFone2 <> '') and (length(sFone2) > 7) then
        begin
          Linha := sFone2;
          Writeln(Arquivo, Linha);
        end;
      except
        Application.ProcessMessages;
      end;
      dm.zConsulta.Next;
    end;

      // Fechar Arquivo
    CloseFile(Arquivo);
    ShowMessage('Concluído com Sucesso!');
  end;
  DM.zConsulta.Close;
end;

procedure TFormCadastroCliente.ConsultaClienteSefaz1Click(Sender: TObject);
var
  UF, DOC: string;
begin
  inherited;

  InputQuery('Informe um Estado', 'UF:', UF);
  InputQuery('Informe um Documento', 'CPF/CNPJ:', DOC);
  consultarCadastro(UF, DOC);
end;

procedure TFormCadastroCliente.RxSpeedButton1Click(Sender: TObject);
begin
  inherited;
  if SQLTemplateCLIEA14CGC.AsString <> '' then
    consultarCadastro(dm.sqlEmpresa.FieldByName('empra2uf').AsString,SQLTemplateCLIEA14CGC.AsString);
end;

procedure TFormCadastroCliente.BuscarCep;
begin
 if DBEdit20.Text <> '' then
  begin
    SQLCidades.SQL.Text := 'Select * FROM CEP WHERE CEPA8CEP = :xCep';
    SQLCidades.Prepare;
    SQLCidades.ParamByName('xCep').asstring := DBEdit20.Text;
    SQLCidades.Open;
    if SQLCidades.FieldByName('CEPA8CEP').AsString <> '' then
    begin
      SQLTemplateCLIEA60ENDRES.AsString := SQLCidades.FieldByName('CEPA60LOGRADOURO').AsString;
      SQLTemplateCLIEA60BAIRES.AsString := SQLCidades.FieldByName('CEPA60BAIRRO1').AsString;
      SQLTemplateCLIEA60CIDRES.AsString := SQLCidades.FieldByName('CEPA60CIDADE').AsString;
      SQLTemplateCLIEA2UFRES.AsString := SQLCidades.FieldByName('CEPA2ESTADO').AsString;
      SQLTemplateCLIEIMUNICODFED.AsInteger := SQLCidades.FieldByName('CEPICODMUNICIPIO').AsInteger;
    end;
    SQLCidades.Close;
  end;
end;

procedure TFormCadastroCliente.ACBrCEP1BuscaEfetuada(Sender: TObject);
var
  i : integer;
begin
  inherited;
  for i := 0 to ACBrCEP1.Enderecos.Count - 1 do
  begin
    SQLTemplateCLIEA60ENDRES.AsString := ACBrCEP1.Enderecos[i].Logradouro;
    SQLTemplateCLIEA60BAIRES.AsString := ACBrCEP1.Enderecos[i].Bairro;
    SQLTemplateCLIEA60CIDRES.AsString := ACBrCEP1.Enderecos[i].Municipio;
    SQLTemplateCLIEA2UFRES.AsString := ACBrCEP1.Enderecos[i].UF;
    SQLTemplateCLIEIMUNICODFED.AsInteger := StrToInt(ACBrCEP1.Enderecos[i].IBGE_Municipio);
    SQLTemplateCLIEA8CEPRES.AsString := StringReplace(ACBrCEP1.Enderecos[i].CEP,'-','',[rfReplaceAll]);
  end;

end;

procedure TFormCadastroCliente.btnBuscaCepClick(Sender: TObject);
begin
  inherited;
  ACBrCEP1.BuscarPorCEP(DBEdit20.Text);
end;

end.




