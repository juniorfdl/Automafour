unit CadastroNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxDBComb, ToolEdit, RXDBCtrl, DBCtrls, VarSys, FormResources,
  EDBNum, RxLookup, CurrEdit, UCrpe32, Placemnt, MemTable, xmldom,
  XMLIntf, msxmldom, XMLDoc, FileCtrl, shellapi, Inifiles, ACBrNFe, TFlatButtonUnit,
  // units nfe acbr
  pcnConversao, ACBrUtil, SHDocVw, OleCtrls, ACBrNFeDANFEClass,
  Serial, AdvGlowButton, FMTBcd, DBClient, Provider,
  SqlExpr, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, cxTextEdit,
  cxDBEdit,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel, ACBrBase,
  ACBrMail, ACBrNFeDANFeRLClass, ACBrDFe;

type
  TFormCadastroNotaFiscal = class(TFormCadastroTEMPLATE)
    Button5: TRxSpeedButton;
    SQLTemplateNOFIA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateNOFIICOD: TIntegerField;
    SQLTemplateEMPRICODDEST: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateFORNICOD: TIntegerField;
    SQLTemplateSERIA5COD: TStringField;
    SQLTemplateNOFIINUMERO: TIntegerField;
    SQLTemplateNOFICSTATUS: TStringField;
    SQLTemplateNOFIDEMIS: TDateTimeField;
    SQLTemplateCFOPA5COD: TStringField;
    SQLTemplateOPESICOD: TIntegerField;
    SQLTemplateNOFIN2BASCALCSUBS: TFloatField;
    SQLTemplateNOFIN2BASCALCCIPI: TFloatField;
    SQLTemplateNOFIN2VLRIPI: TFloatField;
    SQLTemplateNOFIN2VLRDESC: TFloatField;
    SQLTemplateNOFIN2VLRFRETE: TFloatField;
    SQLTemplateNOFIN2VLRSEGURO: TFloatField;
    SQLTemplateNOFIN2VLROUTRASDESP: TFloatField;
    SQLTemplateNOFIN2VLRSERVICO: TFloatField;
    SQLTemplateNOFIN2VLRISSQN: TFloatField;
    SQLTemplateNOFIN2VLRPRODUTO: TFloatField;
    SQLTemplateNOFIN2VLRNOTA: TFloatField;
    SQLTemplateNOFICFRETEPORCONTA: TStringField;
    SQLTemplateTRANICOD: TIntegerField;
    SQLTemplateNOFIN3QUANT: TFloatField;
    SQLTemplateNOFIA15MARCA: TStringField;
    SQLTemplateNOFIN3PESBRUT: TFloatField;
    SQLTemplateNOFIN3PESLIQ: TFloatField;
    SQLTemplateNOFIA8PLACAVEIC: TStringField;
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplateVENDICOD: TIntegerField;
    MnImportarDadosdoPedidodeVenda: TMenuItem;
    MnCancelarNotadeFiscal: TMenuItem;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBDateEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    ComboStatus: TRxDBComboBox;
    SQLFornecedor: TRxQuery;
    SQLFornecedorFORNICOD: TIntegerField;
    SQLFornecedorFORNA2UF: TStringField;
    SQLFornecedorFORNA60RAZAOSOC: TStringField;
    SQLTransportadora: TRxQuery;
    SQLTransportadoraTRANICOD: TIntegerField;
    SQLTransportadoraTRANA60RAZAOSOC: TStringField;
    SQLPlanoContas: TRxQuery;
    SQLPlanoContasPLCTA15COD: TStringField;
    SQLPlanoContasPLCTA60DESCR: TStringField;
    SQLPlanoRecebimento: TRxQuery;
    SQLPlanoRecebimentoPLRCICOD: TIntegerField;
    SQLPlanoRecebimentoPLRCA60DESCR: TStringField;
    SQLTemplateTransportadoraLookup: TStringField;
    SQLTemplateContaLookUp: TStringField;
    SQLTemplateCliFornEmpEnderecoLookUp: TStringField;
    SQLTemplateCliFornEmpEstadoLookUp: TStringField;
    SQLTemplateCliFornEmpBairroLookUp: TStringField;
    SQLTemplateCliFornEmpCEPLookUp: TStringField;
    SQLTemplateCliFornEmpCGCCPFLookUp: TStringField;
    SQLTemplateCliFornEmpIERGLookUp: TStringField;
    SQLTemplateCliFornEmpCidadeLookUp: TStringField;
    SQLTemplateCliFornEmpFoneLookUp: TStringField;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    SQLTemplateVendedorLookUp: TStringField;
    Label14: TLabel;
    BtnVendedor: TSpeedButton;
    SQLTemplatePlanoRecebimentoLookUp: TStringField;
    GroupBoxCliFornEmp: TGroupBox;
    BtnCliFornEmp: TSpeedButton;
    DBEditCod: TDBEdit;
    DBEdit17: TDBEdit;
    DBEditCGCCPF: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    EditIERG: TDBEdit;
    DBEdit14: TDBEdit;
    SQLTemplateCliFornEmpLookUp: TStringField;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    Label32: TLabel;
    DBEditPV: TDBEdit;
    SQLTemplateNOFIA30NROPEDCOMP: TStringField;
    SQLTemplateNOFIA30COMPRADOR: TStringField;
    BtnPedido: TSpeedButton;
    PaginaImpostos: TTabSheet;
    Button6: TRxSpeedButton;
    GroupBox2: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label42: TLabel;
    Label44: TLabel;
    Label49: TLabel;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit42: TDBEdit;
    Label41: TLabel;
    SQLTemplateNOFIN2VLRICMSFRETE: TFloatField;
    SQLNotaFiscalItens: TRxQuery;
    ImprimirEtiquetasdeCdigodeBarras1: TMenuItem;
    SQLTemplateEmpresaUFLookUp: TStringField;
    SQLTemplateCampoImpostoLookUp: TStringField;
    SQLTemplateCalcIPILookUp: TStringField;
    SQLTemplateCalcICMSLookUp: TStringField;
    SQLTemplateOrigemDestinoLookUp: TStringField;
    SQLPlano: TRxQuery;
    SQLPlanoParcela: TRxQuery;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TFloatField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    SQLParcelasPrazoVendaTempNumerarioLookup: TStringField;
    PaginaFinanceiro: TTabSheet;
    DSSQLParcelasPrazoVendaTemp: TDataSource;
    SQLNumerarioVista: TRxQuery;
    SQLNumerarioPrazo: TRxQuery;
    DSSQLNumerarioVista: TDataSource;
    DSSQLNumerarioPrazo: TDataSource;
    Button4: TRxSpeedButton;
    SQLContasReceber: TRxQuery;
    DSSQLContasReceber: TDataSource;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCTRCICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TFloatField;
    SQLContasReceberCTRCN2DESCFIN: TFloatField;
    SQLContasReceberNUMEICOD: TIntegerField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCN2TXJURO: TFloatField;
    SQLContasReceberCTRCN2TXMULTA: TFloatField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberCTRCN2TOTREC: TFloatField;
    SQLContasReceberCTRCN2TOTJUROREC: TFloatField;
    SQLContasReceberCTRCN2TOTMULTAREC: TFloatField;
    SQLContasReceberCTRCN2TOTDESCREC: TFloatField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberTPDCICOD: TIntegerField;
    SQLContasReceberPLCTA15COD: TStringField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberPENDENTE: TStringField;
    SQLContasReceberREGISTRO: TDateTimeField;
    SQLContasReceberCTRCDREABILSPC: TDateTimeField;
    SQLContasReceberCTRCN2TOTMULTACOBR: TFloatField;
    SQLContasReceberBANCA5CODCHQ: TStringField;
    SQLContasReceberCTRCA10AGENCIACHQ: TStringField;
    SQLContasReceberCTRCA15CONTACHQ: TStringField;
    SQLContasReceberCTRCA15NROCHQ: TStringField;
    SQLContasReceberCTRCA60TITULARCHQ: TStringField;
    SQLContasReceberCTRCA20CGCCPFCHQ: TStringField;
    SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField;
    SQLContasReceberALINICOD: TIntegerField;
    SQLRecebimento: TRxQuery;
    SQLRecebimentoCTRCA13ID: TStringField;
    SQLRecebimentoRECEICOD: TIntegerField;
    SQLRecebimentoRECEDRECTO: TDateTimeField;
    SQLRecebimentoRECEN2VLRRECTO: TFloatField;
    SQLRecebimentoRECEN2VLRJURO: TFloatField;
    SQLRecebimentoRECEN2VLRMULTA: TFloatField;
    SQLRecebimentoRECEN2DESC: TFloatField;
    SQLRecebimentoEMPRICODREC: TIntegerField;
    SQLRecebimentoTERMICODREC: TIntegerField;
    SQLRecebimentoCLIEA13ID: TStringField;
    SQLRecebimentoPENDENTE: TStringField;
    SQLRecebimentoREGISTRO: TDateTimeField;
    SQLRecebimentoRECEN2MULTACOBR: TFloatField;
    SQLNumerario: TRxQuery;
    SQLTemplateNOFIN2VLRDESCPROM: TFloatField;
    SQLTemplateNOFIINROTALAO: TIntegerField;
    NotaFiscal1: TMenuItem;
    Identific1: TMenuItem;
    TblIdentificacaoCarga: TTable;
    TblIdentificacaoCargaRazaoSoc: TStringField;
    TblIdentificacaoCargaComprador: TStringField;
    TblIdentificacaoCargaEndereco: TStringField;
    TblIdentificacaoCargaBairro: TStringField;
    TblIdentificacaoCargaCepCidadeUF: TStringField;
    TblIdentificacaoCargaTransportadora: TStringField;
    TblIdentificacaoCargaFrete: TStringField;
    SQLContasReceberPDVDA13ID: TStringField;
    AtualizaContasReceberPV: TRxQuery;
    SQLTemplateCliFornEmpTabelaPrecoLookUp: TIntegerField;
    SQLIcmsUF: TRxQuery;
    SQLIcms: TRxQuery;
    DBEdit26: TDBEdit;
    Report: TCrpe;
    SQLTemplateNOFIN2VLRSUBS: TFloatField;
    SQLSerie: TRxQuery;
    SQLSerieSERIA5COD: TStringField;
    SQLSerieSERIINRONF: TIntegerField;
    ComboSerie: TRxDBLookupCombo;
    DSSQLSerie: TDataSource;
    SQLCFOP: TRxQuery;
    SQLCFOPCFOPA5COD: TStringField;
    SQLCFOPCFOPA60DESCR: TStringField;
    SQLCFOPCFOPCVENDA: TStringField;
    SQLCFOPPENDENTE: TStringField;
    SQLCFOPREGISTRO: TDateTimeField;
    SQLTemplateCFOPDentroLookUp: TStringField;
    SQLTemplateCFOPForaLookUp: TStringField;
    SQLAtualizaItemPedido: TRxQuery;
    Label51: TLabel;
    DBEdit41: TDBEdit;
    SQLTemplateEmpresaLookUp: TStringField;
    SQLTemplateEntradaSaidaLookUp: TStringField;
    TblIdentificacaoCargaNotaFiscal: TStringField;
    SQLSeriePENDENTE: TStringField;
    SQLSerieREGISTRO: TDateTimeField;
    SQLParcelas: TRxQuery;
    SQLParcelasPARC: TIntegerField;
    SQLTemplatePlanoClienteLookUp: TIntegerField;
    SQLTemplateVendedorClienteLookUp: TIntegerField;
    RecalcularFinanceiro: TMenuItem;
    SQLPedidoVenda: TRxQuery;
    SQLPedidoVendaFinanceiro: TRxQuery;
    SQLPedidoVendaFinanceiroCTRCA13ID: TStringField;
    SQLPedidoVendaFinanceiroCTRCDVENC: TDateTimeField;
    SQLPedidoVendaFinanceiroNUMEICOD: TIntegerField;
    SQLPedidoVendaFinanceiroCTRCDEMIS: TDateTimeField;
    SQLPedidoVendaFinanceiroPDVDA13ID: TStringField;
    SQLTemplateNOFIA20ESPECIE: TStringField;
    PanelFinanceiro: TPanel;
    SQLPlanoPLRCICOD: TIntegerField;
    SQLPlanoPLRCA60DESCR: TStringField;
    SQLPlanoPLRCN2TXJURO: TFloatField;
    SQLPlanoPLRCN2TXMULTA: TFloatField;
    SQLPlanoPLRCN2TXCRED: TFloatField;
    SQLPlanoPLRCN2PERCDESC: TFloatField;
    SQLPlanoPLRCCDFIX: TStringField;
    SQLPlanoPLRCIDFIXNROPARC: TIntegerField;
    SQLPlanoPLRCDFIXDVENC: TIntegerField;
    SQLPlanoPLRCCDFIXENTR: TStringField;
    SQLPlanoPLRCN2PERCENTR: TFloatField;
    SQLPlanoPLRCN2DESC: TFloatField;
    SQLPlanoPLRCCATIVO: TStringField;
    SQLPlanoPENDENTE: TStringField;
    SQLPlanoREGISTRO: TDateTimeField;
    SQLPedidoVendaPDVDA13ID: TStringField;
    SQLPedidoVendaEMPRICOD: TIntegerField;
    SQLPedidoVendaPDVDICOD: TIntegerField;
    SQLPedidoVendaVENDICOD: TIntegerField;
    SQLPedidoVendaCLIEA13ID: TStringField;
    SQLPedidoVendaTRANICOD: TIntegerField;
    SQLPedidoVendaPLRCICOD: TIntegerField;
    SQLPedidoVendaPDVDDEMISSAO: TDateTimeField;
    SQLPedidoVendaPDVDN2VLRFRETE: TFloatField;
    SQLPedidoVendaPDVDA30NROPEDCOMP: TStringField;
    SQLPedidoVendaPDVDA30COMPRADOR: TStringField;
    SQLPedidoVendaPDVDCTIPO: TStringField;
    SQLPedidoVendaPDVDCSTATUS: TStringField;
    SQLPedidoVendaPDVDN2VLRDESC: TFloatField;
    SQLPedidoVendaPDVDN2TOTPROD: TFloatField;
    SQLPedidoVendaPDVDN2TOTPED: TFloatField;
    SQLPedidoVendaPDVDTOBS: TStringField;
    SQLPedidoVendaREGISTRO: TDateTimeField;
    SQLPedidoVendaPENDENTE: TStringField;
    SQLPedidoVendaPDVDN2VLRDESCPROM: TFloatField;
    SQLPedidoVendaPDVDCTIPOFRETE: TStringField;
    SQLPedidoVendaPDVDDENTREGA: TDateTimeField;
    SQLPedidoVendaPDVDINROTALAO: TIntegerField;
    DSSQLPedidoVenda: TDataSource;
    SQLPedidoVendaItem: TRxQuery;
    SQLPedidoVendaItemPDVDA13ID: TStringField;
    SQLPedidoVendaItemPVITIITEM: TIntegerField;
    SQLPedidoVendaItemPRODICOD: TIntegerField;
    SQLPedidoVendaItemPVITN3QUANT: TFloatField;
    SQLPedidoVendaItemPVITN2VLRUNIT: TFloatField;
    SQLPedidoVendaItemPVITN2PERCDESC: TFloatField;
    SQLPedidoVendaItemPVITN2VLRDESC: TFloatField;
    SQLPedidoVendaItemREGISTRO: TDateTimeField;
    SQLPedidoVendaItemPENDENTE: TStringField;
    SQLPedidoVendaItemPVITN3QUANTVEND: TFloatField;
    SQLPedidoVendaItemPDVDA60OBS: TStringField;
    SQLPedidoVendaItemPVITN2PERCCOMIS: TFloatField;
    DSSQLPedidoVendaItem: TDataSource;
    Label33: TLabel;
    Label34: TLabel;
    Label48: TLabel;
    DBEdit27: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit18: TDBEdit;
    MnGerarNotadeCupom: TMenuItem;
    SQLTemplateCUPOA13ID: TStringField;
    SQLCupom: TRxQuery;
    SQLCupomItem: TRxQuery;
    SQLCupomCUPOA13ID: TStringField;
    SQLCupomEMPRICOD: TIntegerField;
    SQLCupomTERMICOD: TIntegerField;
    SQLCupomCUPOICOD: TIntegerField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomCLIEA13ID: TStringField;
    SQLCupomPLRCICOD: TIntegerField;
    SQLCupomVENDICOD: TIntegerField;
    SQLCupomCONVICOD: TIntegerField;
    SQLCupomCUPOCSTATUS: TStringField;
    SQLCupomCUPON2TOTITENS: TFloatField;
    SQLCupomCUPON2DESC: TFloatField;
    SQLCupomCUPON2ACRESC: TFloatField;
    SQLCupomCUPON2TOTITENSRET: TFloatField;
    SQLCupomCUPOINRO: TIntegerField;
    SQLCupomCUPOCTIPOPADRAO: TStringField;
    SQLCupomCUPON2CONVTAXA: TFloatField;
    SQLCupomCUPOINROORDCOMPRA: TIntegerField;
    SQLCupomCUPOA13IDTROCA: TStringField;
    SQLCupomCUPON2VLRCOMISSAO: TFloatField;
    SQLCupomCUPOA20CODANT: TStringField;
    SQLCupomCUPODCANC: TDateTimeField;
    SQLCupomCUPON2JUROATRAS: TFloatField;
    SQLCupomCUPON2MULTAATRAS: TFloatField;
    SQLCupomCUPODPAGTOCONSIG: TDateTimeField;
    SQLCupomCUPON3BONUSTROCA: TFloatField;
    SQLCupomCUPODENTREGA: TDateTimeField;
    SQLCupomTPVDICOD: TIntegerField;
    SQLCupomUSUAICODCANC: TIntegerField;
    SQLCupomPENDENTE: TStringField;
    SQLCupomREGISTRO: TDateTimeField;
    SQLCupomCUPON3CREDTAXA: TFloatField;
    SQLCupomCUPOCCONSIG: TStringField;
    SQLCupomCUPOV254OBS: TStringField;
    SQLCupomCUPOA30DATACARTAO: TStringField;
    SQLCupomCUPOA30HORACARTAO: TStringField;
    SQLCupomCUPOA30NSUPROVEDOR: TStringField;
    SQLCupomCUPOA30NSUINSTITUICAO: TStringField;
    SQLCupomItemCUPOA13ID: TStringField;
    SQLCupomItemCPITIPOS: TIntegerField;
    SQLCupomItemPRODICOD: TIntegerField;
    SQLCupomItemCPITCSTATUS: TStringField;
    SQLCupomItemCPITN3QTD: TFloatField;
    SQLCupomItemCPITN3QTDTROCA: TFloatField;
    SQLCupomItemCPITN3VLRUNIT: TFloatField;
    SQLCupomItemCPITN3VLRCUSTUNIT: TFloatField;
    SQLCupomItemCPITN2DESC: TFloatField;
    SQLCupomItemCPITN3VLRUNITLUCR: TFloatField;
    SQLCupomItemCOITN2ICMSALIQ: TFloatField;
    SQLCupomItemVENDICOD: TIntegerField;
    SQLCupomItemPENDENTE: TStringField;
    SQLCupomItemREGISTRO: TDateTimeField;
    SQLCupomCUPON2DESCITENS: TFloatField;
    SQLCupomItemCPITN2VLRDESCSOBTOT: TFloatField;
    FormStorage: TFormStorage;
    SQLPedidoVendaItemLOTEA30NRO: TStringField;
    GerarNFdeVendaConsignada: TMenuItem;
    SQLConsignacao: TRxQuery;
    SQLNotaFiscalItemConsig: TRxQuery;
    SQLNotaFiscal: TRxQuery;
    SQLNotaFiscalNOFIA13ID: TStringField;
    SQLNotaFiscalCLIEA13ID: TStringField;
    SQLNotaFiscalFORNICOD: TIntegerField;
    SQLNotaFiscalSERIA5COD: TStringField;
    SQLNotaFiscalNOFIDEMIS: TDateTimeField;
    SQLNotaFiscalOPESICOD: TIntegerField;
    SQLNotaFiscalVENDICOD: TIntegerField;
    SQLTemplateNOFIA13IDCONSIGNADA: TStringField;
    SQLNotaFiscalItemConsigNOFIA13ID: TStringField;
    SQLNotaFiscalItemConsigNFITIITEM: TIntegerField;
    SQLNotaFiscalItemConsigPRODICOD: TIntegerField;
    SQLNotaFiscalItemConsigNFITN3QUANT: TFloatField;
    SQLNotaFiscalItemConsigNFITN2VLRUNIT: TFloatField;
    SQLNotaFiscalItemConsigNFITN2PERCDESC: TFloatField;
    SQLNotaFiscalItemConsigNFITN2VLRDESC: TFloatField;
    SQLNotaFiscalItemConsigNFITN2PERCICMS: TFloatField;
    SQLNotaFiscalItemConsigNFITN2BASEICMS: TFloatField;
    SQLNotaFiscalItemConsigNFITN2VLRICMS: TFloatField;
    SQLNotaFiscalItemConsigNFITN2PERCSUBS: TFloatField;
    SQLNotaFiscalItemConsigNFITN2BASESUBS: TFloatField;
    SQLNotaFiscalItemConsigNFITN2VLRSUBS: TFloatField;
    SQLNotaFiscalItemConsigNFITN2PERCIPI: TFloatField;
    SQLNotaFiscalItemConsigNFITN2VLRIPI: TFloatField;
    SQLNotaFiscalItemConsigNFITN2PERCISSQN: TFloatField;
    SQLNotaFiscalItemConsigNFITN2VLRISSQN: TFloatField;
    SQLNotaFiscalItemConsigNFITN2VLRFRETE: TFloatField;
    SQLNotaFiscalItemConsigNFITN2VLRLUCRO: TFloatField;
    SQLNotaFiscalItemConsigPENDENTE: TStringField;
    SQLNotaFiscalItemConsigREGISTRO: TDateTimeField;
    SQLNotaFiscalItemConsigNFITN2PERCREDUCAO: TFloatField;
    SQLNotaFiscalItemConsigNFITN3TOTVEND: TFloatField;
    SQLNotaFiscalItemConsigPDVDA13ID: TStringField;
    SQLNotaFiscalItemConsigPVITIITEM: TIntegerField;
    SQLNotaFiscalItemConsigNFITN3QUANTVEND: TFloatField;
    SQLNotaFiscalItemConsigNFITN2PERCCOMIS: TFloatField;
    SQLNotaFiscalItemConsigCPITICPOS: TIntegerField;
    SQLNotaFiscalItemConsigCUPOA13ID: TStringField;
    SQLNotaFiscalItemConsigLOTEA30NRO: TStringField;
    TblitensVendaConsignada: TTable;
    TblitensVendaConsignadaReferencia: TStringField;
    TblitensVendaConsignadaDescricao: TStringField;
    TblitensVendaConsignadaQtde: TFloatField;
    TblitensVendaConsignadaLote: TStringField;
    TblitensVendaConsignadaProduto: TIntegerField;
    SQLConsignacaoQTDE: TFloatField;
    SQLConsignacaoPRODICOD: TIntegerField;
    Label3: TLabel;
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
    SQLProduto: TRxQuery;
    DSSQLProduto: TDataSource;
    SQLNotaFiscalItemPesoBrutoLookup: TFloatField;
    SQLNotaFiscalItemPesoLiquidoLookup: TFloatField;
    SQLTemplateEmpresaCGCLookup: TStringField;
    SQLTemplateEmpresaIELookup: TStringField;
    SQLTransportadoraTRANA60END: TStringField;
    SQLTransportadoraTRANA60BAI: TStringField;
    SQLTransportadoraTRANA60CID: TStringField;
    SQLTransportadoraTRANA8CEP: TStringField;
    SQLTransportadoraTRANA2UF: TStringField;
    SQLTransportadoraTRANA14CGC: TStringField;
    SQLTransportadoraTRANA15IE: TStringField;
    SQLTemplateTransportadoraCGCLookUp: TStringField;
    SQLTemplateTransportadoraEnderecoLookUp: TStringField;
    SQLTemplateTransportadoraCidadeLookUp: TStringField;
    SQLTemplateTransportadoraEstadoLookUp: TStringField;
    SQLTemplateTransportadoraIELookUp: TStringField;
    SQLNotaFiscalItemUnidadeLookup: TStringField;
    SQLNotaFiscalItemCLASFISCICOD: TIntegerField;
    SQLNotaFiscalItemClasFiscLookup: TStringField;
    SQLNotaFiscalItemProdutoLookup: TStringField;
    SQLNotaFiscalItemSitTribLookUp: TStringField;
    ListaDec: TListBox;
    SQLNotaFiscalItemDecretoLookUp: TStringField;
    SQLNotaFiscalItemTotalItemCalc: TFloatField;
    SQLNotaFiscalItemReferenciaLookUp: TStringField;
    SQLNotaFiscalItemGradeCodLookup: TIntegerField;
    SQLNotaFiscalItemAgrupGradeLookup: TIntegerField;
    SQLNotaFiscalItemServicoLookup: TStringField;
    SQLTemplateEmitenteEnderecoLookUp: TStringField;
    SQLTemplateEmitenteBairroLookUp: TStringField;
    SQLTemplateEmitenteCidadeLookUp: TStringField;
    SQLTemplateEmitenteUFLookUp: TStringField;
    SQLTemplateEmitenteCEPLookUp: TStringField;
    SQLTemplateEmitenteFoneLookUp: TStringField;
    SQLPedidoVendaItemPDVDA255OBS1: TStringField;
    SQLNotaFiscalItemNFITA254OBS: TStringField;
    SQLPlanoPLRCN2PERCACRESC: TFloatField;
    SQLParcelasPrazoVendaTempTipoPadrao: TStringField;
    SQLTemplateUSUAICOD: TIntegerField;
    SQLTemplateUSUAA60LOGIN: TStringField;
    SQLTotalParcelas: TRxQuery;
    SQLTemplateNOFIDCANCEL: TDateTimeField;
    SQLTemplatePLCTA15CODCRED: TStringField;
    SQLTemplatePLCTA15CODDEB: TStringField;
    DSSQLCFOP: TDataSource;
    DBEdit2: TDBEdit;
    SQLContasReceberCTRCA254HIST: TStringField;
    SQLContasReceberHTPDICOD: TIntegerField;
    SQLContasReceberPLCTA15CODDEBITO: TStringField;
    SQLHistoricoPadrao: TRxQuery;
    SQLHistoricoPadraoHTPDICOD: TIntegerField;
    SQLHistoricoPadraoHTPDA100HISTORICO: TStringField;
    SQLHistoricoPadraoHTPDCTIPO: TStringField;
    SQLHistoricoPadraoPENDENTE: TStringField;
    SQLHistoricoPadraoREGISTRO: TDateTimeField;
    DSSQLHistoricoPadrao: TDataSource;
    SQLPortador: TRxQuery;
    SQLContasReceberPortadorLookup: TStringField;
    DSSQLPlanoRecebimento: TDataSource;
    ComboVendedor: TRxDBLookupCombo;
    DSSQLVendedor: TDataSource;
    SQLAvalista: TRxQuery;
    DSSQLAvalista: TDataSource;
    SQLAvalistaAVALA13ID: TStringField;
    SQLAvalistaEMPRICOD: TIntegerField;
    SQLAvalistaAVALICOD: TIntegerField;
    SQLAvalistaAVALA5FISJURID: TStringField;
    SQLAvalistaAVALA14CGC: TStringField;
    SQLAvalistaAVALA20IE: TStringField;
    SQLAvalistaAVALA11CPF: TStringField;
    SQLAvalistaAVALA10RG: TStringField;
    SQLAvalistaAVALA60RAZAOSOC: TStringField;
    SQLAvalistaAVALA60CONTATO: TStringField;
    SQLAvalistaAVALA60NOMEPAI: TStringField;
    SQLAvalistaAVALA60NOMEMAE: TStringField;
    SQLAvalistaAVALN2RENDA: TFloatField;
    SQLAvalistaAVALA15FONE1: TStringField;
    SQLAvalistaAVALA15FONE2: TStringField;
    SQLAvalistaAVALA15FAX: TStringField;
    SQLAvalistaAVALA60ENDRES: TStringField;
    SQLAvalistaAVALA60BAIRES: TStringField;
    SQLAvalistaAVALA60CIDRES: TStringField;
    SQLAvalistaAVALA2UFRES: TStringField;
    SQLAvalistaAVALA8CEPRES: TStringField;
    SQLAvalistaAVALA60EMAIL: TStringField;
    SQLAvalistaAVALDNASC: TDateTimeField;
    SQLAvalistaAVALDFUND: TDateTimeField;
    SQLAvalistaPENDENTE: TStringField;
    SQLAvalistaREGISTRO: TDateTimeField;
    SQLTemplateAVALA13ID: TStringField;
    SQLContasReceberAVALA13ID: TStringField;
    DBEdit8: TDBEdit;
    SQLLayOutImpressao: TRxQuery;
    SQLTemplateNOFIN2VLRICMS: TFloatField;
    SQLNotaFiscalItemNFITN2VLRICMS: TFloatField;
    SQLTemplateNOFIN2BASCALCICMS: TFloatField;
    SQLComposicaoPedido: TRxQuery;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    SQLTemplateNOFIAOBSCORPONF: TStringField;
    Label11: TLabel;
    DBMemo2: TDBMemo;
    SQLVeiculo: TRxQuery;
    DSSQLVeiculo: TDataSource;
    SQLVeiculoVEICA13ID: TStringField;
    SQLVeiculoEMPRICOD: TIntegerField;
    SQLVeiculoTERMICOD: TIntegerField;
    SQLVeiculoVEICICOD: TIntegerField;
    SQLVeiculoVEICA7PLACA: TStringField;
    SQLVeiculoVEICA60DESCR: TStringField;
    SQLVeiculoVEICA3OMARCA: TStringField;
    SQLVeiculoVEICA3OMOTORISTA: TStringField;
    SQLVeiculoVEICA3OMOTOCPF: TStringField;
    SQLVeiculoVEICN3PESOSUPORTA: TFloatField;
    SQLVeiculoTRANICOD: TIntegerField;
    SQLVeiculoPENDENTE: TStringField;
    SQLVeiculoREGISTRO: TDateTimeField;
    DSSQLTransportadora: TDataSource;
    SQLTemplatePDVDA60OBS: TStringField;
    SQLTemplateCUPOA13IDCUPNEG: TStringField;
    SQLTemplateROTAICOD: TIntegerField;
    SQLTemplateVEICA13ID: TStringField;
    SQLVeiculoVEICA2UFPLACA: TStringField;
    ComboObsNota: TRxDBLookupCombo;
    SQLObsNota: TRxQuery;
    DSSQLObsNota: TDataSource;
    SQLObsNotaOBSNICOD: TIntegerField;
    SQLConta: TRxQuery;
    DSSQLConta: TDataSource;
    Label18: TLabel;
    DBEdit10: TDBEdit;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit15: TDBEdit;
    SQLContasReceberCTRCCEMITIDOBOLETO: TStringField;
    PanelPesquisa: TPanel;
    BTNLocalizar: TSpeedButton;
    ComboCliente: TRxDBLookupCombo;
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteEMPRICOD: TIntegerField;
    SQLClienteCLIEICOD: TIntegerField;
    SQLClienteCLIEA5FISJURID: TStringField;
    SQLClienteCLIEA14CGC: TStringField;
    SQLClienteCLIEA20IE: TStringField;
    SQLClienteCLIEA11CPF: TStringField;
    SQLClienteCLIEA10RG: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteCLIEA60NOMEFANT: TStringField;
    SQLClienteCLIEA60CONTATO: TStringField;
    SQLClienteCLIEA15FONE1: TStringField;
    SQLClienteCLIEA15FONE2: TStringField;
    SQLClienteCLIEA15FAX: TStringField;
    SQLClienteCLIEA30OUTROSDOC: TStringField;
    SQLClienteCLIECSEXO: TStringField;
    SQLClienteCLIEA60ENDRES: TStringField;
    SQLClienteCLIEA60BAIRES: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    SQLClienteCLIEA8CEPRES: TStringField;
    SQLClienteCLIEA60EMAIL: TStringField;
    SQLClienteCLIEN2RENDA: TFloatField;
    SQLClienteCLIEN2LIMITECRED: TFloatField;
    SQLClienteCLIEDNASC: TDateTimeField;
    GroupBox3: TGroupBox;
    Label27: TLabel;
    BtnTransportadora: TSpeedButton;
    Label12: TLabel;
    Label31: TLabel;
    Label26: TLabel;
    EditCdTransp: TDBEdit;
    ComboTransp: TRxDBLookupCombo;
    ComboMotorista: TRxDBLookupCombo;
    EditPlaca: TDBEdit;
    ComboTipoFrete: TRxDBComboBox;
    Label35: TLabel;
    EditQTdeVolumes: TDBEdit;
    Label53: TLabel;
    EditEspecie: TDBEdit;
    Label30: TLabel;
    EditMarca: TDBEdit;
    Label19: TLabel;
    EditPesoBruto: TDBEdit;
    Label20: TLabel;
    EditPesoLiquido: TDBEdit;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    SQLTemplateNOFIDSAIDAENTRADA: TDateTimeField;
    ComboConsultaFornec: TRxDBLookupCombo;
    DSSQLFornecedor: TDataSource;
    SQLPlanoRecebimentoPLRCCDFIX: TStringField;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    Panel11: TPanel;
    Label9: TLabel;
    ComboPlanoRectoAtual: TRxDBLookupCombo;
    Panel4: TPanel;
    Label10: TLabel;
    Label28: TLabel;
    Label16: TLabel;
    Label22: TLabel;
    Label29: TLabel;
    Label23: TLabel;
    BTNRecalcularFinanceiro: TSpeedButton;
    BtnExcluirParcAtuais: TSpeedButton;
    ComboPlanoRecto: TRxDBLookupCombo;
    ComboNumerarioVista: TRxDBLookupCombo;
    ComboNumerarioPrazo: TRxDBLookupCombo;
    ComboTipoDoc: TRxDBLookupCombo;
    ComboPortador: TRxDBLookupCombo;
    ComboHistoricoPadrao: TRxDBLookupCombo;
    MemoHistorico: TMemo;
    SQLTipoDoc: TRxQuery;
    SQLTipoDocTPDCICOD: TIntegerField;
    SQLTipoDocTPDCA60DESCR: TStringField;
    DSSQLTipoDoc: TDataSource;
    DSSQLPortador: TDataSource;
    SQLRecebimentoRECEA254HISTORICO: TStringField;
    SQLRecebimentoRECEDDATAMOV: TDateTimeField;
    CkImprimeNosServicos: TCheckBox;
    SQLContasReceberCTRCCTIPOREGISTRO: TStringField;
    DSTblOperacaoEstoque: TDataSource;
    SQLTemplateOperacaoEstoqueLookUp: TStringField;
    SQLPedidoVendaPDVDCIMPORTADO: TStringField;
    SQLPedidoVendaPDVDN2PERCFAT: TFloatField;
    SQLPedidoVendaPDVDN2PERCOMIS: TFloatField;
    SQLPedidoVendaUSUAA60LOGIN: TStringField;
    SQLPedidoVendaOPESICOD: TIntegerField;
    SQLPedidoVendaROTAICOD: TIntegerField;
    SQLPedidoVendaNOFIAOBSCORPONF: TStringField;
    SQLPedidoVendaPDVD8PLACAVEIC: TStringField;
    SQLPedidoVendaPDVDA15NROPEDPALM: TStringField;
    SQLPedidoVendaSERIA5COD: TStringField;
    SQLPedidoVendaVEICA13ID: TStringField;
    SQLPedidoVendaFinanceiroEMPRICOD: TIntegerField;
    SQLPedidoVendaFinanceiroTERMICOD: TIntegerField;
    SQLPedidoVendaFinanceiroCTRCICOD: TIntegerField;
    SQLPedidoVendaFinanceiroCLIEA13ID: TStringField;
    SQLPedidoVendaFinanceiroCTRCCSTATUS: TStringField;
    SQLPedidoVendaFinanceiroCTRCINROPARC: TIntegerField;
    SQLPedidoVendaFinanceiroCTRCN2VLR: TFloatField;
    SQLPedidoVendaFinanceiroCTRCN2DESCFIN: TFloatField;
    SQLPedidoVendaFinanceiroPORTICOD: TIntegerField;
    SQLPedidoVendaFinanceiroCTRCN2TXJURO: TFloatField;
    SQLPedidoVendaFinanceiroCTRCN2TXMULTA: TFloatField;
    SQLPedidoVendaFinanceiroCTRCA5TIPOPADRAO: TStringField;
    SQLPedidoVendaFinanceiroCTRCDULTREC: TDateTimeField;
    SQLPedidoVendaFinanceiroCTRCN2TOTREC: TFloatField;
    SQLPedidoVendaFinanceiroCTRCN2TOTJUROREC: TFloatField;
    SQLPedidoVendaFinanceiroCTRCN2TOTMULTAREC: TFloatField;
    SQLPedidoVendaFinanceiroCTRCN2TOTDESCREC: TFloatField;
    SQLPedidoVendaFinanceiroCTRCN2TOTMULTACOBR: TFloatField;
    SQLPedidoVendaFinanceiroEMPRICODULTREC: TIntegerField;
    SQLPedidoVendaFinanceiroCUPOA13ID: TStringField;
    SQLPedidoVendaFinanceiroTPDCICOD: TIntegerField;
    SQLPedidoVendaFinanceiroPLCTA15COD: TStringField;
    SQLPedidoVendaFinanceiroCTRCA30NRODUPLICBANCO: TStringField;
    SQLPedidoVendaFinanceiroNOFIA13ID: TStringField;
    SQLPedidoVendaFinanceiroPENDENTE: TStringField;
    SQLPedidoVendaFinanceiroREGISTRO: TDateTimeField;
    SQLPedidoVendaFinanceiroCTRCDREABILSPC: TDateTimeField;
    SQLPedidoVendaFinanceiroBANCA5CODCHQ: TStringField;
    SQLPedidoVendaFinanceiroCTRCA10AGENCIACHQ: TStringField;
    SQLPedidoVendaFinanceiroCTRCA15CONTACHQ: TStringField;
    SQLPedidoVendaFinanceiroCTRCA15NROCHQ: TStringField;
    SQLPedidoVendaFinanceiroCTRCA60TITULARCHQ: TStringField;
    SQLPedidoVendaFinanceiroCTRCA20CGCCPFCHQ: TStringField;
    SQLPedidoVendaFinanceiroCTRCDDEPOSCHQ: TDateTimeField;
    SQLPedidoVendaFinanceiroALINICOD: TIntegerField;
    SQLPedidoVendaFinanceiroCOBRA13ID: TStringField;
    SQLPedidoVendaFinanceiroCTRCDENVIOCOBRANCA: TDateTimeField;
    SQLPedidoVendaFinanceiroCTRCA254HIST: TStringField;
    SQLPedidoVendaFinanceiroCTRCDESTORNO: TDateTimeField;
    SQLPedidoVendaFinanceiroDUPLA13ID: TStringField;
    SQLPedidoVendaFinanceiroFRETA13ID: TStringField;
    SQLPedidoVendaFinanceiroHTPDICOD: TIntegerField;
    SQLPedidoVendaFinanceiroPLCTA15CODDEBITO: TStringField;
    SQLPedidoVendaFinanceiroCTRCCTEMREGRECEBER: TStringField;
    SQLPedidoVendaFinanceiroAVALA13ID: TStringField;
    SQLPedidoVendaFinanceiroCTRCCTIPOREGISTRO: TStringField;
    SQLPedidoVendaFinanceiroCONTA13ID: TStringField;
    SQLPedidoVendaFinanceiroCTRCA13CTRCAIDCHQ: TStringField;
    SQLPedidoVendaFinanceiroCTRCCEMITIDOBOLETO: TStringField;
    SQLPedidoVendaFinanceiroCTRCA4ANOCOMP: TStringField;
    SQLPedidoVendaFinanceiroCTRCA2MESCOMP: TStringField;
    SQLTemplateCUPOCTIPOPADRAO: TStringField;
    SQLTemplateCFOPA5CODAUX: TStringField;
    MnRecalcularImpostos: TMenuItem;
    SQLNotaFiscalItemCFOPA5CODAUX: TStringField;
    SQLPlanoRecebimentoPLRCFATCASH: TStringField;
    MnTrocarStatusEncerradaparaAberta1: TMenuItem;
    ComboObsCorpo: TRxDBLookupCombo;
    XMLDoc: TXMLDocument;
    SQLNotaFiscalItemAliquotaICMS: TFloatField;
    SQLTemplateCliFornEmpCdMunicipoNfeLookUp: TIntegerField;
    SQLTemplateNOFICSTNFE: TStringField;
    GroupBox1: TGroupBox;
    SQLTemplateNOFIA5CODRETORNO: TStringField;
    SQLTemplateNOFITRETORNO: TStringField;
    GroupBox4: TGroupBox;
    Label45: TLabel;
    EditNroNFFinal: TMaskEdit;
    Label46: TLabel;
    Label52: TLabel;
    EditNroNFInicial: TMaskEdit;
    SQLSerieNF: TRxQuery;
    SQLSerieNFSERIA5COD: TStringField;
    SQLSerieNFPENDENTE: TStringField;
    SQLSerieNFREGISTRO: TDateTimeField;
    SQLSerieNFSERIINRONF: TIntegerField;
    SQLSerieNFEMPRICOD: TIntegerField;
    DSSQLSerieNF: TDataSource;
    ComboSerieNF: TRxDBLookupCombo;
    Label54: TLabel;
    SQLTransportadoraTRANA11CPF: TStringField;
    SQLTemplateTransportadoraCPF: TStringField;
    SQLSerieSERIA100PATHEXEIMP: TStringField;
    Label56: TLabel;
    DBEdit25: TDBEdit;
    GerarArquivosdeNotasProcessadaparaContabilidade1: TMenuItem;
    Label40: TLabel;
    Label43: TLabel;
    Label59: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    DBEdit23: TDBEdit;
    Label66: TLabel;
    DBEdit24: TDBEdit;
    Label67: TLabel;
    DBEdit31: TDBEdit;
    Label68: TLabel;
    DBEdit36: TDBEdit;
    Label69: TLabel;
    DBEdit39: TDBEdit;
    Label70: TLabel;
    DBEdit40: TDBEdit;
    Label71: TLabel;
    Label72: TLabel;
    SQLTemplateNOFIN2PERCCOFINS: TFloatField;
    SQLTemplateNOFIN2PERCCONTRSOCIAL: TFloatField;
    SQLTemplateNOFIN2PERCINSS: TFloatField;
    SQLTemplateNOFIN2PERCIR: TFloatField;
    SQLTemplateNOFIN2PERCPIS: TFloatField;
    SQLTemplateNOFIN3VLRCOFINS: TFloatField;
    SQLTemplateNOFIN3VLRCONTRSOCIAL: TFloatField;
    SQLTemplateNOFIN3VLRINSS: TFloatField;
    SQLTemplateNOFIN3VLRIR: TFloatField;
    SQLTemplateNOFIN3VLRMAODEOBRA: TFloatField;
    SQLTemplateNOFIN3VLRMATERIAL: TFloatField;
    SQLTemplateNOFIN3VLRPIS: TFloatField;
    DBEdit43: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    SQLTemplateNOFIN2PERCMAODEOBRA: TFloatField;
    SQLTemplateNOFIN2PERCMATERIAL: TFloatField;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    SQLTemplateNOFIN2PERCISSQN: TFloatField;
    PopFunrural: TPopupMenu;
    Imprimir1: TMenuItem;
    SQLTemplateCalcSubstLookUp: TStringField;
    SQLTemplateCalcSubstFisLookUp: TStringField;
    SQLTemplateCalcICMSFisLookUp: TStringField;
    SQLTemplateCalcIpiFisLookUp: TStringField;
    SQLTemplateNOFIA255OBS: TMemoField;
    SQLObsNotaOBSNA255DESC: TMemoField;
    SQLObsNotaNOFIA50DESC: TStringField;
    LbVendedorAtual: TLabel;
    LbRotaAtual: TLabel;
    LbTranspAtual: TLabel;
    LbVeiculo: TLabel;
    LbEmissao: TLabel;
    LbDataEntrega: TLabel;
    BtDadosPadroes: TSpeedButton;
    SQLTemplateCliFornEmpcdPaisLookUp: TIntegerField;
    SQLClienteCLIEICODPAIS: TIntegerField;
    SQLTemplateEmpNumeroEndLookUp: TStringField;
    PopPedidos: TPopupMenu;
    PedidodeVenda1: TMenuItem;
    OrdemServioMecnica1: TMenuItem;
    OrdemServioGrficas1: TMenuItem;
    SQLNotaFiscalItemNFITINITENS: TIntegerField;
    SQLNotaFiscalItemNFITA10DIIMPORT: TStringField;
    SQLNotaFiscalItemNFITA15PEDIDOCOMPRA: TStringField;
    SQLNotaFiscalItemNFITA2UFDESEMBARACO: TStringField;
    SQLNotaFiscalItemNFITA60CEXPORTADOR: TStringField;
    SQLNotaFiscalItemNFITA60CFABRICANTE: TStringField;
    SQLNotaFiscalItemNFITA60LOCALDESEMBARACO: TStringField;
    SQLNotaFiscalItemNFITDDATADI: TDateTimeField;
    SQLNotaFiscalItemNFITDDESEMBARACO: TDateTimeField;
    SQLNotaFiscalItemNFITINADICAO: TIntegerField;
    SQLNotaFiscalItemNFITINSEQADIC: TIntegerField;
    SQLNotaFiscalItemNFITN2DESCTOADIC: TFloatField;
    SQLNotaFiscalItemNFITN2OUTRASDESP: TFloatField;
    SQLNotaFiscalItemNFITN2SEGURO: TFloatField;
    TblIdentificacaoCargaVolume: TStringField;
    SQLTemplateCliFornEmpRegime: TStringField;
    SQLTemplateCliFornEmpFisicaJuridica: TStringField;
    SQLNotaFiscalItemNFITICST: TIntegerField;
    rocaStatusNFCanceladaparaAbertanomovestoque1: TMenuItem;
    SQLNotaFiscalItemNFITN2BC_IMP: TFloatField;
    SQLNotaFiscalItemNFITN2VALOR_DA: TFloatField;
    SQLNotaFiscalItemNFITN2VALOR_II: TFloatField;
    SQLNotaFiscalItemNFITN2VALOR_IOF: TFloatField;
    NotaFiscalJava1: TMenuItem;
    GroupBox5: TGroupBox;
    DBEdit28: TDBEdit;
    NotaFiscalEletronicaMIGRATE1: TMenuItem;
    ReimprimirDANFE1: TMenuItem;
    CancelarNFe1: TMenuItem;
    ReenviarEmail1: TMenuItem;
    InunitilizarNmeros1: TMenuItem;
    SQLTemplateNOFIA44CHAVEACESSO: TStringField;
    SQLTemplateNOFIA15PROTOCOLO: TStringField;
    DBEdit54: TDBEdit;
    Label58: TLabel;
    DBEdit55: TDBEdit;
    Label73: TLabel;
    GroupBox6: TGroupBox;
    DBMemo3: TDBMemo;
    DBEdit9: TDBEdit;
    DBMemo4: TDBMemo;
    Label74: TLabel;
    DBEdit29: TDBEdit;
    Label75: TLabel;
    DBEdit53: TDBEdit;
    ReceituarioAgrcola1: TMenuItem;
    EncerrarNotaFiscalEletronica1: TMenuItem;
    N2: TMenuItem;
    AlterarStatusDaNFeParaCancelada1: TMenuItem;
    RxSpeedButton1: TRxSpeedButton;
    RxSpeedButton2: TRxSpeedButton;
    SQLNotaFiscalReferenciada: TRxQuery;
    BitBtn1: TBitBtn;
    edtChave: TMaskEdit;
    SQLTemplateNOFA1ENTRADASAIDA: TStringField;
    SQLTemplateNOFICFINALIDADE: TStringField;
    Label76: TLabel;
    ComboFinalidade: TRxDBComboBox;
    Label25: TLabel;
    N4: TMenuItem;
    N1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    SQLCupomECFICOD: TIntegerField;
    SQLCupomECFA20NROSERIE: TStringField;
    VerificarStatusdaNFe1: TMenuItem;
    SQLTemplateNOFIA15RECIBO: TStringField;
    Label77: TLabel;
    DBEdit22: TDBEdit;
    Label78: TLabel;
    DBEdit56: TDBEdit;
    RxSpeedButton3: TRxSpeedButton;
    PageExportacao: TTabSheet;
    SQLTemplateNOFIA2UFEMBARQUE: TStringField;
    SQLTemplateNOFIA60LOCALEMBARQUE: TStringField;
    Label79: TLabel;
    Label80: TLabel;
    DBEdit58: TDBEdit;
    ComboUFRes: TRxDBComboBox;
    MnCorrigirSitTributariadositensnulos: TMenuItem;
    ListaRetornoXML: TFileListBox;
    MemoRetornoNFE: TMemo;
    ConsultarWebService1: TMenuItem;
    OpenDialog1: TOpenDialog;
    Label97: TLabel;
    ComboPlanoContas: TRxDBLookupCombo;
    SQLContaPLCTA15COD: TStringField;
    SQLContaPLCTICODREDUZ: TIntegerField;
    SQLContaPLCTINIVEL: TIntegerField;
    SQLContaPLCTA15CODPAI: TStringField;
    SQLContaPLCTA30CODEDIT: TStringField;
    SQLContaPLCTA60DESCR: TStringField;
    SQLContaPLCTCANALSINT: TStringField;
    SQLContaPLCTCTIPOSALDO: TStringField;
    btnTransmitirNfe: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    WBResposta: TWebBrowser;
    SQLUnidade: TRxQuery;
    SQLUnidadeUNIDICOD: TIntegerField;
    SQLUnidadeUNIDA5DESCR: TStringField;
    SQLUnidadeUNIDA15DESCR: TStringField;
    SQLUnidadeUNIDCFRAC: TStringField;
    SQLUnidadeUNIDN3FATORCONV: TFloatField;
    SQLNotaFiscalItemUNIDICOD: TIntegerField;
    SQLPedidoVendaItemUNIDICOD: TIntegerField;
    btnTransmitirNfe2: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    N9: TMenuItem;
    ReabrirNFeEncerradaNaoMovimentaEstoque1: TMenuItem;
    FecharNotaAbertaNoMovimentaEstoque1: TMenuItem;
    EncerrarNotasemSequencia1: TMenuItem;
    edtProtocolo: TMaskEdit;
    GroupBox7: TGroupBox;
    Label82: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label83: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label84: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label7: TLabel;
    AdvOfficeStatusBar2: TAdvOfficeStatusBar;
    RxLabel1: TRxLabel;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    RxLabel2: TRxLabel;
    SQLNotaFiscalItemNOFIA2CSTCOFINS: TStringField;
    SQLNotaFiscalItemNOFIN3PERCCOFINS: TFloatField;
    SQLNotaFiscalItemNOFIN3VLRCOFINS: TFloatField;
    SQLNotaFiscalItemNOFIA2CSTPIS: TStringField;
    SQLNotaFiscalItemNOFIN3PERCPIS: TFloatField;
    SQLNotaFiscalItemNOFIN3VLRPIS: TFloatField;
    ComboOPEstoque: TRxDBLookupCombo;
    Label24: TLabel;
    SQLOperacaoEstoque: TRxQuery;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    SQLOperacaoEstoqueSERIA5COD: TStringField;
    SQLOperacaoEstoqueCFOPA5CODDENTROUF: TStringField;
    SQLOperacaoEstoqueCFOPA5CODFORAUF: TStringField;
    SQLOperacaoEstoqueOPESCENTRADASAIDA: TStringField;
    SQLOperacaoEstoqueOPESCORIGEMDESTINO: TStringField;
    SQLOperacaoEstoquePENDENTE: TStringField;
    SQLOperacaoEstoqueREGISTRO: TDateTimeField;
    SQLOperacaoEstoqueOPESA18CAMPOIMP: TStringField;
    SQLOperacaoEstoqueOPESCCALCIPI: TStringField;
    SQLOperacaoEstoqueOPESCCALCICMS: TStringField;
    SQLOperacaoEstoquePDVDA13ID: TStringField;
    SQLOperacaoEstoqueOPESCGERAFINANCEIRO: TStringField;
    SQLOperacaoEstoqueACUMICOD: TIntegerField;
    SQLOperacaoEstoquePLCTA15CODCRED: TStringField;
    SQLOperacaoEstoquePLCTA15CODDEB: TStringField;
    SQLOperacaoEstoqueOPESA18CAMPOIMPFIS: TStringField;
    SQLOperacaoEstoqueOPESCCALCICMSFIS: TStringField;
    SQLOperacaoEstoqueOPESCCALCIPIFIS: TStringField;
    SQLOperacaoEstoqueOPESCCALCSUBST: TStringField;
    SQLOperacaoEstoqueOPESCCALCSUBSTFIS: TStringField;
    SQLOperacaoEstoqueOPERACAO_E_S: TStringField;
    SQLOperacaoEstoqueOPESA60DESDENTRO: TStringField;
    SQLOperacaoEstoqueOPESA60DESFORA: TStringField;
    SQLOperacaoEstoqueOPESCCOMISSAO: TStringField;
    BitBtn2: TBitBtn;
    ACBrNFe1: TACBrNFe;
    ACBrMail1: TACBrMail;
    MnGerarBoletos: TMenuItem;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    SQLEmpresaEMPRCMATRIZFILIAL: TStringField;
    SQLEmpresaEMPRA20FONE: TStringField;
    SQLEmpresaEMPRA20FAX: TStringField;
    SQLEmpresaEMPRA60END: TStringField;
    SQLEmpresaEMPRA60BAI: TStringField;
    SQLEmpresaEMPRA60CID: TStringField;
    SQLEmpresaEMPRA2UF: TStringField;
    SQLEmpresaEMPRA8CEP: TStringField;
    SQLEmpresaEMPRCFISJURID: TStringField;
    SQLEmpresaEMPRA14CGC: TStringField;
    SQLEmpresaEMPRA20IE: TStringField;
    SQLEmpresaEMPRA11CPF: TStringField;
    SQLEmpresaEMPRA10RG: TStringField;
    SQLEmpresaEMPRA60EMAIL: TStringField;
    SQLEmpresaEMPRA60URL: TStringField;
    SQLEmpresaPENDENTE: TStringField;
    SQLEmpresaREGISTRO: TDateTimeField;
    SQLEmpresaEMPRA100INFSPC: TStringField;
    SQLEmpresaEMPRA15CODEAN: TStringField;
    SQLEmpresaEMPRBLOGOTIPO: TBlobField;
    SQLEmpresaEMPRA60CONTATO: TStringField;
    SQLEmpresaEMPRCLUCROREAL: TStringField;
    SQLEmpresaEMPRN2VLRFUNDOPROMO: TFloatField;
    SQLEmpresaEMPRA15REGJUNTA: TStringField;
    SQLEmpresaEMPRIUFCODFED: TIntegerField;
    SQLEmpresaEMPRA3CRT: TStringField;
    SQLEmpresaEMPRIENDNRO: TIntegerField;
    SQLEmpresaEMPRA100CERTIFSERIE: TStringField;
    SQLEmpresaEMPRA35CERTIFSENHA: TStringField;
    SQLEmpresaEMPRIFORMAEMISDANFE: TIntegerField;
    SQLEmpresaEMPRIFORMAEMISNFE: TIntegerField;
    SQLEmpresaEMPRA100CAMINHOLOGO: TStringField;
    SQLEmpresaEMPRA100CAMINHOXML: TStringField;
    SQLEmpresaEMPRA100CAMINHODANFES: TStringField;
    SQLEmpresaEMPRA2WSUF: TStringField;
    SQLEmpresaEMPRIWSAMBIENTE: TIntegerField;
    SQLEmpresaEMPRA1VISUALIZAMSG: TStringField;
    SQLEmpresaEMPRA100PROXYHOST: TStringField;
    SQLEmpresaEMPRIPROXYPORTA: TIntegerField;
    SQLEmpresaEMPRA50PROXYUSUARIO: TStringField;
    SQLEmpresaEMPRA50PROXYSENHA: TStringField;
    SQLEmpresaEMPRA50EMAILHOST: TStringField;
    SQLEmpresaEMPRIEMAILPORTA: TIntegerField;
    SQLEmpresaEMPRA50EMAILSENHA: TStringField;
    SQLEmpresaEMPRA1SSL: TStringField;
    SQLEmpresaEMPRA60EMAILCOPIA: TStringField;
    SQLEmpresaEMPRA1TSL: TStringField;
    SQLEmpresaEMPRA75EMAILUSUARIO: TStringField;
    AdvGlowButton9: TAdvGlowButton;
    btnEncerrar: TAdvGlowButton;
    DBEdit44: TDBEdit;
    btnEncerrar2: TAdvGlowButton;
    function TabelaNFE_123(Produto, Situacao: string): string;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure MnCancelarNotadeFiscalClick(Sender: TObject);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure BtnOperacaoEstoqueClick(Sender: TObject);
    procedure BtnTransportadoraClick(Sender: TObject);
    procedure EditCdTranspKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnCliFornEmpClick(Sender: TObject);
    procedure DBEditCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnPlanoRectoClick(Sender: TObject);
    procedure BtnPedidoClick(Sender: TObject);
    procedure DBEditPVKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ImprimirEtiquetasdeCdigodeBarras1Click(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure BtnVendedorClick(Sender: TObject);
    procedure ComboNumerarioPrazoChange(Sender: TObject);
    procedure SQLTemplatePLRCICODChange(Sender: TField);
    procedure SQLTemplateAfterCancel(DataSet: TDataSet);
    procedure SQLContasReceberNewRecord(DataSet: TDataSet);
    procedure SQLContasReceberBeforePost(DataSet: TDataSet);
    procedure SQLContasReceberBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateNOFIN2VLRFRETEChange(Sender: TField);
    procedure NotaFiscal1Click(Sender: TObject);
    procedure Identific1Click(Sender: TObject);
//    procedure ImprimirDuplicatas1Click(Sender: TObject);
    procedure SQLTemplateOPESICODChange(Sender: TField);
    procedure BtnEmpresaClick(Sender: TObject);
    procedure SQLTemplateAfterInsert(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure RecalcularFinanceiroClick(Sender: TObject);
    procedure SQLPedidoVendaBeforeDelete(DataSet: TDataSet);
    procedure ImportaPedidoVenda(PedidoVendaID: string);
    procedure ImportarCupom;
    procedure ImportarPrevenda;
    procedure SQLTemplatePDVDA13IDChange(Sender: TField);
    procedure FormActivate(Sender: TObject);
    procedure MnGerarNotadeCupomClick(Sender: TObject);
    procedure ComboNumerarioVistaChange(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure GerarNFdeVendaConsignadaClick(Sender: TObject);
    procedure SQLNotaFiscalItemBeforePost(DataSet: TDataSet);
    procedure SQLNotaFiscalItemCalcFields(DataSet: TDataSet);
    procedure SQLNotaFiscalItemNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure SQLTemplateNOFIN2VLRNOTAChange(Sender: TField);
    procedure SQLContasReceberPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure ComboHistoricoPadraoExit(Sender: TObject);
    procedure ComboHistoricoPadraoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CriaNovaNota;
    procedure ComboVendedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnAvalistaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function TrocaEnter(nTxt: string): string;
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboMotoristaExit(Sender: TObject);
    procedure ComboObsNotaExit(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure BTNLocalizarClick(Sender: TObject);
    procedure BTNRecalcularFinanceiroClick(Sender: TObject);
    procedure BtnExcluirParcAtuaisClick(Sender: TObject);
    procedure ComboPlanoRectoExit(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure MnRecalcularImpostosClick(Sender: TObject);
    procedure MnTrocarStatusEncerradaparaAberta1Click(Sender: TObject);
    procedure ComboObsCorpoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit25KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GerarArquivosdeNotasProcessadaparaContabilidade1Click(Sender: TObject);
    procedure DBEdit50KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SQLTemplateNOFIN2PERCCONTRSOCIALChange(Sender: TField);
    procedure SQLTemplateNOFIN2PERCIRChange(Sender: TField);
    procedure SQLTemplateNOFIN2PERCPISChange(Sender: TField);
    procedure SQLTemplateNOFIN2PERCINSSChange(Sender: TField);
    procedure SQLTemplateNOFIN2PERCMATERIALChange(Sender: TField);
    procedure SQLTemplateNOFIN2PERCMAODEOBRAChange(Sender: TField);
    procedure SQLTemplateNOFIN2PERCCOFINSChange(Sender: TField);
    procedure Imprimir1Click(Sender: TObject);
    procedure SQLTemplateBeforeOpen(DataSet: TDataSet);
    procedure BtDadosPadroesClick(Sender: TObject);
    procedure OrdemServioGrficas1Click(Sender: TObject);
    procedure rocaStatusNFCanceladaparaAbertanomovestoque1Click(Sender: TObject);
    procedure NotaFiscalJava1Click(Sender: TObject);
    procedure ReimprimirDANFE1Click(Sender: TObject);
    procedure ReenviarEmail1Click(Sender: TObject);
    procedure CancelarNFe1Click(Sender: TObject);
    procedure EncerrarNotaFiscalJava1Click(Sender: TObject);
    procedure RxSpeedButton1Click(Sender: TObject);
    procedure RxSpeedButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure InunitilizarNmeros1Click(Sender: TObject);
    procedure SQLTemplateNOFICFINALIDADEChange(Sender: TField);
    procedure RxSpeedButton3Click(Sender: TObject);
    procedure ACBrNFe1GerarLog(const Mensagem: string);
    procedure ACBrNFe1StatusChange(Sender: TObject);
    procedure ConsultarWebService1Click(Sender: TObject);
    procedure btnF12Click(Sender: TObject);
    procedure ReabrirNFeEncerradaNaoMovimentaEstoque1Click(Sender: TObject);
    procedure FecharNotaAbertaNoMovimentaEstoque1Click(Sender: TObject);
    procedure EncerrarNotasemSequencia1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure MnImportarDadosdoPedidodeVendaClick(Sender: TObject);
    procedure MnGerarBoletosClick(Sender: TObject);
    procedure AdvGlowButton9Click(Sender: TObject);
    procedure btnEncerrarClick(Sender: TObject);
    procedure DBEdit44Change(Sender: TObject);
  private
    Config: string;

    { Private declarations }
    IDNOTAIMP, PedidoAnterior, PedidoNovo, PlanoAnterior, StatusAnterior, StatusNovo: string;
    CriandoNota, PlanoDoCliente, ClienteDoPedido, CancelandoNota, TrocaEntrada, AtivarFinanceiro, CalculandoFrete, bEnviandoNFE: Boolean;
    ValorEntrada, ValorFrete, ValorIcmsFrete, ValorVista: Double;
    ContasReceberCliente, ContasReceberID: string;
    BkpEmpresaCorrente: Integer;
    procedure EncerrarNota;
    function RetornaPais(nPais: Integer): string;
    function FaltamDadosNasParcelas: Boolean;
    function GeraNotaVendaConsignada: Boolean;
    function TemMovimentoEstoqueNF(IDNotaFiscal: string): Boolean;
    function InformarDadosCheque: boolean;
    function CalculoSubstituicaoTributaria: string;
    function VerificaDadosCliente: Boolean;
    function VerificaDadosProduto: Boolean;
    function VerificaDadosTransp: Boolean;
    function ExecAndWait(Comando: string; WindowState: word): Boolean;
    // Funcoes NFE
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    function Gerar_XMLACBr(): string;
    function RetornaCofins(Produto: string): string;
    function RetornaPis(Produto: string): string;
    function SN(sNum: string): string;
  public
    Arquivo: TextFile;
    GerandoNota, InserindoNota, InserindoCupomFiscal, PermiteExcluirSemPerguntar: Boolean;
    VarPDVDA13ID, VarSerie, VarTRANICOD, VarNOFIA30NROPEDCOMP, VarNOFIA30COMPRADOR, VarNOFIINROTALAO, VarPLRCICOD, VarCLIEA13ID, VarVENDICOD, VarNOFIN2VLRFRETE, VarNOFIN2VLRDESCPROM, VarNOFIA255OBS, VarOperacaoEstoque, VarOperacaoEntradaSaida, Titulo, Linha, SitTrib, EntradaSaida: string;
    VarNumero, VarNroItem: Integer;
    PesoLiquido, PesoBruto: Double;
    IncrementaNroCheque: Boolean;
    { Public declarations }
    procedure Inicia_NFe;
    function PontoVirgula(xText: string): string;
    function SoNumeros(xText: string): string;
  end;

var
  FormCadastroNotaFiscal: TFormCadastroNotaFiscal;
  PainelDivisao: array[0..3] of string = ('CFIPILININICAB', '', '', 'CFIPILININIRODAPE');
  lProcesso: TProcessInformation;
  vBC_Total, vICMS_Total, vBCST_Total, vICMSST_Total, vFrete_Total, vSeg_Total, vDesc_total, vII_Total, vIPI_Total, vPIS_Total, vCOFINS_Total, vOutro_Total, vNF_Total, vST_Total: Extended;

implementation

uses
  CadastroNotaFiscalFinanceiro, CadastroNotaFiscalItem, UnitLibrary,
  CadastroPedidoVenda, DataModulo, TelaImportacaoPedidoVenda,
  CadastroOperacoesEstoque, CadastroTransportadora, CadastroFornecedor,
  CadastroCliente, TelaConsultaEmpresa, TelaEmissaoEtiquetasCodigoBarras,
  CadastroVendedor,
  {TelaImpressaoDuplicatas}TelaConsultaCupom, TelaItensVendaConsignacao,
  TelaConsultaPlanoRecebimento, WaitWindow, DataModuloImpNotaFiscal,
  DataModuloTemplate, TelaConsultaPlanoContas, TelaDadosCheque, WindowsLibrary,
  ExtensoLib, CadastroAvalista, TelaConsultaOperacaoTesouraria,
  TelaAssistenteLancamentoContasReceber, TelaImpressaoBloquetos, ProcessandoNFe,
  TelaConfigPedidos, CadastroGraficaOrdem, CadastroNotaFiscalReferenciada,
  pcnConversaoNFe, CadastroNotaFiscalCartaCorrecao, TelaInutilizacaoNFe, pcnNFe,
  Math, ACBrNFeWebServices, StatusNFe, email, pcnRetConsReciNFe, pcnProcNFe,
  pcnEventoNFe, pcnRetEnvEventoNFe, TelaConsultaPrevendaTablets,
  TelaImpressaoDuplicatas;

{$R *.dfm}

procedure TFormCadastroNotaFiscal.CriaNovaNota;
begin
  Application.ProcessMessages;
  GerandoNota := True;
  Dm.ImportandoPedidoVenda := True;
  InserindoNota := False;
  SqlTemplate.Append;
  SQLTemplate.FieldByName('PDVDA13ID').AsString := VarPDVDA13ID;
  SQLTemplate.FieldByName('SERIA5COD').AsString := VarSerie;
  SQLTemplate.FieldByName('OPESICOD').AsString := VarOperacaoEstoque;
  SQLTemplate.FieldByName('NOFA1ENTRADASAIDA').AsString := VarOperacaoEntradaSaida;
  SQLTemplate.FieldByName('TRANICOD').AsString := VarTRANICOD;
  SQLTemplate.FieldByName('NOFIA30NROPEDCOMP').AsString := VarNOFIA30NROPEDCOMP;
  SQLTemplate.FieldByName('NOFIA30COMPRADOR').AsString := VarNOFIA30COMPRADOR;
  SQLTemplate.FieldByName('NOFIINROTALAO').AsString := VarNOFIINROTALAO;
  SQLTemplate.FieldByName('PLRCICOD').AsString := VarPLRCICOD;
  SQLTemplate.FieldByName('CLIEA13ID').AsString := VarCLIEA13ID;
  SQLTemplate.FieldByName('VENDICOD').AsString := VarVENDICOD;
  SQLTemplate.FieldByName('NOFIN2VLRFRETE').AsString := VarNOFIN2VLRFRETE;
  SQLTemplate.FieldByName('NOFIN2VLRDESCPROM').AsString := VarNOFIN2VLRDESCPROM;
  SQLTemplate.FieldByName('NOFIA255OBS').AsString := VarNOFIA255OBS;
  SQLTemplate.Post;
  GerandoNota := False;
end;

procedure TFormCadastroNotaFiscal.ImportaPedidoVenda(PedidoVendaID: string);
var
  TotNroItens: Integer;
  //////////////////////////////////////////////////////////////

  procedure AtualizaNotaFiscal(Key: string);

    function SUM(Field: string): double;
    var
      Query: TQuery;
    begin
      Query := TQuery.Create(Application);
      Query.DatabaseName := DM.DB.DatabaseName;
      Query.SQL.Clear;
      Query.SQL.Add('SELECT SUM(' + Field + ') AS TOTAL FROM NOTAFISCALITEM WHERE NOFIA13ID = ''' + Key + '''');
      Query.Open;
      Result := Query.FieldByName('TOTAL').AsFloat;
      Query.Free;
    end;

    function CalculaServico(Field: string): Double;
    var
      QueryServico: TQuery;
    begin
      QueryServico := TQuery.Create(Application);
      QueryServico.DatabaseName := DM.DB.DatabaseName;
      QueryServico.SQL.Clear;
      QueryServico.SQL.ADD('SELECT SUM(' + Field + ') AS TOTALSERVICO ');
      QueryServico.SQL.ADD('FROM NOTAFISCALITEM LEFT OUTER JOIN PRODUTO ON NOTAFISCALITEM.PRODICOD = PRODUTO.PRODICOD ');
      QueryServico.SQL.ADD('WHERE PRODUTO.PRODCSERVICO = ''S'' and NOTAFISCALITEM.NOFIA13ID = ''' + Key + '''');
      QueryServico.Open;
      Result := QueryServico.FieldByName('TOTALSERVICO').AsFloat;
      QueryServico.Free;
    end;

  var
    TOTAL: double;
    TOTALSERVICO: Double;
  begin
    SQLTemplate.Edit;
    //TOTAL := SUM('(NFITN2VLRUNIT * NFITN3QUANT) - NFITN2VLRDESC');

    // ADILSON TOTAL := SUM('(NFITN2VLRUNIT * NFITN3QUANT)');
    // TIVE Q RECALCULAR OS ITENS POR CAUSA DO FATOR DE CONVERSAO Q INCLUI PARA AS DISTRIBUIDORES.
    TOTAL := 0;
    SQLPedidoVendaItem.Close;
    SQLPedidoVendaItem.ParamByName('PDVDA13ID').asString := SQLTemplate.FieldByName('PDVDA13ID').asString;
    SQLPedidoVendaItem.Open;
    while not SQLPedidoVendaItem.eof do
    begin
      SQLUnidade.Close;
      SQLUnidade.MacroByName('Filtro').Value := 'UNIDICOD = ' + SQLPedidoVendaItem.FieldByName('UNIDICOD').AsString;
      SQLUnidade.Open;

      TOTAL := Total + (SQLPedidoVendaItem.FieldByName('PVITN2VLRUNIT').AsFloat * (SQLPedidoVendaItem.FieldByName('PVITN3QUANT').AsFloat * SQLUnidadeUNIDN3FATORCONV.Value));

      SQLPedidoVendaItem.next;
    end;

//    TOTALSERVICO := CalculaServico('(NFITN2VLRUNIT * NFITN3QUANT) - NFITN2VLRDESC');
    TOTALSERVICO := CalculaServico('(NFITN2VLRUNIT * NFITN3QUANT)');
{    if TOTALSERVICO > 0 then
      SQLTemplate.FieldByName('NOFIN2VLRPRODUTO').AsFloat := TOTAL - TOTALSERVICO
    else
      SQLTemplate.FieldByName('NOFIN2VLRPRODUTO').AsString := FormatFloat('##0.00',TOTAL); }
//    SQLTemplate.FieldByName('NOFIN2VLRDESC').AsFloat := SUM('NFITN2VLRDESC');
    SQLTemplate.FieldByName('NOFIN2BASCALCICMS').asFloat := SUM('NFITN2BASEICMS');
    SQLTemplate.FieldByName('NOFIN2VLRICMS').asFloat := SUM('NFITN2VLRICMS');
    SQLTemplate.FieldByName('NOFIN2BASCALCSUBS').asFloat := SUM('NFITN2BASESUBS');
    SQLTemplate.FieldByName('NOFIN2VLRSUBS').asFloat := SUM('NFITN2VLRSUBS');
    SQLTemplate.FieldByName('NOFIN2VLRIPI').asFloat := SUM('NFITN2VLRIPI');
    if SQLTemplate.FieldByName('NOFIN2VLRIPI').asFloat > 0 then
      SQLTemplate.FieldByName('NOFIN2BASCALCCIPI').asFloat := TOTAL;
    SQLTemplate.FieldByName('NOFIN2VLRISSQN').asFloat := SUM('NFITN2VLRISSQN');
    if SQLTemplate.FieldByName('NOFIN2VLRISSQN').asFloat > 0 then
      SQLTemplate.FieldByName('NOFIN2VLRSERVICO').asFloat := TOTALSERVICO;
    SQLTemplate.FieldByName('NOFIN3QUANT').asFloat := SUM('NFITN3QUANT');
    if PesoBruto > 0 then
      SQLTemplate.FieldByName('NOFIN3PESBRUT').asFloat := PesoBruto;
    if PesoLiquido > 0 then
      SQLTemplate.FieldByName('NOFIN3PESLIQ').asFloat := PesoLiquido;
    SQLTemplate.Post;
  end;

  procedure ImportaItensPedido;

    procedure ImportaComposicaoPedido;
    begin
      SQLComposicaoPedido.First;

      SQLTemplate.AutoCalcFields := False;
      SQLTemplate.AutoCalcFields := True;
      SQLNotaFiscalItem.Open;
      while not SQLComposicaoPedido.Eof do
      begin
        Inc(NumItem);
        Inc(TotNroItens);
        SQLNotaFiscalItem.Append;
        SQLNotaFiscalItem.FieldByName('NOFIA13ID').AsString := SQLTemplate.FieldByName('NOFIA13ID').AsString;
        SQLNotaFiscalItem.FieldByName('PRODICOD').AsInteger := SQLComposicaoPedido.FieldByName('PRODICODFILHO').AsInteger;
        if SQLTemplate.FieldByName('CampoImpostoLookUp').AsString = '' then
        begin
          Informa('Tipo de movimentação não tem campo para cálculo de ICMS!');
          Exit;
        end
        else
        begin
          DM.ProcuraRegistro('PRODUTO', ['PRODICOD'], [SQLNotaFiscalItem.FieldByName('PRODICOD').AsString], 1);
          SQLNotaFiscalItemNFITICST.Value := DM.SQLTemplate.FindField('PRODIORIGEM').AsInteger + DM.SQLTemplate.FindField('PRODISITTRIB').AsInteger;

          if (SQLTemplate.FieldByName('CalcIPILookUp').AsString = 'S') then
          begin
            if (DM.SQLTemplate.FindField('PRODN3PERCIPI').asFloat <> 0) then
              SQLNotaFiscalItem.FieldByName('NFITN2PERCIPI').asFloat := DM.SQLTemplate.FindField('PRODN3PERCIPI').asFloat
            else
              SQLNotaFiscalItem.FieldByName('NFITN2PERCIPI').asFloat := 0;
          end
          else
            SQLNotaFiscalItem.FieldByName('NFITN2PERCIPI').asFloat := 0;
          if DM.SQLTemplate.FindField('PRODCSERVICO').asString = 'S' then
            SQLNotaFiscalItem.FieldByName('NFITN2PERCISSQN').AsFloat := DM.SQLConfigVenda.FieldByName('CFVEN3ALIQISSQN').asFloat
          else
            SQLNotaFiscalItem.FieldByName('NFITN2PERCISSQN').AsFloat := 0;

          if (DM.SQLTemplate.FindField('ICMSICOD').asVariant <> null) and (SQLTemplate.FieldByName('CalcICMSLookUp').AsString = 'S') then
          begin
            SQLICMS.Close;
            SQLICMS.ParamByName('ICMSICOD').asInteger := DM.SQLTemplate.FindField('ICMSICOD').AsInteger;
            SQLICMS.Open;
            if SQLTemplate.FieldByName('EmpresaUFLookUp').asString <> SQLTemplate.FieldByName('CliFornEmpEstadoLookUp').asString then
            begin
              SQLICMSUF.Close;
              SQLICMSUF.ParamByName('ICMUA2UF').asString := SQLTemplate.FieldByName('CliFornEmpEstadoLookUp').asString;
              SQLICMSUF.Open;
              SQLNotaFiscalItem.FieldByName('NFITN2PERCICMS').asFloat := SQLICMSUF.FindField('ICMUN2ALIQUOTA').asFloat;
              if (SQLTemplate.FieldByName('OrigemDestinoLookUp').asVariant <> null) and (SQLTemplate.FieldByName('OrigemDestinoLookUp').AsString <> '') then
              begin
                case SQLTemplate.FieldByName('OrigemDestinoLookUp').AsString[1] of
                  'C':
                    begin
                      SQLNotaFiscalItem.FieldByName('NFITN2PERCSUBS').asFloat := 0;
                      SQLNotaFiscalItem.FieldByName('NFITN2PERCREDUCAO').asFloat := 0;
                    end;
                end;
              end
              else
              begin
                SQLNotaFiscalItem.FieldByName('NFITN2PERCSUBS').asFloat := 0;
                SQLNotaFiscalItem.FieldByName('NFITN2PERCREDUCAO').asFloat := 0;
              end;
              SQLICMSUF.Close;
            end
            else
            begin
              SQLNotaFiscalItem.FieldByName('NFITN2PERCICMS').asFloat := SQLICMS.FindField('ICMSN2ICMSM1').asFloat;
              if (SQLTemplate.FieldByName('OrigemDestinoLookUp').asVariant <> null) and (SQLTemplate.FieldByName('OrigemDestinoLookUp').AsString <> '') then
              begin
                case SQLTemplate.FieldByName('OrigemDestinoLookUp').AsString[1] of
                  'C':
                    begin
                      SQLNotaFiscalItem.FieldByName('NFITN2PERCREDUCAO').asFloat := SQLICMS.FindField('ICMSN2REDBASEICMS').asFloat;
                      SQLNotaFiscalItem.FieldByName('NFITN2PERCSUBS').asFloat := SQLICMS.FindField('ICMSN2PERCSUBSTSAI').asFloat;
                    end;
                end;
              end
              else
              begin
                SQLNotaFiscalItem.FieldByName('NFITN2PERCSUBS').asFloat := 0;
                SQLNotaFiscalItem.FieldByName('NFITN2PERCREDUCAO').asFloat := 0;
              end;
            end;
            SQLICMS.Close;
          end;
        end;
        SQLNotaFiscalItem.FieldByName('PDVDA13ID').Value := SQLComposicaoPedido.FieldByName('PDVDA13ID').Value;
        SQLNotaFiscalItem.FieldByName('PVITIITEM').AsInteger := SQLComposicaoPedido.FieldByName('PVITIITEM').AsInteger;
        SQLNotaFiscalItem.FieldByName('NFITN3QUANT').AsFloat := SQLComposicaoPedido.FieldByName('PVCON3QUANT').AsFloat;
        SQLNotaFiscalItem.FieldByName('NFITN3QUANTVEND').AsFloat := SQLComposicaoPedido.FieldByName('PVCON3QUANT').AsFloat;
        SQLNotaFiscalItem.FieldByName('NFITN2VLRUNIT').AsFloat := SQLComposicaoPedido.FieldByName('PVCON2VLRUNIT').AsFloat;
        SQLNotaFiscalItem.FieldByName('NFITN2VLRDESC').AsFloat := SQLComposicaoPedido.FieldByName('PVCON2VLRDESC').AsFloat;
        SQLNotaFiscalItem.FieldByName('NFITN2PERCDESC').AsFloat := SQLComposicaoPedido.FieldByName('PVCON2PERCDESC').AsFloat;
        CalculaImpostosNotaFiscalItem(SQLNotaFiscalItem, DSTemplate, 1);
        SQLNotaFiscalItem.FieldByName('NFITA254OBS').AsString := SQLComposicaoPedido.FieldByName('PVCOA254OBS').AsString;
        PesoLiquido := PesoLiquido + SQLNotaFiscalItem.FieldByName('PesoLiquidoLookup').AsFloat;
        PesoBruto := PesoBruto + SQLNotaFiscalItem.FieldByName('PesoBrutoLookup').AsFloat;
        SQLNotaFiscalItem.Post;

        if DM.SQLConfigVenda.FieldByName('CFVEINROITENSNF').Value > 0 then
          if (NumItem = DM.SQLConfigVenda.FieldByName('CFVEINROITENSNF').AsInteger) and (SQLComposicaoPedido.RecordCount > TotNroItens) then
          begin
            if Pergunta('SIM', 'O número máximo de itens para uma mesma nota foi alcançado, você deseja iniciar uma nova nota ?') then
            begin
              if SQLTemplatePDVDA13ID.AsString <> '' then
              begin
                NumItem := 0;
                AtualizaNotaFiscal(SQLTemplate.FieldByName('NOFIA13ID').AsString);
                CriaNovaNota;
              end;
            end
            else
            begin
              AtualizaNotaFiscal(SQLTemplate.FieldByName('NOFIA13ID').AsString);
              DestroyWindow;
              VarPDVDA13ID := '';
              SQLProduto.Close;
              Exit;
            end;
          end;
        SQLComposicaoPedido.Next;
      end;
    end;

  begin
    if SQLPedidoVendaItem.Active then
      SQLPedidoVendaItem.Close;
    SQLPedidoVendaItem.ParamByName('PDVDA13ID').asString := SQLTemplate.FieldByName('PDVDA13ID').asString;
    SQLPedidoVendaItem.Open;

    if not SQLPedidoVendaItem.IsEmpty then
      SQLPedidoVendaItem.First
    else
    begin
      Informa('O Pedido de venda selecionado não possui ítens, esta operação será cancelada !');
      Abort;
      DestroyWindow;
    end;

    SQLTemplate.AutoCalcFields := False;
    SQLTemplate.AutoCalcFields := True;
    SQLNotaFiscalItem.Open;
    while not SQLPedidoVendaItem.Eof do
    begin
      // Verificar composição do item
      if SQLComposicaoPedido.Active then
        SQLComposicaoPedido.Close;

      SQLComposicaoPedido.ParamByName('PDVDA13ID').asString := SQLPedidoVendaPDVDA13ID.AsString;
      SQLComposicaoPedido.ParamByName('PVITIITEM').AsString := SQLPedidoVendaItemPVITIITEM.AsString;
      SQLComposicaoPedido.Open;

      if not SQLComposicaoPedido.IsEmpty then
      begin
        ImportaComposicaoPedido;
      end
      else
      begin
          ///////////////////////////////
        Inc(NumItem);
        Inc(TotNroItens);
        SQLNotaFiscalItem.Append;
        SQLNotaFiscalItem.FieldByName('NOFIA13ID').AsString := SQLTemplate.FieldByName('NOFIA13ID').AsString;
        SQLNotaFiscalItem.FieldByName('PRODICOD').AsInteger := SQLPedidoVendaItem.FieldByName('PRODICOD').AsInteger;
        if SQLTemplate.FieldByName('CampoImpostoLookUp').AsString = '' then
        begin
          Informa('Tipo de movimentação não tem campo para cálculo de ICMS!');
          Exit;
        end
        else
        begin
          DM.ProcuraRegistro('PRODUTO', ['PRODICOD'], [SQLNotaFiscalItem.FieldByName('PRODICOD').AsString], 1);
          SQLNotaFiscalItemNFITICST.Value := DM.SQLTemplate.FindField('PRODIORIGEM').AsInteger + DM.SQLTemplate.FindField('PRODISITTRIB').AsInteger;

          if (SQLTemplate.FieldByName('CalcIPILookUp').AsString = 'S') then
          begin
            if (DM.SQLTemplate.FindField('PRODN3PERCIPI').asFloat <> 0) then
              SQLNotaFiscalItem.FieldByName('NFITN2PERCIPI').asFloat := DM.SQLTemplate.FindField('PRODN3PERCIPI').asFloat
            else
              SQLNotaFiscalItem.FieldByName('NFITN2PERCIPI').asFloat := 0;
          end
          else
            SQLNotaFiscalItem.FieldByName('NFITN2PERCIPI').asFloat := 0;
          if DM.SQLTemplate.FindField('PRODCSERVICO').asString = 'S' then
            SQLNotaFiscalItem.FieldByName('NFITN2PERCISSQN').AsFloat := DM.SQLConfigVenda.FieldByName('CFVEN3ALIQISSQN').asFloat
          else
            SQLNotaFiscalItem.FieldByName('NFITN2PERCISSQN').AsFloat := 0;
          if (DM.SQLTemplate.FindField('ICMSICOD').asVariant <> null) and (SQLTemplate.FieldByName('CalcICMSLookUp').AsString = 'S') then
          begin
            SQLICMS.Close;
            SQLICMS.ParamByName('ICMSICOD').asInteger := DM.SQLTemplate.FindField('ICMSICOD').AsInteger;
            SQLICMS.Open;
            if SQLTemplate.FieldByName('EmpresaUFLookUp').asString <> SQLTemplate.FieldByName('CliFornEmpEstadoLookUp').asString then
            begin
              SQLICMSUF.Close;
              SQLICMSUF.ParamByName('ICMUA2UF').asString := SQLTemplate.FieldByName('CliFornEmpEstadoLookUp').asString;
              SQLICMSUF.Open;
              SQLNotaFiscalItem.FieldByName('NFITN2PERCICMS').asFloat := SQLICMSUF.FindField('ICMUN2ALIQUOTA').asFloat;
              if (SQLTemplate.FieldByName('OrigemDestinoLookUp').asVariant <> null) and (SQLTemplate.FieldByName('OrigemDestinoLookUp').AsString <> '') then
              begin
                case SQLTemplate.FieldByName('OrigemDestinoLookUp').AsString[1] of
                  'C':
                    begin
                      SQLNotaFiscalItem.FieldByName('NFITN2PERCSUBS').asFloat := SQLICMS.FindField('ICMSN2PERCSUBSTSAI').asFloat;
                      SQLNotaFiscalItem.FieldByName('NFITN2PERCREDUCAO').asFloat := SQLICMS.FindField('ICMSN2REDBASEICMS').asFloat;
                    end;
                end;
              end
              else
              begin
                SQLNotaFiscalItem.FieldByName('NFITN2PERCSUBS').asFloat := 0;
                SQLNotaFiscalItem.FieldByName('NFITN2PERCREDUCAO').asFloat := 0;
              end;
              SQLICMSUF.Close;
            end
            else
            begin
              SQLNotaFiscalItem.FieldByName('NFITN2PERCICMS').asFloat := SQLICMS.FindField('ICMSN2ICMSM1').asFloat;
              if (SQLTemplate.FieldByName('OrigemDestinoLookUp').asVariant <> null) and (SQLTemplate.FieldByName('OrigemDestinoLookUp').AsString <> '') then
              begin
                case SQLTemplate.FieldByName('OrigemDestinoLookUp').AsString[1] of
                  'C':
                    begin
                      SQLNotaFiscalItem.FieldByName('NFITN2PERCREDUCAO').asFloat := SQLICMS.FindField('ICMSN2REDBASEICMS').asFloat;
                      SQLNotaFiscalItem.FieldByName('NFITN2PERCSUBS').asFloat := SQLICMS.FindField('ICMSN2PERCSUBSTSAI').asFloat;
                    end;
                end;
              end
              else
              begin
                SQLNotaFiscalItem.FieldByName('NFITN2PERCSUBS').asFloat := 0;
                SQLNotaFiscalItem.FieldByName('NFITN2PERCREDUCAO').asFloat := 0;
              end;
            end;
            SQLICMS.Close;
          end;
        end;
        SQLNotaFiscalItem.FieldByName('PDVDA13ID').Value := SQLPedidoVendaItem.FieldByName('PDVDA13ID').Value;
        SQLNotaFiscalItem.FieldByName('PVITIITEM').AsInteger := SQLPedidoVendaItem.FieldByName('PVITIITEM').AsInteger;
        SQLNotaFiscalItem.FieldByName('NFITN3QUANT').AsFloat := SQLPedidoVendaItem.FieldByName('PVITN3QUANT').AsFloat;
        SQLNotaFiscalItem.FieldByName('NFITN3QUANTVEND').AsFloat := SQLPedidoVendaItem.FieldByName('PVITN3QUANT').AsFloat;
        SQLNotaFiscalItem.FieldByName('NFITN2VLRUNIT').AsFloat := SQLPedidoVendaItem.FieldByName('PVITN2VLRUNIT').AsFloat;
        SQLNotaFiscalItem.FieldByName('NFITN2VLRDESC').AsFloat := SQLPedidoVendaItem.FieldByName('PVITN2VLRDESC').AsFloat;
        SQLNotaFiscalItem.FieldByName('NFITN2PERCDESC').AsFloat := SQLPedidoVendaItem.FieldByName('PVITN2PERCDESC').AsFloat;

        SQLNotaFiscalItem.FieldByName('UNIDICOD').AsString := SQLPedidoVendaItem.FieldByName('UNIDICOD').AsString;
        SQLUnidade.Close;
        SQLUnidade.MacroByName('Filtro').Value := 'UNIDICOD = ' + SQLNotaFiscalItem.FieldByName('UNIDICOD').AsString;
        SQLUnidade.Open;
        CalculaImpostosNotaFiscalItem(SQLNotaFiscalItem, DSTemplate, SQLUnidadeUNIDN3FATORCONV.AsFloat);
        SQLNotaFiscalItem.FieldByName('LOTEA30NRO').AsString := SQLPedidoVendaItem.FieldByName('LOTEA30NRO').AsString;
        SQLNotaFiscalItem.FieldByName('NFITA254OBS').AsString := SQLPedidoVendaItem.FieldByName('PDVDA255OBS1').AsString;
        PesoLiquido := PesoLiquido + SQLNotaFiscalItem.FieldByName('PesoLiquidoLookup').AsFloat;
        PesoBruto := PesoBruto + SQLNotaFiscalItem.FieldByName('PesoBrutoLookup').AsFloat;
        SQLNotaFiscalItem.Post;

        if DM.SQLConfigVenda.FieldByName('CFVEINROITENSNF').Value > 0 then
          if (NumItem = DM.SQLConfigVenda.FieldByName('CFVEINROITENSNF').AsInteger) and (SQLPedidoVendaItem.RecordCount > TotNroItens) then
          begin
            if Pergunta('SIM', 'O número máximo de itens para uma mesma nota foi alcançado, você deseja iniciar uma nova nota ?') then
            begin
              if SQLTemplatePDVDA13ID.AsString <> '' then
              begin
                NumItem := 0;
                AtualizaNotaFiscal(SQLTemplate.FieldByName('NOFIA13ID').AsString);
                CriaNovaNota;
              end;
            end
            else
            begin
              AtualizaNotaFiscal(SQLTemplate.FieldByName('NOFIA13ID').AsString);
              DestroyWindow;
              VarPDVDA13ID := '';
              SQLProduto.Close;
              Exit;
            end;
          end;
      end;
      SQLPedidoVendaItem.Next;
    end;
    SQLComposicaoPedido.Close;
    SQLPedidoVenda.Close;
    SQLPedidoVendaItem.Close;
  end;

begin
  DM.ImportandoPedidoVenda := True;
//  MakeWindowMessage('Importando Pedido de Venda');
  SQLProduto.Open;
  if DM.SQLConfigVenda.FieldByName('CFVECALTPEDIMPORT').Value = 'S' then
  begin
    if (SQLTemplate.FieldByName('PDVDA13ID').AsVariant <> null) and (SQLTemplate.State = dsInsert) then
    begin
      SQLPedidoVenda.Close;
      if VarPDVDA13ID = '' then
        SQLPedidoVenda.ParamByName('PDVDA13ID').asString := SQLTemplate.FieldByName('PDVDA13ID').asString
      else
        SQLPedidoVenda.ParamByName('PDVDA13ID').asString := VarPDVDA13ID;
      SQLPedidoVenda.Open;
          // Troca Status do Pedido pra FATURADO e Alimenta a Coluna Importado(SN)
      SQLPedidoVenda.Edit;
      SQLPedidoVenda.FieldByName('PDVDCSTATUS').AsString := 'F';
      SQLPedidoVenda.FieldByName('PDVDCIMPORTADO').AsString := 'S';
      SQLPedidoVenda.Post;
      SQLPedidoVenda.First;
      if not SQLPedidoVenda.Eof then
      begin
        if (SQLPedidoVenda.FieldByName('PDVDCSTATUS').AsString = 'E') or (SQLPedidoVenda.FieldByName('PDVDCSTATUS').AsString = 'A') then
        begin
          SQLTemplate.FieldByName('TRANICOD').asVariant := SQLPedidoVenda.FieldByName('TRANICOD').asVariant;
          SQLTemplate.FieldByName('NOFIA30NROPEDCOMP').asVariant := SQLPedidoVenda.FieldByName('PDVDA30NROPEDCOMP').asVariant;
          SQLTemplate.FieldByName('NOFIA30COMPRADOR').asVariant := SQLPedidoVenda.FieldByName('PDVDA30COMPRADOR').asVariant;
          SQLTemplate.FieldByName('NOFIINROTALAO').asVariant := SQLPedidoVenda.FieldByName('PDVDINROTALAO').asVariant;
          SQLTemplate.FieldByName('VENDICOD').asVariant := SQLPedidoVenda.FieldByName('VENDICOD').asVariant;
          SQLTemplate.FieldByName('CLIEA13ID').asVariant := SQLPedidoVenda.FieldByName('CLIEA13ID').asVariant;
          if FileExists('LaTorre.txt') then
            SQLTemplate.FieldByName('NOFIN2VLRFRETE').asVariant := 0
          else
            SQLTemplate.FieldByName('NOFIN2VLRFRETE').asVariant := SQLPedidoVenda.FieldByName('PDVDN2VLRFRETE').asVariant;
          SQLTemplate.FieldByName('NOFIN2VLRDESC').asVariant := SQLPedidoVenda.FieldByName('PDVDN2VLRDESC').asVariant;
          SQLTemplate.FieldByName('NOFIN2VLRDESCPROM').asVariant := SQLPedidoVenda.FieldByName('PDVDN2VLRDESCPROM').asVariant;
          SQLTemplate.FieldByName('NOFIA255OBS').asVariant := SQLPedidoVenda.FieldByName('PDVDTOBS').asVariant;
          SQLTemplate.FieldByName('PLRCICOD').asVariant := SQLPedidoVenda.FieldByName('PLRCICOD').asVariant;
          SQLTemplate.FieldByName('ROTAICOD').asVariant := SQLPedidoVenda.FieldByName('ROTAICOD').asVariant;
        end
        else
        begin
          Informa('Este Pedido de Venda está cancelado!');
          Abort;
                 // DestroyWindow;
        end;
      end
      else
        Informa('Pedido de Venda não encontrado!');

      DSMasterSys := DsTemplate;
      CriaFormulario(TFormCadastroNotaFiscalItem, 'FormCadastroNotaFiscalItem', False, False, True, 'Nota Fiscal Nº ' + SQLTemplateNOFIINUMERO.AsString);
      CriaFormulario(TFormTelaImportacaoPedidoVenda, 'FormTelaImportacaoPedidoVenda', False, False, True, '');

      SQLPedidoVenda.Close;
    end;
  end
  else
  begin
    if SQLTemplate.FieldByName('PDVDA13ID').AsString <> '' then
    begin
      SQLPedidoVenda.Close;
      if VarPDVDA13ID = '' then
        SQLPedidoVenda.ParamByName('PDVDA13ID').asString := SQLTemplate.FieldByName('PDVDA13ID').asString
      else
        SQLPedidoVenda.ParamByName('PDVDA13ID').asString := VarPDVDA13ID;
      SQLPedidoVenda.Open;
      if (not SQLPedidoVenda.IsEmpty) and (SQLPedidoVendaPDVDCSTATUS.AsString <> 'C') then
      begin
              // Troca Status do Pedido pra FATURADO e Alimenta a Coluna Importado(SN)
        SQLPedidoVenda.Edit;
        SQLPedidoVenda.FieldByName('PDVDCSTATUS').AsString := 'F';
        SQLPedidoVenda.FieldByName('PDVDCIMPORTADO').AsString := 'S';
        SQLPedidoVenda.Post;
        SQLPedidoVenda.First;
        SQLTemplate.FieldByName('CLIEA13ID').AsString := SQLPedidoVenda.FieldByName('CLIEA13ID').AsString;
        SQLTemplate.FieldByName('TRANICOD').AsInteger := SQLPedidoVenda.FieldByName('TRANICOD').AsInteger;
        SQLTemplate.FieldByName('NOFIA30NROPEDCOMP').AsString := SQLPedidoVenda.FieldByName('PDVDINROTALAO').AsString;
        SQLTemplate.FieldByName('NOFIA30COMPRADOR').AsString := SQLPedidoVenda.FieldByName('PDVDA30COMPRADOR').AsString;
        SQLTemplate.FieldByName('VENDICOD').AsInteger := SQLPedidoVenda.FieldByName('VENDICOD').AsInteger;
        if FileExists('LaTorre.txt') then
          SQLTemplate.FieldByName('NOFIN2VLRFRETE').AsFloat := 0
        else
          SQLTemplate.FieldByName('NOFIN2VLRFRETE').AsFloat := SQLPedidoVenda.FieldByName('PDVDN2VLRFRETE').AsFloat;
        SQLTemplate.FieldByName('NOFIN2VLRDESC').AsFloat := SQLPedidoVenda.FieldByName('PDVDN2VLRDESC').AsFloat;
        SQLTemplate.FieldByName('NOFIN2VLRDESCPROM').AsFloat := SQLPedidoVenda.FieldByName('PDVDN2VLRDESCPROM').AsFloat;
        SQLTemplate.FieldByName('NOFIA255OBS').AsString := SQLPedidoVenda.FieldByName('PDVDTOBS').AsString;
        SQLTemplate.FieldByName('PLRCICOD').asVariant := SQLPedidoVenda.FieldByName('PLRCICOD').asVariant;
        SQLTemplate.Post;

        ImportaItensPedido;

        AtualizaNotaFiscal(SQLTemplate.FieldByName('NOFIA13ID').AsString);
      end
      else
      begin
        Informa('Pedido não Encontrado, Impossível realizar a importação');
              // DestroyWindow;
        Abort;
      end;
    end
    else
    begin
      Informa('Você deve informar o número do pedido');
      Abort;
    end;
  end;

  // DestroyWindow;
  SQLProduto.Close;
  VarPDVDA13ID := '';
  DM.ImportandoPedidoVenda := False;
end;

function TFormCadastroNotaFiscal.FaltamDadosNasParcelas: Boolean;
begin
  SQLParcelas.Open;
  if SQLParcelasPARC.AsInteger > 0 then
    Result := True
  else
    Result := False;
  SQLParcelas.Close;
end;

procedure TFormCadastroNotaFiscal.FormCreate(Sender: TObject);
begin
  inherited;
  BkpEmpresaCorrente := EmpresaCorrente;
  TABELA := 'NOTAFISCAL';
  SQLCliente.Open;
  SQLFornecedor.Open;
  SQLObsNota.Open;
  SQLSerie.Open;
  SQLSerieNF.Open;
  SQLCFOP.Open;
  SQLTipoDoc.Open;
  SQLPortador.Open;
  SQLHistoricoPadrao.Open;
  SQLVeiculo.Open;
  SQLConta.Open;
  if not SQLNumerarioVista.Active then
    SQLNumerarioVista.Open;
  if not SQLNumerarioPrazo.Active then
    SQLNumerarioPrazo.Open;

{  if DM.SQLConfigVendaCFVECALTPEDIMPORT.Value = 'S' then
    MnImportarDadosdoPedidodeVenda.Visible := true
  else
    MnImportarDadosdoPedidodeVenda.Visible := false ; }

  Titulo := LabelTitulo.Caption;
  Dm.Cupom := '';
  Dm.ImportandoPedidoVenda := False;
  GerandoNota := False;
  InserindoNota := False;
  DM.GerarNovaNota := False;
  if not SQLAvalista.Active then
    SQLAvalista.Open;

  if not dm.SQLConfigGeral.Active then
    dm.SQLConfigGeral.Open;

end;

procedure TFormCadastroNotaFiscal.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  ValorFrete := 0;
  ValorIcmsFrete := 0;
  ValorVista := 0;
  inherited;
  SQLTemplate.DisableControls;
  StatusAnterior := '';
  PlanoAnterior := '';
  PedidoAnterior := '';
  SQLTemplateNOFICFINALIDADE.Value := '1'; // NOTA FISCAL ELETRONICA NORMAL
  SQLTemplateNOFICSTATUS.Value := 'A';
  if not dm.sqlconfigvenda.FieldByName('CFVECFRETEPADRAO').IsNull then
    SQLTemplateNOFICFRETEPORCONTA.Value := dm.sqlconfigvenda.FieldByName('CFVECFRETEPADRAO').Value
  else
    SQLTemplateNOFICFRETEPORCONTA.Value := 'C';

  SQLTemplateNOFIN2BASCALCCIPI.Value := 0;
  SQLTemplateNOFIN2BASCALCICMS.Value := 0;
  SQLTemplateNOFIN2BASCALCSUBS.Value := 0;
  SQLTemplateNOFIN2VLRDESC.Value := 0;
  SQLTemplateNOFIN2VLRFRETE.Value := 0;
  SQLTemplateNOFIN2VLRICMS.Value := 0;
  SQLTemplateNOFIN2VLRIPI.Value := 0;
  SQLTemplateNOFIN2VLRISSQN.Value := 0;
  SQLTemplateNOFIN2VLRNOTA.Value := 0;
  SQLTemplateNOFIN2VLROUTRASDESP.Value := 0;
  SQLTemplateNOFIN2VLRPRODUTO.Value := 0;
  SQLTemplateNOFIN2VLRSEGURO.Value := 0;
  SQLTemplateNOFIN2VLRSERVICO.Value := 0;
  SQLTemplateNOFIN2VLRSUBS.Value := 0;
  SQLTemplateNOFIN3PESBRUT.Value := 0;
  SQLTemplateNOFIN3PESLIQ.Value := 0;
  SQLTemplateNOFIN3QUANT.Value := 0;
  SQLTemplateNOFIN2VLRICMSFRETE.Value := 0;
  SQLTemplateNOFIN2VLRDESCPROM.Value := 0;

  SQLTemplateNOFIN2PERCMAODEOBRA.Value := 0;
  SQLTemplateNOFIN2PERCMATERIAL.Value := 0;
  SQLTemplateNOFIN2PERCINSS.Value := 0;
  SQLTemplateNOFIN2PERCCOFINS.Value := 0;
  SQLTemplateNOFIN2PERCPIS.Value := 0;
  SQLTemplateNOFIN2PERCIR.Value := 0;
  SQLTemplateNOFIN2PERCCONTRSOCIAL.Value := 0;
  SQLTemplateNOFIN2PERCISSQN.Value := 0;

  SQLTemplateNOFIn3VLRMAODEOBRA.Value := 0;
  SQLTemplateNOFIn3VLRMATERIAL.Value := 0;
  SQLTemplateNOFIn3VLRINSS.Value := 0;
  SQLTemplateNOFIn3VLRCOFINS.Value := 0;
  SQLTemplateNOFIn3VLRPIS.Value := 0;
  SQLTemplateNOFIn3VLRIR.Value := 0;
  SQLTemplateNOFIN3vlrCONTRSOCIAL.Value := 0;

  if dm.DataEmissaoPedidos > 0 then
    SQLTemplateNOFIDEMIS.AsString := FormatDateTime('dd/mm/yyyy', dm.DataEmissaoPedidos)
  else
    SQLTemplateNOFIDEMIS.AsString := FormatDateTime('dd/mm/yyyy', Now);
  if dm.DataEntregaPedidos > 0 then
    SQLTemplateNOFIDSAIDAENTRADA.AsString := FormatDateTime('dd/mm/yyyy hh:mm', dm.DataEntregaPedidos);
//  else
  //  SQLTemplateNOFIDSAIDAENTRADA.AsString  := FormatDateTime('dd/mm/yyyy hh:mm',Now);

  //SELECIONA VENDEDOR PADRAO
  if DM.SQLTerminalAtivo.FieldByName('VENDICOD').AsVariant <> Null then
    SQLTemplateVENDICOD.AsInteger := DM.SQLTerminalAtivo.FieldByName('VENDICOD').AsInteger;

  if dm.SerieAtualPedidos <> '' then
    SQLTemplateSERIA5COD.Value := dm.SerieAtualPedidos
  else
    SQLTemplateSERIA5COD.Value := SQLSerieSERIA5COD.Value;

  if dm.RotaAtualPedidos > 0 then
    SQLTemplateRotaIcod.Value := dm.RotaAtualPedidos;
  if dm.VendedorAtualPedidos > 0 then
    SQLTemplateVENDICOD.Value := dm.VendedorAtualPedidos;
  if dm.TranspAtualPedidos > 0 then
    SQLTemplateTRANICOD.Value := dm.TranspAtualPedidos;
  if dm.VeiculoAtualPedidos <> '' then
    SQLTemplateVEICA13ID.Value := dm.VeiculoAtualPedidos;
  if SQLTemplateVEICA13ID.Value <> '' then
    SQLTemplateNOFIA8PLACAVEIC.Value := dm.SQLLocate('VEICULO', 'VEICA13ID', 'VEICA7PLACA', '''' + SQLTemplateVEICA13ID.Value + '''');



  //SELECIONA O PLANO PADRAO
  if DM.SQLTerminalAtivo.FieldByName('PLRCICOD').AsVariant <> Null then
    SQLTemplatePLRCICOD.AsInteger := DM.SQLTerminalAtivo.FieldByName('PLRCICOD').AsInteger;

  if DM.SQLConfigVenda.FieldByName('CFVETOBSPADRAONF').AsString <> '' then
    SQLTemplateNOFIA255OBS.AsString := DM.SQLConfigVenda.FieldByName('CFVETOBSPADRAONF').AsString;

  if UsuarioAtualNome <> '' then
    SQLTemplateUSUAA60LOGIN.AsString := UsuarioAtualNome;

  if UsuarioCorrente > 0 then
    SQLTemplateUSUAICOD.AsInteger := UsuarioCorrente;

  if DM.GerarNovaNota then
  begin
    SQLTemplate.FieldByName('SERIA5COD').AsString := VarSerie;
    SQLTemplate.FieldByName('OPESICOD').AsString := VarOperacaoEstoque;
    SQLTemplate.FieldByName('NOFA1ENTRADASAIDA').AsString := VarOperacaoEntradaSaida;
    SQLTemplate.FieldByName('TRANICOD').AsString := VarTRANICOD;
    SQLTemplate.FieldByName('NOFIA30NROPEDCOMP').AsString := VarNOFIA30NROPEDCOMP;
    SQLTemplate.FieldByName('NOFIA30COMPRADOR').AsString := VarNOFIA30COMPRADOR;
    SQLTemplate.FieldByName('NOFIINROTALAO').AsString := VarNOFIINROTALAO;
    SQLTemplate.FieldByName('PLRCICOD').AsString := VarPLRCICOD;
    SQLTemplate.FieldByName('CLIEA13ID').AsString := VarCLIEA13ID;
    SQLTemplate.FieldByName('VENDICOD').AsString := VarVENDICOD;
    SQLTemplate.FieldByName('NOFIN2VLRFRETE').AsString := VarNOFIN2VLRFRETE;
    SQLTemplate.FieldByName('NOFIN2VLRDESCPROM').AsString := VarNOFIN2VLRDESCPROM;
    SQLTemplate.FieldByName('NOFIA255OBS').AsString := VarNOFIA255OBS;
  end;

  // Dados Padrao Financeiro da Nota
  ComboNumerarioVista.Value := dm.SQLTerminalAtivo.FieldByName('TERMINUMEVISTA').AsString;
  ComboNumerarioPrazo.Value := dm.SQLTerminalAtivo.FieldByName('TERMINUMEPRAZO').AsString;
  ComboPortador.Value := dm.SQLConfigVenda.FieldByName('PORTICOD').AsString;
  ComboTipoDoc.Value := dm.SQLConfigVenda.FieldByName('TPDCICOD').AsString;

  SQLTemplate.EnableControls;
  PagePrincipal.ActivePage := TabSheetDadosPrincipais;
  PagePrincipal.Update;
end;

procedure TFormCadastroNotaFiscal.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  if ((Sender as TDataSource).State in dsEditModes) then
  begin
    DBEditPV.TabStop := True;
    DBEditPV.readonly := False;
    DBEditPV.Color := clWindow;
  end
  else
  begin
    DBEditPV.TabStop := False;
    DBEditPV.readonly := True;
    DBEditPV.Color := $00BFD8D8;
  end;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if (not CancelandoNota)and(not bEnviandoNFE) then
  begin
    if SQLTemplate.FindField('NOFICSTATUS').asString <> 'A' then
    begin
      Informa('Alterações só serão permitidas quando a nota estiver com status de ''Aberta''.');
      Abort;
    end;
  end;
  
  StatusAnterior := SQLTemplate.FindField('NOFICSTATUS').Value;
  PlanoAnterior := SQLTemplate.FindField('PLRCICOD').asString;
  PedidoAnterior := SQLTemplate.FindField('PDVDA13ID').asString;
  ValorFrete := SQLTemplate.FindField('NOFIN2VLRFRETE').AsFloat;
  ValorIcmsFrete := SQLTemplate.FindField('NOFIN2VLRICMSFRETE').AsFloat;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateBeforeDelete(DataSet: TDataSet);
begin
  if SQLTemplate.FindField('NOFICSTATUS').asString <> 'A' then
  begin
    Informa('Você não pode excluir uma nota fiscal ''Encerrada,Cancelada, Denegada ou Inutilizada''!');
    Abort;
  end;
  inherited;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateBeforePost(DataSet: TDataSet);
var
  Erro, FaltaNumerario: Boolean;
begin
  if (length(SQLTemplateCFOPA5COD.Value) <> 4) then
  begin
    ShowMessage('Erro: Tamanho do CFOP incorreto! Verifique em Operações de Estoque!');
    Abort;
    Exit;
  end;
  if (pos('.', SQLTemplateCFOPA5COD.Value) > 0) then
  begin
    ShowMessage('CFOP escolhido está com estrutura inválida! Verifique em Operações de Estoque!');
    Abort;
    Exit;
  end;

{  if SQLTemplate.State = dsEdit Then
    if SQLTemplateNOFIN3QUANT.Value = 0 then
      begin
        ShowMessage('Atenção! A Qtde de Volume é um campo Obrigatório!');
      end;}

  if DM.SQLConfigVenda.FieldByName('CFVECVENDEDOREXIGE').Value = 'S' then
    if SQLTemplateVENDICOD.AsString = '' then
    begin
      ShowMessage('Erro! O Vendedor esta configurado para ser Obrigatório!');
      Abort;
      Exit;
    end;

  BkpEmpresaCorrente := EmpresaCorrente;
  EmpresaCorrente := SQLTemplateEMPRICOD.AsInteger;
  if not DM.InserindoItemNV then
  begin
    if (StatusAnterior = '') and (StatusAnterior <> SQLTemplate.FindField('NOFICSTATUS').asString) then
      if (SQLTemplate.FindField('NOFICSTATUS').asString <> 'A') then
      begin
        Informa('Status Permitido: ''Aberta''.');
        EmpresaCorrente := BkpEmpresaCorrente;
        Abort;
      end;
    if (StatusAnterior = 'A') and (StatusAnterior <> SQLTemplate.FindField('NOFICSTATUS').asString) then
      if (SQLTemplate.FindField('NOFICSTATUS').asString <> 'E') then
      begin
        Informa('Status Permitido: ''Encerrada''.');
        EmpresaCorrente := BkpEmpresaCorrente;
        Abort;
      end
      else
      begin
        if (SQLTemplateOrigemDestinoLookUp.asVariant <> null) and (SQLTemplateOrigemDestinoLookUp.AsString <> '') then
          case SQLTemplateOrigemDestinoLookUp.AsString[1] of
            'C':
              begin
                      { If (SQLTemplatePLRCICOD.AsVariant=Null) and ((not DM.ImportandoPedidoVenda) or (not GerandoNota))Then
                        Begin
                          if not Pergunta('SIM','Você não informou nenhum plano de recebimento, deseja continuar mesmo assim ? ') then
                            begin
                              Abort;
                            end
                          else
                            begin
                              If FaltamDadosNasParcelas Then
                                Begin
                                  Informa('Faltam dados nas Parcelas!');
                                  Abort;
                                  Exit;
                                End;
                            end;
                        End; }
                      // Verificar se o valor das parcelas fecham com o valor da nota
                SQLTotalParcelas.Close;
                SQLTotalParcelas.Open;
                if SQLTotalParcelas.FindField('TOTAL').AsFloat > 0 then
                begin
                  if SQLTotalParcelas.FindField('TOTAL').AsFloat <> SQLTemplateNOFIN2VLRNOTA.AsFloat then
                  begin
                    if not Pergunta('NAO', 'O total da nota difere do total das parcelas. Deseja continuar mesmo assim?' + #13 + 'Total da Nota: ' + FormatFloat('#,##0.00', SQLTemplateNOFIN2VLRNOTA.AsFloat) + #13 + 'Total das Parcelas: ' + FormatFloat('#,##0.00', SQLTotalParcelas.FindField('TOTAL').AsFloat)) then
                    begin
                      Abort;
                      Exit;
                    end
                    else
                    begin
                      if ABS(SQLTemplateNOFIN2VLRNOTA.AsFloat - SQLTotalParcelas.FindField('TOTAL').AsFloat) > 0.10 then
                      begin
                        Informa('A diferença entre o total da nota e o total das parcelas é muito alto. R$ ' + FormatFloat('#,##0.00', ABS(SQLTemplateNOFIN2VLRNOTA.AsFloat - SQLTotalParcelas.FindField('TOTAL').AsFloat)) + #13 + 'O sistema irá cancelar a operação por medidas de segurança!');
                        SQLTemplate.Cancel;
                        Abort;
                        Exit;
                      end;
                    end;
                  end;
                end;

              end;
          end;
            // Vincula o Plano de Contas
        if not SQLOperacaoEstoque.Active then
          SQLOperacaoEstoque.Open;
        if SQLOperacaoEstoque.Locate('OPESICOD', SQLTemplateOPESICOD.AsString, []) then
        begin
          if SQLOperacaoEstoquePLCTA15CODCRED.AsString <> '' then
            SQLTemplatePLCTA15CODCRED.AsString := SQLOperacaoEstoquePLCTA15CODCRED.AsString;

          if SQLOperacaoEstoquePLCTA15CODDEB.AsString <> '' then
            SQLTemplatePLCTA15CODDEB.AsString := SQLOperacaoEstoquePLCTA15CODDEB.AsString;
        end;
      end;
    if (StatusAnterior = 'E') and (StatusAnterior <> SQLTemplate.FindField('NOFICSTATUS').asString) then
      if (SQLTemplate.FindField('NOFICSTATUS').asString <> 'C') then
      begin
        Informa('Status Permitido: ''Cancelada''.');
        EmpresaCorrente := BkpEmpresaCorrente;
        Abort;
      end;
    StatusNovo := SQLTemplate.FindField('NOFICSTATUS').asString;
    PedidoNovo := SQLTemplate.FindField('PDVDA13ID').asString;
  end;
  inherited;

  VarPDVDA13ID := SQLTemplate.FieldByName('PDVDA13ID').AsString;
  VarSerie := SQLTemplate.FieldByName('SERIA5COD').AsString;
  VarOperacaoEstoque := SQLTemplate.FieldByName('OPESICOD').AsString;
  VarOperacaoEntradaSaida := DM.SQLLocate('OPERACAOESTOQUE', 'OPESICOD', 'OPERACAO_E_S', SQLTemplateOPESICOD.AsString);
  SQLTemplate.FieldByName('NOFA1ENTRADASAIDA').AsString := VarOperacaoEntradaSaida;
  VarTRANICOD := SQLTemplate.FieldByName('TRANICOD').AsString;
  VarNOFIA30NROPEDCOMP := SQLTemplate.FieldByName('NOFIA30NROPEDCOMP').AsString;
  VarNOFIA30COMPRADOR := SQLTemplate.FieldByName('NOFIA30COMPRADOR').AsString;
  VarNOFIINROTALAO := SQLTemplate.FieldByName('NOFIINROTALAO').AsString;
  VarPLRCICOD := SQLTemplate.FieldByName('PLRCICOD').AsString;
  VarCLIEA13ID := SQLTemplate.FieldByName('CLIEA13ID').AsString;
  VarVENDICOD := SQLTemplate.FieldByName('VENDICOD').AsString;
  VarNOFIN2VLRFRETE := SQLTemplate.FieldByName('NOFIN2VLRFRETE').AsString;
  VarNOFIN2VLRDESCPROM := SQLTemplate.FieldByName('NOFIN2VLRDESCPROM').AsString;
  VarNOFIA255OBS := SQLTemplate.FieldByName('NOFIA255OBS').AsString;

  if SQLTemplate.State = dsInsert then
  begin
    SQLSerie.Close;
    SQLSerie.MacroByName('mEmpresa').value := 'EMPRICOD = ' + SQLTemplateEMPRICOD.AsString;
    SQLSerie.Open;
    SQLSerie.Locate('SERIA5COD', SQLTemplateSERIA5COD.asString, []);
    Erro := True;
    while Erro do
    try
      SQLTemplateNOFIINUMERO.Value := SQLSerieSERIINRONF.Value;
      SQLSerie.Edit;
      SQLSerieSERIINRONF.asInteger := SQLSerieSERIINRONF.asInteger + 1;
      SQLSeriePENDENTE.asString := 'S';
      SQLSerieREGISTRO.asDateTime := Now;
      SQLSerie.Post;
      Erro := False;
    except
      if SQLSerie.State in DsEditModes then
        SQLSerie.Cancel;
      Erro := True;
    end;
        // Testa se o cliente possui parcelas em aberto

{        if SQLTemplateCLIEA13ID.Value <> '' then
          VerificaLimiteCredito(SQLTemplateCLIEA13ID.asstring,0,DM.SQLParcelas,DM.SQLCliente);

        if SQLTemplateCLIEA13ID.Value <> '' then
          begin
            DM.SQLTemplate.Close ;
            DM.SQLTemplate.SQL.Clear ;
            DM.SQLTemplate.SQL.Add('select') ;
            DM.SQLTemplate.SQL.Add('Count(*) as NROPARCVENC') ;
            DM.SQLTemplate.SQL.Add('from CONTASRECEBER') ;
            DM.SQLTemplate.SQL.Add('where CLIEA13ID = ''' + SQLTemplateCLIEA13ID.AsString + '''') ;
            DM.SQLTemplate.SQL.Add(' and (CTRCN2VLR-CTRCN2TOTREC) > 0') ;
            DM.SQLTemplate.SQL.Add(' and (CTRCCSTATUS = ''A'' OR CTRCCSTATUS = ''N'')') ;
            DM.SQLTemplate.SQL.Add(' and (CTRCCTIPOREGISTRO = ''N'' OR CTRCCTIPOREGISTRO IS NULL)') ;
            DM.SQLTemplate.Open ;
            if DM.SQLTemplate.FieldByName('NROPARCVENC').Value > 0 then
              ShowMessage('Este cliente possui parcelas em aberto!');
          end;
}
  end;
  IDNOTAIMP := DataSet.FindField('NOFIA13ID').asString;
end;

procedure TFormCadastroNotaFiscal.MnCancelarNotadeFiscalClick(Sender: TObject);
var
  InfoRetorno: TInfoRetornoUser;
begin
  inherited;
  if (Alltrim(SQLTemplateNOFIA5CODRETORNO.AsString) <> '101') and (SQLTemplateNOFICSTATUS.AsString <> 'C') then
  begin
    if SQLTemplate.FindField('NOFIA15PROTOCOLO').asString <> '' then
    begin
      Informa('Não são permitidas Alterações em Notas Fiscais EFETIVADAS.');
      Abort;
    end;
  end;

  if AutenticaUsuario(UsuarioAtualNome, 'USUACCANCVENDA', InfoRetorno) <> 'N' then
  begin
    if (not SQLTemplate.IsEmpty) and (SQLTemplate.FindField('NOFICSTATUS').asString = 'E') and (Application.MessageBox('Deseja realmente cancelar a Nota?', 'Atenção', MB_YesNo) = IdYes) then
    begin
      CancelandoNota := True;
      SQLTemplate.Edit;
      SQLTemplate.FindField('NOFICSTATUS').asString := 'C';
      SQLTemplate.FindField('USUAICOD').AsInteger := InfoRetorno.CodUsuarioAutenticado;
      SQLTemplate.FindField('USUAA60LOGIN').AsString := InfoRetorno.NomeUsuarioAutenticado;
      SQLTemplate.FindField('NOFIDCANCEL').AsDateTime := Date;
      SQLTemplate.Post;
      CancelandoNota := False;
    end;
  end
  {else
  begin
    Informa('Você não tem autorização para cancelar vendas!');
    Abort;
    Exit;
  end;}
end;

procedure TFormCadastroNotaFiscal.SQLTemplateAfterPost(DataSet: TDataSet);
var
  Erro: Boolean;
  ValorBase: Double;
  I: Integer;
begin
  inherited;
  if DM.InserindoItemNV then
    Exit;

  if (sqltemplateNOFIINUMERO.AsString = '') or (sqltemplateNOFIINUMERO.IsNull) then
  begin
    ShowMessage('O sistema não conseguiu gerar um Numero Válido para essa Nota! Verifique!');
    abort;
    exit;
  end;

  // ENCERRANDO NOTA FISCAL
  EntradaSaida := SQLLocate('OPERACAOESTOQUE', 'OPESICOD', 'OPESCENTRADASAIDA', SQLTemplateOPESICOD.AsString);
  if (StatusNovo = 'E') and (EntradaSaida <> 'N') then
  begin
    SQLNotaFiscalItens.SQL.Text := 'Select * From NOTAFISCALITEM Where NOFIA13ID = ''' + DataSet.FindField('NOFIA13ID').AsString + '''';
    SQLNotaFiscalItens.Open;
    SQLNotaFiscalItens.First;
    MakeWindowMessage('Encerrando Nota Fiscal...');
    while not SQLNotaFiscalItens.Eof do
    begin
      if not TestaNotaCompraMovimentoEstoque('', '', DataSet.FindField('NOFIA13ID').AsString, SQLNotaFiscalItens.FindField('PRODICOD').AsString, SQLNotaFiscalItens.FindField('NFITN3QUANT').AsFloat) then
        GravaMovimentoEstoque(DM.SQLProduto, DM.SQLProdutoFilho, DM.SQLProdutoSaldo, EmpresaCorrente, //Empresa
          SQLNotaFiscalItens.FindField('PRODICOD').asInteger, //Produto
          DataSet.FindField('OPESICOD').Value, //Operacao
          SQLNotaFiscalItens.FindField('NFITN3QUANT').asFloat, //Quantidade
          DataSet.FindField('EntradaSaidaLookUp').asString, //ENTRADA/SAIDA
          FormatDateTime('mm/dd/yyyy', DataSet.FindField('NOFIDEMIS').AsDateTime), SQLNotaFiscalItens.FindField('NFITN2VLRUNIT').asString, 'NOTAFISCAL', DataSet.FindField('NOFIA13ID').AsString, SQLNotaFiscalItens.FindField('LOTEA30NRO').AsString);
      SQLNotaFiscalItens.Next;
    end;
    SQLNotaFiscalItens.Close;

      // Gravar Data Primeira Compra
    if (SQLTemplateNOFIN2VLRPRODUTO.Value > 0) and (SQLTemplateCLIEA13ID.Value <> '') then
    begin
      Dm.SQLCliente.Close;
      Dm.SQLCliente.Sql.Clear;
      Dm.SQLCliente.Sql.Add('UPDATE CLIENTE SET CLIEDPRICOMPRA = ' + '''' + FormatDateTime('mm/dd/yyyy', SQLTemplateNOFIDEMIS.Value) + '''' + ' Where CLIEA13ID = ' + '''' + SQLTemplateCLIEA13ID.AsString + ''' and CLIEDPRICOMPRA is null');
      Dm.SQLCliente.ExecSql;
    end;
      // Gravar Data Ultima Compra
    if (SQLTemplateNOFIN2VLRPRODUTO.Value > 0) and (SQLTemplateCLIEA13ID.Value <> '') then
    begin
      Dm.SQLCliente.Close;
      Dm.SQLCliente.Sql.Clear;
      Dm.SQLCliente.Sql.Add('UPDATE CLIENTE SET CLIEDULTCOMPRA = ' + '''' + FormatDateTime('mm/dd/yyyy', SQLTemplateNOFIDEMIS.Value) + '''' + ' Where CLIEA13ID = ' + '''' + SQLTemplateCLIEA13ID.AsString + '''');
      Dm.SQLCliente.ExecSql;
    end;
    if (DM.SQLConfigVenda.FieldByName('CFVECEXCLUIPEDFAT').asString = 'S') and (SQLTemplatePDVDA13ID.AsVariant <> Null) then
    begin
      SQLPedidoVenda.Close;
      SQLPedidoVenda.ParamByName('PDVDA13ID').asString := SQLTemplate.FieldByName('PDVDA13ID').asString;
      SQLPedidoVenda.Open;
      SQLPedidoVenda.First;
      if not SQLPedidoVenda.Eof then
        SQLPedidoVenda.Delete;
      SQLPedidoVenda.Close;
    end;
    DestroyWindow;
  end;
  // CANCELANDO NOTA FISCAL
  if (StatusNovo = 'C') then
  begin
    if (DM.SQLConfigVenda.FindField('CFVECMOVESTOQUENF').asString = 'S') and (TemMovimentoEstoqueNF(SQLTemplateNOFIA13ID.AsString)) and (EntradaSaida <> 'N') and (SQLTemplateNOFIN2VLRPRODUTO.Value > 0) then
    begin
      SQLNotaFiscalItens.SQL.Text := 'Select * From NOTAFISCALITEM Where NOFIA13ID=''' + DataSet.FindField('NOFIA13ID').AsString + '''';
      SQLNotaFiscalItens.Open;
      SQLNotaFiscalItens.First;
      MakeWindowMessage('Cancelando Nota Fiscal...');
      while not SQLNotaFiscalItens.Eof do
      begin
        GravaMovimentoEstoque(DM.SQLProduto, DM.SQLProdutoFilho, DM.SQLProdutoSaldo, EmpresaCorrente, //Empresa
          SQLNotaFiscalItens.FindField('PRODICOD').asInteger, //Produto
          DM.SQLConfigVenda.FieldByName('OPESICODCANCNF').Value, //Operacao
          SQLNotaFiscalItens.FindField('NFITN3QUANT').asFloat, //Quantidade
          EntradaSaida, //ENTRADA/SAIDA
          FormatDateTime('mm/dd/yyyy', Now), SQLNotaFiscalItens.FindField('NFITN2VLRUNIT').asString, 'NOTAFISCAL', DataSet.FindField('NOFIA13ID').AsString, SQLNotaFiscalItens.FindField('LOTEA30NRO').AsString);
        if (SQLNotaFiscalItens.FindField('PDVDA13ID').asVariant <> Null) and (SQLNotaFiscalItens.FindField('PVITIITEM').asVariant <> Null) then
        begin
          SQLAtualizaItemPedido.ParamByName('PDVDA13ID').Value := SQLNotaFiscalItens.FindField('PDVDA13ID').Value;
          SQLAtualizaItemPedido.ParamByName('PVITIITEM').Value := SQLNotaFiscalItens.FindField('PVITIITEM').Value;
          SQLAtualizaItemPedido.ParamByName('QtdePed').asFloat := SQLNotaFiscalItens.FindField('NFITN3QUANTVEND').asFloat;
          SQLAtualizaItemPedido.ExecSql;
        end;
        SQLNotaFiscalItens.Next;
      end;
      DestroyWindow;
    end;
      // Cancelar Contas Receber
    if SQLTemplateNOFIN2VLRPRODUTO.Value > 0 then
    begin
      SQLContasReceber.Close;
      SQLContasReceber.Open;
      SQLContasReceber.First;
      ValorVista := 0;
      while not SQLContasReceber.Eof do
      begin
        SQLContasReceber.Edit;
        SQLContasReceberCTRCCSTATUS.Value := 'C';
        SQLContasReceber.Post;
        if (SQLContasReceberCTRCINROPARC.AsInteger = 0) and (SQLContasReceberCTRCN2VLR.AsFloat = SQLContasReceberCTRCN2TOTREC.AsFloat) then
          ValorVista := ValorVista + SQLContasReceberCTRCN2TOTREC.AsFloat;
        SQLContasReceber.Next;
      end;
      SQLContasReceber.Close;
      if ValorVista > 0 then
      begin
        DM.SQLConfigVenda.Close;
        DM.SQLConfigVenda.Open;
        Application.CreateForm(TFormTelaConsultaOperacaoTesouraria, FormTelaConsultaOperacaoTesouraria);
        FormTelaConsultaOperacaoTesouraria.SQLOperacaoTesouraria.Close;
        FormTelaConsultaOperacaoTesouraria.SQLOperacaoTesouraria.MacroByName('DebCred').AsString := 'OPTECDEBCRED = ''D''';
        FormTelaConsultaOperacaoTesouraria.SQLOperacaoTesouraria.Open;
        if DM.SQLConfigVenda.FieldByName('CFVEIOPTESVENDANF').AsVariant <> Null then
          FormTelaConsultaOperacaoTesouraria.ComboOperacaoTes.Value := DM.SQLConfigVenda.FieldByName('CFVEIOPTESVENDANF').AsString;
        FormTelaConsultaOperacaoTesouraria.ShowModal;
        if FormTelaConsultaOperacaoTesouraria.ModalResult = MrOK then
        begin
          LancaMovimentacaoTesouraria(SQLTemplateEMPRICOD.AsInteger, TerminalCorrente, 1, // Numerario dinheiro
            FormTelaConsultaOperacaoTesouraria.ComboOperacaoTes.KeyValue, ValorVista, 'DEBITO DE CANCELAMENTO NOTA FISCAL NRO.: ' + SQLTemplateNOFIINUMERO.AsString, '', '', '', '', SQLTemplateNOFIDEMIS.Value, 'NF-' + SQLTemplateNOFIINUMERO.AsString, SQLTemplatePLCTA15CODDEB.AsString);
        end
        else
        begin
          Informa('O lançamento de estorno na tesouraria não será efetuado!');
        end;
        if Application.FindComponent('FormTelaConsultaOperacaoTesouraria') <> nil then
          FormTelaConsultaOperacaoTesouraria.Destroy;
      end;
    end;
  end;
  if PedidoNovo <> PedidoAnterior then
    if PedidoNovo <> '' then
    begin
      AtualizaContasReceberPV.Close;
      AtualizaContasReceberPV.MacroByName('MDados').asString := 'NOFIA13ID = ''' + SQLTemplateNOFIA13ID.AsString + ''' , CTRCDEMIS = ''' + FormatDateTime('mm/dd/yyyy', SQLTemplateNOFIDEMIS.Value) + '''';
      if SQLTemplate.FindField('PLCTA15COD').asVariant <> Null then
        AtualizaContasReceberPV.MacroByName('MConta').asString := ' , PLCTA15COD = ''' + SQLTemplate.FindField('PLCTA15COD').asString + ''''
      else
        AtualizaContasReceberPV.MacroByName('MConta').asString := '';

      AtualizaContasReceberPV.MacroByName('MPedido').asString := 'PDVDA13ID = ''' + SQLTemplate.FindField('PDVDA13ID').AsString + '''';

      Erro := True;
      while Erro do
      try
        AtualizaContasReceberPV.ExecSQL;
        Erro := False;
      except
        Erro := True;
      end;
    end;

  EmpresaCorrente := BkpEmpresaCorrente;
  if not Dm.ImportandoPedidoVenda then
  begin
    VarPDVDA13ID := '';
  end;
  if (InserindoNota) and (not Dm.ImportandoPedidoVenda) then
  begin
    InserindoNota := False;
    AtivarFinanceiro := True;
    Button5.Click;
  end;
end;

procedure TFormCadastroNotaFiscal.BtnOperacaoEstoqueClick(Sender: TObject);
begin
  if SQLLocate('NOTAFISCALITEM', 'NOFIA13ID', 'NOFIA13ID', '''' + SQLTemplateNOFIA13ID.AsString + '''') <> '' then
  begin
    Informa('Esta nota fiscal possui itens, portanto a operação de estoque não pode ser alterada!' + #13 + 'Você deve excluir todos os itens para alterar a operação ou lançar uma nova nota!');
    Exit;
  end;
  inherited;
  FieldLookUp := SQLTemplate.FindField('OPESICOD');
  FieldOrigem := 'OPESICOD';
  DataSetLookup := SQLOperacaoEstoque;
  CriaFormulario(TFormCadastroOperacoesEstoque, 'FormCadastroOperacoesEstoque', False, True, True, '');
end;

procedure TFormCadastroNotaFiscal.BtnTransportadoraClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('TRANICOD');
  FieldOrigem := 'TRANICOD';
  DataSetLookup := SQLTransportadora;
  CriaFormulario(TFormCadastroTransportadora, 'FormCadastroTransportadora', False, True, True, '');
end;

procedure TFormCadastroNotaFiscal.EditCdTranspKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F2) and (BtnTransportadora.Enabled) then
    BtnTransportadora.Click;
end;

procedure TFormCadastroNotaFiscal.BtnCliFornEmpClick(Sender: TObject);
begin
  inherited;
  if GroupBoxCliFornEmp.Caption = 'Cliente' then
  begin
    FieldLookUp := SQLTemplate.FindField('CLIEA13ID');
    FieldOrigem := 'CLIEA13ID';
    CriaFormulario(TFormCadastroCliente, 'FormCadastroCliente', False, True, False, '');
  end;
  if GroupBoxCliFornEmp.Caption = 'Fornecedor' then
  begin
    FieldLookUp := SQLTemplate.FindField('FORNICOD');
    FieldOrigem := 'FORNICOD';
    CriaFormulario(TFormCadastroFornecedor, 'FormCadastroFornecedor', False, True, False, '');
  end;
  if GroupBoxCliFornEmp.Caption = 'Empresa' then
  begin
    FieldLookUp := SQLTemplate.FindField('EMPRICODDEST');
    FieldOrigem := 'EMPRICOD';
    CriaFormulario(TFormTelaConsultaEmpresa, 'FormTelaConsultaEmpresa', False, True, True, '');
  end;
end;

procedure TFormCadastroNotaFiscal.DBEditCodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F2) and (BtnCliFornEmp.Enabled) then
    BtnCliFornEmp.Click;
end;

procedure TFormCadastroNotaFiscal.BtnPlanoRectoClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('PLRCICOD');
  FieldOrigem := 'PLRCICOD';
  CriaFormulario(TFormTelaConsultaPlanoRecebimento, 'FormTelaConsultaPlanoRecebimento', False, True, True, '');
end;

procedure TFormCadastroNotaFiscal.BtnPedidoClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('PDVDA13ID');
  FieldOrigem := 'PDVDA13ID';
  CriaFormulario(TFormCadastroPedidoVenda, 'FormCadastroPedidoVenda', False, True, False, '');
end;

procedure TFormCadastroNotaFiscal.DBEditPVKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F2) and (BtnPedido.Enabled) then
    BtnPedido.Click;
end;

procedure TFormCadastroNotaFiscal.ImprimirEtiquetasdeCdigodeBarras1Click(Sender: TObject);
begin
  inherited;
  EtiquetaNotaVenda := SQLTemplate.FindField('NOFIA13ID').asString;
  CriaFormulario(TFormTelaEmissaoEtiquetasCodigoBarras, 'FormTelaEmissaoEtiquetasCodigoBarras', False, False, True, '');
end;

procedure TFormCadastroNotaFiscal.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  if (SQLTemplateOrigemDestinoLookUp.asVariant <> null) and (SQLTemplateOrigemDestinoLookUp.AsString <> '') then
    case SQLTemplateOrigemDestinoLookUp.AsString[1] of
      'C':
        begin
          if DataSet.FieldByName('CLIEA13ID').AsVariant <> null then
          begin
            if DM.ProcuraRegistro('CLIENTE', ['CLIEA13ID'], [SQLTemplateCLIEA13ID.asString], 1) then
            begin
              if DM.SQLTemplate.FindField('PLRCICOD').AsVariant <> null then
                DataSet.FieldByName('PlanoClienteLookUp').AsVariant := DM.SQLTemplate.FindField('PLRCICOD').AsVariant;

              if DM.SQLTemplate.FindField('VENDICOD').AsVariant <> null then
                DataSet.FieldByName('VendedorClienteLookUp').AsVariant := DM.SQLTemplate.FindField('VENDICOD').AsVariant;

              DataSet.FieldByName('CliFornEmpLookup').AsVariant := DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').AsVariant;
              DataSet.FieldByName('CliFornEmpEnderecoLookUp').AsVariant := DM.SQLTemplate.FindField('CLIEA60ENDRES').AsVariant;
              DataSet.FieldByName('EmpNumeroEndLookUp').AsVariant := DM.SQLTemplate.FindField('CLIEA5NROENDRES').AsVariant;
              DataSet.FieldByName('CliFornEmpEstadoLookUp').AsVariant := DM.SQLTemplate.FindField('CLIEA2UFRES').AsVariant;
              DataSet.FieldByName('CliFornEmpcdPaisLookUp').AsVariant := DM.SQLTemplate.FindField('CLIEICODPAIS').AsVariant;
              DataSet.FieldByName('CliFornEmpCEPLookUp').AsVariant := DM.SQLTemplate.FindField('CLIEA8CEPRES').AsVariant;
              DataSet.FieldByName('CliFornEmpCidadeLookUp').AsVariant := DM.SQLTemplate.FindField('CLIEA60CIDRES').AsVariant;
              DataSet.FieldByName('CliFornEmpBairroLookUp').AsVariant := DM.SQLTemplate.FindField('CLIEA60BAIRES').AsVariant;
              DataSet.FieldByName('CliFornEmpFoneLookUp').AsVariant := DM.SQLTemplate.FindField('CLIEA15FONE1').AsVariant;
              DataSet.FieldByName('CliFornEmpTabelaPrecoLookUp').AsVariant := DM.SQLTemplate.FindField('TPRCICOD').AsVariant;
              DataSet.FieldByName('CliFornEmpCdMunicipoNfeLookUp').AsVariant := DM.SQLTemplate.FindField('CLIEIMUNICODFED').AsVariant;
              DataSet.FieldByName('CliFornEmpRegime').AsVariant := DM.SQLTemplate.FindField('CLIECENQUADRAMENTO').AsVariant;

              if DM.SQLTemplate.FindField('CLIEA5FISJURID').asString = 'F' then
              begin
                DataSet.FieldByName('CliFornEmpCGCCPFLookUp').AsVariant := DM.SQLTemplate.FindField('CLIEA11CPF').AsVariant;
                DataSet.FieldByName('CliFornEmpIERGLookUp').AsVariant := DM.SQLTemplate.FindField('CLIEA10RG').AsVariant;
                DataSet.FieldByName('CliFornEmpFisicaJuridica').AsVariant := 'F';
              end
              else
              begin
                DataSet.FieldByName('CliFornEmpCGCCPFLookUp').AsVariant := DM.SQLTemplate.FindField('CLIEA14CGC').AsVariant;
                DataSet.FieldByName('CliFornEmpIERGLookUp').AsVariant := DM.SQLTemplate.FindField('CLIEA20IE').AsVariant;
                DataSet.FieldByName('CliFornEmpFisicaJuridica').AsVariant := 'J';
              end;
            end
            else
            begin
              DataSet.FieldByName('CliFornEmpLookup').asString := MensagemLookUp;
            end;
          end
          else
            DataSet.FieldByName('CliFornEmpLookup').AsVariant := NULL;
        end;
      'F':
        begin
          if DataSet.FieldByName('FORNICOD').AsVariant <> null then
          begin
            if DM.ProcuraRegistro('FORNECEDOR', ['FORNICOD'], [SQLTemplateFORNICOD.asString], 1) then
            begin
              DataSet.FieldByName('CliFornEmpLookup').AsVariant := DM.SQLTemplate.FindField('FORNA60RAZAOSOC').AsVariant;
              DataSet.FieldByName('CliFornEmpEnderecoLookUp').AsVariant := DM.SQLTemplate.FindField('FORNA60END').AsVariant;
              DataSet.FieldByName('CliFornEmpEstadoLookUp').AsVariant := DM.SQLTemplate.FindField('FORNA2UF').AsVariant;
              DataSet.FieldByName('EmpNumeroEndLookUp').AsVariant := DM.SQLTemplate.FindField('FORNA5NROEND').AsVariant;
              DataSet.FieldByName('CliFornEmpcdPaisLookUp').AsVariant := DM.SQLTemplate.FindField('FORNICODPAIS').AsVariant;
              DataSet.FieldByName('CliFornEmpCEPLookUp').AsVariant := DM.SQLTemplate.FindField('FORNA8CEP').AsVariant;
              DataSet.FieldByName('CliFornEmpCidadeLookUp').AsVariant := DM.SQLTemplate.FindField('FORNA60CID').AsVariant;
              DataSet.FieldByName('CliFornEmpBairroLookUp').AsVariant := DM.SQLTemplate.FindField('FORNA60BAI').AsVariant;
              DataSet.FieldByName('CliFornEmpFoneLookUp').AsVariant := DM.SQLTemplate.FindField('FORNA15FONE1').AsVariant;
              DataSet.FieldByName('CliFornEmpCdMunicipoNfeLookUp').AsVariant := DM.SQLTemplate.FindField('FORNIMUNICODFED').AsVariant;
              DataSet.FieldByName('CliFornEmpTabelaPrecoLookUp').AsVariant := Null;
              DataSet.FieldByName('CliFornEmpRegime').AsVariant := DM.SQLTemplate.FindField('FORNCSIMPLES').AsVariant;
              if DM.SQLTemplate.FindField('FORNCFISJURID').asString = 'F' then
              begin
                DataSet.FieldByName('CliFornEmpCGCCPFLookUp').AsVariant := DM.SQLTemplate.FindField('FORNA11CPF').AsVariant;
                DataSet.FieldByName('CliFornEmpIERGLookUp').AsVariant := DM.SQLTemplate.FindField('FORNA10RG').AsVariant;
                if DM.SQLTemplate.FindField('FORNA20IE').AsString <> '' then
                  DataSet.FieldByName('CliFornEmpIERGLookUp').AsVariant := DM.SQLTemplate.FindField('FORNA20IE').AsVariant;
                DataSet.FieldByName('CliFornEmpCGCCPFLookUp').EditMask := '000.000.000-00;0;_';
                DataSet.FieldByName('CliFornEmpFisicaJuridica').AsVariant := 'F';
              end
              else
              begin
                DataSet.FieldByName('CliFornEmpCGCCPFLookUp').AsVariant := DM.SQLTemplate.FindField('FORNA14CGC').AsVariant;
                DataSet.FieldByName('CliFornEmpIERGLookUp').AsVariant := DM.SQLTemplate.FindField('FORNA20IE').AsVariant;
                DataSet.FieldByName('CliFornEmpCGCCPFLookUp').EditMask := '00.000.000/0000-00;0;_';
                DataSet.FieldByName('CliFornEmpFisicaJuridica').AsVariant := 'J';
              end;
            end
            else
              DataSet.FieldByName('CliFornEmpLookup').asString := MensagemLookUp;
          end
          else
            DataSet.FieldByName('CliFornEmpLookup').AsVariant := NULL;
        end;
      'E':
        begin
          if DataSet.FieldByName('EMPRICODDEST').AsVariant <> null then
          begin
            if DM.ProcuraRegistro('EMPRESA', ['EMPRICOD'], [SQLTemplateEMPRICODDEST.asString], 1) then
            begin
              DataSet.FieldByName('CliFornEmpLookup').AsVariant := DM.SQLTemplate.FindField('EMPRA60RAZAOSOC').AsVariant;
              DataSet.FieldByName('CliFornEmpEnderecoLookUp').AsVariant := DM.SQLTemplate.FindField('EMPRA60END').AsVariant;
              DataSet.FieldByName('EmpNumeroEndLookUp').AsVariant := DM.SQLTemplate.FindField('EMPRIENDNRO').AsVariant;
              DataSet.FieldByName('CliFornEmpcdPaisLookUp').AsVariant := '1058'; // Código do pais BRASIL
              DataSet.FieldByName('CliFornEmpEstadoLookUp').AsVariant := DM.SQLTemplate.FindField('EMPRA2UF').AsVariant;
              DataSet.FieldByName('CliFornEmpCEPLookUp').AsVariant := DM.SQLTemplate.FindField('EMPRA8CEP').AsVariant;
              DataSet.FieldByName('CliFornEmpCidadeLookUp').AsVariant := DM.SQLTemplate.FindField('EMPRA60CID').AsVariant;
              DataSet.FieldByName('CliFornEmpBairroLookUp').AsVariant := DM.SQLTemplate.FindField('EMPRA60BAI').AsVariant;
              DataSet.FieldByName('CliFornEmpFoneLookUp').AsVariant := DM.SQLTemplate.FindField('EMPRA20FONE').AsVariant;
              DataSet.FieldByName('CliFornEmpCdMunicipoNfeLookUp').AsVariant := DM.SQLTemplate.FindField('EMPRIMUNICODFED').AsVariant;
              DataSet.FieldByName('CliFornEmpTabelaPrecoLookUp').AsVariant := Null;
              DataSet.FieldByName('CliFornEmpFisicaJuridica').AsVariant := 'J';
              if DM.SQLTemplate.FindField('EMPRA3CRT').AsString = '3' then
                DataSet.FieldByName('CliFornEmpRegime').AsVariant := 'N' // Regime Normal
              else
                DataSet.FieldByName('CliFornEmpRegime').AsVariant := 'S'; // Optante pelo Simples
              if DM.SQLTemplate.FindField('EMPRCFISJURID').asString = 'F' then
              begin
                DataSet.FieldByName('CliFornEmpCGCCPFLookUp').AsVariant := DM.SQLTemplate.FindField('EMPRA11CPF').AsVariant;
                DataSet.FieldByName('CliFornEmpIERGLookUp').AsVariant := DM.SQLTemplate.FindField('EMPRA10RG').AsVariant;
                DataSet.FieldByName('CliFornEmpCGCCPFLookUp').EditMask := '000.000.000-00;0;_';
              end
              else
              begin
                DataSet.FieldByName('CliFornEmpCGCCPFLookUp').AsVariant := DM.SQLTemplate.FindField('EMPRA14CGC').AsVariant;
                DataSet.FieldByName('CliFornEmpIERGLookUp').AsVariant := DM.SQLTemplate.FindField('EMPRA20IE').AsVariant;
                DataSet.FieldByName('CliFornEmpCGCCPFLookUp').EditMask := '00.000.000/0000-00;0;_';
              end;
            end
            else
              DataSet.FieldByName('CliFornEmpLookup').asString := MensagemLookUp;
          end
          else
            DataSet.FieldByName('CliFornEmpLookup').AsVariant := NULL;
        end;
    end;
end;

procedure TFormCadastroNotaFiscal.BtnVendedorClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('VENDICOD');
  FieldOrigem := 'VENDICOD';
  DataSetLookup := SQLVendedor;
  CriaFormulario(TFormCadastroVendedor, 'FormCadastroVendedor', False, True, True, '');
end;

procedure TFormCadastroNotaFiscal.ComboNumerarioPrazoChange(Sender: TObject);
begin
  inherited;
  if ComboNumerarioPrazo.Value <> '' then
  begin
    if not SQLParcelasPrazoVendaTemp.Active then
      SQLParcelasPrazoVendaTemp.open;
    SQLParcelasPrazoVendaTemp.First;
    while not SQLParcelasPrazoVendaTemp.Eof do
    begin
      if SQLParcelasPrazoVendaTempNROPARCELA.AsInteger > 0 then
      begin
        SQLParcelasPrazoVendaTemp.Edit;
        SQLParcelasPrazoVendaTempNUMEICOD.AsInteger := ComboNumerarioPrazo.KeyValue;
        SQLParcelasPrazoVendaTempTipoPadrao.AsString := SQLLocate('NUMERARIO', 'NUMEICOD', 'NUMEA5TIPO', ComboNumerarioPrazo.Value);
        SQLParcelasPrazoVendaTemp.Post;
      end;
      SQLParcelasPrazoVendaTemp.Next;
    end;
    SQLParcelasPrazoVendaTemp.First;
  end;
end;

procedure TFormCadastroNotaFiscal.SQLTemplatePLRCICODChange(Sender: TField);
var
  Entrada, Desconto, Valor: Double;
  DiminuiAcresc, ValorJuro, Acrescimo, EntradaCalc, TaxaCred: Double;
begin
  inherited;
  if GerandoNota then
    Exit;
  if SQLTemplate.FindField('OPESICOD').AsString <> '' then
    if SQLLocate('OPERACAOESTOQUE', 'OPESICOD', 'OPESCGERAFINANCEIRO', SQLTemplate.FindField('OPESICOD').AsString) <> 'S' then
    begin
      Informa('A operação de estoque desta nota fiscal foi configurada para não movimentar financeiro!');
      Exit;
    end;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateAfterCancel(DataSet: TDataSet);
begin
  inherited;
//  PanelFinanceiro.Visible := False;
  InserindoNota := False;
end;

procedure TFormCadastroNotaFiscal.SQLContasReceberNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('NOFIA13ID').Value := SQLTemplate.FindField('NOFIA13ID').Value;
  DataSet.FindField('CTRCINROPARC').Value := 0;
  DataSet.FindField('CTRCN2DESCFIN').Value := 0;
  if Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCMULATRAS').AsFloat > 0 then
    DataSet.FindField('CTRCN2TXMULTA').Value := Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCMULATRAS').Value
  else
    DataSet.FindField('CTRCN2TXMULTA').Value := 0;

  if Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCJURATRAS').Value > 0 then
    DataSet.FindField('CTRCN2TXJURO').Value := Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCJURATRAS').Value
  else
    DataSet.FindField('CTRCN2TXJURO').Value := 0;
  DataSet.FindField('CTRCN2TOTREC').Value := 0;
  DataSet.FindField('CTRCN2TOTJUROREC').Value := 0;
  DataSet.FindField('CTRCN2TOTMULTAREC').Value := 0;
  DataSet.FindField('CTRCN2TOTDESCREC').Value := 0;
  DataSet.FindField('CTRCCEMITIDOBOLETO').Value := 'N';
  // Tipo de Registro no Contas a Receber -> N = Normal C = Credito D = Debito;
  DataSet.FindField('CTRCCTIPOREGISTRO').Value := 'N';
end;

procedure TFormCadastroNotaFiscal.SQLContasReceberBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('REGISTRO') <> nil then
    DataSet.FindField('REGISTRO').AsDateTime := Now;
  if DataSet.FindField('PENDENTE') <> nil then
    DataSet.FindField('PENDENTE').AsString := 'S';
  if DataSet.FindField('EMPRICOD') <> nil then
    DataSet.FindField('EMPRICOD').Value := EmpresaCorrente;
  if DataSet.FindField('TERMICOD') <> nil then
    DataSet.FindField('TERMICOD').Value := TerminalCorrente;
  case DataSet.State of
    DsInsert:
      DM.CodigoAutomatico('CONTASRECEBER', DSSQLContasReceber, DataSet, 3, 0);
  end;
  ContasReceberID := SQLContasReceberCTRCA13ID.asString;
  ContasReceberCliente := SQLContasReceberCLIEA13ID.asString;
end;

procedure TFormCadastroNotaFiscal.SQLContasReceberBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DM.RegistraExclusao('CONTASRECEBER', SQLContasReceber);
  SQLExcluiDetalhes.MacroByName('MTabela').AsString := 'RECEBIMENTO';
  SQLExcluiDetalhes.MacroByName('MFiltro').asString := DM.ClausulaFiltro('CONTASRECEBER', SQLContasReceber);
  SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Select *';
  SQLExcluiDetalhes.Open;
  SQLExcluiDetalhes.First;
  while not SQLExcluiDetalhes.Eof do
  begin
    DM.RegistraExclusao('RECEBIMENTO', SQLExcluiDetalhes);
    SQLExcluiDetalhes.Next;
  end;
  SQLExcluiDetalhes.Close;
  SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Delete';
  SQLExcluiDetalhes.ExecSQL;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateNOFIN2VLRFRETEChange(Sender: TField);
var
  Aliquota: Double;
begin
  inherited;

  if CalculandoFrete then
    Exit;
  CalculandoFrete := True;

  if ValorIcmsFrete <= 0 then
    ValorIcmsFrete := SQLTemplate.FindField('NOFIN2VLRICMSFRETE').asFloat;

  SQLTemplate.FindField('NOFIN2VLRNOTA').asFloat := SQLTemplate.FindField('NOFIN2VLRPRODUTO').asFloat + SQLTemplate.FindField('NOFIN2VLRIPI').asFloat + SQLTemplate.FindField('NOFIN2VLRSERVICO').asFloat + SQLTemplate.FindField('NOFIN2VLRFRETE').asFloat + SQLTemplate.FindField('NOFIN2VLRSEGURO').asFloat + SQLTemplate.FindField('NOFIN2VLROUTRASDESP').asFloat + SQLTemplate.FindField('NOFIN2VLRSUBS').asFloat - SQLTemplate.FindField('NOFIN2VLRDESC').asFloat;

  if (SQLTemplate.FindField('NOFIN2VLRDESCPROM').asFloat > 0) and (SQLTemplate.FindField('NOFIN2BASCALCICMS').AsFloat > 0) then
  begin
    if SQLTemplate.FieldByName('EmpresaUFLookUp').asString <> SQLTemplate.FieldByName('CliFornEmpEstadoLookUp').asString then
    begin
      SQLICMSUF.Close;
      SQLICMSUF.ParamByName('ICMUA2UF').asString := SQLTemplate.FieldByName('CliFornEmpEstadoLookUp').asString;
      SQLICMSUF.Open;
      if not SQLICMSUF.IsEmpty then
        Aliquota := SQLICMSUF.FindField('ICMUN2ALIQUOTA').asFloat
      else
        Informa('O ICMS do estado ' + SQLTemplate.FieldByName('CliFornEmpEstadoLookUp').asString + ' não foi cadastrado !');
    end
    else
      Aliquota := 17;

    SQLTemplate.FindField('NOFIN2BASCALCICMS').AsFloat := SQLTemplate.FindField('NOFIN2VLRPRODUTO').asFloat - ValorFrete + SQLTemplate.FindField('NOFIN2VLRFRETE').asFloat;

    SQLTemplate.FindField('NOFIN2VLRICMS').AsFloat := (SQLTemplate.FindField('NOFIN2BASCALCICMS').AsFloat * (Aliquota / 100)) - ValorIcmsFrete + SQLTemplate.FindField('NOFIN2VLRICMSFRETE').AsFloat;
    SQLICMSUF.Close;
  end;

  if (SQLTemplate.FindField('CalcICMSLookUp').asString = 'S') and (Sender.FieldName = 'NOFIN2VLRFRETE') then
  begin
    if (DM.SQLConfigVenda.FieldByName('CFVEICMSFRETECOD').asVariant <> Null) then
    begin
      SQLICMS.Close;
      SQLICMS.ParamByName('ICMSICOD').asInteger := DM.SQLConfigVenda.FieldByName('CFVEICMSFRETECOD').asInteger;
      SQLICMS.Open;
      if (SQLTemplate.FindField('CliFornEmpEstadoLookUp').asString <> '') and (SQLTemplate.FindField('EmpresaUFLookUp').asString <> SQLTemplate.FindField('CliFornEmpEstadoLookUp').asString) then
      begin
        SQLICMSUF.Close;
        SQLICMSUF.ParamByName('ICMUA2UF').asString := SQLTemplate.FindField('CliFornEmpEstadoLookUp').asString;
        SQLICMSUF.Open;
        if not SQLICMSUF.Eof then
        begin
          SQLTemplate.FindField('NOFIN2VLRICMSFRETE').asFloat := 0;
          SQLTemplate.FindField('NOFIN2VLRICMSFRETE').asFloat := SQLTemplate.FindField('NOFIN2VLRFRETE').asFloat * (SQLICMSUF.FindField('ICMUN2ALIQUOTA').asFloat / 100);
          SQLTemplate.FindField('NOFIN2BASCALCICMS').AsFloat := SQLTemplate.FindField('NOFIN2BASCALCICMS').asFloat - ValorFrete + SQLTemplate.FindField('NOFIN2VLRFRETE').asFloat;
          SQLTemplate.FindField('NOFIN2VLRICMS').AsFloat := SQLTemplate.FindField('NOFIN2VLRICMS').AsFloat - ValorIcmsFrete + SQLTemplate.FindField('NOFIN2VLRICMSFRETE').asFloat;

        end
        else
          Informa('O Estado ' + SQLTemplate.FindField('CliFornEmpEstadoLookUp').asString + ' não tem ICMS configurado!');
        SQLICMSUF.Close;
      end
      else
      begin
        SQLTemplate.FindField('NOFIN2VLRICMSFRETE').asFloat := 0;
        SQLTemplate.FindField('NOFIN2VLRICMSFRETE').asFloat := SQLTemplate.FindField('NOFIN2VLRFRETE').asFloat * (SQLICMS.FindField('ICMSN2ICMSM1').asFloat / 100);
        SQLTemplate.FindField('NOFIN2BASCALCICMS').AsFloat := SQLTemplate.FindField('NOFIN2BASCALCICMS').asFloat - ValorFrete + SQLTemplate.FindField('NOFIN2VLRFRETE').asFloat;
        SQLTemplate.FindField('NOFIN2VLRICMS').AsFloat := SQLTemplate.FindField('NOFIN2VLRICMS').AsFloat - ValorIcmsFrete + SQLTemplate.FindField('NOFIN2VLRICMSFRETE').asFloat;

      end;
      SQLICMS.Close;
    end
    else
    begin
      Informa('Você deve configurar o Cód. ICMS do Frete!');
      Abort;
    end;
    if SQLTemplate.State in [DsEdit] then
      SQLTemplate.Post;
  end;

  CalculandoFrete := False;

end;

procedure TFormCadastroNotaFiscal.NotaFiscal1Click(Sender: TObject);
var
  DataHoraSaida: TDateTime;
  Erro: Boolean;
  InfoRetornoUser: TInfoRetornoUser;
begin
  inherited;
  if SQLTemplateCLIEA13ID.Value <> '' then
    if not VerificaLimiteCredito(SQLTemplateCLIEA13ID.asstring, 0, DM.SQLParcelas, DM.SQLCliente) then
      if SQLLocate('USUARIO', 'USUAICOD', 'USUACVENDCLIBLOQCHQ', IntToStr(DM.UsuarioAtual)) <> 'S' then
      begin
        if AutenticaUsuario(UsuarioAtualNome, 'USUACVENDCLIBLOQCHQ', InfoRetornoUser) = 'S' then
        begin
          Showmessage('Impressão da Nota Cancelada');
          Exit;
        end;
      end;

  Erro := False;
  if SQLTemplate.IsEmpty then
  begin
    ShowMessage('Não foi encontrado nenhuma nota fiscal a ser impressa! Verifique!');
    Abort;
  end;
  try
    if SQLTemplateNOFICSTATUS.Value = 'A' then
      DataHoraSaida := StrToDateTime(InputBox('Data e Hora da Saída', '', FormatDateTime('dd/mm/yyyy hh:mm:ss', Now)))
    else
      DataHoraSaida := now;
  except
    ShowMessage('Data e Hora da Saída inválida! Verifique!');
  end;
  if (not Erro) and (SQLTemplateNOFICSTATUS.Value = 'A') then
  begin
    SQLTemplate.Edit;
    SQLTemplateNOFIDSAIDAENTRADA.Value := DataHoraSaida;
    SQLTemplate.Post;
  end;
  // Exec antigo usado para a impressao com o Crystal onde ele pegava o ID da nota e criava as tab.temporarias pra impressao
  if FileExists('NotaFiscal.exe') then
    WinExec(PChar(DM.PathAplicacao + 'NotaFiscal.exe ' + SQLTemplateNOFIA13ID.asString), SW_SHOW);

  // rotina para Encerrar a NF e movimentar o Estoque
  if SQLTemplateNOFICSTATUS.Value = 'A' then
    if Pergunta('SIM', '* * * DESEJA FINALIZAR ESTA NOTA * * *') then
    begin
      SQLTemplate.Edit;
      SQLTemplateNOFICSTATUS.Value := 'E';
      SQLTemplate.Post;
    end;
  // Foi comentado pois no financeiro foi alterado a telaimpressão duplicatas
{  if Pergunta('SIM','* * * DESEJA IMPRIMIR OS BLOQUETOS/DUPLICATAS PARA ESTA NOTA * * *') then
    begin
      Application.CreateForm(TFormTelaImpressaoDuplicata, FormTelaImpressaoDuplicata);
      FormTelaImpressaoDuplicata.ComboCliente.Value := SQLTemplateCLIEA13ID.Value;
      FormTelaImpressaoDuplicata.De.Date  := SQLTemplateNOFIDEMIS.Value;
      FormTelaImpressaoDuplicata.ate.Date := SQLTemplateNOFIDEMIS.Value;
      FormTelaImpressaoDuplicata.Show;
      FormTelaImpressaoDuplicata.BtnSelecionarDoc.Click;
    end;  }
end;

procedure TFormCadastroNotaFiscal.Identific1Click(Sender: TObject);
var
  I, Copias: Integer;
begin
  inherited;
  try
    Copias := StrToInt(InputBox('Número de Cópias', 'Cópias', '1'));
    if Copias >= 1 then
    begin
      Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.asString + '\IdentificacaoCarga.rpt';
      if TblIdentificacaoCarga.Exists then
        TblIdentificacaoCarga.DeleteTable;
      TblIdentificacaoCarga.CreateTable;
      TblIdentificacaoCarga.Open;
      for I := 1 to Copias do
      begin
        TblIdentificacaoCarga.Append;
        TblIdentificacaoCargaTransportadora.asString := SQLTemplateTransportadoraLookup.asString;
        TblIdentificacaoCargaRazaoSoc.asString := SQLTemplateCliFornEmpLookUp.asString;
        if SQLTemplateNOFICFRETEPORCONTA.AsString = 'C' then
          TblIdentificacaoCargaFrete.AsString := '** FRETE POR CONTA DO EMITENTE **'
        else
          TblIdentificacaoCargaFrete.AsString := '** FRETE POR CONTA DO DESTINATÁRIO **';
        TblIdentificacaoCargaEndereco.AsString := SQLTemplateCliFornEmpEnderecoLookUp.asString;
        TblIdentificacaoCargaComprador.asString := '  A/C: ' + SQLTemplateNOFIA30COMPRADOR.asString;
        TblIdentificacaoCargaCepCidadeUF.asString := Trim(SQLTemplateCliFornEmpCidadeLookUp.asString) + ' - ' + SQLTemplateCliFornEmpEstadoLookUp.asString + ' - ' + SQLTemplateCliFornEmpCEPLookUp.asString;
        TblIdentificacaoCargaBairro.asString := SQLTemplateCliFornEmpBairroLookUp.asString;
        TblIdentificacaoCargaNotaFiscal.asString := 'Número NF: ' + FormatFloat('00000', SQLTemplateNOFIINUMERO.asFloat);
        TblIdentificacaoCargaVolume.AsString := SQLTemplateNOFIN3QUANT.AsString;

        TblIdentificacaoCarga.Post;
      end;
      TblIdentificacaoCarga.Close;
      DM.SQLConfigGeral.Open;
      Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.asString + '\IdentificacaoCarga.rpt';
      Report.Execute;
    end
    else
      Informa('Número de cópias deve ser maior ou igual a 1 !');
  except
    Informa('Problemas ao gerar a identificação de carga !');
  end;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateOPESICODChange(Sender: TField);
begin
 { if SQLLocate('NOTAFISCALITEM','NOFIA13ID','NOFIA13ID','''' + SQLTemplateNOFIA13ID.AsString + '''') <> '' then
    begin
      Informa('Esta nota fiscal possui itens, portanto a operação de estoque não pode ser alterada!' + #13 +
              'Você deve excluir todos os itens para alterar a operação ou lançar uma nova nota!');
      Abort;
    end; }
  inherited;
  if (Sender.FieldName = 'CLIEA13ID') and not ClienteDoPedido then
  begin
    PlanoDoCliente := True;
    if SQLTemplatePlanoClienteLookUp.AsVariant <> Null then
      SQLTemplatePLRCICOD.asVariant := SQLTemplatePlanoClienteLookUp.AsVariant;
    if SQLTemplatePLRCICOD.asVariant <> Null then
      PlanoAnterior := SQLTemplatePLRCICOD.asString;
    PlanoDoCliente := False;
    if dm.VendedorAtualPedidos < 1 then
      if SQLTemplateVendedorClienteLookUp.Asstring <> '' then
        SQLTemplateVENDICOD.asVariant := SQLTemplateVendedorClienteLookUp.AsVariant;
  end;
  if SQLTemplate.FindField('EmpresaUFLookUp').asString <> SQLTemplate.FindField('CliFornEmpEstadoLookUp').asString then
    SQLTemplate.FindField('CFOPA5COD').asString := SQLTemplate.FindField('CFOPForaLookUp').asString
  else
    SQLTemplate.FindField('CFOPA5COD').asString := SQLTemplate.FindField('CFOPDentroLookUp').asString;
end;

procedure TFormCadastroNotaFiscal.BtnEmpresaClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('EMPRICOD');
  FieldOrigem := 'EMPRICOD';
  CriaFormulario(TFormTelaConsultaEmpresa, 'FormTelaConsultaEmpresa', False, True, True, '');
end;

procedure TFormCadastroNotaFiscal.SQLTemplateAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if GerandoNota then
    exit;
  if DM.SQLConfigVenda.FieldByName('OPESICODNF').AsVariant <> Null then
  begin
    DataSet.FindField('OPESICOD').Value := DM.SQLConfigVenda.FieldByName('OPESICODNF').Value;
    DataSet.FindField('SERIA5COD').Value := SQLLocate('OPERACAOESTOQUE', 'OPESICOD', 'SERIA5COD', DM.SQLConfigVenda.FieldByName('OPESICODNF').AsString);
  end;
end;

procedure TFormCadastroNotaFiscal.DSTemplateDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  DBEditPV.Enabled := ComboSerie.Text <> '';
  BtnPedido.Enabled := (ComboSerie.Text <> '') and (SQLTemplate.FieldByName('NOFICSTATUS').AsString = 'A');
  BtnCliFornEmp.Enabled := SQLTemplate.FieldByName('NOFICSTATUS').AsString = 'A';
  BtnVendedor.Enabled := SQLTemplate.FieldByName('NOFICSTATUS').AsString = 'A';
  BtnTransportadora.Enabled := SQLTemplate.FieldByName('NOFICSTATUS').AsString = 'A';

  if (Field = nil) or (Field.FieldName = 'OPESICOD') then
  begin
    if (SQLTemplateOrigemDestinoLookUp.asVariant <> null) and (SQLTemplateOrigemDestinoLookUp.AsString <> '') then
      case SQLTemplateOrigemDestinoLookUp.AsString[1] of
        'C':
          begin
            GroupBoxCliFornEmp.Caption := 'Cliente';
            DBEditCod.DataField := 'CLIEA13ID';
          end;
        'F':
          begin
            DBEditCod.DataField := 'FORNICOD';
            GroupBoxCliFornEmp.Caption := 'Fornecedor';
          end;
        'E':
          begin
            DBEditCod.DataField := 'EMPRICODDEST';
            GroupBoxCliFornEmp.Caption := 'Empresa';
          end;
      end;
  end;

  if PagePrincipal.ActivePage = PaginaFinanceiro then
  begin
    SQLContasReceber.Close;
    SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLTemplateNOFIA13ID.AsString;
    SQLContasReceber.Open;
  end;
end;

procedure TFormCadastroNotaFiscal.RecalcularFinanceiroClick(Sender: TObject);
begin
  inherited;
  Button4.Click;
  SQLTemplate.Edit;
  SQLTemplatePLRCICODChange(SQLTemplatePLRCICOD);
  PlanoAnterior := '';
end;

procedure TFormCadastroNotaFiscal.SQLPedidoVendaBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  DM.RegistraExclusao('PEDIDOVENDA', SQLPedidoVenda);
  SQLExcluiDetalhes.MacroByName('MTabela').AsString := 'PEDIDOVENDAITEM';
  SQLExcluiDetalhes.MacroByName('MFiltro').asString := DM.ClausulaFiltro('PEDIDOVENDA', SQLPedidoVenda);
  SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Select *';
  SQLExcluiDetalhes.Open;
  SQLExcluiDetalhes.First;
  while not SQLExcluiDetalhes.Eof do
  begin
    DM.RegistraExclusao('PEDIDOVENDAITEM', SQLExcluiDetalhes);
    SQLExcluiDetalhes.Next;
  end;
  SQLExcluiDetalhes.Close;
  SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Delete';
  SQLExcluiDetalhes.ExecSQL;
  if CriandoNota then
  begin
    SQLExcluiDetalhes.MacroByName('MTabela').AsString := 'CONTASRECEBER';
    SQLExcluiDetalhes.MacroByName('MFiltro').asString := DM.ClausulaFiltro('CONTASRECEBER', SQLPedidoVenda);
    SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Select *';
    SQLExcluiDetalhes.Open;
    SQLExcluiDetalhes.First;
    while not SQLExcluiDetalhes.Eof do
    begin
      DM.RegistraExclusao('CONTASRECEBER', SQLExcluiDetalhes);
      SQLExcluiDetalhes.Next;
    end;
    SQLExcluiDetalhes.Close;
    SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Delete';
    SQLExcluiDetalhes.ExecSQL;
  end;
end;

procedure TFormCadastroNotaFiscal.SQLTemplatePDVDA13IDChange(Sender: TField);
begin
  inherited;
  if not GerandoNota then
    ImportaPedidoVenda(SQLTemplatePDVDA13ID.AsString);
end;

procedure TFormCadastroNotaFiscal.FormActivate(Sender: TObject);
begin
  inherited;
  if Application.FindComponent('FormTelaConsultaCupom') <> nil then

    if (DM.Cupom <> '') and (not InserindoCupomFiscal) then
      ImportarCupom;
  Application.FindComponent('FomTelaConsultaCupom').Free;

  if (DM.PrevendaTerminalSTR <> '') and (DM.PrevendaCodigoSTR <> '') and (not InserindoCupomFiscal) then
    ImportarPrevenda;

{  if AtivarFinanceiro = True then
    begin
      Button4Click(Sender);
      AtivarFinanceiro := False;
    end; }

  SQLTemplate.DisableControls;
  SQLTemplate.EnableControls;
end;

procedure TFormCadastroNotaFiscal.ImportarPrevenda;
var
  nProd, cPos: Integer;
  nQUANT, nVLRTOTAL, nVLRDESC: Extended;
begin
  if (DM.PrevendaTerminalStr <> '') and (DM.PrevendaCodigoStr <> '') then
  begin
    DestroyWindow;
    MakeWindowMessage('Gerando nota Fiscal a Partir da Prevenda selecionada!');
    dm.sqlImportarPrevenda.Close;
    dm.sqlImportarPrevenda.SQL.Clear;
    dm.sqlImportarPrevenda.SQL.add('Select * from PREVENDA Where TERMICOD=' + dm.PrevendaTerminalStr + ' and PRVDICOD=' + DM.PrevendaCodigoStr);
    dm.sqlImportarPrevenda.Prepare;
    dm.sqlImportarPrevenda.Open;

    if dm.sqlImportarPrevenda.IsEmpty then
    begin
      DestroyWindow;
      Application.MessageBox('A Prevenda selecionada não foi encontrada!', 'Informa', MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND);
      Abort;
    end;

    dm.sqlImportarPrevenda.Close;
    dm.sqlImportarPrevenda.SQL.Clear;
    dm.sqlImportarPrevenda.SQL.add('Select * from PREVENDAITEM Where TERMICOD=' + dm.PrevendaTerminalStr + ' and PRVDICOD=' + DM.PrevendaCodigoStr);
    dm.sqlImportarPrevenda.Prepare;
    dm.sqlImportarPrevenda.Open;

    if dm.sqlImportarPrevenda.IsEmpty then
    begin
      DestroyWindow;
      Application.MessageBox('A Prevenda selecionada não possui itens !', 'Informa', MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND);
      Abort;
    end;

      {reabre cabecalho pra iniciar geracao}
    dm.sqlImportarPrevenda.Close;
    dm.sqlImportarPrevenda.SQL.Clear;
    dm.sqlImportarPrevenda.SQL.add('Select * from PREVENDA Where TERMICOD=' + dm.PrevendaTerminalStr + ' and PRVDICOD=' + DM.PrevendaCodigoStr);
    dm.sqlImportarPrevenda.Prepare;
    dm.sqlImportarPrevenda.Open;

    Dm.ImportandoPedidoVenda := True;
    InserindoCupomFiscal := True;
    SQLTemplate.Append;
    InserindoNota := False;

    SQLTemplateCLIEA13ID.AsVariant := dm.sqlImportarPrevenda.FieldByName('CLIEA13ID').AsVariant;
    SQLTemplateVENDICOD.AsVariant := dm.sqlImportarPrevenda.FieldByName('VENDICOD').AsVariant;
    SQLTemplateOPESICOD.AsVariant := Dm.SQLConfigVenda.FieldByName('OPESICODCUPOM').AsVariant;
    SQLTemplateSERIA5COD.AsVariant := SQLLocate('OPERACAOESTOQUE', 'OPESICOD', 'SERIA5COD', Dm.SQLConfigVenda.FieldByName('OPESICODCUPOM').AsString);
    SQLTemplateNOFIDEMIS.AsString := FormatDateTime('dd/mm/yyyy', Now);
    SQLTemplateNOFIN2VLRDESCPROM.AsVariant := 0;
    SQLTemplateNOFIA255OBS.AsString := '';
    SQLTemplate.Post;

    DSMasterSys := DsTemplate;
    Application.CreateForm(TFormCadastroNotaFiscalItem, FormCadastroNotaFiscalItem);
    FormCadastroNotaFiscalItem.SQLTemplate.MacroByName('MFiltro').Value := 'NOFIA13ID is null';
    FormCadastroNotaFiscalItem.SQLTemplate.Open;
    FormCadastroNotaFiscalItem.Show;
    NumItem := 0;
    cPos := 1;

    dm.sqlImportarPrevenda.Close;
    dm.sqlImportarPrevenda.SQL.Clear;
    dm.sqlImportarPrevenda.SQL.add('Select * from PREVENDAITEM Where TERMICOD=' + dm.PrevendaTerminalStr + ' and PRVDICOD=' + DM.PrevendaCodigoStr);
    dm.sqlImportarPrevenda.SQL.add('order by prodicod asc');
    dm.sqlImportarPrevenda.Prepare;
    dm.sqlImportarPrevenda.Open;
    dm.sqlImportarPrevenda.First;
    while not dm.sqlImportarPrevenda.Eof do
    begin
      nProd := dm.sqlImportarPrevenda.FieldByName('PRODICOD').AsInteger;
      FormCadastroNotaFiscalItem.SQLTemplate.DisableControls;
      FormCadastroNotaFiscalItem.SQLTemplate.Append;
      FormCadastroNotaFiscalItem.SQLTemplatePRODICOD.asInteger := nProd;
      FormCadastroNotaFiscalItem.SQLTemplateCPITICPOS.asInteger := cPos;
      Inc(cPos);

      nQUANT := 0;
      nVLRTOTAL := 0;
      nVLRDESC := 0;
      while (dm.sqlImportarPrevenda.FieldByName('PRODICOD').AsInteger = nProd) and (not dm.sqlImportarPrevenda.Eof) do
      begin
        nQUANT := nQuant + (dm.sqlImportarPrevenda.FieldByName('PVITN3QTD').AsVariant);
        nVLRTOTAL := nVLRTOTAL + (dm.sqlImportarPrevenda.FieldByName('PVITN3VLRUNIT').AsVariant * dm.sqlImportarPrevenda.FieldByName('PVITN3QTD').AsVariant);
        nVLRDESC := nVLRDESC + (dm.sqlImportarPrevenda.FieldByName('PVITN2DESC').AsVariant * dm.sqlImportarPrevenda.FieldByName('PVITN3QTD').AsVariant);
        dm.sqlImportarPrevenda.Next;
      end;

      FormCadastroNotaFiscalItem.SQLTemplateNFITN3QUANT.asFloat := nQUANT;
      FormCadastroNotaFiscalItem.SQLTemplateNFITN2VLRUNIT.Value := (nVLRTOTAL / nQUANT);
      FormCadastroNotaFiscalItem.SQLTemplateNFITN2VLRDESC.asFloat := nVLRDESC;

      FormCadastroNotaFiscalItem.SQLTemplate.Post;
      FormCadastroNotaFiscalItem.SQLTemplate.EnableControls;
    end;
    FormCadastroNotaFiscalItem.SQLTemplate.Close;
    FormCadastroNotaFiscalItem.Close;
    FormCadastroNotaFiscalItem.Free;
  end;
  DestroyWindow;

  SqlTemplate.Edit;
  Dm.ImportandoPedidoVenda := False;

  {Troca status da prevenda pra importado}
  dm.sqlImportarPrevenda.Close;
  dm.sqlImportarPrevenda.SQL.Clear;
  dm.sqlImportarPrevenda.SQL.add('update PREVENDA set PRVDCIMPORT=''S'' where TERMICOD=' + dm.PrevendaTerminalStr + ' and PRVDICOD=' + DM.PrevendaCodigoStr);
  dm.sqlImportarPrevenda.Prepare;
  dm.sqlImportarPrevenda.ExecSQL;

  Dm.PrevendaTerminalStr := '';
  Dm.PrevendaCodigoStr := '';
  InserindoCupomFiscal := False;
end;

procedure TFormCadastroNotaFiscal.ImportarCupom;
var
  nProd, cPos: Integer;
  nQUANT, nVLRTOTAL, nVLRDESC: Extended;
begin
  if DM.Cupom <> '' then
  begin
    DestroyWindow;
    MakeWindowMessage('Gerando nota Fiscal a Partir de Cupons Selecionados.');
    SQLCupom.Close;
    SQLCupom.SQL.Text := 'Select C.*, E.ECFICOD, E.ECFA20NROSERIE from CUPOM C ' + 'LEFT join terminal T ON T.TERMICOD = C.termicod ' + 'LEFT JOIN ecf E ON E.ecfa13id = T.ECFA13ID      ' + 'where CUPOA13ID in (' + Dm.Cupom + ')';
    SQLCupom.Prepare;
    SQLCupom.Open;
    if Dm.SQLConfigVenda.FieldByName('OPESICODIMPCUPOM').AsString = '' then
    begin
      DestroyWindow;
      Application.MessageBox('Não existe nenhuma operação de estoque configurada para importação de cupom !', 'Informa', MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND);
      Abort;
    end;

    SQLCupomItem.Close;
    SQLCupomItem.SQL.Text := 'Select * From CupomItem Where Cupoa13id in (' + Dm.Cupom + ') and CPITCSTATUS=''A'' Order By Prodicod';
    SQLCupomItem.Prepare;
    SQLCupomItem.Open;

    if SQLCupomItem.IsEmpty then
    begin
      DestroyWindow;
      Application.MessageBox('O cupom selecionado não possui itens !', 'Informa', MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND);
      Abort;
    end;

    Dm.ImportandoPedidoVenda := True;
    InserindoCupomFiscal := True;
    SQLTemplate.Append;
    InserindoNota := False;

    SQLTemplateCLIEA13ID.AsVariant := SQLCupom.FieldByName('CLIEA13ID').AsVariant;
    SQLTemplateVENDICOD.AsVariant := SQLCupom.FieldByName('VENDICOD').AsVariant;
    SQLTemplateOPESICOD.AsVariant := Dm.SQLConfigVenda.FieldByName('OPESICODIMPCUPOM').AsVariant;
    SQLTemplateSERIA5COD.AsVariant := SQLLocate('OPERACAOESTOQUE', 'OPESICOD', 'SERIA5COD', Dm.SQLConfigVenda.FieldByName('OPESICODIMPCUPOM').AsString);
    SQLTemplateNOFIDEMIS.AsDateTime := SQLCupom.FieldByName('CUPODEMIS').AsDateTime;
    SQLTemplateNOFIN2VLRDESCPROM.AsVariant := 0;
    SQLTemplateNOFIA255OBS.AsString := 'NF EMITIDA EM DECORRENCIA DA EMISSAO DOS CUPONS FISCAIS ' + DM.PedidoObs; // utilizada essa variavel para informar os  numeros do COO do cupom
    SQLTemplate.Post;

    SQLCupomItem.First;
    if SQLCupomItem.IsEmpty then
    begin
      DestroyWindow;
      Application.MessageBox('O cupom selecionado não possui itens !', 'Informa', MB_OK + MB_SYSTEMMODAL + MB_SETFOREGROUND);
      Abort;
    end;

    DSMasterSys := DsTemplate;
    Application.CreateForm(TFormCadastroNotaFiscalItem, FormCadastroNotaFiscalItem);
    FormCadastroNotaFiscalItem.SQLTemplate.MacroByName('MFiltro').Value := 'NOFIA13ID is null';
    FormCadastroNotaFiscalItem.SQLTemplate.Open;
    FormCadastroNotaFiscalItem.Show;
    NumItem := 0;
    cPos := 1;

    FormCadastroNotaFiscalItem.SQLTemplate.DisableControls;
    while not SQLCupomItem.Eof do
    begin
      nProd := SQLCupomItem.fieldbyname('Prodicod').AsInteger;
      FormCadastroNotaFiscalItem.SQLTemplate.Append;
      FormCadastroNotaFiscalItem.SQLTemplatePRODICOD.asInteger := SQLCupomItemPRODICOD.AsInteger;
      FormCadastroNotaFiscalItem.SQLTemplateCPITICPOS.asInteger := cPos;
      Inc(cPos);

      nQUANT := 0;
      nVLRTOTAL := 0;
      nVLRDESC := 0;
      while (SQLCupomItem.FieldByName('Prodicod').asinteger = nProd) and (not SQLCupomItem.Eof) do
      begin
        nQUANT := nQuant + SQLCupomItemCPITN3QTD.Value;
        nVLRTOTAL := nVLRTOTAL + (SQLCupomItemCPITN3VLRUNIT.Value * SQLCupomItemCPITN3QTD.Value);
        nVLRDESC := nVLRDESC + (SQLCupomItemCPITN2DESC.asFloat * SQLCupomItemCPITN3QTD.Value);
        SQLCupomItem.Next;
      end;

      FormCadastroNotaFiscalItem.SQLTemplateNFITN3QUANT.asFloat := nQUANT;
      FormCadastroNotaFiscalItem.SQLTemplateNFITN2VLRUNIT.Value := (nVLRTOTAL / nQUANT);
      FormCadastroNotaFiscalItem.SQLTemplateNFITN2VLRDESC.asFloat := nVLRDESC;

      FormCadastroNotaFiscalItem.SQLTemplate.Post;
    end;
    FormCadastroNotaFiscalItem.SQLTemplate.Close;
    FormCadastroNotaFiscalItem.SQLTemplate.EnableControls;
    FormCadastroNotaFiscalItem.Close;
    FormCadastroNotaFiscalItem.Free;

        // Referenciado cupons fiscais
    DSMasterSYS := DsTemplate;
    Application.CreateForm(TFormCadastroNotaFiscalReferenciada, FormCadastroNotaFiscalReferenciada);
    FormCadastroNotaFiscalReferenciada.SQLTemplate.MacroByName('MFiltro').Value := 'NOFIA13ID is null';
    FormCadastroNotaFiscalReferenciada.SQLTemplate.Open;
    FormCadastroNotaFiscalReferenciada.Show;
    FormCadastroNotaFiscalReferenciada.SQLTemplate.OnNewRecord := nil;
    FormCadastroNotaFiscalReferenciada.SQLTemplate.DisableControls;

    SQLCupom.First;
    while not SQLCupom.Eof do
    begin
      if SQLCupomCUPOINRO.Value > 0 then
      begin
        FormCadastroNotaFiscalReferenciada.SQLTemplate.Append;
        FormCadastroNotaFiscalReferenciada.SQLTemplateTIPO.AsString := '5';
        FormCadastroNotaFiscalReferenciada.SQLTemplateNOFIA13ID.AsString := SQLTemplateNOFIA13ID.AsString;
        FormCadastroNotaFiscalReferenciada.SQLTemplateNUMERO_ECF.AsString := SQLCupomECFICOD.asString;
        FormCadastroNotaFiscalReferenciada.SQLTemplateNUMERO_COO.AsString := SQLCupomCUPOINRO.AsString;
        FormCadastroNotaFiscalReferenciada.SQLTemplateDATAEMISSAO.AsDateTime := SQLCupomCUPODEMIS.AsDateTime;
        FormCadastroNotaFiscalReferenciada.SQLTemplateMODELO.AsString := '2D';
        FormCadastroNotaFiscalReferenciada.SQLTemplateNUMERO_SERIE.AsString := SQLCupomECFA20NROSERIE.AsString;
        FormCadastroNotaFiscalReferenciada.SQLTemplate.Post;
      end;
      SQLCupom.Next;
    end;
    FormCadastroNotaFiscalReferenciada.SQLTemplate.EnableControls;
    FormCadastroNotaFiscalReferenciada.Close;
    FormCadastroNotaFiscalReferenciada.Free;
  end;
  DestroyWindow;

  SqlTemplate.Edit;
  Dm.ImportandoPedidoVenda := False;

    {
    if Application.MessageBox('Deseja transferir os dados financeiros ?','Pergunta',MB_YESNO + MB_SYSTEMMODAL + MB_ICONQUESTION + MB_SETFOREGROUND) = IdYes then
      begin
        PagePrincipal.ActivePageIndex := 3;
        EmpresaPadrao   := Dm.SQLTerminalAtivoEMPRICOD.AsString;
        SqlTemplate.Edit;
        SQLTemplatePLRCICOD.AsInteger := SQLCupomPLRCICOD.AsInteger;
      end;
      }

  Dm.Cupom := '';
  InserindoCupomFiscal := False;
end;

procedure TFormCadastroNotaFiscal.MnGerarNotadeCupomClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormTelaConsultaCupom, 'FormTelaConsultaCupom', False, True, False, '');
end;

procedure TFormCadastroNotaFiscal.ComboNumerarioVistaChange(Sender: TObject);
begin
  inherited;
  if ComboNumerarioVista.Value <> '' then
  begin
    if not SQLParcelasPrazoVendaTemp.Active then
      SQLParcelasPrazoVendaTemp.open;
    SQLParcelasPrazoVendaTemp.First;
    while not SQLParcelasPrazoVendaTemp.Eof do
    begin
      if SQLParcelasPrazoVendaTempNROPARCELA.AsInteger = 0 then
      begin
        SQLParcelasPrazoVendaTemp.Edit;
        SQLParcelasPrazoVendaTempNUMEICOD.AsInteger := ComboNumerarioVista.KeyValue;
        SQLParcelasPrazoVendaTempTipoPadrao.AsString := SQLLocate('NUMERARIO', 'NUMEICOD', 'NUMEA5TIPO', ComboNumerarioVista.Value);
        SQLParcelasPrazoVendaTemp.Post;
      end;
      SQLParcelasPrazoVendaTemp.Next;
    end;
    SQLParcelasPrazoVendaTemp.First;
  end;
end;

procedure TFormCadastroNotaFiscal.Button5Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DsTemplate;
  CriaFormulario(TFormCadastroNotaFiscalItem, 'FormCadastroNotaFiscalItem', True, False, True, 'Nota Fiscal Nº ' + SQLTemplateNOFIINUMERO.AsString);
end;

procedure TFormCadastroNotaFiscal.Button3Click(Sender: TObject);
begin
  inherited;
  PagePrincipal.ActivePage := PaginaImpostos;
end;

procedure TFormCadastroNotaFiscal.Button6Click(Sender: TObject);
begin
  inherited;
{  If SQLTemplate.FindField('PLRCICOD').asVariant<>Null Then
    Begin
      DSMasterSys := DsTemplate;
      CriaFormulario(TFormCadastroNotaFiscalFinanceiro,'FormCadastroNotaFiscalFinanceiro',True,False,True,'Nota Fiscal Nº ' + SQLTemplateNOFIINUMERO.AsString);
    End
  Else
    Informa('Informe o Plano no Financeiro!');}
  DSMasterSys := DsTemplate;
  CriaFormulario(TFormCadastroNotaFiscalFinanceiro, 'FormCadastroNotaFiscalFinanceiro', True, False, True, 'Nota Fiscal Nº ' + SQLTemplateNOFIINUMERO.AsString);
end;

procedure TFormCadastroNotaFiscal.GerarNFdeVendaConsignadaClick(Sender: TObject);
begin
  inherited;
  GeraNotaVendaConsignada;
end;

function TFormCadastroNotaFiscal.GeraNotaVendaConsignada: Boolean;
var
  I: Integer;
begin
  if DM.SQLConfigVenda.FieldByName('OPESICODVENDCONSIG').AsVariant = null then
  begin
    Informa('Nenhuma operação de estoque foi configurada para venda consignada !');
    Abort;
  end;
  if not SQLOperacaoEstoque.Active then
    SQLOperacaoEstoque.Open;

  if SQLOperacaoEstoque.Locate('OPESICOD', DM.SQLConfigVenda.FieldByName('OPESICODVENDCONSIG').AsString, []) then
  begin
    if SQLOperacaoEstoqueOPESCENTRADASAIDA.AsString = '' then
    begin
      Informa('Operação de Estoque incompleta !');
      Abort;
    end;
    if SQLOperacaoEstoqueOPESCORIGEMDESTINO.AsString = '' then
    begin
      Informa('Operação de Estoque incompleta !');
      Abort;
    end
  end
  else
  begin
    Informa('Operação de Estoque não encontrada !');
  end;
  SQLNotaFiscal.Close;
  SQLNotaFiscal.ParamByName('NOFIA13ID').Value := SQLTemplateNOFIA13ID.AsString;
  SQLNotaFiscal.Open;
  SQLNotaFiscalItemConsig.Close;
  SQLNotaFiscalItemConsig.ParamByName('NOFIA13ID').Value := SQLNotaFiscalNOFIA13ID.AsString;
  SQLNotaFiscalItemConsig.Open;
  if SQLNotaFiscalItemConsig.IsEmpty then
  begin
    Informa('Esta nota fiscal não possui itens !');
    Abort;
  end;
  SQlTemplate.Append;
  InserindoNota := False;
  SQLTemplateCLIEA13ID.AsVariant := SQLNotaFiscalCLIEA13ID.AsVariant;
  SQLTemplateVENDICOD.AsVariant := SQLNotaFiscalVENDICOD.AsVariant;
  SQLTemplateOPESICOD.AsVariant := Dm.SQLConfigVenda.FieldByName('OPESICODVENDCONSIG').AsVariant;
  SQLTemplateSERIA5COD.AsVariant := SQLLocate('OPERACAOESTOQUE', 'OPESICOD', 'SERIA5COD', Dm.SQLConfigVenda.FieldByName('OPESICODVENDCONSIG').AsString);
  SQLTemplateNOFIDEMIS.AsDateTime := SQLNotaFiscalNOFIDEMIS.AsDateTime;
  SQLTemplateNOFIA13IDCONSIGNADA.AsString := SQLNotaFiscalNOFIA13ID.AsString;
  SQLTemplate.Post;
  SQLNotaFiscalItemConsig.First;
  Application.CreateForm(TFormTelaItensVendaConsignacao, FormTelaItensVendaConsignacao);
  FormTelaItensVendaConsignacao.Hide;
  SQLConsignacao.Close;
  SQLConsignacao.MacroByName('NotaFiscal').Value := 'NOFIA13IDCONSIGNADA = ' + '''' + SQLNotaFiscalNOFIA13ID.AsString + '''';
  SQLConsignacao.Open;
  FormTelaItensVendaConsignacao.TblItensVendaConsig.Open;
  while not SQLNotaFiscalItemConsig.Eof do
  begin
    FormTelaItensVendaConsignacao.TblItensVendaConsig.Append;
    FormTelaItensVendaConsignacao.TblItensVendaConsigProduto.AsVariant := SQLNotaFiscalItemConsigPRODICOD.AsVariant;

    if SQLConsignacao.Locate('PRODICOD', SQLNotaFiscalItemConsigPRODICOD.AsString, []) then
      FormTelaItensVendaConsignacao.TblItensVendaConsigQtde.AsVariant := SQLNotaFiscalItemConsigNFITN3QUANT.AsFloat - SQLConsignacaoQTDE.AsFloat
    else
      FormTelaItensVendaConsignacao.TblItensVendaConsigQtde.AsVariant := SQLNotaFiscalItemConsigNFITN3QUANT.AsVariant;

    FormTelaItensVendaConsignacao.TblItensVendaConsigLote.AsVariant := SQLNotaFiscalItemConsigLOTEA30NRO.AsVariant;
    FormTelaItensVendaConsignacao.TblItensVendaConsigDescricao.AsVariant := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA60DESCR', SQLNotaFiscalItemConsigPRODICOD.AsString);
    FormTelaItensVendaConsignacao.TblItensVendaConsigReferencia.AsVariant := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA60REFER', SQLNotaFiscalItemConsigPRODICOD.AsString);
    FormTelaItensVendaConsignacao.TblItensVendaConsig.Post;
    SQLNotaFiscalItemConsig.Next;
  end;
  DSMasterSys := DsTemplate;
  Application.CreateForm(TFormCadastroNotaFiscalItem, FormCadastroNotaFiscalItem);
  FormCadastroNotaFiscalItem.Hide;
  FormCadastroNotaFiscalItem.SQLTemplate.Open;
  FormTelaItensVendaConsignacao.ShowModal;
  if FormTelaItensVendaConsignacao.ModalResult = MrOk then
  begin
    TblitensVendaConsignada.Open;
    SQLNotaFiscalItemConsig.First;
    while not SQLNotaFiscalItemConsig.Eof do
    begin
      if (TblitensVendaConsignada.Locate('Produto', SQLNotaFiscalItemConsigPRODICOD.AsString, [])) and (TblitensVendaConsignadaQtde.AsFloat > 0) then
      begin
        FormCadastroNotaFiscalItem.SQLTemplate.Append;
        for I := 0 to SQLNotaFiscalItemConsig.FieldCount - 1 do
        begin
          if (FormCadastroNotaFiscalItem.SQLTemplate.FindField(SQLNotaFiscalItemConsig.Fields[I].FieldName) <> nil) and (FormCadastroNotaFiscalItem.SQLTemplate.FindField(SQLNotaFiscalItemConsig.Fields[I].FieldName).FieldName <> 'NFITN3QUANT') then
          begin
            FormCadastroNotaFiscalItem.SQLTemplate.FindField(SQLNotaFiscalItemConsig.Fields[I].FieldName).AsVariant := SQLNotaFiscalItemConsig.Fields[I].AsVariant;
          end;
        end;
        FormCadastroNotaFiscalItem.SQLTemplateNFITN2PERCICMS.AsFloat := 0;
        FormCadastroNotaFiscalItem.SQLTemplateNFITN2VLRICMS.AsFloat := 0;
        FormCadastroNotaFiscalItem.SQLTemplateNFITN2BASEICMS.AsFloat := 0;
        FormCadastroNotaFiscalItem.SQLTemplateNFITN3QUANT.AsVariant := TblitensVendaConsignadaQtde.AsVariant;
        FormCadastroNotaFiscalItem.SQLTemplateNOFIA13ID.AsVariant := SQLTemplateNOFIA13ID.AsVariant;
        FormCadastroNotaFiscalItem.SQLTemplate.Post;
      end;
      SQLNotaFiscalItemConsig.Next;
    end;
    TblitensVendaConsignada.Close;
    FormTelaItensVendaConsignacao.TblItensVendaConsig.Close;
    FormTelaItensVendaConsignacao.Free;
    FormCadastroNotaFiscalItem.Close;
  end
  else
  begin
    Informa('A operação foi cancelada, você deve excluir ou completar a nota fiscal, pois ela não foi finalizada !');
    TblitensVendaConsignada.Close;
    FormTelaItensVendaConsignacao.TblItensVendaConsig.Close;
    FormTelaItensVendaConsignacao.Free;
  end;
end;

procedure TFormCadastroNotaFiscal.SQLNotaFiscalItemBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Dm.ImportandoPedidoVenda then
    DM.CodigoAutomatico('NOTAFISCALITEM', DSTemplate, SQLNotaFiscalItem, 1, 0);
end;

procedure TFormCadastroNotaFiscal.SQLNotaFiscalItemCalcFields(DataSet: TDataSet);
begin
  inherited;
  if not Dm.ImportandoPedidoVenda then
  begin
    SQLNotaFiscalItemTotalItemCalc.asFloat := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat * SQLNotaFiscalItemNFITN3QUANT.asFloat) - SQLNotaFiscalItemNFITN2VLRDESC.AsFloat;
    if DataSet.FieldByName('PRODICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('PRODUTO', ['PRODICOD'], [DataSet.FieldByName('PRODICOD').AsString], 1) then
      begin
        DMImpNotaFiscal.SQLUnidade.Close;
        if DM.SQLTemplate.FindField('UNIDICOD').AsVariant <> Null then
        begin
          DMImpNotaFiscal.SQLUnidade.ParamByName('UNIDICOD').AsInteger := DM.SQLTemplate.FindField('UNIDICOD').asInteger;
          DMImpNotaFiscal.SQLUnidade.Open;
          DMImpNotaFiscal.SQLUnidade.First;
        end;
        if not DMImpNotaFiscal.SQLUnidade.IsEmpty then
          DataSet.FieldByName('UnidadeLookup').AsVariant := DMImpNotaFiscal.SQLUnidadeUNIDA5DESCR.asString;
        DMImpNotaFiscal.SQLUnidade.Close;
        DMImpNotaFiscal.SQLClasFisc.Close;
        DMImpNotaFiscal.SQLClasFisc.ParamByName('CLFSICOD').AsInteger := DM.SQLTemplate.FindField('CLFSICOD').asInteger;
        DMImpNotaFiscal.SQLClasFisc.Open;
        DMImpNotaFiscal.SQLClasFisc.First;
        if not DMImpNotaFiscal.SQLClasFisc.Eof then
        begin
          DataSet.FieldByName('ClasFiscLookup').AsVariant := DMImpNotaFiscal.SQLClasFiscCLFSA30DESCR.asString;
          DataSet.FieldByName('ClasFiscICod').AsInteger := DMImpNotaFiscal.SQLClasFiscCLFSICOD.AsInteger;
        end;
        DMImpNotaFiscal.SQLClasFisc.Close;
        DMImpNotaFiscal.SQLICMS.Close;

        if DM.SQLTemplate.FindField('ICMSICOD').asVariant = Null then
          DMImpNotaFiscal.SQLICMS.ParamByName('ICMSICOD').asInteger := 1
        else
          DMImpNotaFiscal.SQLICMS.ParamByName('ICMSICOD').AsString := DM.SQLTemplate.FindField('ICMSICOD').AsString;
        DMImpNotaFiscal.SQLICMS.Open;
        DMImpNotaFiscal.SQLICMS.First;
        if not DMImpNotaFiscal.SQLDecreto.Active then
          DMImpNotaFiscal.SQLDecreto.Open;
        if not DMImpNotaFiscal.SQLICMS.Eof then
        begin
          if Dm.SQLTemplate.FindField('PRODISITTRIB').AsVariant <> null then
            DataSet.FieldByName('SitTribLookup').AsString := Dm.SQLTemplate.FindField('PRODISITTRIB').AsString
          else
            DataSet.FieldByName('SitTribLookup').AsVariant := DMImpNotaFiscal.SQLICMSICMSICODSITTRIB.AsVariant;

          if DMImpNotaFiscal.SQLICMSICMSN2ALIQUOTA.asVariant <> Null then
            DataSet.FieldByName('AliquotaICMS').asString := DMImpNotaFiscal.SQLICMSICMSN2ALIQUOTA.asString;

          if DMImpNotaFiscal.SQLICMSDECRICOD.asVariant <> Null then
            DataSet.FieldByName('DecretoLookup').asString := DMImpNotaFiscal.SQLICMSDECRICOD.asString + '-' + DMImpNotaFiscal.SQLICMSDecretoLookup.asString;
        end;
        SQLICMS.Close;

        if DM.SQLConfigVenda.FieldByName('CFVECIMPDESCRPRINF').AsString <> 'S' then
          DataSet.FieldByName('ProdutoLookup').AsVariant := DM.SQLTemplate.FindField('PRODA30ADESCRREDUZ').asString
        else
          DataSet.FieldByName('ProdutoLookup').AsVariant := DM.SQLTemplate.FindField('PRODA60DESCR').asString;

        DataSet.FieldByName('GradeCodLookup').AsVariant := DM.SQLTemplate.FindField('GRADICOD').AsVariant;
        DataSet.FieldByName('AgrupGradeLookup').AsVariant := DM.SQLTemplate.FindField('PRODIAGRUPGRADE').AsVariant;
        DataSet.FieldByName('ReferenciaLookup').AsVariant := DM.SQLTemplate.FindField('PRODA60REFER').AsVariant;
        DataSet.FieldByName('ServicoLookup').AsVariant := DM.SQLTemplate.FindField('PRODCSERVICO').AsVariant;
      end
      else
      begin
        DataSet.FieldByName('ProdutoLookup').asString := MensagemLookUp;
        DataSet.FieldByName('GradeCodLookup').AsVariant := NULL;
        DataSet.FieldByName('AgrupGradeLookup').AsVariant := NULL;
        DataSet.FieldByName('ReferenciaLookup').AsVariant := MensagemLookUp;
        DataSet.FieldByName('ServicoLookup').AsVariant := NULL;
      end;
    end
    else
    begin
      DataSet.FieldByName('ProdutoLookup').AsVariant := Null;
      DataSet.FieldByName('GradeCodLookup').AsVariant := NULL;
      DataSet.FieldByName('AgrupGradeLookup').AsVariant := NULL;
      DataSet.FieldByName('ReferenciaLookup').AsVariant := NULL;
      DataSet.FieldByName('ServicoLookup').AsVariant := NULL;
    end;
  end;
end;

procedure TFormCadastroNotaFiscal.SQLNotaFiscalItemNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLNotaFiscalItemNFITN3QUANT.asFloat := 0;
  SQLNotaFiscalItemNFITN2BASEICMS.asFloat := 0;
  SQLNotaFiscalItemNFITN2BASESUBS.asFloat := 0;
  SQLNotaFiscalItemNFITN2PERCDESC.asFloat := 0;
  SQLNotaFiscalItemNFITN2PERCICMS.asFloat := 0;
  SQLNotaFiscalItemNFITN2PERCIPI.asFloat := 0;
  SQLNotaFiscalItemNFITN2PERCISSQN.asFloat := 0;
  SQLNotaFiscalItemNFITN2PERCSUBS.asFloat := 0;
  SQLNotaFiscalItemNFITN2VLRDESC.asFloat := 0;
  SQLNotaFiscalItemNFITN2VLRFRETE.asFloat := 0;
  SQLNotaFiscalItemNFITN2VLRICMS.asFloat := 0;
  SQLNotaFiscalItemNFITN2VLRIPI.asFloat := 0;
  SQLNotaFiscalItemNFITN2VLRISSQN.asFloat := 0;
  SQLNotaFiscalItemNFITN2VLRLUCRO.asFloat := 0;
  SQLNotaFiscalItemNFITN2VLRSUBS.asFloat := 0;
  SQLNotaFiscalItemNFITN2VLRUNIT.asFloat := 0;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateBeforeInsert(DataSet: TDataSet);
begin
  if DM.GerarNovaNota then
  begin
    VarPDVDA13ID := SQLTemplate.FieldByName('PDVDA13ID').AsString;
    VarSerie := SQLTemplate.FieldByName('SERIA5COD').AsString;
    VarOperacaoEstoque := SQLTemplate.FieldByName('OPESICOD').AsString;
    VarOperacaoEntradaSaida := SQLTemplate.FieldByName('NOFA1ENTRADASAIDA').AsString;
    VarTRANICOD := SQLTemplate.FieldByName('TRANICOD').AsString;
    VarNOFIA30NROPEDCOMP := SQLTemplate.FieldByName('NOFIA30NROPEDCOMP').AsString;
    VarNOFIA30COMPRADOR := SQLTemplate.FieldByName('NOFIA30COMPRADOR').AsString;
    VarNOFIINROTALAO := SQLTemplate.FieldByName('NOFIINROTALAO').AsString;
    VarPLRCICOD := SQLTemplate.FieldByName('PLRCICOD').AsString;
    VarCLIEA13ID := SQLTemplate.FieldByName('CLIEA13ID').AsString;
    VarVENDICOD := SQLTemplate.FieldByName('VENDICOD').AsString;
    VarNOFIN2VLRFRETE := SQLTemplate.FieldByName('NOFIN2VLRFRETE').AsString;
    VarNOFIN2VLRDESCPROM := SQLTemplate.FieldByName('NOFIN2VLRDESCPROM').AsString;
    VarNOFIA255OBS := SQLTemplate.FieldByName('NOFIA255OBS').AsString;
  end;
  inherited;
  InserindoNota := True;
end;

function TFormCadastroNotaFiscal.TemMovimentoEstoqueNF(IDNotaFiscal: string): Boolean;
var
  SQLMovimento: TRxQuery;
begin
  SQLMovimento := TRxQuery.Create(DM);
  SQLMovimento.DatabaseName := 'DB';
  SQLMovimento.Close;
  SQLMovimento.SQL.Add('SELECT * FROM MOVIMENTOESTOQUE WHERE NOFIA13ID = ''' + IDNotaFiscal + '''');
  SQLMovimento.Open;
  if not SQLMovimento.IsEmpty then
  begin
    if SQLMovimento.FieldByName('MVESN3QTDENTRADA').AsInteger > 0 then
      EntradaSaida := 'S'
    else if SQLMovimento.FieldByName('MVESN3QTDSAIDA').AsInteger > 0 then
      EntradaSaida := 'E'
    else
      EntradaSaida := 'N';
    Result := True;
  end
  else
    result := False;
  SQLMovimento.Close;
  SQLMovimento.Free;
end;

function TFormCadastroNotaFiscal.InformarDadosCheque: boolean;
begin
  if DM.SQLConfigVenda.FieldByName('CFVECDADOSCHQPDV').Value = 'S' then
  begin
    IncrementaNroCheque := false;
    if not DM.TblCheques.Active then
      DM.TblCheques.Open;
      //VERIFICAR SEM TEM CHEQUE
    SQLParcelasPrazoVendaTemp.DisableControls;
    SQLParcelasPrazoVendaTemp.First;
    while not SQLParcelasPrazoVendaTemp.EOF do
    begin
      if Copy(SQLParcelasPrazoVendaTempTipoPadrao.Value, 1, 3) = 'CHQ' then
      begin
        DM.TblCheques.Append;
        DM.TblChequesDtDep.Value := SQLParcelasPrazoVendaTempDATAVENCTO.Value;
        DM.TblChequesValor.Value := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
        DM.TblCheques.Post;
      end;

      SQLParcelasPrazoVendaTemp.Next;
    end;
    SQLParcelasPrazoVendaTemp.First;
    SQLParcelasPrazoVendaTemp.EnableControls;
      //VERIFICAR SEM TEM DE INFORMAR DADOS DO CHEQUE
    DM.TblCheques.First;
    if not DM.TblCheques.EOF then
    begin
      IncrementaNroCheque := true;
      ClienteVenda := SQLTemplateCLIEA13ID.AsString;
      Application.CreateForm(TFormTelaDadosCheque, FormTelaDadosCheque);
      FormTelaDadosCheque.ShowModal;
      IncrementaNroCheque := false;
    end;
  end;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateNOFIN2VLRNOTAChange(Sender: TField);
begin
  inherited;
//  if (not DM.InserindoItemNV) and (not DM.ImportandoPedidoVenda) and (not GerandoNota) then
//    begin
//      if (SQLTemplate.State in [DSEdit]) and (SQLTemplate.FieldByName('PLRCICOD').AsVariant <> Null) then
//        begin
//          if Pergunta('SIM','O Valor da nota foi modificado. Deseja recalcular o financeiro?') then
//            RecalcularFinanceiro.Click;
//        end;
//    end;
end;

procedure TFormCadastroNotaFiscal.SQLContasReceberPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
var
  ID: string;
begin
  inherited;
  case DataSet.State of
    DsInsert:
      begin
        DataSet.FieldByName('CTRCICOD').AsInteger := DataSet.FieldByName('CTRCICOD').AsInteger + 1;
        ID := Format('%.3d', [EmpresaCorrente]) + Format('%.3d', [TerminalCorrente]) + Format('%.6d', [DataSet.FieldByName('CTRCICOD').asInteger]);
        DataSet.FieldByName('CTRCA13ID').asString := ID + DM.DigitVerifEAN(ID);
      end;

  end;
  Action := DaRetry;

end;

procedure TFormCadastroNotaFiscal.ComboHistoricoPadraoExit(Sender: TObject);
begin
  inherited;
  if ComboHistoricoPadrao.Value <> '' then
  begin
    try
      MemoHistorico.Lines.Clear;
      MemoHistorico.Lines.Add(ComboHistoricoPadrao.DisplayValue);
      MemoHistorico.SelectAll;
      MemoHistorico.SelStart := Length(MemoHistorico.Text);
    except
    end;
  end;
end;

procedure TFormCadastroNotaFiscal.ComboHistoricoPadraoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_ESCAPE then
    MemoHistorico.Lines.Clear;

  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '') or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormCadastroNotaFiscal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if TObject((Sender as TForm).ActiveControl).ClassType <> TMemo then
    if key = char(13) then
      inherited;
end;

procedure TFormCadastroNotaFiscal.ComboVendedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F2) and (BtnVendedor.Enabled) then
    BtnVendedor.Click;

  if Key = VK_Return then
    if ((sender as trxdblookupcombo).Value = '') or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormCadastroNotaFiscal.BtnAvalistaClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('AVALA13ID');
  FieldOrigem := 'AVALA13ID';
  DataSetLookup := SQLAvalista;
  CriaFormulario(TFormCadastroAvalista, 'FormCadastroAvalista', False, True, True, ' NF NRO.: ' + DBEdit3.Text);
end;

procedure TFormCadastroNotaFiscal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if DataSetLookup <> nil then
    DataSetLookup := nil;

  Action := CaFree;
end;

procedure TFormCadastroNotaFiscal.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Button4.Click;
  SQLTemplate.Edit;
  PlanoAnterior := '';
  SQLTemplatePLRCICODChange(SQLTemplatePLRCICOD);
  PlanoAnterior := '';
end;

procedure TFormCadastroNotaFiscal.ComboMotoristaExit(Sender: TObject);
begin
  inherited;
  if ComboMotorista.KeyValue <> null then
    SQLTemplateNOFIA8PLACAVEIC.AsString := SQLVeiculoVEICA7PLACA.AsString;
end;

procedure TFormCadastroNotaFiscal.ComboObsNotaExit(Sender: TObject);
begin
  inherited;
  if ComboObsNota.DisplayValue <> '' then
  begin
    if SQLObsNota.Locate('NOFIA50DESC', ComboObsNota.DisplayValue, []) then
      SQLTemplateNOFIA255OBS.Value := SQLTemplateNOFIA255OBS.value + SQLObsNotaOBSNA255DESC.value;
  end;
end;

procedure TFormCadastroNotaFiscal.DBMemo2Exit(Sender: TObject);
begin
  inherited;
  if DSTemplate.State = dsinsert then
  begin
    SQLTemplate.Post;
    Button5.Click;
  end;
end;

procedure TFormCadastroNotaFiscal.BTNLocalizarClick(Sender: TObject);
var
  Clausula: string;
  CampoOrdem: TField;
begin
  inherited;
  Clausula := '';
  if ComboCliente.Value <> '' then
    Clausula := 'CLIEA13ID = ''' + ComboCliente.Value + ''' ';
  if ComboConsultaFornec.Value <> '' then
  begin
    if ComboCliente.Value <> '' then
      Clausula := Clausula + ' or FORNICOD = ' + ComboConsultaFornec.keyValue
    else
      Clausula := 'FORNICOD = ' + ComboConsultaFornec.keyValue;
  end;

  if ComboSerieNF.Value <> '' then
    if Clausula = '' then
      Clausula := ' SERIA5COD = ''' + ComboSerieNF.Value + ''''
    else
      Clausula := Clausula + ' and SERIA5COD = ''' + ComboSerieNF.Value + '''';
  if EditNroNFInicial.Text <> '' then
    if Clausula = '' then
      Clausula := ' NOFIINUMERO >= ' + EditNroNFInicial.Text
    else
      Clausula := Clausula + ' and NOFIINUMERO >= ' + EditNroNFInicial.Text;
  if EditNroNFInicial.Text <> '' then
    if Clausula = '' then
      Clausula := ' NOFIINUMERO <= ' + EditNroNFFinal.Text
    else
      Clausula := Clausula + ' and NOFIINUMERO <= ' + EditNroNFFinal.Text;

  EditProcura.Text := '';
  EditEntre.Text := '';
  EditE.Text := '';
  CampoOrdem := SQLTemplate.FindField(DM.LocateByDisplayLabel(SQLTemplate, ComboOrder.Text));
  if Clausula <> '' then
  begin
    SQLTemplate.Close;
    if Pos('ORDER BY', TRxQuery(SQLTemplate).SQL.Text) <> 0 then
    begin
      TRxQuery(SQLTemplate).SQL.Text := Trim(Copy(TRxQuery(SQLTemplate).SQL.Text, 1, Pos('ORDER BY', TRxQuery(SQLTemplate).SQL.Text) - 1));
    end;
    SQLTemplate.MacroByName('MFiltro').AsString := Clausula;
    SQLTemplate.SQL.Add(' ORDER BY ' + CampoOrdem.FieldName);
    SQLTemplate.Open;
  end
  else
    Informa('Pesquisa incompleta, verifique!');
end;

procedure TFormCadastroNotaFiscal.BTNRecalcularFinanceiroClick(Sender: TObject);
var
  Entrada, Desconto, Valor: Double;
  DiminuiAcresc, ValorJuro, Acrescimo, EntradaCalc, TaxaCred: Double;
  Erro: Boolean;
  ValorBase: Double;
  I: Integer;
begin
  inherited;

  PermiteExcluirSemPerguntar := True;

  if ComboNumerarioVista.Value = '' then
  begin
    ShowMessage('Nenhum numerário a vista foi escolhido! Verifique!');
    Abort;
  end;

  if ComboNumerarioPrazo.Value = '' then
  begin
    ShowMessage('Nenhum numerário a prazo foi escolhido! Verifique!');
    Abort;
  end;

  if (ComboPlanoRecto.Value <> '') and (SQLTemplateNOFIN2VLRNOTA.AsFloat > 0) and (SQLTemplateNOFICSTATUS.Value = 'A') and (SQLTemplate.State in dsEditModes) then
  begin
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP');
    DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual));
    DM.SQLTemplate.ExecSQL;

    SQLParcelasPrazoVendaTemp.Close;
    SQLParcelasPrazoVendaTemp.SQL.Clear;
    SQLParcelasPrazoVendaTemp.SQL.Add('select * from PARCELASPRAZOVENDATEMP');
    SQLParcelasPrazoVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual));
    SQLParcelasPrazoVendaTemp.SQL.Add('order by NROPARCELA');
    SQLParcelasPrazoVendaTemp.Open;

    SQLPlano.Close;
    SQLPlano.ParamByName('PLRCICOD').AsInteger := ComboPlanoRecto.KeyValue;
    SQLPlano.Open;
    SQLPlano.First;
    if not SQLPlano.Eof then
    begin
      SQLPlanoParcela.Close;
      SQLPlanoParcela.ParamByName('PLRCICOD').AsInteger := ComboPlanoRecto.KeyValue;
      SQLPlanoParcela.Open;
      SQLPlanoParcela.First;
      ValorJuro := SQLPlanoPLRCN2TXJURO.AsFloat;
      CriaParcelas(SQLParcelasPrazoVendaTemp, SQLPlano, SQLPlanoParcela, Entrada, Desconto, SQLTemplate.FindField('NOFIN2VLRNOTA').asFloat, ComboPlanoRecto.KeyValue, SQLTemplate.FindField('NOFIDEMIS').asDateTime, ComboNumerarioVista.Value, ComboNumerarioPrazo.Value, ComboNumerarioVista.Value, ComboNumerarioPrazo.Value, SQLTemplate.FindField('NOFIA13ID').asString, DiminuiAcresc, ValorJuro, Acrescimo, EntradaCalc, TaxaCred);
      SQLPlanoParcela.Close;
    end;
    SQLPlano.Close;
  end;

  // Lancar Contas a Receber
  if (ComboPlanoRecto.Value <> '') and (SQLTemplateNOFIN2VLRNOTA.AsFloat > 0) and (SQLTemplateNOFICSTATUS.Value = 'A') and (SQLTemplate.State in dsEditModes) then
  begin
    SQLContasReceber.Close;
    SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLTemplateNOFIA13ID.AsString;
    SQLContasReceber.Open;
    SQLContasReceber.First;
    while not SQLContasReceber.Eof do
      SQLContasReceber.Delete;

    SQLContasReceber.Close;
    SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLTemplateNOFIA13ID.AsString;
    SQLContasReceber.Open;

    if not SQLParcelasPrazoVendaTemp.Active then
      SQLParcelasPrazoVendaTemp.Open;
    SQLParcelasPrazoVendaTemp.First;
    while not SQLParcelasPrazoVendaTemp.Eof do
    begin
      SQLContasReceber.Append;
      SQLContasReceberCTRCCSTATUS.Value := 'A';
      SQLContasReceberNOFIA13ID.AsString := SQLTemplate.FindField('NOFIA13ID').AsString;
      SQLContasReceberCTRCINROPARC.Value := SQLParcelasPrazoVendaTempNROPARCELA.Value;
      SQLContasReceberCTRCDEMIS.Value := SQLTemplate.FindField('NOFIDEMIS').Value;
      SQLContasReceberCLIEA13ID.AsString := SQLTemplate.FindField('CLIEA13ID').AsString;
      SQLContasReceberCTRCDVENC.Value := SQLParcelasPrazoVendaTempDATAVENCTO.Value;
      SQLContasReceberCTRCN2VLR.Value := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
      SQLContasReceberCTRCA5TIPOPADRAO.Value := SQLParcelasPrazoVendaTempTipoPadrao.Value;
      if SQLContasReceberCTRCA5TIPOPADRAO.Value = '' then
        SQLContasReceberCTRCA5TIPOPADRAO.Value := 'CRD';
      SQLContasReceberTPDCICOD.AsVariant := ComboTipoDoc.KeyValue;
      SQLContasReceberPORTICOD.asVariant := ComboPortador.KeyValue;
      SQLContasReceberCTRCA30NRODUPLICBANCO.AsString := FormatFloat('######000000', SQLTemplateNOFIINUMERO.Value) + '-' + SQLParcelasPrazoVendaTempNROPARCELA.AsString;
      SQLContasReceberCTRCCEMITIDOBOLETO.Value := 'N';
      SQLContasReceberNUMEICOD.Value := SQLParcelasPrazoVendaTempNUMEICOD.Value;

          // PLANO DE CONTAS Busca do Numerario
      if SQLParcelasPrazoVendaTempNUMEICOD.AsVariant <> Null then
      begin
        SQLContasReceberPLCTA15COD.AsString := SQLLocate('NUMERARIO', 'NUMEICOD', 'PLCTA15CODCRED', SQLParcelasPrazoVendaTempNUMEICOD.AsString);
        SQLContasReceberPLCTA15CODDEBITO.AsString := SQLLocate('NUMERARIO', 'NUMEICOD', 'PLCTA15CODDEB', SQLParcelasPrazoVendaTempNUMEICOD.AsString);
      end;

      if (SQLContasReceberPLCTA15COD.AsString = '') and (ComboPlanoContas.Value <> '') then
        SQLContasReceberPLCTA15COD.AsVariant := ComboPlanoContas.KeyValue;

      if ComboHistoricoPadrao.Value <> '' then
        SQLContasReceberHTPDICOD.AsString := ComboHistoricoPadrao.Value;

      if MemoHistorico.Lines.Count > 0 then
        SQLContasReceberCTRCA254HIST.AsString := UpperCase(MemoHistorico.Lines.Text);

      SQLContasReceberTERMICOD.AsInteger := TerminalCorrente;
      SQLContasReceberPENDENTE.Value := 'S';
      SQLContasReceberREGISTRO.Value := Now;

      SQLContasReceber.Post;
      SQLParcelasPrazoVendaTemp.Next;
    end;
    SQLParcelasPrazoVendaTemp.Close;
  end;
  PermiteExcluirSemPerguntar := False;

  SQLContasReceber.Close;
  SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLTemplateNOFIA13ID.AsString;
  SQLContasReceber.Open;

  if (SQLTemplate.State in dsEditModes) then
  begin
    SQLTemplatePLRCICOD.Value := SQLPlanoRecebimentoPLRCICOD.Value;
    SQLTemplate.Post;
  end;

  ComboPlanoRecto.Value := '';
end;

procedure TFormCadastroNotaFiscal.BtnExcluirParcAtuaisClick(Sender: TObject);
begin
  inherited;
  if not PermiteExcluirSemPerguntar then
    if Pergunta('Não', 'Tem certeza que deseja excluir estas parcelas?') then
    begin
      SQLContasReceber.first;
      while not SQLContasReceber.eof do
        SQLContasReceber.Delete;

      SQLTemplate.Edit;
      SQLTemplatePLRCICOD.AsString := '';
      SQLTemplate.Post;

      SQLContasReceber.Close;
      SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLTemplateNOFIA13ID.AsString;
      SQLContasReceber.Open;
    end;

  ComboPlanoRecto.Value := '';
end;


   {  EVENTO AFTERPOST - REMOVIDO POR ADILSON QUANDO ARRUMEI A TELA DE PLANO VARIAVEL EM CASCA
            If (SQLTemplatePLRCICOD.AsString <> '') and (StatusNovo <> 'C') and (not SQLContasReceber.IsEmpty) and (SQLTemplateNOFIN2VLRPRODUTO.Value > 0) Then
    Begin
      SQLContasReceber.First;
      SQLRecebimento.Close;
      SQLRecebimento.Open;
      SQLRecebimento.First;
      while not SQLRecebimento.Eof do
        begin
          SQLRecebimento.Delete;
        end;
      While Not SQLContasReceber.Eof Do
        Begin
          SQLContasReceber.Delete;
        End;

      // Dados do Cheque
      InformarDadosCheque;

            //DADOS CHEQUE
            SQLContasReceberBANCA5CODCHQ.Value      := DM.TblChequesBANCA5COD.AsString ;
            SQLContasReceberCTRCA10AGENCIACHQ.Value := DM.TblChequesAGENCIA.AsString ;
            SQLContasReceberCTRCA15CONTACHQ.Value   := DM.TblChequesCONTA.AsString ;
            SQLContasReceberCTRCA15NROCHQ.Value     := DM.TblChequesNroCheque.AsString ;
            SQLContasReceberCTRCA60TITULARCHQ.Value := DM.TblChequesTITULAR.AsString ;
            SQLContasReceberCTRCA20CGCCPFCHQ.Value  := DM.TblChequesCGCCPF.AsString ;
            SQLContasReceberALINICOD.Value          := DM.TblChequesALINICOD.Value ;
            SQLContasReceberPORTICOD.Value          := DM.TblChequesPORTICOD.Value ;

          End;
      SQLParcelasPrazoVendaTemp.First;
      if SQLParcelasPrazoVendaTempNROPARCELA.AsInteger = 0 then
        SQLParcelasPrazoVendaTemp.Next;
      While Not SQLParcelasPrazoVendaTemp.Eof Do
        Begin
          SQLContasReceber.Append;
          SQLContasReceberCTRCCSTATUS.Value      := 'A';
          SQLContasReceberCTRCDEMIS.Value        := SQLTemplate.FindField('NOFIDEMIS').Value;
          SQLContasReceberCTRCDVENC.Value        := SQLParcelasPrazoVendaTempDATAVENCTO.Value;
          SQLContasReceberCTRCINROPARC.Value     := SQLParcelasPrazoVendaTempNROPARCELA.Value;
          SQLContasReceberCTRCN2VLR.Value        := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
          SQLContasReceberCTRCA5TIPOPADRAO.Value := SQLParcelasPrazoVendaTempTipoPadrao.Value;
          SQLContasReceberCLIEA13ID.AsString     := SQLTemplate.FindField('CLIEA13ID').AsString;
          SQLContasReceberNOFIA13ID.AsString     := SQLTemplate.FindField('NOFIA13ID').AsString;
          SQLContasReceberCTRCA30NRODUPLICBANCO.AsString := SQLTemplate.FindField('NOFIINUMERO').AsString;
          // PLANO DE CONTAS
          if SQLParcelasPrazoVendaTempNUMEICOD.AsVariant <> Null then
            if DM.ProcuraRegistro('NUMERARIO',['NUMEICOD'],[SQLParcelasPrazoVendaTempNUMEICOD.AsString],1) then
              begin
                if DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString <> '' then
                  SQLContasReceberPLCTA15COD.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODCRED').AsString;
                if DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString <> '' then
                  SQLContasReceberPLCTA15CODDEBITO.AsString  := DM.SQLTemplate.FieldByName('PLCTA15CODDEB').AsString;
              end;
          SQLContasReceberNUMEICOD.Value         := SQLParcelasPrazoVendaTempNUMEICOD.Value;

          // Histórico
          if CheckHistorico.Checked then
            begin
              if ComboHistoricoPadrao.Value <> '' then
                SQLContasReceberHTPDICOD.AsString := ComboHistoricoPadrao.Value;

              if MemoHistorico.Lines.Count > 0 then
                SQLContasReceberCTRCA254HIST.AsString := UpperCase(MemoHistorico.Lines.Text);
            end;
          SQLContasReceberTERMICOD.Value         := TerminalCorrente;
          SQLContasReceberTPDCICOD.asVariant     := DM.SQLConfigVendaTPDCICOD.asVariant;
          SQLContasReceberPORTICOD.asVariant     := DM.SQLConfigVendaPORTICOD.asVariant;

          // Avalista
          if SQLTemplateAVALA13ID.AsString <> '' then
            SQLContasReceberAVALA13ID.AsString   := SQLTemplateAVALA13ID.AsString;

          SQLContasReceber.Post;
          if (Copy(SQLParcelasPrazoVendaTempTipoPadrao.AsString,1,3) = 'CHQ') and
             (DM.SQLConfigVendaCFVECDADOSCHQPDV.Value = 'S') then
            begin
              if not DM.TblCheques.Active then
                DM.TblCheques.Open ;

              if DM.TblCheques.RecordCount > 0 then
                begin
                  DM.TblCheques.First ;
                  //ESTE FOR SERVE PARA POSICIONAR A TABLE TEMP NA MESMA PARCELA QUE ESTÁ
                  //SENDO GRAVADA NO CONTAS A RECEBER
                  if SQLParcelasPrazoVendaTempNROPARCELA.Value > 1 then
                    for i := 1 to SQLParcelasPrazoVendaTempNROPARCELA.Value do
                      DM.TblCheques.Next ;

                  //QUITAR CHEQUE AUTOMATICAMENTE
                  if (Copy(SQLParcelasPrazoVendaTempTipoPadrao.AsString,1,3) = 'CHQ') and
                     (DM.SQLConfigVendaCFVECQUITARPARCHQ.Value = 'S') then
                        begin
                          SQLContasReceberCTRCN2TOTREC.Value      := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                          SQLContasReceberCTRCDULTREC.AsString    := FormatDateTime('dd/mm/yyyy',Now);
                          if not SQLRecebimento.Active then SQLRecebimento.Open;
                          SQLRecebimento.Append;
                          SQLRecebimento.FieldByName('CTRCA13ID').AsString     := SQLContasReceberCTRCA13ID.AsString;
                          SQLRecebimento.FieldByName('CLIEA13ID').AsString     := ClienteVenda;
                          SQLRecebimento.FieldByName('RECEDRECTO').AsString    := FormatDateTime('dd/mm/yyyy',Now);
                          SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
                          SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat  := 0;
                          SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat := 0;
                          SQLRecebimento.FieldByName('RECEN2DESC').AsFloat     := 0;
                          SQLRecebimento.FieldByName('EMPRICODREC').asInteger  := EmpresaCorrente ;
                          SQLRecebimento.FieldByName('RECEICOD').asInteger     := DM.ProximoCodigoUnico('RECEBIMENTO',SQLRecebimento,Nil,1);
                          SQLRecebimento.Post ;
                        end;
                  SQLContasReceber.Edit;
                  //DADOS CHEQUE
                  SQLContasReceberBANCA5CODCHQ.Value      := DM.TblChequesBANCA5COD.AsString;
                  SQLContasReceberCTRCA10AGENCIACHQ.Value := DM.TblChequesAGENCIA.AsString;
                  SQLContasReceberCTRCA15CONTACHQ.Value   := DM.TblChequesCONTA.AsString;
                  SQLContasReceberCTRCA15NROCHQ.Value     := DM.TblChequesNroCheque.AsString;
                  SQLContasReceberCTRCA60TITULARCHQ.Value := DM.TblChequesTITULAR.AsString;
                  SQLContasReceberCTRCA20CGCCPFCHQ.Value  := '';
                  SQLContasReceberALINICOD.Value          := DM.TblChequesALINICOD.Value;
                  SQLContasReceberPORTICOD.Value          := DM.TblChequesPORTICOD.Value;
                  SQLContasReceber.Post;
                end;
            end;
          SQLParcelasPrazoVendaTemp.Next;
        end;
      ComboNumerarioPrazo.Value := '';
      SQLContasReceber.Close;
    end;
  SQLParcelasPrazoVendaTemp.Close;
  Dm.TblCheques.Close;}

procedure TFormCadastroNotaFiscal.ComboPlanoRectoExit(Sender: TObject);
var
  I, ContadorDocumento: Integer;
  DocumentoSTR: string;
begin
  inherited;
{  if ComboNumerarioVista.Value = '' then
    begin
      ShowMessage('Nenhum numerário a vista foi escolhido! Verifique!');
      Abort;
    end;
  if ComboNumerarioPrazo.Value = '' then
    begin
      ShowMessage('Nenhum numerário a prazo foi escolhido! Verifique!');
      Abort;
    end;}
  if (SQLPlanoRecebimentoPLRCCDFIX.Value = 'V') and (SQLTemplateNOFIN2VLRNOTA.Value > 0) and (SQLTemplate.State in dsEditModes) then
  begin
    Application.CreateForm(TFormTelaAssistenteLancamentoContasReceber, FormTelaAssistenteLancamentoContasReceber);
    FormTelaAssistenteLancamentoContasReceber.edtEmissao.Date := SQLTemplateNOFIDEMIS.Value;
    FormTelaAssistenteLancamentoContasReceber.edtTotal.Value := SQLTemplateNOFIN2VLRNOTA.Value;
    FormTelaAssistenteLancamentoContasReceber.edtEmissao.readonly := True;
    FormTelaAssistenteLancamentoContasReceber.edtEmissao.TabStop := False;
    FormTelaAssistenteLancamentoContasReceber.edtTotal.readonly := True;
    FormTelaAssistenteLancamentoContasReceber.edtTotal.TabStop := False;
    FormTelaAssistenteLancamentoContasReceber.ComboCliente.Value := SQLTemplateCLIEA13ID.Value;
    FormTelaAssistenteLancamentoContasReceber.ComboCliente.readonly := True;
    FormTelaAssistenteLancamentoContasReceber.ComboCliente.TabStop := False;
    FormTelaAssistenteLancamentoContasReceber.ComboTipoDoc.Value := ComboTipoDoc.Value;
    FormTelaAssistenteLancamentoContasReceber.ComboPortador.Value := ComboPortador.Value;
    FormTelaAssistenteLancamentoContasReceber.ComboHistorico.Value := ComboHistoricoPadrao.Value;
    FormTelaAssistenteLancamentoContasReceber.edtDescricao.Text := MemoHistorico.Lines.Text;
    FormTelaAssistenteLancamentoContasReceber.edtDocum.Text := SQLTemplateNOFIINUMERO.AsString;
    FormTelaAssistenteLancamentoContasReceber.ShowModal;
    if FormTelaAssistenteLancamentoContasReceber.ModalResult = MrOk then
    begin
      if not FormTelaAssistenteLancamentoContasReceber.RxTable.IsEmpty then
      begin
        SQLContasReceber.first;
        while not SQLContasReceber.eof do
          SQLContasReceber.Delete;
        SQLTemplate.DisableControls;
        SQLContasReceber.DisableControls;
        FormTelaAssistenteLancamentoContasReceber.RxTable.First;
        try
          ContadorDocumento := StrToInt(FormTelaAssistenteLancamentoContasReceber.edtDocum.text);
        except
          Application.ProcessMessages;
          ContadorDocumento := 0;
        end;
        if ContadorDocumento > 0 then
          DocumentoSTR := IntToStr(ContadorDocumento);

        I := 0;
        while not FormTelaAssistenteLancamentoContasReceber.RxTable.Eof do
        begin
          SQLContasReceber.Close;
          SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLTemplateNOFIA13ID.AsString;
          SQLContasReceber.Open;
          SQLContasReceber.Append;
          SQLContasReceberEMPRICOD.Value := SQLTemplateEMPRICOD.Value;
          if ContadorDocumento > 0 then
            SQLContasReceberCTRCA30NRODUPLICBANCO.AsString := DocumentoSTR;
          SQLContasReceberCTRCA254HIST.AsString := FormTelaAssistenteLancamentoContasReceber.RxTableDESCR.AsString;
          SQLContasReceberNOFIA13ID.Value := SQLTemplateNOFIA13ID.Value;
          SQLContasReceberCTRCDEMIS.AsString := FormatDateTime('dd/mm/yyyy', FormTelaAssistenteLancamentoContasReceber.RxTableEMI.AsDateTime);
          SQLContasReceberCTRCDVENC.AsString := FormatDateTime('dd/mm/yyyy', FormTelaAssistenteLancamentoContasReceber.RxTableVENCI.AsDateTime);
          SQLContasReceberCTRCN2VLR.AsFloat := FormTelaAssistenteLancamentoContasReceber.RxTableVALOR.AsFloat;
          SQLContasReceberCLIEA13ID.AsVariant := FormTelaAssistenteLancamentoContasReceber.ComboCliente.Value;
          SQLContasReceberPLCTA15COD.AsString := FormTelaAssistenteLancamentoContasReceber.ComboContaCredito.Value;
          SQLContasReceberPLCTA15CODDEBITO.AsString := FormTelaAssistenteLancamentoContasReceber.ComboContaDebito.Value;
          SQLContasReceberPORTICOD.AsVariant := FormTelaAssistenteLancamentoContasReceber.ComboPortador.KeyValue;
          SQLContasReceberTPDCICOD.AsVariant := FormTelaAssistenteLancamentoContasReceber.ComboTipoDoc.KeyValue;
          SQLContasReceberHTPDICOD.AsVariant := FormTelaAssistenteLancamentoContasReceber.ComboHistorico.KeyValue;
          SQLContasReceberCTRCCSTATUS.AsString := 'A';
          SQLContasReceberCTRCA5TIPOPADRAO.AsString := 'CRD';
          if SQLContasReceberCTRCDEMIS.AsDateTime = SQLContasReceberCTRCDVENC.AsDateTime then
          begin
            try
              SQLContasReceberNUMEICOD.AsVariant := ComboNumerarioVista.KeyValue;
            except
              application.ProcessMessages
            end;
            SQLContasReceberCTRCINROPARC.AsInteger := I;
            i := i - 1;
          end
          else
          begin
            try
              SQLContasReceberNUMEICOD.AsVariant := ComboNumerarioPrazo.KeyValue;
            except
              application.ProcessMessages
            end;
            SQLContasReceberCTRCINROPARC.AsInteger := I + 1;
          end;
          SQLContasReceber.Post;
          FormTelaAssistenteLancamentoContasReceber.RxTable.Next;
          if ContadorDocumento > 0 then
          begin
            inc(ContadorDocumento);
            DocumentoSTR := IntToStr(ContadorDocumento);
          end;
          inc(I);
        end;
        SQLContasReceber.Close;
        SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLTemplateNOFIA13ID.AsString;
        SQLContasReceber.Open;
        SQLTemplate.EnableControls;
        SQLContasReceber.EnableControls;
        SQLTemplatePLRCICOD.Value := SQLPlanoRecebimentoPLRCICOD.Value;
        SQLTemplate.Post;
        FormTelaAssistenteLancamentoContasReceber.RxTable.Close;
        FormTelaAssistenteLancamentoContasReceber.RxTable.Free;
        FormTelaAssistenteLancamentoContasReceber.Close;
        FormTelaAssistenteLancamentoContasReceber.Free;
        ComboPlanoRecto.Value := '';
      end;
    end;
  end;
end;

procedure TFormCadastroNotaFiscal.Button4Click(Sender: TObject);
begin
  inherited;
  SQLconta.Close;
  SQLconta.Open;
  SQLContasReceber.Close;
  SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLTemplateNOFIA13ID.AsString;
  SQLContasReceber.Open;

  PagePrincipal.ActivePage := PaginaFinanceiro;

  ComboTipoDoc.KeyValue := dm.SQLConfigVenda.FieldByName('TPDCICOD').AsInteger;
  ComboPortador.KeyValue := dm.SQLConfigVenda.FieldByName('PORTICOD').AsInteger;
  ComboNumerarioVista.KeyValue := dm.SQLConfigVenda.FieldByName('NUMEVISTA').AsInteger;
  ComboNumerarioPrazo.KeyValue := dm.SQLConfigVenda.FieldByName('NUMEPRAZO').AsInteger;
  ComboPlanoRecto.Value := '';
  ComboPlanoRecto.SetFocus;

end;

procedure TFormCadastroNotaFiscal.MnRecalcularImpostosClick(Sender: TObject);
var
  UFDest: string;
var
  AliquotaUF, VlrBaseCalculoTotal, VlrIcmsTotal: Double;
begin
  inherited;
  CancelandoNota := True;
  Dm.ImportandoPedidoVenda := True;
  VlrBaseCalculoTotal := 0;
  VlrIcmsTotal := 0;
  UFDest := dm.SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA2UFRES', '''' + SQLTemplate.FieldbyName('CLIEA13ID').AsString + '''');
  AliquotaUF := StrToFloat(dm.SQLLocate('ICMSUF', 'ICMUA2UF', 'ICMUN2ALIQUOTA', '''' + UFDest + ''''));
  SQLNotaFiscalItem.Close;
  SQLNotaFiscalItem.SQL.Clear;
  SQLNotaFiscalItem.SQL.Add('Select * From NotaFiscalItem Where NOFIA13ID =:NOFIA13ID');
  SQLNotaFiscalItem.Open;
  SQLNotaFiscalItem.First;
  while not SQLNotaFiscalItem.Eof do
  begin
    if (SQLTemplate.FindField('CalcICMSLookUp').asString = 'S') and (SQLNotaFiscalItemNFITN2PERCICMS.AsFloat > 0) then
    begin
      SQLNotaFiscalItem.Edit;
      SQLNotaFiscalItemNFITN2PERCICMS.asFloat := AliquotaUF;
      SQLNotaFiscalItemNFITN2BASEICMS.asFloat := (SQLNotaFiscalItemNFITN2VLRUNIT.AsFloat * SQLNotaFiscalItemNFITN3QUANT.asFloat) - SQLNotaFiscalItemNFITN2VLRDESC.AsFloat;
      SQLNotaFiscalItemNFITN2VLRICMS.asFloat := SQLNotaFiscalItemNFITN2BASEICMS.asFloat * (SQLNotaFiscalItemNFITN2PERCICMS.asFloat / 100);
      SQLNotaFiscalItem.Post;
      VlrBaseCalculoTotal := VlrBaseCalculoTotal + SQLNotaFiscalItemNFITN2BASEICMS.asFloat;
      VlrIcmsTotal := VlrIcmsTotal + SQLNotaFiscalItemNFITN2VLRICMS.asFloat;
    end;
    SQLNotaFiscalItem.Next;
  end;
  try
    SQLTemplate.Edit;
    SQLTemplateNOFIN2BASCALCICMS.Value := VlrBaseCalculoTotal;
    SQLTemplateNOFIN2VLRICMS.Value := VlrIcmsTotal;
    SQLTemplate.Post;
  except
    Application.ProcessMessages;
  end;
  SQLNotaFiscalItem.Close;
  Dm.ImportandoPedidoVenda := False;
  CancelandoNota := False;
end;

procedure TFormCadastroNotaFiscal.MnTrocarStatusEncerradaparaAberta1Click(Sender: TObject);
var
  Erro: Boolean;
begin
  inherited;
  if SQLTemplate.FindField('NOFIA15PROTOCOLO').asString <> '' then
  begin
    Informa('Não são permitidas Alterações em Notas Fiscais EFETIVADAS.');
    Abort;
  end;

  if (SQLTemplateNOFICSTATUS.Value = 'E') and (not SQLTemplate.IsEmpty) then
  begin
    try
      dm.SQLTemplate.Close;
      dm.SQLTemplate.sql.Clear;
      dm.SQLTemplate.SQL.Add('Update NotaFiscal set NOFICSTATUS = ''A'' where NOFIA13ID = ''' + SQLTemplateNOFIA13ID.Value + '''');
      dm.SQLTemplate.ExecSQL;
      Erro := False;
    except
      Erro := True;
      Application.ProcessMessages;
      ShowMessage('Não foi possível trocar o Status da Nota Atual, verifique!');
    end;
    if not Erro then
    begin
      SQLNotaFiscalItens.SQL.Text := 'Select * From NOTAFISCALITEM Where NOFIA13ID = ''' + SQLTemplateNOFIA13ID.Value + '''';
      SQLNotaFiscalItens.Open;
      SQLNotaFiscalItens.First;
      MakeWindowMessage('Retornando Produtos ao Estoque...');
      while not SQLNotaFiscalItens.Eof do
      begin
        GravaMovimentoEstoque(DM.SQLProduto, DM.SQLProdutoFilho, DM.SQLProdutoSaldo, EmpresaCorrente, //Empresa
          SQLNotaFiscalItens.FindField('PRODICOD').asInteger, //Produto
          dm.SQLConfigVenda.FieldByName('OPESICODCANCNF').Value, //Operacao
          SQLNotaFiscalItens.FindField('NFITN3QUANT').asFloat, //Quantidade
          'E', //ENTRADA/SAIDA
          FormatDateTime('mm/dd/yyyy', SQLTemplateNOFIDEMIS.Value), SQLNotaFiscalItens.FindField('NFITN2VLRUNIT').asString, 'NOTAFISCAL', SQLTemplateNOFIA13ID.Value, SQLNotaFiscalItens.FindField('LOTEA30NRO').AsString);
        SQLNotaFiscalItens.Next;
      end;
      SQLNotaFiscalItens.Close;
      DestroyWindow;
      ShowMessage('Operação realizada com sucesso!');
    end;
    SQLTemplate.Close;
  end;
end;

procedure TFormCadastroNotaFiscal.ComboObsCorpoExit(Sender: TObject);
begin
  inherited;
  if ComboObsNota.DisplayValue <> '' then
  begin
    if SQLObsNota.Locate('NOFIA50DESC', ComboObsCorpo.DisplayValue, []) then
      SQLTemplateNOFIAOBSCORPONF.Value := SQLTemplateNOFIAOBSCORPONF.Value + SQLObsNotaOBSNA255DESC.value;
  end;
end;

function TFormCadastroNotaFiscal.TrocaEnter(nTxt: string): string;
begin
  if trim(ntxt) = '' then
    Result := ''
  else
  begin
    while Pos(#13, nTxt) > 0 do
    begin
      Insert(' | ', nTxt, Pos(#13, nTxt));
      Delete(nTxt, Pos(#13, nTxt), Length(#13));
    end;
    while Pos(#10, nTxt) > 0 do
      Delete(nTxt, Pos(#10, nTxt), Length(#10));

    Result := nTxt;
  end;
end;

function TFormCadastroNotaFiscal.PontoVirgula(xText: string): string;
var
  PosVirg: Integer;
begin
  PosVirg := Pos(',', xText);
  while Pos(',', xText) > 0 do
    Delete(xText, Pos(',', xtext), 1);
  insert('.', xtext, PosVirg);
  Result := xText;
end;

procedure TFormCadastroNotaFiscal.FormShow(Sender: TObject);
var
  i: integer;
begin
  inherited;
end;

procedure TFormCadastroNotaFiscal.DBEdit25KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then
    if (DBEdit25.text = '  /  /       :  ') and (SQLTemplate.State in ([dsInsert, dsEdit])) then
      SQLTemplateNOFIDSAIDAENTRADA.Clear;
end;

procedure TFormCadastroNotaFiscal.GerarArquivosdeNotasProcessadaparaContabilidade1Click(Sender: TObject);
var
  DataInicial, DataFinal: string;
  dir, direxec: string;
begin
  inherited;
  if not DirectoryExists('NotaExporta') then
  begin
    Showmessage('Crie a pasta C:\UNIT\NOTAEXPORTA');
    Exit;
  end;
  if FileExists('C:\Migrate\GNFe\GNFeExportador.exe') then
  begin
    DataInicial := InputBox('Data Inicial', 'Informe Data Inicial ( xx/xx/xx )', '');
    DataFinal := InputBox('Data Final', 'Informe Data Final ( xx/xx/xx )', '');
    try
      StrToDate(DataInicial);
      StrToDate(DataFinal);
      if (Length(DataInicial) > 8) or (Length(DataFinal) > 8) then
      begin
        Showmessage('Formato das Datas Inválido (99/99/99)' + #13 + #10 + 'Processo Cancelado.');
        Exit;
      end
    except
      begin
        Showmessage('Intervalo de Datas Inválido' + #13 + #10 + 'Processo Cancelado.');
        Exit;
      end;
    end;

    getDir(0, dir); //armazena diretório atual
    ChDir('c:\Migrate\GNFe'); //altera diretório de execução
    getdir(0, DirExec);
    WinExec(PChar('GNFeExportador.exe ' + Trim(Dm.SQLTerminalAtivo.FieldByName('EMPRICOD').AsString) + ' ' + Datainicial + ' ' + DataFinal + ' C:\Unit\NotaExporta 3'), SW_SHOW);

    ChDir(dir); //retorna ao diretório do sistema
  end
  else
    Showmessage('Não Foi Possivel encontrar o arquivo C:\MIGRATE\GNFE\GNFeEXPORTADOR.EXE');
end;

procedure TFormCadastroNotaFiscal.DBEdit50KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  vISSQN: Extended;
begin
  inherited;
  if KEY = 123 then // F12
  begin
    SQLTemplate.Edit;
    SQLTemplateNOFIN2PERCMAODEOBRA.Value := 50;
    SQLTemplateNOFIN2PERCMATERIAL.Value := 50;
    SQLTemplateNOFIN2PERCINSS.Value := 11;
    SQLTemplateNOFIN2PERCCOFINS.Value := 3;
    SQLTemplateNOFIN2PERCPIS.Value := 0.65;
    SQLTemplateNOFIN2PERCIR.Value := 1.5;
    SQLTemplateNOFIN2PERCCONTRSOCIAL.Value := 1;
    try
      vISSQN := StrToFloat(SQLLocate('CIDADE', 'CIDAA60NOME', 'CIDAN3ISSQN', '''' + SQLTemplate.FieldbyName('CLIFORNEMPCIDADELOOKUP').AsString + ''''));
    except
      vISSQN := 0;
    end;
    SQLTemplateNOFIN2PERCISSQN.Value := vISSQN;

  end;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateNOFIN2PERCCONTRSOCIALChange(Sender: TField);
begin
  inherited;
  SQLTemplateNOFIN3VLRCONTRSOCIAL.Value := SQLTemplateNOFIN2VLRNOTA.value * (SQLTemplateNOFIN2PERCCONTRSOCIAL.Value / 100);
end;

procedure TFormCadastroNotaFiscal.SQLTemplateNOFIN2PERCIRChange(Sender: TField);
begin
  inherited;
  SQLTemplateNOFIN3VLRIR.Value := SQLTemplateNOFIN2VLRNOTA.value * (SQLTemplateNOFIN2PERCIR.Value / 100);
end;

procedure TFormCadastroNotaFiscal.SQLTemplateNOFIN2PERCPISChange(Sender: TField);
begin
  inherited;
{  SQLTemplateNOFIN3VLRPIS.Value    := SQLTemplateNOFIN2VLRNOTA.value  * (SQLTemplateNOFIN2PERCPIS.Value / 100);}
end;

procedure TFormCadastroNotaFiscal.SQLTemplateNOFIN2PERCINSSChange(Sender: TField);
begin
  inherited;
  SQLTemplateNOFIN3VLRINSS.Value := SQLTemplateNOFIN2VLRNOTA.value * (SQLTemplateNOFIN2PERCINSS.Value / 100);
end;

procedure TFormCadastroNotaFiscal.SQLTemplateNOFIN2PERCMATERIALChange(Sender: TField);
begin
  inherited;
  SQLTemplateNOFIN3VLRMATERIAL.Value := SQLTemplateNOFIN2VLRNOTA.value * (SQLTemplateNOFIN2PERCMATERIAL.Value / 100);
end;

procedure TFormCadastroNotaFiscal.SQLTemplateNOFIN2PERCMAODEOBRAChange(Sender: TField);
begin
  inherited;
  SQLTemplateNOFIN3VLRMAODEOBRA.Value := SQLTemplateNOFIN2VLRNOTA.value * (SQLTemplateNOFIN2PERCMAODEOBRA.Value / 100);
  SQLTemplateNOFIN3VLRMATERIAL.Value := 100 - SQLTemplateNOFIN2PERCMAODEOBRA.Value;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateNOFIN2PERCCOFINSChange(Sender: TField);
begin
  inherited;
{  SQLTemplateNOFIN3VLRCOFINS.Value    := SQLTemplateNOFIN2VLRNOTA.value  * (SQLTemplateNOFIN2PERCCOFINS.Value / 100); }
end;

procedure TFormCadastroNotaFiscal.Imprimir1Click(Sender: TObject);
var
  nFunrural: Extended;
begin
  inherited;
  nFunrural := StrToFloat(InputBox('Funrural', 'Informe Percentual Funrural:', '2,30'));
  SQLTemplate.Edit;
  SQLTemplateNOFIA255OBS.AsString := SQLTemplateNOFIA255OBS.AsString + ' *** Desconto ' + FormatFloat(',0.00', nFunrural) + '% Ref. Funrural - R$ ' + FormatFloat(',0.00', SQLTemplateNOFIN2VLRPRODUTO.Value * (nFunrural / 100)) + ' *** ';
  SQLTemplate.Post;
end;

function TFormCadastroNotaFiscal.CalculoSubstituicaoTributaria: string;
var
  Retorno: Extended;
begin
  Retorno := 0;
  Retorno := SQLNotaFiscalItemNFITN2VLRSUBS.value / SQLNotaFiscalItemNFITN3QUANT.Value;
  Retorno := Retorno + (SQLNotaFiscalItemNFITN2VLRIPI.Value / SQLNotaFiscalItemNFITN3QUANT.Value);

  if Retorno > 0 then
    CalculoSubstituicaoTributaria := ' - VF: ' + FormatFloat(',0.00', Retorno + (SQLNotaFiscalItemNFITN2VLRUNIT.value))
  else
    CalculoSubstituicaoTributaria := '';
end;

procedure TFormCadastroNotaFiscal.SQLTemplateBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  //  SQLTemplate.MacroByName('MEmpresa').Value := 'EMPRICOD = ' + EmpresaPadrao;
end;

procedure TFormCadastroNotaFiscal.BtDadosPadroesClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormTelaConfigPedidos, FormTelaConfigPedidos);
  FormTelaConfigPedidos.ShowModal;
  if dm.VendedorAtualPedidos > 0 then
  begin
    LbVendedorAtual.Caption := 'Vendedor Atual ' + intToStr(dm.VendedorAtualPedidos);
    LbVendedorAtual.Update;
  end
  else
  begin
    LbVendedorAtual.Caption := 'Vendedor Atual ';
    LbVendedorAtual.Update;
  end;
  if dm.RotaAtualPedidos > 0 then
  begin
    LbRotaAtual.Caption := 'Rota Atual ' + intToStr(dm.RotaAtualPedidos);
    LbRotaAtual.Update;
  end
  else
  begin
    LbRotaAtual.Caption := 'Rota Atual ';
    LbRotaAtual.Update;
  end;
  if dm.TranspAtualPedidos > 0 then
  begin
    LbTranspAtual.Caption := 'Transp Atual ' + intToStr(dm.TranspAtualPedidos);
    LbTranspAtual.Update;
  end
  else
  begin
    LbTranspAtual.Caption := 'Transp Atual ';
    LbTranspAtual.Update;
  end;
  if dm.VeiculoAtualPedidos <> '' then
  begin
    LbVeiculo.Visible := True;
    LbVeiculo.Caption := 'Veiculo Atual ' + dm.VeiculoAtualPedidos;
    LbVeiculo.Update;
  end
  else
  begin
    LbVeiculo.Caption := 'Veiculo Atual ';
    LbVeiculo.Update;
  end;
  if dm.DataEmissaoPedidos <> null then
  begin
    LbEmissao.Caption := 'Emissão ' + FormatDateTime('dd/mm/yy', dm.DataEmissaoPedidos);
    LbEmissao.Update;
  end
  else
  begin
    LbEmissao.Caption := 'Emissão ';
    LbEmissao.Update;
  end;
  if dm.DataEntregaPedidos <> null then
  begin
    LbDataEntrega.Caption := 'Entrega ' + FormatDateTime('dd/mm/yy hh:mm', dm.DataEntregaPedidos);
    LbDataEntrega.Update;
  end
  else
  begin
    LbDataEntrega.Caption := 'Entrega ';
    LbDataEntrega.Update;
  end;
end;

function TFormCadastroNotaFiscal.RetornaCofins(Produto: string): string;
begin
end;

function TFormCadastroNotaFiscal.RetornaPis(Produto: string): string;
begin
  if SQLLocate('PRODUTO', 'PRODICOD', 'PRODA2CSTPIS', Produto) = '01' then
    ;
  if SQLLocate('PRODUTO', 'PRODICOD', 'PRODA2CSTPIS', Produto) = '02' then
    ;
end;

function TFormCadastroNotaFiscal.RetornaPais(nPais: Integer): string;
begin
  case nPais of
    00132:
      Result := 'AFEGANISTAO';
    00175:
      Result := 'ALBANIA, REPUBLICA  DA';
    00230:
      Result := 'ALEMANHA';
    00310:
      Result := 'BURKINA FASO';
    00370:
      Result := 'ANDORRA';
    00400:
      Result := 'ANGOLA';
    00418:
      Result := 'ANGUILLA';
    00434:
      Result := 'ANTIGUA E BARBUDA';
    00477:
      Result := 'ANTILHAS HOLANDESAS';
    00531:
      Result := 'ARABIA SAUDITA';
    00590:
      Result := 'ARGELIA';
    00639:
      Result := 'ARGENTINA';
    00647:
      Result := 'ARMENIA, REPUBLICA DA';
    00655:
      Result := 'ARUBA';
    00698:
      Result := 'AUSTRALIA';
    00728:
      Result := 'AUSTRIA';
    00736:
      Result := 'AZERBAIJAO, REPUBLICA DO';
    00779:
      Result := 'BAHAMAS, ILHAS';
    00809:
      Result := 'BAHREIN, ILHAS';
    00817:
      Result := 'BANGLADESH';
    00833:
      Result := 'BARBADOS';
    00850:
      Result := 'BELARUS, REPUBLICA DA';
    00876:
      Result := 'BELGICA';
    00884:
      Result := 'BELIZE';
    00906:
      Result := 'BERMUDAS';
    00930:
      Result := 'MIANMAR (BIRMANIA)';
    00973:
      Result := 'BOLIVIA, ESTADO PLURINACIONAL DA';
    00981:
      Result := 'BOSNIA-HERZEGOVINA (REPUBLICA DA)';
    01015:
      Result := 'BOTSUANA';
    01058:
      Result := 'BRASIL';
    01082:
      Result := 'BRUNEI';
    01112:
      Result := 'BULGARIA, REPUBLICA DA';
    01155:
      Result := 'BURUNDI';
    01198:
      Result := 'BUTAO';
    01279:
      Result := 'CABO VERDE, REPUBLICA DE';
    01376:
      Result := 'CAYMAN, ILHAS';
    01414:
      Result := 'CAMBOJA';
    01457:
      Result := 'CAMAROES';
    01490:
      Result := 'CANADA';
    01504:
      Result := 'GUERNSEY, ILHA DO CANAL (INCLUI ALDERNEY E SARK)';
    01508:
      Result := 'JERSEY, ILHA DO CANAL';
    01511:
      Result := 'CANARIAS, ILHAS';
    01538:
      Result := 'CAZAQUISTAO, REPUBLICA DO';
    01546:
      Result := 'CATAR';
    01589:
      Result := 'CHILE';
    01600:
      Result := 'CHINA, REPUBLICA POPULAR';
    01619:
      Result := 'FORMOSA (TAIWAN)';
    01635:
      Result := 'CHIPRE';
    01651:
      Result := 'COCOS(KEELING),ILHAS';
    01694:
      Result := 'COLOMBIA';
    01732:
      Result := 'COMORES, ILHAS';
    01775:
      Result := 'CONGO';
    01830:
      Result := 'COOK, ILHAS';
    01872:
      Result := 'COREIA (DO NORTE), REP.POP.DEMOCRATICA';
    01902:
      Result := 'COREIA (DO SUL), REPUBLICA DA';
    01937:
      Result := 'COSTA DO MARFIM';
    01953:
      Result := 'CROACIA (REPUBLICA DA)';
    01961:
      Result := 'COSTA RICA';
    01988:
      Result := 'COVEITE';
    01996:
      Result := 'CUBA';
    02291:
      Result := 'BENIN';
    02321:
      Result := 'DINAMARCA';
    02356:
      Result := 'DOMINICA,ILHA';
    02399:
      Result := 'EQUADOR';
    02402:
      Result := 'EGITO';
    02437:
      Result := 'ERITREIA';
    02445:
      Result := 'EMIRADOS ARABES UNIDOS';
    02453:
      Result := 'ESPANHA';
    02461:
      Result := 'ESLOVENIA, REPUBLICA DA';
    02470:
      Result := 'ESLOVACA, REPUBLICA';
    02496:
      Result := 'ESTADOS UNIDOS';
    02518:
      Result := 'ESTONIA, REPUBLICA DA';
    02534:
      Result := 'ETIOPIA';
    02550:
      Result := 'FALKLAND (ILHAS MALVINAS)';
    02593:
      Result := 'FEROE, ILHAS';
    02674:
      Result := 'FILIPINAS';
    02712:
      Result := 'FINLANDIA';
    02755:
      Result := 'FRANCA';
    02810:
      Result := 'GABAO';
    02852:
      Result := 'GAMBIA';
    02895:
      Result := 'GANA';
    02917:
      Result := 'GEORGIA, REPUBLICA DA';
    02933:
      Result := 'GIBRALTAR';
    02976:
      Result := 'GRANADA';
    03018:
      Result := 'GRECIA';
    03050:
      Result := 'GROENLANDIA';
    03093:
      Result := 'GUADALUPE';
    03131:
      Result := 'GUAM';
    03174:
      Result := 'GUATEMALA';
    03255:
      Result := 'GUIANA FRANCESA';
    03298:
      Result := 'GUINE';
    03310:
      Result := 'GUINE-EQUATORIAL';
    03344:
      Result := 'GUINE-BISSAU';
    03379:
      Result := 'GUIANA';
    03417:
      Result := 'HAITI';
    03450:
      Result := 'HONDURAS';
    03514:
      Result := 'HONG KONG';
    03557:
      Result := 'HUNGRIA, REPUBLICA DA';
    03573:
      Result := 'IEMEN';
    03595:
      Result := 'MAN, ILHA DE';
    03611:
      Result := 'INDIA';
    03654:
      Result := 'INDONESIA';
    03697:
      Result := 'IRAQUE';
    03727:
      Result := 'IRA, REPUBLICA ISLAMICA DO';
    03751:
      Result := 'IRLANDA';
    03794:
      Result := 'ISLANDIA';
    03832:
      Result := 'ISRAEL';
    03867:
      Result := 'ITALIA';
    03913:
      Result := 'JAMAICA';
    03964:
      Result := 'JOHNSTON, ILHAS';
    03999:
      Result := 'JAPAO';
    04030:
      Result := 'JORDANIA';
    04111:
      Result := 'KIRIBATI';
    04200:
      Result := 'LAOS, REP.POP.DEMOCR.DO';
    04235:
      Result := 'LEBUAN,ILHAS';
    04260:
      Result := 'LESOTO';
    04278:
      Result := 'LETONIA, REPUBLICA DA';
    04316:
      Result := 'LIBANO';
    04340:
      Result := 'LIBERIA';
    04383:
      Result := 'LIBIA';
    04405:
      Result := 'LIECHTENSTEIN';
    04421:
      Result := 'LITUANIA, REPUBLICA DA';
    04456:
      Result := 'LUXEMBURGO';
    04472:
      Result := 'MACAU';
    04499:
      Result := 'MACEDONIA, ANT.REP.IUGOSLAVA';
    04502:
      Result := 'MADAGASCAR';
    04525:
      Result := 'MADEIRA, ILHA DA';
    04553:
      Result := 'MALASIA';
    04588:
      Result := 'MALAVI';
    04618:
      Result := 'MALDIVAS';
    04642:
      Result := 'MALI';
    04677:
      Result := 'MALTA';
    04723:
      Result := 'MARIANAS DO NORTE';
    04740:
      Result := 'MARROCOS';
    04766:
      Result := 'MARSHALL,ILHAS';
    04774:
      Result := 'MARTINICA';
    04855:
      Result := 'MAURICIO';
    04880:
      Result := 'MAURITANIA';
    04885:
      Result := 'MAYOTTE (ILHAS FRANCESAS)';
    04901:
      Result := 'MIDWAY, ILHAS';
    04936:
      Result := 'MEXICO';
    04944:
      Result := 'MOLDAVIA, REPUBLICA DA';
    04952:
      Result := 'MONACO';
    04979:
      Result := 'MONGOLIA';
    04985:
      Result := 'MONTENEGRO';
    04995:
      Result := 'MICRONESIA';
    05010:
      Result := 'MONTSERRAT,ILHAS';
    05053:
      Result := 'MOCAMBIQUE';
    05070:
      Result := 'NAMIBIA';
    05088:
      Result := 'NAURU';
    05118:
      Result := 'CHRISTMAS,ILHA (NAVIDAD)';
    05177:
      Result := 'NEPAL';
    05215:
      Result := 'NICARAGUA';
    05258:
      Result := 'NIGER';
    05282:
      Result := 'NIGERIA';
    05312:
      Result := 'NIUE,ILHA';
    05355:
      Result := 'NORFOLK,ILHA';
    05380:
      Result := 'NORUEGA';
    05428:
      Result := 'NOVA CALEDONIA';
    05452:
      Result := 'PAPUA NOVA GUINE';
    05487:
      Result := 'NOVA ZELANDIA';
    05517:
      Result := 'VANUATU';
    05568:
      Result := 'OMA';
    05665:
      Result := 'PACIFICO,ILHAS DO (POSSESSAO DOS EUA)';
    05738:
      Result := 'PAISES BAIXOS (HOLANDA)';
    05754:
      Result := 'PALAU';
    05762:
      Result := 'PAQUISTAO';
    05800:
      Result := 'PANAMA';
    05860:
      Result := 'PARAGUAI';
    05894:
      Result := 'PERU';
    05932:
      Result := 'PITCAIRN,ILHA';
    05991:
      Result := 'POLINESIA FRANCESA';
    06033:
      Result := 'POLONIA, REPUBLICA DA';
    06076:
      Result := 'PORTUGAL';
    06114:
      Result := 'PORTO RICO';
    06238:
      Result := 'QUENIA';
    06254:
      Result := 'QUIRGUIZ, REPUBLICA';
    06289:
      Result := 'REINO UNIDO';
    06408:
      Result := 'REPUBLICA CENTRO-AFRICANA';
    06475:
      Result := 'REPUBLICA DOMINICANA';
    06602:
      Result := 'REUNIAO, ILHA';
    06653:
      Result := 'ZIMBABUE';
    06700:
      Result := 'ROMENIA';
    06750:
      Result := 'RUANDA';
    06769:
      Result := 'RUSSIA, FEDERACAO DA';
    06777:
      Result := 'SALOMAO, ILHAS';
    06858:
      Result := 'SAARA OCIDENTAL';
    06874:
      Result := 'EL SALVADOR';
    06904:
      Result := 'SAMOA';
    06912:
      Result := 'SAMOA AMERICANA';
    06955:
      Result := 'SAO CRISTOVAO E NEVES,ILHAS';
    06971:
      Result := 'SAN MARINO';
    07005:
      Result := 'SAO PEDRO E MIQUELON';
    07056:
      Result := 'SAO VICENTE E GRANADINAS';
    07102:
      Result := 'SANTA HELENA';
    07153:
      Result := 'SANTA LUCIA';
    07200:
      Result := 'SAO TOME E PRINCIPE, ILHAS';
    07285:
      Result := 'SENEGAL';
    07315:
      Result := 'SEYCHELLES';
    07358:
      Result := 'SERRA LEOA';
    07370:
      Result := 'SERVIA';
    07412:
      Result := 'CINGAPURA';
    07447:
      Result := 'SIRIA, REPUBLICA ARABE DA';
    07480:
      Result := 'SOMALIA';
    07501:
      Result := 'SRI LANKA';
    07544:
      Result := 'SUAZILANDIA';
    07560:
      Result := 'AFRICA DO SUL';
    07595:
      Result := 'SUDAO';
    07641:
      Result := 'SUECIA';
    07676:
      Result := 'SUICA';
    07706:
      Result := 'SURINAME';
    07722:
      Result := 'TADJIQUISTAO, REPUBLICA DO';
    07765:
      Result := 'TAILANDIA';
    07803:
      Result := 'TANZANIA, REP. UNIDA DA';
    07820:
      Result := 'TERRITORIO BRIT. OC. INDICO';
    07838:
      Result := 'DJIBUTI';
    07889:
      Result := 'CHADE';
    07919:
      Result := 'TCHECA, REPUBLICA';
    07951:
      Result := 'TIMOR LESTE';
    08001:
      Result := 'TOGO';
    08052:
      Result := 'TOQUELAU,ILHAS';
    08109:
      Result := 'TONGA';
    08150:
      Result := 'TRINIDAD E TOBAGO';
    08206:
      Result := 'TUNISIA';
    08230:
      Result := 'TURCAS E CAICOS,ILHAS';
    08249:
      Result := 'TURCOMENISTAO, REPUBLICA DO';
    08273:
      Result := 'TURQUIA';
    08281:
      Result := 'TUVALU';
    08311:
      Result := 'UCRANIA';
    08338:
      Result := 'UGANDA';
    08451:
      Result := 'URUGUAI';
    08478:
      Result := 'UZBEQUISTAO, REPUBLICA DO';
    08486:
      Result := 'VATICANO, EST. DA CIDADE DO';
    08508:
      Result := 'VENEZUELA';
    08583:
      Result := 'VIETNA';
    08630:
      Result := 'VIRGENS,ILHAS (BRITANICAS)';
    08664:
      Result := 'VIRGENS,ILHAS (E.U.A.)';
    08702:
      Result := 'FIJI';
    08737:
      Result := 'WAKE, ILHA';
    08885:
      Result := 'CONGO, REPUBLICA DEMOCRATICA DO';
    08907:
      Result := 'ZAMBIA';
  end;
end;

function TFormCadastroNotaFiscal.TabelaNFE_123(Produto, Situacao: string): string;
var
  modBC, modBCST, UFST: string;
  ICMSCrd: Extended;
begin
  // Tabela NFE Calculo ICMS 1.23
  modBC := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA1MODBC', Produto);
  modBCST := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA1MODBCST', Produto);

  if Situacao = '0' then
    Linha := Linha + '                    <CST>' + Preenche(Situacao, '0', 2, 0) + '</CST>' + CHR(13)
  else
    Linha := Linha + '                    <CST>' + Situacao + '</CST>' + CHR(13);

  if (Situacao = '0') or (Situacao = '10') or (Situacao = '20') or (Situacao = '70') or (Situacao = '90') or (Situacao = '900') then
    Linha := Linha + '                    <modBC>' + modBC + '</modBC>' + CHR(13)
  else
    Linha := Linha + '                    <modBC />' + CHR(13);

  if (Situacao = '0') or (Situacao = '10') or (Situacao = '20') or (Situacao = '70') or (Situacao = '90') or (Situacao = '900') then
  begin
    Linha := Linha + '                    <vBC>' + PontoVirgula(FormatFloat('0.00', SQLNotaFiscalItemNFITN2BASEICMS.value)) + '</vBC>' + CHR(13);
    vBC_Total := vBC_Total + SQLNotaFiscalItemNFITN2BASEICMS.value;
  end
  else
    Linha := Linha + '                    <vBC />' + CHR(13);

  if (Situacao = '0') or (Situacao = '10') or (Situacao = '20') or (Situacao = '51') or (Situacao = '70') or (Situacao = '90') or (Situacao = '900') then
    Linha := Linha + '                    <pICMS>' + PontoVirgula(FormatFloat('0.00', SQLNotaFiscalItemNFITN2PERCICMS.value)) + '</pICMS>' + CHR(13)
  else
    Linha := Linha + '                    <pICMS />' + CHR(13);

  if (Situacao = '0') or (Situacao = '10') or (Situacao = '20') or (Situacao = '51') or (Situacao = '70') or (Situacao = '90') or (Situacao = '900') then
  begin
    Linha := Linha + '                    <vICMS_icms>' + PontoVirgula(FormatFloat('0.00', SQLNotaFiscalItemNFITN2VLRICMS.value)) + '</vICMS_icms>' + CHR(13);
    vICMS_Total := vICMS_Total + SQLNotaFiscalItemNFITN2VLRICMS.value;
  end
  else
    Linha := Linha + '                    <vICMS_icms />' + CHR(13);

  if (Situacao = '10') or (Situacao = '30') or (Situacao = '70') or (Situacao = '90') or (Situacao = '201') or (Situacao = '202') or (Situacao = '203') or (Situacao = '900') then
    Linha := Linha + '                    <modBCST>' + modBCST + '</modBCST>' + CHR(13)
  else
    Linha := Linha + '                    <modBCST />' + CHR(13);

  Linha := Linha + '                    <pMVAST />' + CHR(13);
  Linha := Linha + '                    <pRedBCST />' + CHR(13);

  if (Situacao = '10') or (Situacao = '30') or (Situacao = '70') or (Situacao = '90') or (Situacao = '201') or (Situacao = '202') or (Situacao = '203') or (Situacao = '900') then
  begin
    Linha := Linha + '                    <vBCST>' + PontoVirgula(FormatFloat('0.00', SQLNotaFiscalItemNFITN2BASESUBS.value)) + '</vBCST>' + CHR(13);
    vBCST_Total := vBCST_Total + SQLNotaFiscalItemNFITN2BASESUBS.value;
  end
  else
    Linha := Linha + '                    <vBCST />' + CHR(13);

  if (Situacao = '10') or (Situacao = '30') or (Situacao = '70') or (Situacao = '90') or (Situacao = '201') or (Situacao = '202') or (Situacao = '203') or (Situacao = '900') then
    Linha := Linha + '                    <pICMSST>' + PontoVirgula(FormatFloat('0.00', SQLNotaFiscalItemNFITN2PERCSUBS.value)) + '</pICMSST>' + CHR(13)
  else
    Linha := Linha + '                    <pICMSST />' + CHR(13);

  if (Situacao = '10') or (Situacao = '30') or (Situacao = '70') or (Situacao = '90') or (Situacao = '201') or (Situacao = '202') or (Situacao = '203') or (Situacao = '900') then
  begin
    Linha := Linha + '                    <vICMSST_icms>' + PontoVirgula(FormatFloat('0.00', SQLNotaFiscalItemNFITN2VLRSUBS.value)) + '</vICMSST_icms>' + CHR(13);
    vST_Total := vST_Total + SQLNotaFiscalItemNFITN2VLRSUBS.value
  end
  else
    Linha := Linha + '                    <vICMSST_icms />' + CHR(13);

  if (Situacao = '60') or (Situacao = '500') then
    Linha := Linha + '                    <vBCSTRet></vBCSTRet>' + CHR(13)
  else
    Linha := Linha + '                    <vBCSTRet />' + CHR(13);

  if (Situacao = '60') or (Situacao = '500') then
    Linha := Linha + '                    <vICMSSTRet></vICMSSTRet>' + CHR(13)
  else
    Linha := Linha + '                    <vICMSSTRet />' + CHR(13);

  if (Situacao = '20') or (Situacao = '70') then
    Linha := Linha + '                    <pRedBC></pRedBC>' + CHR(13)
  else
    Linha := Linha + '                    <pRedBC />' + CHR(13);

  Linha := Linha + '                    <pBCOp />' + CHR(13);
  Linha := Linha + '                    <UFST />' + CHR(13);
  Linha := Linha + '                    <vBCSTDest />' + CHR(13);
  Linha := Linha + '                    <vICMSSTDest_icms />' + CHR(13);

  if (Situacao = '101') or (Situacao = '201') or (Situacao = '900') then
    Linha := Linha + '                    <pCredSN>' + SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRN2CREDICMS', EmpresaPadrao) + '</pCredSN>' + CHR(13)
  else
    Linha := Linha + '                    <pCredSN />' + CHR(13);

  if (Situacao = '101') or (Situacao = '201') or (Situacao = '900') then
    Linha := Linha + '                    <vCredICMSSN>' + FloatToStr(((StrToFloat(SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRN2CREDICMS', EmpresaPadrao)) / 100) * ((SQLNotaFiscalItemNFITN2VLRUNIT.value * SQLNotaFiscalItemNFITN3QUANT.value) - SQLNotaFiscalItemNFITN2VLRDESC.value))) + '</vCredICMSSN>' + CHR(13)
  else
    Linha := Linha + '                    <vCredICMSSN />' + CHR(13);

  Linha := Linha + '                </ICMS>';
end;

procedure TFormCadastroNotaFiscal.OrdemServioGrficas1Click(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('ORDNUM');
  FieldOrigem := 'ORDNUM';
  CriaFormulario(TFormCadastroGraficaOrdem, 'FormCadastroGraficaOrdem', False, True, False, '');
end;

procedure TFormCadastroNotaFiscal.rocaStatusNFCanceladaparaAbertanomovestoque1Click(Sender: TObject);
begin
  inherited;
  if SQLTemplate.FindField('NOFIA15PROTOCOLO').asString <> '' then
  begin
    Informa('Não são permitidas Alterações em Notas Fiscais EFETIVADAS.');
    Abort;
  end;

  if (SQLTemplateNOFICSTATUS.Value = 'C') and (not SQLTemplate.IsEmpty) then
  begin
    try
      dm.SQLTemplate.Close;
      dm.SQLTemplate.sql.Clear;
      dm.SQLTemplate.SQL.Add('Update NotaFiscal set NOFICSTATUS = ''A'' where NOFIA13ID = ''' + SQLTemplateNOFIA13ID.Value + '''');
      dm.SQLTemplate.ExecSQL;
    except
      Application.ProcessMessages;
      ShowMessage('Não foi possível trocar o Status da Nota Atual, verifique!');
    end;
    SQLTemplate.Close;
    ShowMessage('Troca de Status Efetuada com Sucesso');
  end;
end;

function TFormCadastroNotaFiscal.VerificaDadosCliente: Boolean;
begin
  // Verifica Nome
  if (SQLTemplateCliFornEmpLookUp.AsString = '') or (SQLTemplateCliFornEmpLookUp.isnull) or (Pos('&', SQLTemplateCliFornEmpLookUp.AsString) > 0) then
  begin
    ShowMessage('Nome do Destinatário Inválido ou Nota Fiscal não selecionada!! . Verifique!' + #13#10 + 'Nota Fiscal Nº: ' + SQLTemplateNOFIINUMERO.AsString);
    Result := False;
    Exit;
  end;

  // Verifica CPF ou CNPJ
  if ((SQLTemplateCliFornEmpCGCCPFLookUp.AsString = '') or (SQLTemplateCliFornEmpCGCCPFLookUp.isnull)) and (Trim(SQLTemplateCliFornEmpEstadoLookUp.AsString) <> 'EX') then
  begin
    ShowMessage('CPF / CNPJ do Destinatário Inválido ou Inexistente. Verifique!' + #13#10 + 'Nota Fiscal Nº: ' + SQLTemplateNOFIINUMERO.AsString);
    Result := False;
    Exit;
  end;

  // Verifica numero do endereço
  if (SQLTemplateEmpNumeroEndLookUp.AsString = '') or (SQLTemplateEmpNumeroEndLookUp.isnull) then
  begin
    ShowMessage('Número do Endereço do Destinatário Inválido ou Inexistente. Verifique!' + #13#10 + 'Nota Fiscal Nº: ' + SQLTemplateNOFIINUMERO.AsString);
    Result := False;
    Exit;
  end;

  // Verifica bairro
  if (SQLTemplateCliFornEmpBairroLookUp.AsString = '') or (SQLTemplateCliFornEmpBairroLookUp.isnull) then
  begin
    ShowMessage('Bairro do Destinatário Inválido ou Inexistente. Verifique!' + #13#10 + 'Nota Fiscal Nº: ' + SQLTemplateNOFIINUMERO.AsString);
    Result := False;
    Exit;
  end;

  // Verifica Endereco
  if (SQLTemplateCliFornEmpEnderecoLookUp.AsString = '') or (SQLTemplateCliFornEmpEnderecoLookUp.isnull) then
  begin
    ShowMessage('Endereço do Destinatário Inválido ou Inexistente. Verifique!' + #13#10 + 'Nota Fiscal Nº: ' + SQLTemplateNOFIINUMERO.AsString);
    Result := False;
    Exit;
  end;

  // Verifica Pais
  if (Copy(RetornaPais(SQLTemplateCliFornEmpcdPaisLookUp.AsInteger), 0, 60) = '') then
  begin
    ShowMessage('País do Destinatário não Identificado. Verifique!' + #13#10 + 'Nota Fiscal Nº: ' + SQLTemplateNOFIINUMERO.AsString);
    Result := False;
    Exit;
  end;

  // Verifica Numero do Municipio
  if (SQLTemplateCliFornEmpCdMunicipoNfeLookUp.AsString = '') or (SQLTemplateCliFornEmpCdMunicipoNfeLookUp.isnull) then
  begin
    ShowMessage('Número da Cidade (Cd.NFe) do Destinatário não Informado. Verifique!' + #13#10 + 'Nota Fiscal Nº: ' + SQLTemplateNOFIINUMERO.AsString);
    Result := False;
    Exit;
  end;

  // Verifica Municipio
  if (SQLTemplateCliFornEmpCidadeLookUp.AsString = '') or (SQLTemplateCliFornEmpCidadeLookUp.isnull) then
  begin
    ShowMessage('Município do Destinatário Inválido ou Inexistente. Verifique!' + #13#10 + 'Nota Fiscal Nº: ' + SQLTemplateNOFIINUMERO.AsString);
    Result := False;
    Exit;
  end;

  // Verifica estado
  if (SQLTemplateCliFornEmpEstadoLookUp.AsString = '') or (SQLTemplateCliFornEmpEstadoLookUp.isnull) then
  begin
    ShowMessage('Estado do Destinatário Inválido ou Inexistente. Verifique!' + #13#10 + 'Nota Fiscal Nº: ' + SQLTemplateNOFIINUMERO.AsString);
    Result := False;
    Exit;
  end;

  // Verifica Cep
  if (SQLTemplateCliFornEmpCEPLookUp.AsString = '') or (SQLTemplateCliFornEmpCEPLookUp.isnull) then
  begin
    ShowMessage('CEP do Destinatário Inválido ou Inexistente. Verifique!' + #13#10 + 'Nota Fiscal Nº: ' + SQLTemplateNOFIINUMERO.AsString);
    Result := False;
    Exit;
  end;
end;

function TFormCadastroNotaFiscal.VerificaDadosTransp: Boolean;
begin
  // Verifica Nome
  if SQLTemplateTransportadoraLookup.AsString <> '' then
  begin
    if (Pos('&', SQLTemplateTransportadoraLookup.AsString) > 0) then
    begin
      ShowMessage('Nome do(a) Transportador(a) Inválido. Verifique!' + #13#10 + 'Nota Fiscal Nº: ' + SQLTemplateNOFIINUMERO.AsString);
      Result := False;
      Exit;
    end;
  end;
end;

function TFormCadastroNotaFiscal.SoNumeros(xText: string): string;
var
  p: Integer;
  nVar: string;
begin
  nVar := '';
  if xText <> '' then
  begin
    for p := 0 to length(xText) do
      if xText[p] in (['0'..'9']) then
        nVar := nVar + xText[p];
  end
  else
    nVar := '';
  Result := nVar
end;

function TFormCadastroNotaFiscal.VerificaDadosProduto: Boolean;
var
  DeuCerto: Boolean;
begin
  DeuCerto := True;
  Result := DeuCerto;
end;

procedure TFormCadastroNotaFiscal.NotaFiscalJava1Click(Sender: TObject);
var
  comando: string;
  i, nfeNumeroNovo: integer;
  dir, direxec, ValCertificado, RetornoCampoUsuario, sXML, PDf: string;
  IniFile: TiniFile;
  Point: TBookmark;
  InfoRetornoUser: TInfoRetornoUser;
  Email: TEmail;
begin
  inherited;
  VerificaDadosCliente;

  if (SQLTemplateCLIEA13ID.Value <> '') and (SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEN2RENDA', '''' + SQLTemplateCLIEA13ID.asstring + '''') <> '0') then
    if VerificaLimiteCredito(SQLTemplateCLIEA13ID.asstring, SQLTemplateNOFIN2VLRNOTA.value, DM.SQLParcelas, DM.SQLCliente) = False then
    begin
      if SQLLocate('USUARIO', 'USUAICOD', 'USUACVENDCLIBLOQMOTIV', IntToStr(DM.UsuarioAtual)) <> 'S' then
      begin
        RetornoCampoUsuario := AutenticaUsuario(UsuarioAtualNome, 'USUACVENDCLIBLOQMOTIV', InfoRetornoUser);
        if RetornoCampoUsuario = 'N' then
        begin
          ShowMessage('Usuario não tem permissão para liberar venda com limite excedido');
          Exit;
        end;
      end;
    end;

  if not Pergunta('Nao', 'Gerar Notas Fiscais Eletrônicas?') then
    Exit;

  try
    bEnviandoNFE := true;
  {Inicio Rotina usando ACBR NFE, por Adilson}

    if SQLTemplateNOFICSTATUS.Value = 'C' then
    begin
      ShowMessage('Erro! Nota Fiscal Nro.' + SQLTemplateNOFIINUMERO.AsString + ' CANCELADA, não pode ser Enviada!');
      Abort;
      Exit;
    end;

    if ((not SQLTemplateNOFICSTNFE.IsNull) and (not (SQLTemplateNOFICSTNFE.asstring = '0')) and (not (SQLTemplateNOFICSTNFE.asstring = '6'))) or (SQLTemplateNOFICSTATUS.Value = 'C') then
    begin
      ShowMessage('Nota Eletronica NFe Nº ' + SQLTemplateNOFIINUMERO.AsString + ' já enviada.' + #13 + #10 + '' + #13 + #10 + 'Processamento ignorado.');
    end
    else
    begin
      try
        // Pegar o ultimo numero de nfe enviado e recebido ok e adicionar um

        // Pega Configs Iniciais
        Inicia_NFe;
        Application.ProcessMessages;

        // Cria o arquivo XML
        sXML := Gerar_XMLACBr;
        Application.ProcessMessages;

        if FileExists(sXML) then
        begin
            // Grava Chave no Banco
          SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;
          SQLTemplate.BeforePost := SQLTemplateBeforePost;
          sqltemplate.Edit;
          sqltemplateNOFIA44CHAVEACESSO.Value := copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID) - 44) + 1, 44);
          SQLTemplate.BeforeEdit := nil;
          SQLTemplate.BeforePost := nil;

            // Envia NFe
          ACBrNFe1.NotasFiscais.Assinar;
          ACBrNFe1.NotasFiscais.Validar;
          ACBrNFe1.Enviar('1', False, False);

            //Le novamente o xml para poder pegar o retorno correto
          ACBrNFe1.NotasFiscais.Clear;
          ACBrNFe1.NotasFiscais.LoadFromFile(sXML);
          Application.ProcessMessages;

            // Grava Retorno da Sefaz
          sqltemplate.Edit;
          sqltemplateNOFIA44CHAVEACESSO.Value := copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID) - 44) + 1, 44);
          sqltemplateNOFIA5CODRETORNO.Value := IntToStr(ACBrNFe1.WebServices.Retorno.cStat);
          sqltemplateNOFITRETORNO.Value := ACBrNFe1.WebServices.Retorno.xMotivo;
          sqltemplateNOFIA15PROTOCOLO.Value := ACBrNFe1.WebServices.Retorno.Protocolo;
          sqltemplateNOFIA15RECIBO.Value := ACBrNFe1.WebServices.Retorno.Recibo;
          sqltemplate.Post;

            // Se retorno = 100, NFe foi autorizada imprime Danfe
          if (ACBrNFe1.WebServices.Retorno.cStat = 100) or (ACBrNFe1.WebServices.Retorno.cStat = 104) then
          begin
            ACBrNFe1.NotasFiscais.Imprimir;
            ACBrNFe1.NotasFiscais.ImprimirPDF;
          end;

            // Realimenta os eventos abaixo:
          SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;
          SQLTemplate.BeforePost := SQLTemplateBeforePost;

          if (ACBrNFe1.WebServices.Retorno.cStat = 100) or (ACBrNFe1.WebServices.Retorno.cStat = 104) then
          begin
            SQLTemplate.Edit;
            sqltemplateNOFICSTATUS.Value := 'E';
            sqltemplate.post;
          end;

            // Se retorno = 100, NFe foi autorizada envia email
          if (ACBrNFe1.WebServices.Retorno.cStat = 100) or (ACBrNFe1.WebServices.Retorno.cStat = 104) then
            ReenviarEmail1Click(Self);

            // Limpa a nota do componente ACBr
          ACBrNFe1.NotasFiscais.Clear;
        end
        else
        begin
          Application.MessageBox('Arquivo XML não encontrado!', 'Erro', mb_ok + mb_iconerror);
          SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;
          SQLTemplate.BeforePost := SQLTemplateBeforePost;
            // Limpa a nota do componente ACBr
          ACBrNFe1.NotasFiscais.Clear;

          Exit;
        end;
      except
        on e: exception do
        begin
          ShowMessage('Falha ao Gerar Nota Fiscal: ' + e.message);
          ACBrNFe1.NotasFiscais.Clear;
        end;
      end;
    end;

  finally
    bEnviandoNFE := false;
  end;

end;

procedure TFormCadastroNotaFiscal.ReimprimirDANFE1Click(Sender: TObject);
var
  PathPastaMensal: string;
begin
  inherited;
  VerificaDadosCliente;

  if Trim(SQLTemplateNOFIA44CHAVEACESSO.AsString) = EmptyStr then
  begin
    ShowMessage('Nota ainda não emitida/enviada ao SEFAZ.');
    Exit;
  end;

  // Le arquivo .ini para pegar as config da nfe por filial
  Inicia_NFe;

  PathPastaMensal := FormatDateTime('yyyymm', sqlTemplate.FieldByName('NOFIDEMIS').Value);

  ACBrNFe1.NotasFiscais.Clear;
  ACBrNFe1.NotasFiscais.LoadFromFile(SQLEmpresaEMPRA100CAMINHOXML.AsString + '\' + PathPastaMensal + '\' + SQLTemplateNOFIA44CHAVEACESSO.AsString + '-NFe.xml');
  ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt := SQLTemplateNOFIA15PROTOCOLO.AsString;
  ACBrNFe1.NotasFiscais.Imprimir;
end;

procedure TFormCadastroNotaFiscal.ReenviarEmail1Click(Sender: TObject);
var
  PathPastaMensal, sXML, Danfe, Para, emailCopia, Titulo: string;
  stl: TStringList;
  xSSL, xTSL: Boolean;
  CC: Tstrings;
begin
  inherited;
  // Para - Destinatario
  if SQLTemplateEMPRICODDEST.AsString <> '' then
    Para := LowerCase(SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60EMAIL', SQLTemplateEMPRICODDEST.AsString));
  if SQLTemplateCLIEA13ID.AsString <> '' then
    Para := LowerCase(SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60EMAIL', '''' + SQLTemplateCLIEA13ID.AsString + ''''));
  if SQLTemplateFORNICOD.AsString <> '' then
    Para := LowerCase(SQLLocate('FORNECEDOR', 'FORNICOD', 'FORNA60EMAIL', SQLTemplateFORNICOD.AsString));

  {Se nao tiver email para o Destinatario aborta}
  if Para = '' then
    exit;

  emailCopia := sqlempresaEMPRA60EMAILCOPIA.Value;

  Inicia_NFe;

  Titulo := 'Nota Fiscal Eletronica Emitida!';

  PathPastaMensal := FormatDateTime('yyyymm', sqlTemplate.FieldByName('NOFIDEMIS').Value);

  sXML := SQLEmpresaEMPRA100CAMINHOXML.Value + '\' + PathPastaMensal + '\' + SQLTemplateNOFIA44CHAVEACESSO.asstring + '-NFe.xml';
  Danfe := SQLEmpresaEMPRA100CAMINHODANFES.Value + '\' + SQLTemplateNOFIA44CHAVEACESSO.asstring + '.pdf';

  if FileExists(sXML) then
  begin
    if (Trim(sqlempresaEMPRA50EMAILHOST.Value) = EmptyStr) or (Trim(sqlempresaEMPRA75EMAILUSUARIO.Value) = EmptyStr) or (Trim(sqlempresaEMPRA50EMAILSENHA.Value) = EmptyStr) then
    begin
        {Abortar envio de email}
      exit;
    end;

    if SQLEmpresaEMPRA1SSL.Value = 'S' then
      xSSL := True
    else
      xSSL := False;
    if sqlempresaEMPRA1TSL.Value = 'S' then
      xTSL := True
    else
      xTSL := False;

    try
        //Montando o corpo do email com dados ref. a nota fiscal.
      stl := TStringList.Create; //Instanciando objeto TStringList

        //Adiciona texto padrão de email Nf-e.
      stl.Add('Caro Cliente,');
      stl.Add('');
      stl.Add('Informamos que uma Nota Fiscal Eletronica foi emitida para seu CPF/CNPJ. Numero da NF.: ' + IntToStr(SQLTemplateNOFIINUMERO.AsInteger));
      stl.Add('');
      stl.Add('Para consultar a nota diretamente no site da Receita Federal, escolha e clique nos enderecos eletronicos abaixo e informe a seguinte chave de acesso:');
      stl.Add(SQLTemplateNOFIA44CHAVEACESSO.AsString);
      stl.Add('');
      stl.Add('- Consulta em Ambiente Nacional');
      stl.Add('http://www.nfe.fazenda.gov.br/PORTAL/consulta.aspx?tipoConsulta=completa&tipoConteudo=XbSeqxE8pl8=');
      stl.Add('');
      stl.Add('- Consulta em Ambiente Regional (' + UpperCase(SQLEmpresaEMPRA2UF.Value) + ')');
      stl.Add('https://www.sefaz.rs.gov.br/NFE/NFE-COM.aspx');
      stl.Add('');
      stl.Add('* A NF-e ficara disponivel para consulta por 180 dias, a partir da data de emissao. *');

        // Carrega parametros para enviar email
      ACBrMail1.Subject := Titulo; // assunto
      ACBrMail1.IsHTML := True; // define que a mensagem é html
      ACBrMail1.From := sqlempresaEMPRA75EMAILUSUARIO.AsString;
      ACBrMail1.FromName := sqlempresaEMPRA60NOMEFANT.AsString;
      ACBrMail1.Host := sqlempresaEMPRA50EMAILHOST.AsString;
      ACBrMail1.Username := sqlempresaEMPRA75EMAILUSUARIO.AsString;
      ACBrMail1.Password := sqlempresaEMPRA50EMAILSENHA.AsString;
      ACBrMail1.Port := sqlempresaEMPRIEMAILPORTA.AsString;
      ACBrMail1.UseThread := False; //Aguarda Envio do Email(nÃ£o usa thread)
      ACBrMail1.AddAddress(Para, '');

      //CC:=TstringList.Create;
      if emailCopia <> '' then
       //CC.Add(emailCopia);
        ACBrMail1.AddCC(emailCopia);

        // mensagem principal do e-mail. pode ser html ou texto puro
      ACBrMail1.Body.Text := stl.Text;
      ACBrMail1.SetSSL := xSSL; // SSL - Conexão Segura
      ACBrMail1.SetTLS := xTSL; // TLS - Crypografia, para hotmail obrigatorio
      if FileExists(sXML) then
        ACBrMail1.AddAttachment(sXML, ''); // um_nome_opcional

      if FileExists(Danfe) then
        ACBrMail1.AddAttachment(Danfe, '') // um_nome_opcional
      else begin
        if ACBrNFe1.NotasFiscais.Count > 0 then
        begin
          Danfe := PathWithDelim(ACBrNFeDANFeRL1.PathPDF) + ACBrNFe1.NotasFiscais.Items[0].NumID + '-nfe.pdf';

          if FileExists(Danfe) then
            ACBrMail1.AddAttachment(Danfe, ''); // um_nome_opcional
        end;
      end;

      ACBrMail1.Send;
      {ACBrNFe1.NotasFiscais.Items[0].EnviarEmail( Para, Titulo,
                                               stl
                                               , True  // Enviar PDF junto
                                               , CC   // Lista com emails que serÃ£o enviado cÃ³pias - TStrings
                                               , nil); // Lista de anexos - TStrings
       }
    finally
      stl.Free;
    end;
  end
  else
  begin
    Application.MessageBox('Arquivo XML não encontrado!', 'Erro', mb_ok + mb_iconerror);
    Exit;
  end;
end;

procedure TFormCadastroNotaFiscal.CancelarNFe1Click(Sender: TObject);
var
  PathPastaMensal, idLote, vAux, sXML, sXMLCancelamento: string;
  Point: TBookmark;
  InfoRetorno: TInfoRetornoUser;
begin
  inherited;

  if not Pergunta('Nao', 'Confirma o CANCELAMENTO desta Nota Fiscal Eletrônica?') then
    Exit;

  if AutenticaUsuario(UsuarioAtualNome, 'USUACCANCVENDA', InfoRetorno) = 'N' then
  begin
    ShowMessage('Você não tem autorização para cancelar vendas!');
    Exit;
  end;

  Point := SQLTemplate.GetBookmark;

  Inicia_NFe;

  idLote := '1';

  vAux := 'Cancelamento por erro no preenchimento dos dados da nfe.';

  PathPastaMensal := FormatDateTime('yyyymm', sqlTemplate.FieldByName('NOFIDEMIS').Value);

  sXML := SQLEmpresaEMPRA100CAMINHOXML.AsString + '\' + PathPastaMensal + '\' + SQLTemplateNOFIA44CHAVEACESSO.AsString + '-NFe.xml';

  if FileExists(sxml) then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(sXML);

      // Cancelamento por Evento
    ACBrNFe1.EventoNFe.Evento.Clear;
    ACBrNFe1.EventoNFe.idLote := 0;
    with ACBrNFe1.EventoNFe.Evento.Add do
    begin
      InfEvento.tpAmb := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpAmb;
      InfEvento.CNPJ := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
      InfEvento.cOrgao := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cUF;
      InfEvento.nSeqEvento := 1;
      InfEvento.chNFe := Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
      InfEvento.dhEvento := Now;
      InfEvento.tpEvento := teCancelamento;
      InfEvento.detEvento.xJust := vAux; // Justificativa;
      if ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt <> '' then
        InfEvento.detEvento.nProt := ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt
      else
        InfEvento.detEvento.nProt := sqltemplateNOFIA15PROTOCOLO.Value;
    end;
      // Envia o Cancelamento
    ACBrNFe1.EnviarEvento(StrToInt(idLote)); {trunk2}

      // Le Retorno da Sefaz
    sXMLCancelamento := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.XML;

      // se retorno = 135 ou 136, nota foi cancelada
    if (ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 135) or (ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 136) then
    begin
      SQLTemplate.BeforeEdit := nil;
      SQLTemplate.BeforePost := nil;
      SQLTemplate.Edit;
      SQLTemplateNOFIA5CODRETORNO.Value := intToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat);
      SQLTemplateNOFITRETORNO.Value := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;
      SQLTemplateNOFIA15PROTOCOLO.Value := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
      SQLTemplate.Post;
      SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;
      SQLTemplate.BeforePost := SQLTemplateBeforePost;
          // Executa o Cancelamento no Sistema para corrigir Estoque.
      CancelandoNota := True;
      SQLTemplate.Edit;
      SQLTemplate.FindField('NOFICSTATUS').asString := 'C';
      SQLTemplate.FindField('USUAICOD').AsInteger := InfoRetorno.CodUsuarioAutenticado;
      SQLTemplate.FindField('USUAA60LOGIN').AsString := InfoRetorno.NomeUsuarioAutenticado;
      SQLTemplate.FindField('NOFIDCANCEL').AsDateTime := Date;
      SQLTemplate.Post;
      CancelandoNota := False;
    end;
  end
  else
    ShowMessage('XML não foi localizado!');

  SQLTemplate.Close;
  SQLTemplate.Open;
  SQLtemplate.GotoBookmark(Point);
  SQLTemplate.FreeBookmark(Point);
end;

procedure TFormCadastroNotaFiscal.EncerrarNotaFiscalJava1Click(Sender: TObject);
begin
  inherited;
  EncerrarNota;
end;

function TFormCadastroNotaFiscal.ExecAndWait(Comando: string; WindowState: word): boolean;
var
  SUInfo: TStartupInfo;
  ProcInfo: TProcessInformation;
  CmdLine: string;
begin
  { Enclose filename in quotes to take care of long filenames with spaces. }
  FillChar(SUInfo, SizeOf(SUInfo), #0);
  with SUInfo do
  begin
    cb := 2048;
    lpReserved := nil;
    lpDesktop := nil;
    lpTitle := nil;
    dwFlags := STARTF_USESHOWWINDOW;
    wShowWindow := SW_SHOWNORMAL; //SW_Hide; //para não aparecer na tela (background)!
    cbReserved2 := 0;
    lpReserved2 := nil;
  end;

  Result := CreateProcess(nil, PChar(Comando), nil, nil, False, 0, nil, nil, SUInfo, ProcInfo);
  { Wait for it to finish. }
  if Result then
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);
end;

procedure TFormCadastroNotaFiscal.RxSpeedButton1Click(Sender: TObject);
begin
  inherited;
  DSMasterSYS := DsTemplate;
  CriaFormulario(TFormCadastroNotaFiscalReferenciada, 'FormCadastroNotaFiscalReferenciada', True, False, True, 'Nota Fiscal Nº ' + SQLTemplateNOFIINUMERO.AsString);
end;

procedure TFormCadastroNotaFiscal.RxSpeedButton2Click(Sender: TObject);
begin
  inherited;
{  If Trim(SQLTemplate.FindField('NOFIA5CODRETORNO').asString) <> '100' Then
    Begin
      Informa('Não são permitidas Correções em Notas Fiscais com codigo de Retorno diferente de 100 (Efetivada).');
      Abort;
    End; }
  DSMasterSYS := DsTemplate;
  CriaFormulario(TFormCadastroNotaFiscalCartaCorrecao, 'FormCadastroNotaFiscalCartaCorrecao', True, False, True, 'Carta de Correção da Nota Fiscal Nº ' + SQLTemplateNOFIINUMERO.AsString);
end;

procedure TFormCadastroNotaFiscal.BitBtn1Click(Sender: TObject);
begin
  inherited;
  try
    SQLTemplate.BeforeEdit := nil;
    SQLTemplate.BeforePost := nil;
    SQLTemplate.Edit;
    SQLTemplateNOFIA44CHAVEACESSO.AsString := edtChave.Text;
    SQLTemplate.Post;
    SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;
    SQLTemplate.BeforePost := SQLTemplateBeforePost;
  except
    on e: exception do
    begin
      Showmessage('Falha ao Gravar Chave da Nota Fiscal: ' + e.Message);
      if SQLTemplate.State in ([dsEdit]) then
        SQLTemplate.Cancel;
    end;
  end;

end;

procedure TFormCadastroNotaFiscal.InunitilizarNmeros1Click(Sender: TObject);
var
  FormInutilizacaoNFe: TForm;
  Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa: string;
begin
  inherited;
  Inicia_NFe;
  if not (InputQuery('WebServices Inutilização ', 'Ano', Ano)) then
    exit;
  if not (InputQuery('WebServices Inutilização ', 'Modelo', Modelo)) then
    exit;
  if not (InputQuery('WebServices Inutilização ', 'Serie', Serie)) then
    exit;
  if not (InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroInicial)) then
    exit;
  if not (InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroFinal)) then
    exit;
  if not (InputQuery('WebServices Inutilização ', 'Justificativa', Justificativa)) then
    exit;
  ACBrNFe1.WebServices.Inutiliza(SQLEmpresaEMPRA14CGC.AsString, Justificativa, StrToInt(Ano), StrToInt(Modelo), StrToInt(Serie), StrToInt(NumeroInicial), StrToInt(NumeroFinal));
  ShowMessage('Inutilização Ok.');
//  FormInutilizacaoNFe := TFormInutilizacaoNFe.Create(Self);
//  FormInutilizacaoNFe.ShowModal;
end;

procedure TFormCadastroNotaFiscal.SQLTemplateNOFICFINALIDADEChange(Sender: TField);
begin
  inherited;
  label11.Visible := not (SQLTemplateNOFICFINALIDADE.AsString = '3');
  Label25.Visible := SQLTemplateNOFICFINALIDADE.AsString = '3';
end;

procedure TFormCadastroNotaFiscal.RxSpeedButton3Click(Sender: TObject);
begin
  inherited;
  PagePrincipal.ActivePage := PageExportacao;
end;

procedure TFormCadastroNotaFiscal.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
  MemoRetornoNFE.Lines.SaveToFile(ExtractFileDir(application.ExeName) + 'temp.xml');
  MyWebBrowser.Navigate(ExtractFileDir(application.ExeName) + 'temp.xml');
end;

procedure TFormCadastroNotaFiscal.Inicia_NFe();
var
  Ok: Boolean;
begin
{$IFDEF ACBrNFeOpenSSL}
  ACBrNFe1.Configuracoes.Certificados.Certificado := sqlEmpresaEMPRA100CERTIFSERIE.AsString;
  ACBrNFe1.Configuracoes.Certificados.Senha := sqlEmpresaEMPRA35CERTIFSENHA.AsString;
{$ELSE}
  ACBrNFe1.Configuracoes.Certificados.NumeroSerie := SQLEmpresaEMPRA100CERTIFSERIE.AsString;
{$ENDIF}
  ACBrNFe1.Configuracoes.Geral.FormaEmissao := StrToTpEmis(OK, IntToStr(sqlEmpresaEMPRIFORMAEMISNFE.AsInteger + 1));

  ACBrNFe1.Configuracoes.Arquivos.PathSalvar := sqlEmpresaEMPRA100CAMINHOXML.AsString;
  ACBrNFe1.Configuracoes.Arquivos.PathNFe := sqlEmpresaEMPRA100CAMINHOXML.AsString;
  ACBrNFe1.Configuracoes.Arquivos.PathEvento := sqlEmpresaEMPRA100CAMINHOXML.AsString;
  ACBrNFe1.Configuracoes.Arquivos.PathInu := sqlEmpresaEMPRA100CAMINHOXML.AsString;

  ACBrNFe1.Configuracoes.WebServices.UF := SQLEmpresaEMPRA2WSUF.AsString;
  ACBrNFe1.Configuracoes.WebServices.Ambiente := StrToTpAmb(Ok, IntToStr(SQLEmpresaEMPRIWSAMBIENTE.AsInteger + 1));
  ACBrNFe1.Configuracoes.WebServices.Visualizar := SQLEmpresaEMPRA1VISUALIZAMSG.AsString = 'S';
  ACBrNFe1.Configuracoes.WebServices.ProxyHost := sqlEmpresaEMPRA100PROXYHOST.AsString;

  if SQLEmpresaEMPRIPROXYPORTA.AsInteger > 0 then
    ACBrNFe1.Configuracoes.WebServices.ProxyPort := IntToStr(SQLEmpresaEMPRIPROXYPORTA.AsInteger);

  ACBrNFe1.Configuracoes.WebServices.ProxyUser := SQLEmpresaEMPRA50PROXYUSUARIO.AsString;
  ACBrNFe1.Configuracoes.WebServices.ProxyPass := SQLEmpresaEMPRA50PROXYSENHA.AsString;

  ACBrNFe1.DANFE.PathPDF := SQLEmpresaEMPRA100CAMINHODANFES.AsString;
  ACBrNFe1.DANFE.Logo := sqlEmpresaEMPRA100CAMINHOLOGO.AsString;
  ACBrNFe1.DANFE.TipoDANFE := StrToTpImp(OK, IntToStr(sqlEmpresaEMPRIFORMAEMISDANFE.AsInteger + 1));
end;

procedure TFormCadastroNotaFiscal.ACBrNFe1GerarLog(const Mensagem: string);
begin
  inherited;
  MemoRetornoNFE.Lines.Add(Mensagem);
// Removido Adilson para nao ter que ficar dando ok a cada etapa  ShowMessage(mensagem);
end;

procedure TFormCadastroNotaFiscal.ACBrNFe1StatusChange(Sender: TObject);
begin
  inherited;
{  try frmStatusNFe.Close; except Application.ProcessMessages;  end;

  case ACBrNFe1.Status of
    stIdle :
      begin
        Application.ProcessMessages;
      end;
    stNFeStatusServico :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Verificando Status do servico...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNFeRecepcao :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Enviando dados da NFe...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNfeRetRecepcao :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Recebendo dados da NFe...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNfeConsulta :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Consultando NFe...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNfeCancelamento :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Enviando cancelamento de NFe...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNfeInutilizacao :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Enviando pedido de Inutilização...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNFeRecibo :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Consultando Recibo de Lote...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNFeCadastro :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Consultando Cadastro...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNFeEmail :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Enviando Email...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNFeCCe :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Enviando Carta de Correção...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
    stNFeEvento :
      begin
        try
          frmStatusNFe := TfrmStatusNFe.Create(Application);
          frmStatusNFe.lblStatus.Caption := 'Enviando Evento...';
          frmStatusNFe.Show;
        except
         Application.ProcessMessages;
        end;
      end;
  end;
  Application.ProcessMessages;}
end;

procedure TFormCadastroNotaFiscal.ConsultarWebService1Click(Sender: TObject);
begin
  inherited;
  // Consulta Status Servidor Web
  Inicia_NFe;
  MemoRetornoNFE.lines.Clear;
  ACBrNFe1.WebServices.StatusServico.Executar;
  MemoRetornoNFE.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetWS);
  LoadXML(MemoRetornoNFE, WBResposta);
end;

function TFormCadastroNotaFiscal.Gerar_XMLACBr(): string;
var
  nEmail, nTipoProduto, modBC, modBCST: string;
  Cpf_Dest, Cnpj_Dest, IE_Dest, CFOP, CdBarras, TipoFrete, Descr_Prod, Unidade, NCM, CEST, ForPag, eServico, vCSTIPI, vOrigem: string;
  Erro, TemDifal: boolean;
  Vlr_Tot_Bruto, ValordoPis, ValordoCofins, PercCofins, PercPis, FatorConversao, vTotTrib: double;
  iCRT, IndiceReferenciamento: integer;
  xProdTotal: string;
begin
  if not VerificaDadosCliente then
    Exit;

  if not VerificaDadosTransp then
    Exit;

  // Zera os totalizadores
  vII_Total := 0;
  vPIS_Total := 0;
  vCOFINS_Total := 0;
  TemDifal := False;
  CFOP := SQLTemplateCFOPA5COD.Value;

  while pos('-', CFOP) > 0 do
    delete(CFOP, pos('-', CFOP), 1);
  while pos('.', CFOP) > 0 do
    delete(CFOP, pos('.', CFOP), 1);

  if length(CFOP) <> 4 then
  begin
    ShowMessage('Tamanho do CFOP está incorreto! Verifique no Cadastro de Operações de Estoque');
    Exit;
  end;

  ACBrNFe1.NotasFiscais.Clear;
  with ACBrNFe1.NotasFiscais.Add.NFe do
  begin
    infNFe.ID := sqltemplate.fieldbyname('NOFIA13ID').asstring;
    Ide.natOp := ComboOPEstoque.Text; // SQLLocate('CFOP','CFOPA5COD','CFOPA60DESCR',''''+CFOP+'''');
    Ide.nNF := sqltemplate.fieldbyname('NOFIINUMERO').AsInteger;
    Ide.cNF := sqltemplate.fieldbyname('NOFIINUMERO').AsInteger;
    Ide.modelo := 55;
    Ide.serie := StrToInt(sqltemplate.fieldbyname('SERIA5COD').AsString);
    Ide.dEmi := sqltemplate.fieldbyname('NOFIDEMIS').AsDateTime;
    Ide.dSaiEnt := sqltemplate.fieldbyname('NOFIDSAIDAENTRADA').AsDateTime;
    Ide.hSaiEnt := sqltemplate.fieldbyname('NOFIDSAIDAENTRADA').AsDateTime;
    {Finalidade Emissao}
    if SQLTemplateNOFICFINALIDADE.Value = '1' then
      Ide.finNFe := fnNormal;
    if SQLTemplateNOFICFINALIDADE.Value = '2' then
      Ide.finNFe := fnComplementar;
    if SQLTemplateNOFICFINALIDADE.Value = '3' then
      Ide.finNFe := fnAjuste;
    if SQLTemplateNOFICFINALIDADE.Value = '4' then
      Ide.finNFe := fnDevolucao;
    {Nfe de Entrada ou Saida}
    if SQLTemplateNOFA1ENTRADASAIDA.Value = 'S' then
      Ide.tpNF := tnSaida
    else
      Ide.tpNF := tnEntrada;

    // verifica a forma de pagamento
    SQLContasReceber.Open;
    SQLContasReceber.First;
    if SQLContasReceberCTRCDVENC.isnull then
      Ide.indPag := ipVista
    else
    begin
      if (SQLTemplateNOFIDEMIS.AsString = SQLContasReceberCTRCDVENC.AsString) then
        Ide.indPag := ipVista
      else
        Ide.indpag := ipPrazo;
      SQLContasReceber.Next;
      if SQLContasReceber.RecordCount > 1 then
        Ide.indpag := ipPrazo;
    end;

    Ide.verProc := '3.0';

    // Carrega cod Estado e Municipio conforme padrao IBGE
    try
      Ide.cUF := StrToInt(SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRIUFCODFED', EmpresaPadrao));
    except
      ShowMessage('Erro: Verifique no Cadastro de Empresa o Cod.UF na Tabela Ibge!');
      Exit;
    end;
    try
      Ide.cMunFG := StrToInt(SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRIMUNICODFED', EmpresaPadrao));
    except
      ShowMessage('Erro: Verifique no Cadastro de Empresa o Cod.UF na Tabela Ibge!');
      Exit;
    end;
    if Length(IntToStr(Ide.cMunFG)) <> 7 then
    begin
      ShowMessage('Erro: Verifique no Cadastro de Empresa o Cod.Municipio na Tabela Ibge!');
      Exit;
    end;

    // Notas Fiscais Referenciadas
    SQLNotaFiscalReferenciada.Close;
    SQLNotaFiscalReferenciada.SQL.Clear;
    SQLNotaFiscalReferenciada.SQL.Add('Select * From NOTAFISCALREFERENCIADA Where NOFIA13ID =:xNOFIA13ID');
    SQLNotaFiscalReferenciada.ParamByName('xNOFIA13ID').AsString := SQLTemplateNOFIA13ID.AsString;
    SQLNotaFiscalReferenciada.Open;
    if not SQLNotaFiscalReferenciada.IsEmpty then
    begin
      IndiceReferenciamento := 0;
      while not SQLNotaFiscalReferenciada.Eof do
      begin
            // Referenciar Nota Fiscal Eletronica
        if SQLNotaFiscalReferenciada.FieldByName('TIPO').AsString = '1' then
        begin
          Ide.NFref.add;
          Ide.NFref[IndiceReferenciamento].refNFe := SQLNotaFiscalReferenciada.FieldByName('CHAVEACESSO').AsString;
        end;
            // Referenciar Conhecimento Eletronica
        if SQLNotaFiscalReferenciada.FieldByName('TIPO').AsString = '2' then
        begin
          Ide.NFref.add;
          Ide.NFref[IndiceReferenciamento].refNFe := SQLNotaFiscalReferenciada.FieldByName('CHAVEACESSO').AsString;
        end;
            // Referenciar Nota Fiscal 1 e 1A
        if SQLNotaFiscalReferenciada.FieldByName('TIPO').AsString = '3' then
        begin
          Ide.NFref.add;
          Ide.NFref[IndiceReferenciamento].refNF.cUF := SQLNotaFiscalReferenciada.FieldByName('UF').AsInteger;
          Ide.NFref[IndiceReferenciamento].refNF.AAMM := FormatDateTime('YYMM', SQLNotaFiscalReferenciada.FieldByName('DATAEMISSAO').AsDateTime);
          Ide.NFref[IndiceReferenciamento].refNF.CNPJ := SQLNotaFiscalReferenciada.FieldByName('CNPJ_CPF').AsString;
          Ide.NFref[IndiceReferenciamento].refNF.modelo := SQLNotaFiscalReferenciada.FieldByName('MODELO').AsInteger;
          Ide.NFref[IndiceReferenciamento].refNF.serie := SQLNotaFiscalReferenciada.FieldByName('SERIA5COD').AsInteger;
          Ide.NFref[IndiceReferenciamento].refNF.nNF := SQLNotaFiscalReferenciada.FieldByName('NUMERO').AsInteger;
        end;
            // Nota Fiscal de Produtor Rural
        if SQLNotaFiscalReferenciada.FieldByName('TIPO').AsString = '4' then
        begin
          Ide.NFref.add;
          Ide.NFref[IndiceReferenciamento].RefNFP.cUF := SQLNotaFiscalReferenciada.FieldByName('UF').AsInteger;
          Ide.NFref[IndiceReferenciamento].RefNFP.AAMM := FormatDateTime('YYMM', SQLNotaFiscalReferenciada.FieldByName('DATAEMISSAO').AsDateTime);
          Ide.NFref[IndiceReferenciamento].refNFP.CNPJCPF := SQLNotaFiscalReferenciada.FieldByName('CNPJ_CPF').AsString;
          Ide.NFref[IndiceReferenciamento].refNFP.modelo := SQLNotaFiscalReferenciada.FieldByName('MODELO').AsString;
          Ide.NFref[IndiceReferenciamento].refNFP.serie := SQLNotaFiscalReferenciada.FieldByName('SERIA5COD').AsInteger;
          Ide.NFref[IndiceReferenciamento].refNFP.nNF := SQLNotaFiscalReferenciada.FieldByName('NUMERO').AsInteger;
          Ide.NFref[IndiceReferenciamento].refNFP.IE := SQLNotaFiscalReferenciada.FieldByName('IE').AsString;
        end;
            // Cupom Fiscal
        if SQLNotaFiscalReferenciada.FieldByName('TIPO').AsString = '5' then
        begin
          Ide.NFref.add;
          Ide.NFref[IndiceReferenciamento].RefECF.modelo := ECFModRef2D;
          Ide.NFref[IndiceReferenciamento].RefECF.nECF := SQLNotaFiscalReferenciada.FieldByName('NUMERO_ECF').AsString;
          Ide.NFref[IndiceReferenciamento].RefECF.nCOO := SQLNotaFiscalReferenciada.FieldByName('NUMERO_COO').AsString;
        end;
        SQLNotaFiscalReferenciada.Next;
        inc(IndiceReferenciamento);
      end;
    end;

    // dados do emitente
    Emit.CNPJCPF := sn(SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA14CGC', EmpresaPadrao));

    if (SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20IE', EmpresaPadrao) = '') or (SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20IE', EmpresaPadrao) = 'ISENTO') then
      Emit.IE := '1234567890'
    else
      Emit.IE := sn(SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20IE', EmpresaPadrao));

    Emit.IM := sn(SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20IMUNIC', EmpresaPadrao));
    Emit.CNAE := sn(SQLLocate('EMPRESA', 'EMPRICOD', 'CNAEFISCAL', EmpresaPadrao));

    iCRT := StrToInt(SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA3CRT', EmpresaPadrao));
    if iCRT = 1 then
      Emit.CRT := crtSimplesNacional
    else if iCRT = 2 then
      Emit.CRT := crtSimplesExcessoReceita
    else if iCRT = 3 then
      Emit.CRT := crtRegimeNormal;

    Emit.xNome := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60RAZAOSOC', EmpresaPadrao);
    Emit.xFant := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', EmpresaPadrao);
    Emit.EnderEmit.fone := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA20FONE', EmpresaPadrao);
    Emit.EnderEmit.CEP := StrToInt(SN(SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA8CEP', EmpresaPadrao)));
    Emit.EnderEmit.xLgr := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60END', EmpresaPadrao);
    Emit.EnderEmit.nro := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRIENDNRO', EmpresaPadrao);
    Emit.EnderEmit.xCpl := ''; // Complemento
    Emit.EnderEmit.xBairro := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60BAI', EmpresaPadrao);
    Emit.EnderEmit.cMun := StrToInt(SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRIMUNICODFED', EmpresaPadrao));
    Emit.EnderEmit.xMun := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60CID', EmpresaPadrao);
    Emit.EnderEmit.UF := SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA2UF', EmpresaPadrao);
    Emit.enderEmit.cPais := 1058;
    Emit.enderEmit.xPais := 'BRASIL';


    // dados do destinatario
    nEmail := '';
    if SQLTemplateOrigemDestinoLookUp.AsString[1] = 'C' then
      nEmail := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60EMAIL', '''' + SQLTemplate.FieldByName('CLIEA13ID').AsString + '''')
    else if SQLTemplateOrigemDestinoLookUp.AsString[1] = 'F' then
      nEmail := SQLLocate('FORNECEDOR', 'FORNICOD', 'FORNA60EMAIL', SQLTemplate.FieldByName('FORNICOD').AsString);

    Dest.xNome := ConverteAcentos(SQLTemplateCliFornEmpLookUp.AsString);
    Dest.EnderDest.CEP := StrToInt(sn(SQLTemplateCliFornEmpCEPLookUp.AsString));
    Dest.EnderDest.xLgr := Converteacentos(SQLTemplateCliFornEmpEnderecoLookUp.AsString);
    Dest.EnderDest.nro := SQLTemplateEmpNumeroEndLookUp.AsString;
    Dest.EnderDest.xCpl := ''; // Complemento
    Dest.EnderDest.xBairro := ConverteAcentos(SQLTemplateCliFornEmpBairroLookUp.AsString);
    Dest.EnderDest.cMun := StrToInt(SQLTemplateCliFornEmpCdMunicipoNfeLookUp.AsString);
    Dest.EnderDest.xMun := ConverteAcentos(SQLTemplateCliFornEmpCidadeLookUp.AsString);
    Dest.EnderDest.UF := SQLTemplateCliFornEmpEstadoLookUp.AsString;
    Dest.EnderDest.Fone := sn(SQLTemplateCliFornEmpFoneLookUp.AsString);
    Dest.ISUF := ''; // Inscrição na SUFRAMA
    Dest.Email := nEmail;

    if Length(SQLTemplateCliFornEmpCGCCPFLookUp.AsString) = 14 then
    begin
      Dest.CNPJCPF := sn(SQLTemplateCliFornEmpCGCCPFLookUp.AsString);
      IE_Dest := SQLTemplateCliFornEmpIERGLookUp.AsString;
    end
    else
    begin
      Dest.CNPJCPF := sn(SQLTemplateCliFornEmpCGCCPFLookUp.AsString);
        // IE_Dest   := SQLTemplateCliFornEmpIERGLookUp.AsString; {cpf nao vai ie}
      IE_Dest := '';
    end;

    {indIEDest 1=Obrigatorio IE , 2=Isento de Inscrição, 9=Exterior Não Contribuinte}
    if (trim(IE_Dest) = 'ISENTO') or (IE_Dest = '') then
    begin
      ide.indFinal := cfConsumidorFinal;
      Dest.indIEDest := inNaoContribuinte; {9}
        // Dest.indIEDest := inIsento; {2}
      Dest.IE := ''; {Preencher vazio}
    end
    else
    begin
      ide.indFinal := cfNao;
      Dest.indIEDest := inContribuinte; //1
      Dest.IE := IE_Dest;
      {  if (Dest.EnderDest.UF = 'AM') or (Dest.EnderDest.UF = 'BA') or (Dest.EnderDest.UF = 'CE') or (Dest.EnderDest.UF = 'GO') or
           (Dest.EnderDest.UF = 'MG') or (Dest.EnderDest.UF = 'MS') or (Dest.EnderDest.UF = 'MT') or (Dest.EnderDest.UF = 'PE') or
           (Dest.EnderDest.UF = 'RN') or (Dest.EnderDest.UF = 'SE') or (Dest.EnderDest.UF = 'SP') then
          begin
            ide.indFinal   := cfConsumidorFinal;
            Dest.indIEDest := inNaoContribuinte; //9Conforme Regra de Validacao esses estados nao aceitam op.sem IE
            Dest.IE        := '';
          end; }
    end;

    {Testa Difal => Segundo forum existira apenas quando for VENDA ENTRE ESTADOS E DESTINATARIO NAO POSSUIR INSC ESTADUAL}
    if (Emit.EnderEmit.UF <> Dest.EnderDest.UF) and ((trim(IE_Dest) = 'ISENTO') or (IE_Dest = '')) then
      TemDifal := True;

    if SQLTemplateCliFornEmpEstadoLookUp.AsString = 'EX' then
    begin
      Dest.IE := ''; {Preencher vazio}
      Dest.indIEDest := inNaoContribuinte; {9}
    end;

    if SQLTemplateCliFornEmpEstadoLookUp.AsString <> 'EX' then
    begin
      Dest.EnderDest.cPais := 1058;
      Dest.EnderDest.xPais := 'BRASIL';

        {Identificador de local de destino da operação}
      if (Emit.EnderEmit.UF = Dest.EnderDest.UF) then
        Ide.idDest := doInterna
      else
        Ide.idDest := doInterestadual;
    end
    else
    begin
      Ide.idDest := doExterior;

      Dest.idEstrangeiro := '';
      Dest.EnderDest.cPais := 2496;
      Dest.EnderDest.xPais := 'EXTERIOR';

        {Local Embarque}
      exporta.UFSaidaPais := sqltemplateNOFIA2UFEMBARQUE.AsString;
      exporta.xLocExporta := SQLTemplateNOFIA60LOCALEMBARQUE.AsString;
    end;

    // Testa se tem cod.mun.ibge
    if Length(IntToStr(Dest.EnderDest.cMun)) <> 7 then
    begin
      ShowMessage('Erro: Verifique no Cadastro de Destinatario o Cod.Municipio na Tabela Ibge!');
      Exit;
    end;

    // Loop dos Produtos
    Dm.ImportandoPedidoVenda := True; // Pra enganar a rotina Calcfields
    SQLNotaFiscalItem.Close;
    SQLNotaFiscalItem.RequestLive := False;
    SQLNotaFiscalItem.SQL.Clear;
    SQLNotaFiscalItem.SQL.Add('Select i.* From NOTAFISCALITEM i left join Produto p on p.prodicod = i.prodicod Where NOFIA13ID =:NOFIA13ID order by i.NFITIITEM');
    SQLNotaFiscalItem.Open;
    SQLNotaFiscalItem.First;
    while not SQLNotaFiscalItem.Eof do
    begin
      if SQLNotaFiscalItemCFOPA5CODAUX.Value <> '' then
        CFOP := SoNumeros(SQLNotaFiscalItemCFOPA5CODAUX.asstring)
      else
        CFOP := SoNumeros(SQLTemplateCFOPA5COD.AsString);

        // Testa se tem CFOP
      if Length(CFOP) <> 4 then
      begin
        ShowMessage('Erro: Tamanho do CFOP incorreto! Verifique no Cadastro de Operações de Estoque');
        Exit;
      end;

        // Unidade
      SQLUnidade.Close;
      if SQLNotaFiscalItemUNIDICOD.AsString <> '' then
        SQLUnidade.MacroByName('Filtro').Value := 'UNIDICOD = ' + SQLNotaFiscalItemUNIDICOD.AsString
      else
        SQLUnidade.MacroByName('Filtro').Value := 'UNIDICOD = ' + SQLLocate('produto', 'prodicod', 'unidicod', SQLNotaFiscalItemprodicod.AsString);
      try
        SQLUnidade.Open;
      except
        Application.ProcessMessages;
        ShowMessage('Erro: Falta Unidade de Venda para o Produto => ' + SQLNotaFiscalItemprodicod.AsString);
        Exit;
      end;
      Unidade := SQLUnidadeUNIDA5DESCR.AsString;
      FatorConversao := SQLUnidadeUNIDN3FATORCONV.AsFloat;
      SQLUnidade.Close;

        {Carrega Produtos temporarios}
      dm.sqlconsulta.close;
      dm.sqlconsulta.sql.Clear;
      dm.sqlconsulta.sql.add('select PRODA60DESCR,PRODA60CODBAR,PRODA60REFER,PRODIORIGEM,');
      dm.sqlconsulta.sql.add('PRODA1TIPO,PRODCSERVICO,PRODA1MODBC,PRODA1MODBCST,PRODA1MODBCST,PRODA2CSTCOFINS,PRODA2CSTPIS,PRODN2ALIQPIS,PRODA2CSTIPI,PRODN3PERCIPI,PRODN2ALIQCOFINS,TABCEST from produto where prodicod=' + SQLNotaFiscalItemPRODICOD.AsString);
      dm.sqlconsulta.open;

      if FileExists('VFNota.txt') then // exibe o valor final (total custo + subst. Trib.) ao lado do nome do produto.
        Descr_Prod := ConverteAcentos(dm.sqlConsulta.fieldbyname('PRODA60DESCR').AsString) + CalculoSubstituicaoTributaria
      else
        Descr_Prod := ConverteAcentos(Trim(dm.sqlConsulta.fieldbyname('PRODA60DESCR').AsString) + ' ' + Trim(SQLNotaFiscalItemNFITA254OBS.AsString));

      if FileExists('NFEBarras.txt') then
      begin
        CdBarras := dm.sqlConsulta.fieldbyname('PRODA60CODBAR').AsString;
        Descr_Prod := CdBarras + '-' + Descr_Prod;
        CdBarras := '';
      end
      else
        CdBarras := '';

      if FileExists('NFEReferencia.txt') then
        Descr_Prod := 'Ref.: ' + dm.sqlConsulta.fieldbyname('PRODA60REFER').AsString + ' - ' + Descr_Prod;

      if FileExists('NFEImpOBS.txt') and (SQLNotaFiscalItemNFITA254OBS.AsString <> '') then
        Descr_Prod := SQLNotaFiscalItemNFITA254OBS.AsString;

      SitTrib := SQLNotaFiscalItemNFITICST.AsString;
        // Testa se tem SitTrib
      if SitTrib = '' then
      begin
        ShowMessage('Erro: Situação Tributária do Produto não foi informada no Cadastro de Produto = ' + SQLNotaFiscalItemPRODICOD.AsString);
        Exit;
      end;
        // Testa se Empresa for do Simples 1 ou 2 e se SitTrib for menor que 3 digitos, tem erro de cadastro produto.
      if (iCRT <> 3) and (length(SitTrib) < 3) then
      begin
        ShowMessage('Erro: Situação Tributária do Produto = ' + SQLNotaFiscalItemPRODICOD.AsString + ' não confere com o Regime do Emitente informado no Cadastro de Empresas!');
        Exit;
      end;

      vOrigem := dm.sqlConsulta.fieldbyname('PRODIORIGEM').AsString;
      NCM := SQLLocate('NCM', 'NCMICOD', 'NCMA30CODIGO', SQLLocate('PRODUTO', 'PRODICOD', 'NCMICOD', SQLNotaFiscalItemPRODICOD.AsString));
      nTipoProduto := dm.sqlConsulta.fieldbyname('PRODA1TIPO').AsString;
      eServico := dm.sqlConsulta.fieldbyname('PRODCSERVICO').AsString;
      modBC := dm.sqlConsulta.fieldbyname('PRODA1MODBC').AsString;
      modBCST := dm.sqlConsulta.fieldbyname('PRODA1MODBCST').AsString;
      vCSTIPI := dm.sqlConsulta.fieldbyname('PRODA2CSTIPI').AsString;
      CEST := dm.sqlConsulta.fieldbyname('TABCEST').AsString;

        // Testa se Produto tem NCM.
      if NCM = '' then
      begin
        ShowMessage('Erro: NCM do Produto = ' + SQLNotaFiscalItemPRODICOD.AsString + ' não informado!');
        Exit;
      end;

      with Det.Add do
      begin
        Prod.nItem := SQLNotaFiscalItemNFITIITEM.asinteger;
        Prod.cProd := SQLNotaFiscalItemPRODICOD.AsString;
        Prod.cEAN := CdBarras;
        prod.NCM := sn(NCM);
        Prod.xProd := Copy(Descr_Prod, 0, 120);
        if SQLNotaFiscalItemCFOPA5CODAUX.AsString <> '' then
          Prod.CFOP := sn(SQLNotaFiscalItemCFOPA5CODAUX.AsString)
        else
          Prod.CFOP := sn(CFOP);

        Prod.vUnCom := SQLNotaFiscalItemNFITN2VLRUNIT.asfloat;
        Prod.vUnTrib := SQLNotaFiscalItemNFITN2VLRUNIT.asfloat;

        Prod.qCom := SQLNotaFiscalItemNFITN3QUANT.asfloat * FatorConversao;
        Prod.qTrib := SQLNotaFiscalItemNFITN3QUANT.asfloat * FatorConversao;

        Prod.uCom := Unidade;
        prod.uTrib := Unidade;

        xProdTotal := FormatFloat('##0.00', Prod.vUnTrib * Prod.qTrib);

        Prod.vProd := strtoFloat(xProdTotal);
        prod.vDesc := SQLNotaFiscalItemNFITN2VLRDESC.AsFloat;
        Prod.vFrete := SQLNotaFiscalItemNFITN2VLRFRETE.AsFloat;
        Prod.vSeg := SQLNotaFiscalItemNFITN2SEGURO.AsFloat;
        Prod.vOutro := SQLNotaFiscalItemNFITN2OUTRASDESP.AsFloat;

        infAdProd := SQLNotaFiscalItemNFITA254OBS.AsString; // complemento do nome do item
        Prod.EXTIPI := '23';
        Prod.IndTot := itSomaTotalNFe;
        if (Copy(CdBarras, 0, 3) <> '999') and (cdBarras <> '') then
          Prod.cEANTrib := CdBarras;

            {CEST CODIGO}
        if (SQLNotaFiscalItemNFITICST.AsString = '60') or (SQLNotaFiscalItemNFITICST.AsString = '500') then
          Prod.CEST := CEST;

            {Calc Totais conforme regra fiscal}
        Total.ICMSTot.vProd := Total.ICMSTot.vProd + Prod.vProd;
        Total.ICMSTot.vDesc := Total.ICMSTot.vDesc + Prod.vDesc;
        Total.ICMSTot.vFrete := Total.ICMSTot.vFrete + Prod.vFrete;
        Total.ICMSTot.vSeg := Total.ICMSTot.vSeg + prod.vSeg;
        Total.ICMSTot.vOutro := Total.ICMSTot.vOutro + prod.vOutro;

            // lei da transparencia nos impostos
        vTotTrib := 0;
        with Imposto do
        begin
                { Alimenta IPI
                50-Saída tributada
                51-Saída tributada com alíquota zero
                52-Saída isenta
                53-Saída não-tributada
                54-Saída imune
                55-Saída com suspensão
                99-Outras saídas  }
          if SQLNotaFiscalItemNFITN2VLRIPI.Value > 0 then
          begin
            IPI.CST := ipi50;
            IPI.clEnq := '';
            IPI.cEnq := '999';
            ipi.vBC := Prod.vProd - Prod.vDesc;
            ipi.pIPI := SQLNotaFiscalItemNFITN2PERCIPI.value;
            ipi.vIPI := SQLNotaFiscalItemNFITN2VLRIPI.value;
          end
          else
          begin
            IPI.CST := ipi00;
            IPI.clEnq := '';
            IPI.cEnq := '999';
            ipi.pIPI := 0;
            ipi.vIPI := 0;
          end;
          Total.ICMSTot.vIPI := Total.ICMSTot.vIPI + ipi.vIPI;

          if vOrigem = '0' then
            ICMS.orig := oeNacional
          else if vOrigem = '1' then
            ICMS.orig := oeEstrangeiraImportacaoDireta
          else if vOrigem = '2' then
            ICMS.orig := oeEstrangeiraAdquiridaBrasil;

                {Difal}
          if TemDifal then
          begin
                    {Valor da Base de Cálculo do ICMS na UF de destino. - Valor Frete}
            ICMSUFDest.vBCUFDest := SQLNotaFiscalItemNFITN2BASEICMS.value - SQLNotaFiscalItemNFITN2VLRFRETE.Value;
                    {Percentual adicional inserido na alíquota interna da UF de destino, relativo ao Fundo de Combate à Pobreza (FCP) naquela UF. Nota: Percentual máximo de 2%, conforme a legislação.}
            ICMSUFDest.pFCPUFDest := 0.00;
                    {Alíquota adotada nas operações internas na UF de destino para o produto / mercadoria. A alíquota do Fundo de Combate a Pobreza, se existente para o produto / mercadoria, deve ser informada no campo próprio (pFCPUFDest) não devendo ser somada à essa alíquota interna.}
            ICMSUFDest.pICMSUFDest := SQLNotaFiscalItemNFITN2PERCICMS.Value;
                    {''Alíquota interestadual das UF envolvidas: - 4% alíquota interestadual para produtos importados; - 7% para os Estados de origem do Sul e Sudeste (exceto ES), destinado para os Estados do Norte, Nordeste, Centro- Oeste e Espírito Santo - 12% para os demais casos.'' }
            ICMSUFDest.pICMSInter := SQLNotaFiscalItemNFITN2PERCICMS.Value;
                    {''Percentual de ICMS Interestadual para a UF de destino: - 40% em 2016; - 60% em 2017; - 80% em 2018; - 100% a partir de 2019.'' }
            if FormatDateTime('yyyy', sqltemplateNOFIDEMIS.Value) = '2016' then
              ICMSUFDest.pICMSInterPart := 40;
            if FormatDateTime('yyyy', sqltemplateNOFIDEMIS.Value) = '2017' then
              ICMSUFDest.pICMSInterPart := 60;
            if FormatDateTime('yyyy', sqltemplateNOFIDEMIS.Value) = '2018' then
              ICMSUFDest.pICMSInterPart := 80;
            if FormatDateTime('yyyy', sqltemplateNOFIDEMIS.Value) = '2019' then
              ICMSUFDest.pICMSInterPart := 100;
                    {Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) da UF de destino.}
            ICMSUFDest.vFCPUFDest := 0.00;
                    {Valor do ICMS Interestadual para a UF de destino, já considerando o valor do ICMS relativo ao Fundo de Combate à Pobreza naquela UF.}
            ICMSUFDest.vICMSUFDest := ((((ICMSUFDest.vBCUFDest * ICMSUFDest.pICMSInterPart) / 100) * SQLNotaFiscalItemNFITN2PERCICMS.Value) / 100) / 2;
                    {Valor do ICMS Interestadual para a UF do remetente. Nota: A partir de 2019, este valor será zero.}
            ICMSUFDest.vICMSUFRemet := (((ICMSUFDest.vBCUFDest - (ICMSUFDest.vBCUFDest * ICMSUFDest.pICMSInterPart) / 100) * SQLNotaFiscalItemNFITN2PERCICMS.Value) / 100) / 2;
            ;

                    {Difal Totais}
            Total.ICMSTot.vICMSUFDest := Total.ICMSTot.vICMSUFDest + ICMSUFDest.vICMSUFDest;
            Total.ICMSTot.vICMSUFRemet := Total.ICMSTot.vICMSUFRemet + ICMSUFDest.vICMSUFRemet;
          end;
                {Difal Fim}
          case iCRT of
            1:
              begin // Linhas para o simples nacional
                if SQLNotaFiscalItemNFITICST.asstring = '101' then
                  ICMS.CSOSN := csosn101;
                if SQLNotaFiscalItemNFITICST.asstring = '102' then
                  ICMS.CSOSN := csosn102;
                if SQLNotaFiscalItemNFITICST.asstring = '103' then
                  ICMS.CSOSN := csosn103;
                if SQLNotaFiscalItemNFITICST.asstring = '300' then
                  ICMS.CSOSN := csosn300;
                if SQLNotaFiscalItemNFITICST.asstring = '400' then
                  ICMS.CSOSN := csosn400;
                if SQLNotaFiscalItemNFITICST.asstring = '201' then
                  ICMS.CSOSN := csosn201;
                if SQLNotaFiscalItemNFITICST.asstring = '202' then
                  ICMS.CSOSN := csosn202;
                if SQLNotaFiscalItemNFITICST.asstring = '500' then
                  ICMS.CSOSN := csosn500;
                if SQLNotaFiscalItemNFITICST.asstring = '900' then
                  ICMS.CSOSN := csosn900;

                case ICMS.CSOSN of
                  csosn101:
                    begin
                      ICMS.pCredSN := 0.0; // Colocar o percentual do Crédito
                      ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                    end;
                  csosn102:
                    begin
                    end;
                  csosn103:
                    begin
                    end;
                  csosn300:
                    begin
                    end;
                  csosn400:
                    begin
                    end;
                  csosn201:
                    begin
                      ICMS.modBCST := dbisMargemValorAgregado;
                      ICMS.pMVAST := 0; // Adilson, verificar melhor
                      ICMS.pRedBCST := 00.00;
                      ICMS.vBCST := SQLNotaFiscalItemNFITN2BASESUBS.Value;
                      ICMS.pICMSST := 00.00;
                      ICMS.vICMSST := SQLNotaFiscalItemNFITN2VLRSUBS.value;
                      ICMS.pCredSN := 0.0; // Colocar o percentual do Crédito
                      ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                    end;
                  csosn202:
                    begin
                      ICMS.modBCST := dbisMargemValorAgregado;
                      ICMS.pMVAST := 0; // Adilson, verificar melhor
                      ICMS.pRedBCST := 00.00;
                      ICMS.vBCST := SQLNotaFiscalItemNFITN2BASESUBS.Value;
                      ICMS.pICMSST := 00.00;
                      ICMS.vICMSST := SQLNotaFiscalItemNFITN2VLRSUBS.value;
                    end;
                  csosn500:
                    begin
                      ICMS.vBCSTRet := SQLNotaFiscalItemNFITN2BASESUBS.Value;
                      ICMS.vICMSSTRet := SQLNotaFiscalItemNFITN2VLRSUBS.Value;
                    end;
                  csosn900:
                    begin
                      ICMS.modBC := dbiMargemValorAgregado;
                      ICMS.vBC := SQLNotaFiscalItemNFITN2BASEICMS.value;
                      ICMS.pRedBC := SQLNotaFiscalItemNFITN2PERCREDUCAO.Value; // Adilson nao achei na tabela migrate 123
                      ICMS.pICMS := SQLNotaFiscalItemNFITN2PERCICMS.Value;
                      ICMS.vICMS := SQLNotaFiscalItemNFITN2VLRICMS.value;
                      ICMS.modBCST := dbisMargemValorAgregado;
                      ICMS.pMVAST := 0; // Adilson nao achei na tabela migrate 123
                      ICMS.pRedBCST := 00.00;
                      ICMS.vBCST := SQLNotaFiscalItemNFITN2BASESUBS.value;
                      ICMS.pICMSST := SQLNotaFiscalItemNFITN2PERCSUBS.Value;
                      ICMS.vICMSST := SQLNotaFiscalItemNFITN2VLRSUBS.value;
                      ICMS.pCredSN := 0.00; // Colocar o percentual do Crédito
                      ICMS.vCredICMSSN := 0.00; // Colocar o valor do Crédito
                    end;
                end; // fim do case icms.csosn
              end;

            2:
              begin
                      //        (...)
              end;

            3:
              begin
                      // Cst ICMS
                if SQLNotaFiscalItemNFITICST.asstring = '0' then
                  ICMS.CST := cst00;
                if SQLNotaFiscalItemNFITICST.asstring = '10' then
                  ICMS.CST := cst10;
                if SQLNotaFiscalItemNFITICST.asstring = '20' then
                  ICMS.CST := cst20;
                if SQLNotaFiscalItemNFITICST.asstring = '30' then
                  ICMS.CST := cst30;
                if SQLNotaFiscalItemNFITICST.asstring = '40' then
                  ICMS.CST := cst40;
                if SQLNotaFiscalItemNFITICST.asstring = '41' then
                  ICMS.CST := cst41;
                if SQLNotaFiscalItemNFITICST.asstring = '50' then
                  ICMS.CST := cst50;
                if SQLNotaFiscalItemNFITICST.asstring = '51' then
                  ICMS.CST := cst51;
                if SQLNotaFiscalItemNFITICST.asstring = '60' then
                  ICMS.CST := cst60;
                if SQLNotaFiscalItemNFITICST.asstring = '70' then
                  ICMS.CST := cst70;
                if SQLNotaFiscalItemNFITICST.asstring = '80' then
                  ICMS.CST := cst80;
                if SQLNotaFiscalItemNFITICST.asstring = '81' then
                  ICMS.CST := cst81;
                if SQLNotaFiscalItemNFITICST.asstring = '90' then
                  ICMS.CST := cst90;

                      // Origem Mercadoria
                ICMS.orig := oeNacional;

                      // Base Calculo
                if modBC = '0' then
                  ICMS.modBC := dbiMargemValorAgregado
                else if modBC = '1' then
                  ICMS.modBC := dbiPauta
                else if modBC = '2' then
                  ICMS.modBC := dbiPrecoTabelado
                else if modBC = '3' then
                  ICMS.modBC := dbiValorOperacao;

                ICMS.vBC := SQLNotaFiscalItemNFITN2BASEICMS.Value;
                ICMS.pICMS := SQLNotaFiscalItemNFITN2PERCICMS.Value;
                ICMS.vICMS := SQLNotaFiscalItemNFITN2VLRICMS.Value;

                ICMS.vBCST := SQLNotaFiscalItemNFITN2BASESUBS.Value;
                ICMS.pICMSST := SQLNotaFiscalItemNFITN2PERCSUBS.Value;
                ICMS.vICMSST := SQLNotaFiscalItemNFITN2VLRSUBS.Value;

                      { Alimenta Cofins
                      01 - Operação Tributável com Aliquota Básica (base de cálculo = valor da operação alíquota normal (cumulativo/não cumulativo));
                      02 - Operação Tributável com Alíquota Diferenciada (base de cálculo = valor da operação (alíquota diferenciada));
                      03 - Operação Tributável com Alíquota por Unidade de Medida de Produto (base de cálculo = quantidade vendida x alíquota por unidade de produto);
                      04 - Operação Tributável(tributação monofásica (alíquota zero));
                      05 - Operação Tributável por Substituição Tributária;
                      06 - Operação Tributável (alíquota zero);
                      07 - Operação Isenta da Contribuição;
                      08 - Operação Sem Incidência da Contribuição;
                      09 - Operação com Suspensão da Contribuição;
                      49 - Outras Operações de Saída; }

                if SQLNotaFiscalItemNOFIA2CSTCOFINS.Value = '01' then
                begin
                  COFINS.CST := cof01;
                  COFINS.vBC := Prod.vProd - Prod.vDesc;
                  COFINS.pCOFINS := SQLNotaFiscalItemNOFIN3PERCCOFINS.value;
                  COFINS.vCOFINS := SQLNotaFiscalItemNOFIN3VLRCOFINS.Value;
                end;
                if SQLNotaFiscalItemNOFIA2CSTCOFINS.Value = '02' then
                begin
                  COFINS.CST := cof02;
                  COFINS.vBC := Prod.vProd - Prod.vDesc;
                  COFINS.pCOFINS := SQLNotaFiscalItemNOFIN3PERCCOFINS.value;
                  COFINS.vCOFINS := SQLNotaFiscalItemNOFIN3VLRCOFINS.Value;
                end;
                if SQLNotaFiscalItemNOFIA2CSTCOFINS.Value = '03' then
                begin
                  COFINS.CST := cof03;
                  COFINS.vBC := Prod.vProd - Prod.vDesc;
                  COFINS.pCOFINS := SQLNotaFiscalItemNOFIN3PERCCOFINS.value;
                  COFINS.vCOFINS := SQLNotaFiscalItemNOFIN3VLRCOFINS.Value;
                end;
                if SQLNotaFiscalItemNOFIA2CSTCOFINS.Value = '04' then
                begin
                  COFINS.CST := cof04;
                  COFINS.vBC := Prod.vProd - Prod.vDesc;
                  COFINS.pCOFINS := SQLNotaFiscalItemNOFIN3PERCCOFINS.value;
                  COFINS.vCOFINS := SQLNotaFiscalItemNOFIN3VLRCOFINS.Value;
                end;
                if SQLNotaFiscalItemNOFIA2CSTCOFINS.Value = '05' then
                begin
                  COFINS.CST := cof05;
                  COFINS.vBC := Prod.vProd - Prod.vDesc;
                  COFINS.pCOFINS := SQLNotaFiscalItemNOFIN3PERCCOFINS.value;
                  COFINS.vCOFINS := SQLNotaFiscalItemNOFIN3VLRCOFINS.Value;
                end;
                if SQLNotaFiscalItemNOFIA2CSTCOFINS.Value = '06' then
                begin
                  COFINS.CST := cof06;
                  COFINS.vBC := Prod.vProd - Prod.vDesc;
                  COFINS.pCOFINS := SQLNotaFiscalItemNOFIN3PERCCOFINS.value;
                  COFINS.vCOFINS := SQLNotaFiscalItemNOFIN3VLRCOFINS.Value;
                end;
                if SQLNotaFiscalItemNOFIA2CSTCOFINS.Value = '07' then
                  COFINS.CST := cof07;
                if SQLNotaFiscalItemNOFIA2CSTCOFINS.Value = '08' then
                  COFINS.CST := cof08;
                if SQLNotaFiscalItemNOFIA2CSTCOFINS.Value = '09' then
                  COFINS.CST := cof09;
                if SQLNotaFiscalItemNOFIA2CSTCOFINS.Value = '49' then
                  COFINS.CST := cof49;

                      { Alimenta Pis
                      01 - Operação Tributável com Aliquota Básica (base de cálculo = valor da operação alíquota normal (cumulativo/não cumulativo));
                      02 - Operação Tributável com Alíquota Diferenciada (base de cálculo = valor da operação (alíquota diferenciada));
                      03 - Operação Tributável com Alíquota por Unidade de Medida de Produto (base de cálculo = quantidade vendida x alíquota por unidade de produto);
                      04 - Operação Tributável(tributação monofásica (alíquota zero));
                      05 - Operação Tributável por Substituição Tributária;
                      06 - Operação Tributável (alíquota zero);
                      07 - Operação Isenta da Contribuição;
                      08 - Operação Sem Incidência da Contribuição;
                      09 - Operação com Suspensão da Contribuição;
                      49 - Outras Operações de Saída; }
                if SQLNotaFiscalItemNOFIA2CSTPIS.Value = '01' then
                begin
                  PIS.CST := pis01;
                  PIS.vBC := Prod.vProd - Prod.vDesc;
                  PIS.pPIS := SQLNotaFiscalItemNOFIN3PERCPIS.value;
                  PIS.vPIS := SQLNotaFiscalItemNOFIN3VLRPIS.Value;
                end;
                if SQLNotaFiscalItemNOFIA2CSTPIS.Value = '02' then
                begin
                  PIS.CST := pis02;
                  PIS.vBC := Prod.vProd - Prod.vDesc;
                  PIS.pPIS := SQLNotaFiscalItemNOFIN3PERCPIS.value;
                  PIS.vPIS := SQLNotaFiscalItemNOFIN3VLRPIS.Value;
                end;
                if SQLNotaFiscalItemNOFIA2CSTPIS.Value = '03' then
                begin
                  PIS.CST := pis03;
                  PIS.vBC := Prod.vProd - Prod.vDesc;
                  PIS.pPIS := SQLNotaFiscalItemNOFIN3PERCPIS.value;
                  PIS.vPIS := SQLNotaFiscalItemNOFIN3VLRPIS.Value;
                end;
                if SQLNotaFiscalItemNOFIA2CSTPIS.Value = '04' then
                begin
                  PIS.CST := pis04;
                  PIS.vBC := Prod.vProd - Prod.vDesc;
                  PIS.pPIS := SQLNotaFiscalItemNOFIN3PERCPIS.value;
                  PIS.vPIS := SQLNotaFiscalItemNOFIN3VLRPIS.Value;
                end;
                if SQLNotaFiscalItemNOFIA2CSTPIS.Value = '05' then
                begin
                  PIS.CST := pis05;
                  PIS.vBC := Prod.vProd - Prod.vDesc;
                  PIS.pPIS := SQLNotaFiscalItemNOFIN3PERCPIS.value;
                  PIS.vPIS := SQLNotaFiscalItemNOFIN3VLRPIS.Value;
                end;
                if SQLNotaFiscalItemNOFIA2CSTPIS.Value = '06' then
                begin
                  PIS.CST := pis06;
                  PIS.vBC := Prod.vProd - Prod.vDesc;
                  PIS.pPIS := SQLNotaFiscalItemNOFIN3PERCPIS.value;
                  PIS.vPIS := SQLNotaFiscalItemNOFIN3VLRPIS.Value;
                end;
                if SQLNotaFiscalItemNOFIA2CSTPIS.Value = '07' then
                  PIS.CST := pis07;
                if SQLNotaFiscalItemNOFIA2CSTPIS.Value = '08' then
                  PIS.CST := pis08;
                if SQLNotaFiscalItemNOFIA2CSTPIS.Value = '09' then
                  PIS.CST := pis09;
                if SQLNotaFiscalItemNOFIA2CSTPIS.Value = '49' then
                  PIS.CST := pis49;

              end;

          end; // fim do case iCRT
          Total.ICMSTot.vCOFINS := Total.ICMSTot.vCOFINS + cofins.vCOFINS;
          Total.ICMSTot.vPIS := Total.ICMSTot.vPIS + pis.vPIS;
          Total.ICMSTot.vBC := Total.ICMSTot.vBC + ICMS.vBC;
          Total.ICMSTot.vICMS := Total.ICMSTot.vICMS + ICMS.vICMS;
          Total.ICMSTot.vBCST := Total.ICMSTot.vBCST + ICMS.vBCST;
          Total.ICMSTot.vST := Total.ICMSTot.vST + ICMS.vICMSST;
        end; // fim do with imposto
      end; // fim do with det.add

        {Fecha consulta ao produto temporaria}
      dm.sqlconsulta.close;

      SQLNotaFiscalItem.Next;
    end; // fim do loop de itens

    {Inserir Totais}
    if Total.ICMSTot.vDesc <> SQLTemplateNOFIN2VLRDESC.AsFloat then
      Total.ICMSTot.vDesc := SQLTemplateNOFIN2VLRDESC.AsFloat;
    Total.ICMSTot.vNF := Total.ICMSTot.vProd - Total.ICMSTot.vDesc + Total.ICMSTot.vST + Total.ICMSTot.vFrete + Total.ICMSTot.vSeg + Total.ICMSTot.vOutro + Total.ICMSTot.vIPI;
    // Total.ICMSTot.vProd := SQLTemplateNOFIN2VLRPRODUTO.Value;
    // Total.ICMSTot.vDesc := SQLTemplateNOFIN2VLRDESC.Value;
    // Total.ICMSTot.vBC   := SQLTemplateNOFIN2BASCALCICMS.Value;
    // Total.ICMSTot.vICMS := SQLTemplateNOFIN2VLRICMS.Value;
    // Total.ICMSTot.vBCST := SQLTemplateNOFIN2BASCALCSUBS.Value;
    // Total.ICMSTot.vST   := SQLTemplateNOFIN2VLRSUBS.Value;
    // Total.ICMSTot.vFrete:= SQLTemplateNOFIN2VLRFRETE.Value;
    // Total.ICMSTot.vSeg  := SQLTemplateNOFIN2VLRSEGURO.Value;
    // Total.ICMSTot.vOutro:= SQLTemplateNOFIN2VLROUTRASDESP.Value;
    // Total.ICMSTot.vIPI  := SQLTemplateNOFIN2VLRIPI.Value;

    // Total.ICMSTot.vCOFINS := SQLTemplateNOFIN3VLRCOFINS.Value;
    // Total.ICMSTot.vPIS    := SQLTemplateNOFIN3VLRPIS.Value;

    // Duplicatas
    SQLContasReceber.Close;
    SQLContasReceber.Open;
    SQLContasReceber.First;
    if not SqlContasReceber.IsEmpty then
    begin
      cobr.Fat.nFat := SQLTemplateNOFIINUMERO.AsString;
      cobr.Fat.vOrig := RoundTo(SQLTemplateNOFIN2VLRPRODUTO.Value, -2);
      cobr.Fat.vDesc := RoundTo(sqltemplateNOFIN2VLRDESC.Value, -2);
      cobr.Fat.vLiq := RoundTo(sqltemplateNOFIN2VLRNOTA.Value, -2);
      while not SQLContasReceber.Eof do
      begin
        with Cobr.Dup.Add do
        begin
          nDup := SQLTemplateNOFIINUMERO.AsString + '-' + SQLContasReceberCTRCINROPARC.AsString;
          dVenc := SQLContasReceberCTRCDVENC.AsDateTime;
          vDup := RoundTo(SQLContasReceberCTRCN2VLR.asfloat, -2);
        end;
        SQLContasReceber.Next;
      end;
    end;
    SQLContasReceber.Close;

    // Trasnportadora
    if SQLTemplateNOFICFRETEPORCONTA.Value = 'C' then
      Transp.modFrete := mfContaEmitente
    else
      Transp.modFrete := mfContaDestinatario;

    { Temos apenas 2 opcoes para frete
      2 : Transp.modFrete := mfContaTerceiros;
      9 : Transp.modFrete := mfSemFrete;}

    if Trim(SQLTemplateTransportadoraCGCLookUp.AsString) <> EmptyStr then
      Transp.Transporta.CNPJCPF := sn(SQLTemplateTransportadoraCGCLookUp.AsString);

    if Trim(SQLTemplateTransportadoraCPF.AsString) <> EmptyStr then
      Transp.Transporta.CNPJCPF := sn(SQLTemplateTransportadoraCPF.AsString);

    if Trim(SQLTemplateTransportadoraLookup.AsString) <> EmptyStr then
      Transp.Transporta.xNome := ConverteAcentos(SQLTemplateTransportadoraLookup.AsString);

    if Trim(SQLTemplateTransportadoraIELookUp.asstring) <> EmptyStr then
      Transp.Transporta.IE := SQLTemplateTransportadoraIELookUp.asstring;

    if Trim(SQLTemplateTransportadoraEnderecoLookUp.asstring) <> EmptyStr then
      Transp.Transporta.xEnder := ConverteAcentos(SQLTemplateTransportadoraEnderecoLookUp.asstring);

    if Trim(SQLTemplateTransportadoraCidadeLookUp.AsString) <> EmptyStr then
      Transp.Transporta.xMun := ConverteAcentos(SQLTemplateTransportadoraCidadeLookUp.AsString);

    if Trim(SQLTemplateTransportadoraEstadoLookUp.asstring) <> EmptyStr then
      Transp.Transporta.UF := SQLTemplateTransportadoraEstadoLookUp.asstring;

    Transp.retTransp.vServ := RoundTo(0.0, -2);
    ; // X12 - Valor do Serviço
    Transp.retTransp.vBCRet := RoundTo(0.0, -2);
    ; // X13 - BC da Retenção do ICMS
    Transp.retTransp.pICMSRet := RoundTo(0.0, -2);
    ; // X14 - Alíquota da Retenção
    Transp.retTransp.vICMSRet := RoundTo(0.0, -2);
    ; // X15 - Valor do ICMS Retido
    Transp.retTransp.CFOP := ''; // X16 - CFOP (Utilizar Tabela de CFOP)
    Transp.retTransp.cMunFG := 0; // X17 - Código do município de ocorrência do fato gerador do ICMS do transporte (Tabela do IBGE)

     //Não criar o grupo ''veicTransp'' caso não tenha placa senão entra na validação do SEFAZ
    if Trim(SQLTemplateNOFIA8PLACAVEIC.AsString) <> EmptyStr then
    begin
      Transp.veicTransp.placa := SQLTemplateNOFIA8PLACAVEIC.AsString;
      Transp.veicTransp.UF := SQLTemplateTransportadoraEstadoLookUp.AsString;
      Transp.veicTransp.RNTC := ''; // X21 - Registro Nacional de Transportador de Carga (ANTT)
    end;

     //Dados sobre Volumes Transportados

    with Transp.Vol.Add do
    begin
      qVol := SQLTemplateNOFIN3QUANT.AsInteger;
      esp := SQLTemplateNOFIA20ESPECIE.AsString;
      marca := SQLTemplateNOFIA15MARCA.AsString;
      nVol := '0'; // Adilson, ver melhor
      pesoL := RoundTo(SQLTemplateNOFIN3PESLIQ.AsFloat, -3);
      pesoB := RoundTo(SQLTemplateNOFIN3PESBRUT.AsFloat, -3);
    end;

     // Informações complementares
    InfAdic.infCpl := TrocaEnter(ConverteAcentos(SQLTemplateNOFIA255OBS.AsString)) + ' ' + TrocaEnter(ConverteAcentos(SQLTEMPLATENOFIAOBSCORPONF.AsString));
  end;

  // Gerar, Assinar e Gravar arquivo XML
  ACBrNFe1.NotasFiscais.GerarNFe;
  ACBrNFe1.NotasFiscais.Items[0].GravarXML();
  result := ACBrNFe1.NotasFiscais.Items[0].NomeArq;
end;

function TFormCadastroNotaFiscal.SN(sNum: string): string;
var
  s1, s2: string;
  i: Integer;
begin
  s1 := snum;
  s2 := '';
  for i := 1 to Length(s1) do
    if s1[i] in ['0'..'9'] then
      s2 := s2 + s1[i];
  result := s2;
end;

procedure TFormCadastroNotaFiscal.btnF12Click(Sender: TObject);
begin
  inherited;
   // Consulta Status Servidor Web
  Inicia_NFe;
  MemoRetornoNFE.lines.Clear;
  ACBrNFe1.WebServices.StatusServico.Executar;
  MemoRetornoNFE.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetWS);
  LoadXML(MemoRetornoNFE, WBResposta);
end;

procedure TFormCadastroNotaFiscal.ReabrirNFeEncerradaNaoMovimentaEstoque1Click(Sender: TObject);
begin
  inherited;
  Dm.SQLTemplate.SQL.Text := 'Update NOTAFISCAL set NOFICSTATUS = :xStatus where NOFIA13ID = :xid';
  Dm.SQLTemplate.ParamByName('xStatus').Asstring := 'A';
  Dm.SQLTemplate.ParamByName('xID').Asstring := SQLTemplateNOFIA13ID.AsString;
  Dm.SQLTemplate.ExecSQL;
  SQLTemplate.Close;
  SQLTemplate.Open;
  Showmessage('Nota Fiscal Reaberta!');
end;

procedure TFormCadastroNotaFiscal.FecharNotaAbertaNoMovimentaEstoque1Click(Sender: TObject);
begin
  inherited;
  Dm.SQLTemplate.SQL.Text := 'Update NOTAFISCAL set NOFICSTATUS = :xStatus where NOFIA13ID = :xid';
  Dm.SQLTemplate.ParamByName('xStatus').Asstring := 'E';
  Dm.SQLTemplate.ParamByName('xID').Asstring := SQLTemplateNOFIA13ID.AsString;
  Dm.SQLTemplate.ExecSQL;
  SQLTemplate.Close;
  SQLTemplate.Open;
  Showmessage('Nota Fiscal Encerrada!');
end;

procedure TFormCadastroNotaFiscal.EncerrarNotasemSequencia1Click(Sender: TObject);
begin
  inherited;
  SQLTemplate.first;
  while not sqltemplate.eof do
  begin
    if SQLTemplateNOFICSTATUS.Value = 'A' then
    begin
      try
        SQLTemplate.BeforeEdit := nil;

        SQLTemplate.Edit;

        StatusAnterior := SQLTemplate.FindField('NOFICSTATUS').Value;
        PlanoAnterior := SQLTemplate.FindField('PLRCICOD').asString;
        PedidoAnterior := SQLTemplate.FindField('PDVDA13ID').asString;
        ValorFrete := SQLTemplate.FindField('NOFIN2VLRFRETE').AsFloat;
        ValorIcmsFrete := SQLTemplate.FindField('NOFIN2VLRICMSFRETE').AsFloat;
        SQLTemplateNOFICSTATUS.AsString := 'E';
        LabelGravar.Click;
        SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;
      except
        on e: exception do
        begin
          Showmessage('Falha ao Encerrar a Nota Fiscal: ' + e.Message);
          if SQLTemplate.State in ([dsEdit]) then
            SQLTemplate.Cancel;
        end;
      end;
    end;
    SQLTemplate.Next;
  end;
  Showmessage('Notas Encerradas com Sucesso!');
end;

procedure TFormCadastroNotaFiscal.BitBtn2Click(Sender: TObject);
begin
  inherited;
  try
    // Pega Configs Iniciais
    Inicia_NFe;
    Application.ProcessMessages;

    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.WebServices.Consulta.NFeChave := SQLTemplateNOFIA44CHAVEACESSO.AsString;
    ACBrNFe1.WebServices.Consulta.Executar;

    Application.ProcessMessages;
    SQLTemplate.BeforeEdit := nil;
    SQLTemplate.BeforePost := nil;
    SQLTemplate.Edit;
    SQLTemplateNOFIA15PROTOCOLO.AsString := ACBrNFe1.WebServices.Consulta.Protocolo;
    SQLTemplate.Post;
    SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;
    SQLTemplate.BeforePost := SQLTemplateBeforePost;
    ACBrNFe1.NotasFiscais.Clear;
  except
    on e: exception do
    begin
      Showmessage('Falha ao Gravar Protocolo da Nota Fiscal: ' + e.Message);
      if SQLTemplate.State in ([dsEdit]) then
        SQLTemplate.Cancel;
    end;
  end;
end;

procedure TFormCadastroNotaFiscal.MnImportarDadosdoPedidodeVendaClick(Sender: TObject);
begin
  inherited;
  CriaFormulario(TFormConsultaPrevendaTablets, 'FormConsultaPrevendaTablets', False, True, False, '');
end;

procedure TFormCadastroNotaFiscal.MnGerarBoletosClick(Sender: TObject);
begin
  inherited;
  DM.ID_NotaFiscal_Boleto := SQLTemplateNOFIA13ID.Value;
  Application.CreateForm(TFormTelaImpressaoDuplicata, FormTelaImpressaoDuplicata);
  FormTelaImpressaoDuplicata.ComboCliente.Value := SQLTemplateCLIEA13ID.Value;
  FormTelaImpressaoDuplicata.De.Date := SQLTemplateNOFIDEMIS.Value;
  FormTelaImpressaoDuplicata.ate.Date := SQLTemplateNOFIDEMIS.Value;
  FormTelaImpressaoDuplicata.Show;
  FormTelaImpressaoDuplicata.BtnSelecionarDoc.Click;
end;

procedure TFormCadastroNotaFiscal.AdvGlowButton9Click(Sender: TObject);
var
  sXML: string;
begin
  inherited;
  // Pega Configs Iniciais
  Inicia_NFe;
  Application.ProcessMessages;

  // Cria o arquivo XML
  sXML := Gerar_XMLACBr;
  Application.ProcessMessages;

  if FileExists(sXML) then
  begin
      // Envia NFe
    ACBrNFe1.NotasFiscais.Assinar;
    ACBrNFe1.NotasFiscais.Validar;
    ACBrNFe1.NotasFiscais.Imprimir;
  end;
end;

procedure TFormCadastroNotaFiscal.EncerrarNota;
begin
  try
    try
      SQLTemplate.BeforeEdit := nil;

      SQLTemplate.Edit;

      if not CancelandoNota then
        if SQLTemplate.FindField('NOFICSTATUS').asString <> 'A' then
        begin
          Informa('Alterações só serão permitidas quando a nota estiver com status de ''Aberta''.');
          SQLTemplate.Cancel;
          SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;
          Abort;
        end;

      StatusAnterior := SQLTemplate.FindField('NOFICSTATUS').Value;
      PlanoAnterior := SQLTemplate.FindField('PLRCICOD').asString;
      PedidoAnterior := SQLTemplate.FindField('PDVDA13ID').asString;
      ValorFrete := SQLTemplate.FindField('NOFIN2VLRFRETE').AsFloat;
      ValorIcmsFrete := SQLTemplate.FindField('NOFIN2VLRICMSFRETE').AsFloat;
      SQLTemplateNOFICSTATUS.AsString := 'E';
      LabelGravar.Click;

    finally
      SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;
    end;
  except
    on e: exception do
    begin
      Showmessage('Falha ao Encerrar a Nota Fiscal: ' + e.Message);
      if SQLTemplate.State in ([dsEdit]) then
        SQLTemplate.Cancel;
    end;
  end;
end;

procedure TFormCadastroNotaFiscal.btnEncerrarClick(Sender: TObject);
begin
  inherited;
  EncerrarNota;
end;

procedure TFormCadastroNotaFiscal.DBEdit44Change(Sender: TObject);
begin
  inherited;

  if not SQLTemplate.Active then exit;

  btnTransmitirNfe.Enabled := SQLTemplate.FindField('NOFICSTATUS').Value = 'E';
  btnEncerrar.Enabled := SQLTemplate.FindField('NOFICSTATUS').Value <> 'E';
  btnTransmitirNfe2.Enabled := SQLTemplate.FindField('NOFICSTATUS').Value = 'E';
  btnEncerrar2.Enabled := SQLTemplate.FindField('NOFICSTATUS').Value <> 'E';
end;

end.

