unit CadastroGraficaOrdem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, RxLookup, DBCtrls, FormResources, VarSys,RxDBComb, ToolEdit,
  RXDBCtrl, RDprint, CurrEdit, Serial, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

 Type

 TCLIE = Record
    nCliUF,
    nCliNome,
    nCliPessoa,
    nCliRegime:String;
  end;

  TICMSUF = Record
    nICMS,
    nRED_ICMS,
    nICMS_INTERNO,
    nMVA : Double;
    nSTFisica:String;
    nSTJuridica:String;
  end;

  TOPERACAO_ID = Record
    nOpOrigemDestino,
    nOpCalcIPI,
    nOpCalcICMS,
    nOpCalcST,
    nOpCalcIPIFis,
    nOpCalcICMSFis,
    nOpCalcSTFis,
    nOpCFOPnoUF,
    nOpCFOPForaUF,
    nOpPCTACred: String;
  end;

  TPRODUTO_ID = Record
    nProdVlrCmpra,
    nProdPercIPI,
    nProdPesoBruto,
    nProdPesoLiq:Double;
    nProdIcmsICOD,
    nProdServico,
    nProdSitTrib:String;
  end;

type
  TFormCadastroGraficaOrdem = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    btnVendedor: TSpeedButton;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    edtProdicod: TDBEdit;
    Label5: TLabel;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    DSSQLCliente: TDataSource;
    BtnCliente: TSpeedButton;
    Label15: TLabel;
    btnProdutos: TSpeedButton;
    SQLClienteCLIEA60ENDRES: TStringField;
    SQLClienteCLIEA60BAIRES: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    SQLClienteCLIEA11CPF: TStringField;
    SQLClienteCLIEA10RG: TStringField;
    SQLClienteCLIEA14CGC: TStringField;
    SQLClienteCLIEA20IE: TStringField;
    DSSQLProduto: TDataSource;
    SQLExecutarem: TRxQuery;
    DSSQLExecutarem: TDataSource;
    SQLExecutaremORDEXEID: TIntegerField;
    SQLExecutaremORDA25EXECUTAEM: TStringField;
    DSSQLVendedor: TDataSource;
    SQLVendedor: TRxQuery;
    SQLProduto: TRxQuery;
    Label19: TLabel;
    ComboStatus: TRxDBComboBox;
    SQLOperacaEstoque: TTable;
    SQLOperacaEstoqueOPESICOD: TIntegerField;
    SQLOperacaEstoqueOPESA60DESCR: TStringField;
    SQLOperacaEstoqueSERIA5COD: TStringField;
    SQLOperacaEstoqueCFOPA5CODDENTROUF: TStringField;
    SQLOperacaEstoqueCFOPA5CODFORAUF: TStringField;
    SQLOperacaEstoqueOPESCENTRADASAIDA: TStringField;
    SQLOperacaEstoqueOPESCORIGEMDESTINO: TStringField;
    SQLOperacaEstoquePENDENTE: TStringField;
    SQLOperacaEstoqueREGISTRO: TDateTimeField;
    SQLOperacaEstoqueOPESA18CAMPOIMP: TStringField;
    SQLOperacaEstoqueOPESCCALCIPI: TStringField;
    SQLOperacaEstoqueOPESCCALCICMS: TStringField;
    SQLOperacaEstoquePDVDA13ID: TStringField;
    SQLOperacaEstoqueOPESCGERAFINANCEIRO: TStringField;
    SQLOperacaEstoquePLCTA15CODCRED: TStringField;
    SQLOperacaEstoquePLCTA15CODDEB: TStringField;
    DSTblOperacaoEstoque: TDataSource;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    SQLEmpresaEMPRA2UF: TStringField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRA14CGC: TStringField;
    SQLEmpresaEMPRA20IE: TStringField;
    SQLEmpresaEMPRCMATRIZFILIAL: TStringField;
    SQLEmpresaEMPRA20FONE: TStringField;
    SQLEmpresaEMPRA20FAX: TStringField;
    SQLEmpresaEMPRA60END: TStringField;
    SQLEmpresaEMPRA60BAI: TStringField;
    SQLEmpresaEMPRA60CID: TStringField;
    SQLEmpresaEMPRA8CEP: TStringField;
    SQLEmpresaEMPRCFISJURID: TStringField;
    SQLEmpresaEMPRA11CPF: TStringField;
    SQLEmpresaEMPRA10RG: TStringField;
    SQLEmpresaEMPRA60EMAIL: TStringField;
    SQLEmpresaEMPRA60URL: TStringField;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    SQLVendedorVENDN2COMISV: TFloatField;
    SQLVendedorVENDN2COMISP: TFloatField;
    SQLVendedorVENDCTIPCOMIS: TStringField;
    SQLVendedorVENDCCOMISACRESC: TStringField;
    SQLVendedorPENDENTE: TStringField;
    SQLVendedorREGISTRO: TDateTimeField;
    SQLVendedorVENDA60EMAIL: TStringField;
    SQLVendedorVENDA5FISJURID: TStringField;
    SQLVendedorVENDA14CGC: TStringField;
    SQLVendedorVENDA20IE: TStringField;
    SQLVendedorVENDA11CPF: TStringField;
    SQLVendedorVENDA10RG: TStringField;
    SQLVendedorVENDA60CONTATO: TStringField;
    SQLVendedorVENDA15FONE1: TStringField;
    SQLVendedorVENDA15FONE2: TStringField;
    SQLVendedorVENDA15FAX: TStringField;
    SQLVendedorVENDA60END: TStringField;
    SQLVendedorVENDA60BAI: TStringField;
    SQLVendedorVENDA60CID: TStringField;
    SQLVendedorVENDA2UF: TStringField;
    SQLVendedorVENDA8CEP: TStringField;
    SQLVendedorBANCA5COD: TStringField;
    SQLVendedorVENDA5AGENCIA: TStringField;
    SQLVendedorVENDA10CONTA: TStringField;
    SQLVendedorVENDA60TITULAR: TStringField;
    SQLVendedorVENDDABERTCONTA: TDateTimeField;
    SQLVendedorVENDA254OBS: TStringField;
    SQLVendedorVENDA30CORE: TStringField;
    SQLVendedorVENDA60RAZAOSOCIAL: TStringField;
    SQLVendedorVENDIDIASVALFIDEL: TIntegerField;
    SQLVendedorVENDN2PERCFIDEL: TFloatField;
    SQLVendedorVENDN2PERCIRRF: TFloatField;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoUNIDICOD: TIntegerField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLProdutoPRODN3VLRVENDAPROM: TFloatField;
    SQLProdutoPRODN3VLRVENDA2: TFloatField;
    Label20: TLabel;
    DBEdit8: TDBEdit;
    Label31: TLabel;
    DBEdit25: TDBEdit;
    Label6: TLabel;
    Label28: TLabel;
    DBEdit22: TDBEdit;
    SQLTemplateORDNUM: TIntegerField;
    SQLTemplateDATA: TDateTimeField;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplatePRAZOENTR: TDateTimeField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateSERVICO: TStringField;
    SQLTemplateNUMDE: TIntegerField;
    SQLTemplateNUMA: TIntegerField;
    SQLTemplateCOREIMP: TStringField;
    SQLTemplateNVIAS: TIntegerField;
    SQLTemplateOBS: TMemoField;
    SQLTemplateLARGURA: TFloatField;
    SQLTemplateALTURA: TFloatField;
    SQLTemplateQUANTTOTAL: TIntegerField;
    SQLTemplatePAPEL: TStringField;
    SQLTemplateQUANTTALOES: TIntegerField;
    SQLTemplateLOCALENTR: TStringField;
    SQLTemplateTIPOSERVIMP: TStringField;
    SQLTemplatePICOTE: TStringField;
    SQLTemplateGRAMPO: TStringField;
    SQLTemplateCOLA: TStringField;
    SQLTemplateNUMERADO: TStringField;
    SQLTemplateSOLTO: TStringField;
    SQLTemplateFURADO: TStringField;
    SQLTemplatePALTIFICADO: TStringField;
    SQLTemplateCARBONO: TStringField;
    SQLTemplateFORMATO: TStringField;
    SQLTemplateENTREGADO: TDateTimeField;
    SQLTemplateCOMISSAO: TSmallintField;
    SQLTemplateVAL: TFloatField;
    SQLTemplateIMPRESSO: TStringField;
    SQLTemplatePARCELAS: TStringField;
    SQLTemplateCORDOPAPEL: TStringField;
    SQLTemplateRESPONSAVEL: TIntegerField;
    SQLTemplateVIAS: TStringField;
    SQLTemplateSTATUS: TStringField;
    SQLTemplateCliente: TStringField;
    ComboCliente: TRxDBLookupCombo;
    SQLTemplateVendedorLookUp: TStringField;
    RxDBLookupComboVendedor: TRxDBLookupCombo;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SQLTemplateProdutoLookUp: TStringField;
    SQLTemplateExecutaremLookUp: TStringField;
    SQLFinanceiro: TRxQuery;
    DSSQLFinanceiro: TDataSource;
    SQLTemplatePlanoRecebimentoLookUp: TStringField;
    SQLFinanceiroPLRCICOD: TIntegerField;
    SQLFinanceiroPLRCA60DESCR: TStringField;
    SQLFinanceiroPLRCN2TXJURO: TFloatField;
    SQLFinanceiroPLRCN2TXMULTA: TFloatField;
    SQLFinanceiroPLRCN2TXCRED: TFloatField;
    SQLFinanceiroPLRCN2PERCDESC: TFloatField;
    SQLFinanceiroPLRCCDFIX: TStringField;
    SQLFinanceiroPLRCIDFIXNROPARC: TIntegerField;
    SQLFinanceiroPLRCDFIXDVENC: TIntegerField;
    SQLFinanceiroPLRCCDFIXENTR: TStringField;
    SQLFinanceiroPLRCN2PERCENTR: TFloatField;
    SQLFinanceiroPLRCN2DESC: TFloatField;
    SQLFinanceiroPLRCCATIVO: TStringField;
    SQLFinanceiroPENDENTE: TStringField;
    SQLFinanceiroREGISTRO: TDateTimeField;
    SQLFinanceiroPLRCN2PERCACRESC: TFloatField;
    SQLFinanceiroPLRCCIMPDESCRNF: TStringField;
    SQLFinanceiroPLRCN5FATOR: TFloatField;
    SQLFinanceiroPLRCN5FATORPARC: TFloatField;
    SQLFinanceiroPLRCFATCASH: TStringField;
    SQLFinanceiroPLRCN2PERCJURDIA: TFloatField;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit16: TDBEdit;
    Label12: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    DBMemo1: TDBMemo;
    GerarNotaFiscal1: TMenuItem;
    FinalizarOrdemdeServio1: TMenuItem;
    N1: TMenuItem;
    CancelarOrdemdeServioAtual1: TMenuItem;
    ReabirOrdemdeServioCancelada1: TMenuItem;
    InformarEntregadoServio1: TMenuItem;
    N2: TMenuItem;
    OrdemdeServioAtual1: TMenuItem;
    OrdensdeServioemSequencia1: TMenuItem;
    RelatriodeOrdensListadas1: TMenuItem;
    PanelPesquisa: TPanel;
    BTNLocalizar: TSpeedButton;
    ComboBuscaCliente: TRxDBLookupCombo;
    RadioStatus: TRadioGroup;
    SQLTemplateClienteEndereco: TStringField;
    SQLTemplateClienteBairro: TStringField;
    SQLClienteCLIEA15FONE1: TStringField;
    SQLTemplateClienteFone: TStringField;
    SQLTemplateClienteCidade: TStringField;
    SQLTemplateClienteUF: TStringField;
    SQLTemplateClienteCNPJ: TStringField;
    SQLTemplateclienteIE: TStringField;
    SQLClienteCLIEA60NOMEFANT: TStringField;
    SQLClienteCLIEA8CEPRES: TStringField;
    SQLTemplateClienteFantasia: TStringField;
    SQLTemplateClienteCep: TStringField;
    GroupBox2: TGroupBox;
    Shape1: TShape;
    Label13: TLabel;
    Shape2: TShape;
    Label14: TLabel;
    Label17: TLabel;
    Shape4: TShape;
    Label32: TLabel;
    Shape5: TShape;
    Label33: TLabel;
    Shape3: TShape;
    Label34: TLabel;
    AlterarStatusparaPRODUZIDOa1: TMenuItem;
    Label16: TLabel;
    DBEdit5: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    btnExecutarem: TSpeedButton;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    Label10: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label29: TLabel;
    DBEdit11: TDBEdit;
    DBEdit15: TDBEdit;
    CheckSolto: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit23: TDBEdit;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    Label24: TLabel;
    DBEdit13: TDBEdit;
    Label25: TLabel;
    DBEdit14: TDBEdit;
    Panel4: TPanel;
    Label30: TLabel;
    Label7: TLabel;
    DBEdit24: TDBEdit;
    DBEdit4: TDBEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label27: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    SQLTemplateVERNIZADO: TStringField;
    SQLTemplateCAPA: TStringField;
    SQLTemplateMIOLO: TStringField;
    SQLTemplateACABAMENTO: TStringField;
    N4: TMenuItem;
    RDprint: TRDprint;
    SQLTemplateTIPOSERVICO: TIntegerField;
    Label37: TLabel;
    ComboTipoImpr: TRxDBComboBox;
    Label38: TLabel;
    DBEdit21: TDBEdit;
    DBMemo2: TDBMemo;
    Label39: TLabel;
    DBEdit26: TDBEdit;
    Label40: TLabel;
    DBEdit27: TDBEdit;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    SQLExecutaremTIPOSERVICO: TStringField;
    SQLTemplateTipoExecucao: TStringField;
    DBGrid1: TDBGrid;
    Label45: TLabel;
    SQLFinaliza: TRxQuery;
    DSSQLFinaliza: TDataSource;
    SQLFinalizaORDNUM: TIntegerField;
    SQLFinalizaDATA: TDateTimeField;
    SQLFinalizaQUANTIDADE: TIntegerField;
    SQLFinalizaIMPRESSO: TStringField;
    SQLFinalizaNOTAFISCAL: TIntegerField;
    PopEntrega: TPopupMenu;
    Excluir1: TMenuItem;
    Shape6: TShape;
    Label44: TLabel;
    N5: TMenuItem;
    N6: TMenuItem;
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
    SQLNotaFiscalTransportadoraLookup: TStringField;
    SQLNotaFiscalTransportadoraCGCLookUp: TStringField;
    SQLNotaFiscalTransportadoraEnderecoLookUp: TStringField;
    SQLNotaFiscalTransportadoraCidadeLookUp: TStringField;
    SQLNotaFiscalTransportadoraEstadoLookUp: TStringField;
    SQLNotaFiscalTransportadoraIELookUp: TStringField;
    SQLNotaFiscalNOFIDSAIDAENTRADA: TDateTimeField;
    SQLNotaFiscalNOFIA255OBS: TMemoField;
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
    SQLNotaFiscalItemNFITICST: TIntegerField;
    SQLNotaContasReceber: TRxQuery;
    SQLNotaContasReceberCTRCA13ID: TStringField;
    SQLNotaContasReceberEMPRICOD: TIntegerField;
    SQLNotaContasReceberTERMICOD: TIntegerField;
    SQLNotaContasReceberCTRCICOD: TIntegerField;
    SQLNotaContasReceberCLIEA13ID: TStringField;
    SQLNotaContasReceberCTRCCSTATUS: TStringField;
    SQLNotaContasReceberCTRCINROPARC: TIntegerField;
    SQLNotaContasReceberCTRCDVENC: TDateTimeField;
    SQLNotaContasReceberCTRCN2VLR: TFloatField;
    SQLNotaContasReceberCTRCN2DESCFIN: TFloatField;
    SQLNotaContasReceberNUMEICOD: TIntegerField;
    SQLNotaContasReceberPORTICOD: TIntegerField;
    SQLNotaContasReceberCTRCN2TXJURO: TFloatField;
    SQLNotaContasReceberCTRCN2TXMULTA: TFloatField;
    SQLNotaContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLNotaContasReceberCTRCDULTREC: TDateTimeField;
    SQLNotaContasReceberCTRCN2TOTREC: TFloatField;
    SQLNotaContasReceberCTRCN2TOTJUROREC: TFloatField;
    SQLNotaContasReceberCTRCN2TOTMULTAREC: TFloatField;
    SQLNotaContasReceberCTRCN2TOTDESCREC: TFloatField;
    SQLNotaContasReceberCTRCN2TOTMULTACOBR: TFloatField;
    SQLNotaContasReceberEMPRICODULTREC: TIntegerField;
    SQLNotaContasReceberCUPOA13ID: TStringField;
    SQLNotaContasReceberTPDCICOD: TIntegerField;
    SQLNotaContasReceberPLCTA15COD: TStringField;
    SQLNotaContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLNotaContasReceberNOFIA13ID: TStringField;
    SQLNotaContasReceberCTRCDEMIS: TDateTimeField;
    SQLNotaContasReceberPENDENTE: TStringField;
    SQLNotaContasReceberREGISTRO: TDateTimeField;
    SQLNotaContasReceberCTRCDREABILSPC: TDateTimeField;
    SQLNotaContasReceberBANCA5CODCHQ: TStringField;
    SQLNotaContasReceberCTRCA10AGENCIACHQ: TStringField;
    SQLNotaContasReceberCTRCA15CONTACHQ: TStringField;
    SQLNotaContasReceberCTRCA15NROCHQ: TStringField;
    SQLNotaContasReceberCTRCA60TITULARCHQ: TStringField;
    SQLNotaContasReceberCTRCA20CGCCPFCHQ: TStringField;
    SQLNotaContasReceberCTRCDDEPOSCHQ: TDateTimeField;
    SQLNotaContasReceberALINICOD: TIntegerField;
    SQLNotaContasReceberPDVDA13ID: TStringField;
    SQLNotaContasReceberCTRCDESTORNO: TDateTimeField;
    SQLNotaContasReceberFRETA13ID: TStringField;
    SQLNotaContasReceberCTRCCTEMREGRECEBER: TStringField;
    SQLNotaContasReceberCOBRA13ID: TStringField;
    SQLNotaContasReceberCTRCDENVIOCOBRANCA: TDateTimeField;
    SQLNotaContasReceberCTRCA254HIST: TStringField;
    SQLNotaContasReceberDUPLA13ID: TStringField;
    SQLNotaContasReceberAVALA13ID: TStringField;
    SQLNotaContasReceberCTRCCTIPOREGISTRO: TStringField;
    SQLNotaContasReceberHTPDICOD: TIntegerField;
    SQLNotaContasReceberPLCTA15CODDEBITO: TStringField;
    SQLNotaContasReceberCONTA13ID: TStringField;
    SQLNotaContasReceberCTRCA13CTRCAIDCHQ: TStringField;
    SQLIcmsUF: TRxQuery;
    SQLBuscas: TRxQuery;
    SQLTransportadora: TRxQuery;
    SQLTransportadoraTRANICOD: TIntegerField;
    SQLTransportadoraTRANA60RAZAOSOC: TStringField;
    SQLTransportadoraTRANA60END: TStringField;
    SQLTransportadoraTRANA60BAI: TStringField;
    SQLTransportadoraTRANA60CID: TStringField;
    SQLTransportadoraTRANA8CEP: TStringField;
    SQLTransportadoraTRANA2UF: TStringField;
    SQLTransportadoraTRANA14CGC: TStringField;
    SQLTransportadoraTRANA15IE: TStringField;
    SQLSerieNF: TRxQuery;
    SQLSerieNFSERIA5COD: TStringField;
    SQLSerieNFSERIINRONF: TIntegerField;
    SQLSerieNFEMPRICOD: TIntegerField;
    SQLSerieNFSERIA100PATHEXEIMP: TStringField;
    SQLSerieNFPENDENTE: TStringField;
    SQLSerieNFREGISTRO: TDateTimeField;
    SQLPlano: TRxQuery;
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
    SQLPlanoPLRCN2PERCACRESC: TFloatField;
    SQLPlanoParcela: TRxQuery;
    SQLContasReceber: TRxQuery;
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
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberCTRCA254HIST: TStringField;
    SQLContasReceberHTPDICOD: TIntegerField;
    SQLContasReceberPLCTA15CODDEBITO: TStringField;
    SQLContasReceberAVALA13ID: TStringField;
    SQLContasReceberCTRCCEMITIDOBOLETO: TStringField;
    SQLContasReceberCTRCCTIPOREGISTRO: TStringField;
    SQLPortador: TRxQuery;
    SQLNumerarioPrazo: TRxQuery;
    SQLNumerario: TRxQuery;
    SQLTipoDoc: TRxQuery;
    SQLTipoDocTPDCICOD: TIntegerField;
    SQLTipoDocTPDCA60DESCR: TStringField;
    SQLNumerarioVista: TRxQuery;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TFloatField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    SQLParcelasPrazoVendaTempNumerarioLookup: TStringField;
    SQLParcelasPrazoVendaTempTipoPadrao: TStringField;
    DSSQLContasReceber: TDataSource;
    SQLClienteCLIETOBS2: TBlobField;
    SQLClienteCLIETOBS1: TBlobField;
    SQLClienteMTBLICOD: TIntegerField;
    BitBtn3: TBitBtn;
    PnlEntrega: TPanel;
    Label46: TLabel;
    Label47: TLabel;
    Panel6: TPanel;
    DBDateEdit3: TDBDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEditQTDEntregue: TDBEdit;
    LabelvlrCobrar: TCurrencyEdit;
    SQLTemplatePARCELASVARIAVEIS: TStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    SQLTemplateCOMISSIONAPOR: TStringField;
    RxDBComboBox1: TRxDBComboBox;
    SQLNotaFiscalNOFICFINALIDADE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BtnClienteClick(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnExecutaremClick(Sender: TObject);
    procedure edtProdicodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnVendedorClick(Sender: TObject);
    procedure ComboExecutarEmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateAfterCancel(DataSet: TDataSet);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBDateEdit2Exit(Sender: TObject);
    procedure CancelarOrdemdeServioAtual1Click(Sender: TObject);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure InformarEntregadoServio1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ReabirOrdemdeServioCancelada1Click(Sender: TObject);
    procedure FinalizarOrdemdeServio1Click(Sender: TObject);
    procedure BTNLocalizarClick(Sender: TObject);
    procedure GerarNotaFiscal1Click(Sender: TObject);
    procedure OrdemdeServioAtual1Click(Sender: TObject);
    procedure OrdensdeServioemSequencia1Click(Sender: TObject);
    procedure RelatriodeOrdensListadas1Click(Sender: TObject);
    procedure AlterarStatusparaPRODUZIDOa1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure OrdemdeServioAtualMatricial1Click(Sender: TObject);
    procedure OrdensdeServioemSequnciaMatricial1Click(Sender: TObject);
    procedure SQLTemplateTIPOSERVICOChange(Sender: TField);
    procedure Excluir1Click(Sender: TObject);
    procedure DBDateEdit3Change(Sender: TObject);

    Function GerarNF(Qtda:Integer):Integer;
    Function BuscaIcmsUf(varUF:String; varPessoa:String; varRegime:String):TICMSUF;
    Function BuscaIcms(nCodICMS:String; SitTributaria:String):TICMSUF;
    Function BuscaDadosProduto:TPRODUTO_ID;
    Function BuscaDadosOperacao(nCodOp:String):TOPERACAO_ID;
    Function BuscaDadosCliente: TCLIE;
    procedure SQLNotaFiscalBeforePost(DataSet: TDataSet);
    procedure ImportaItensPedidoVenda(nOPES:TOPERACAO_ID; nCLIE:TCLIE; Qtda:Integer);
    procedure CriaContasReceber;
    procedure ComboClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLFinalizaQUANTIDADEChange(Sender: TField);
    procedure SQLContasReceberBeforePost(DataSet: TDataSet);
    procedure SQLContasReceberNewRecord(DataSet: TDataSet);
    procedure SQLContasReceberPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure DBEdit10Exit(Sender: TObject);
    procedure SQLTemplateCLIEA13IDChange(Sender: TField);
    procedure PnlEntregaExit(Sender: TObject);
    function  CriaParcelasVariaveis(SQLParcelasPrazo,
                      SQLPlnRec,
                      SQLPlnRecParc : TQuery;
                      Entrada,
                      Desconto,
                      Valor:Double;
                      Plano:integer;
                      Data : TDateTime ;
                      TpRecVistaTel,
                      TpRecPrazoTel,
                      TpRecVistaPDV,
                      TpRecPrazoPDV,
                      Documento: string ;
                      DiminuiAcresc : double ;
                      var ValorJuro, Acrescimo, EntradaCalc, TaxaCred:Double ) : Variant ;
    procedure SQLTemplatePARCELASChange(Sender: TField);
    procedure SQLTemplateCOMISSIONAPORChange(Sender: TField);
    procedure SQLTemplateAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    TotalPedidos, Reducao, TotNFProd, TotNFGeral, TotNFFrete, TotNFOutrasDesp, TotBaseCalcICMS, TotVlrICMS, TotBaseCalcICMSSubst,
    TotVlrICMSSubst, TotVlrISSQN, AliquotaISSQN, PesoTotalBruto, PesoTotalLiq, QtdeTotal: Double;
    UFEmpresa, UFCliente : String;

  public
    { Public declarations }
    ContasReceberCliente,ContasReceberID:String;

  end;

var
  FormCadastroGraficaOrdem: TFormCadastroGraficaOrdem;
  QtdEntregue,  QtdFinalizado : Integer;
  NovaOrdem : Boolean;

implementation

uses CadastroCliente,
  CadastroMecExecutaEm, CadastroMecanicos,  UnitLibrary,
  DataModulo, CadastroVendedor, CadastroProdutos, RelatorioOrdemGrafica,
  ListagemOrdensGraficas, TelaConfigPedidos, CadastroNotaFiscal,
  TelaParcelasVariaveis, RelatorioOrdemToazza, RelatorioOrdemToazzaCaderno;

{$R *.dfm}

procedure TFormCadastroGraficaOrdem.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ORDENSGRAFICA';
  NovaOrdem := False;

  if FileExists('Avanco.txt') then
  begin
    Label37.Enabled         := False;
    Label38.Enabled         := False;
    Label40.Enabled         := False;
    Label41.Enabled         := False;
    ComboTipoImpr.Enabled   := False;
    ComboTipoImpr.TabStop   := False;
    DBEdit21.Enabled        := False;
    DBEdit26.Enabled        := False;
    DBEdit27.Enabled        := False;
    DBCheckBox14.Enabled    := False;
    DBCheckBox15.Enabled    := False;
  end;
  SQLFinaliza.Open;
end;


procedure TFormCadastroGraficaOrdem.DBEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    btnVendedor.Click;
end;

procedure TFormCadastroGraficaOrdem.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  NovaOrdem := True;
  SQLTemplateDATA.AsDateTime        := Date;
  SQLTemplateSTATUS.AsString        := 'A';
  SQLTemplateCOLA.AsString          := 'F';
  SQLTemplateSOLTO.AsString         := 'F';
  SQLTemplatePICOTE.AsString        := 'F';
  SQLTemplateGRAMPO.AsString        := 'F';
  SQLTemplateFURADO.AsString        := 'F';
  SQLTemplatePALTIFICADO.AsString   := 'F';
  SQLTemplateCARBONO.AsString       := 'F';
  SQLTemplateVERNIZADO.AsString     := 'F';
  SQLTemplateNUMERADO.AsString      := 'F';
  SQLTemplateCOMISSIONAPOR.AsString := 'P'; // por percentual

//  SQLTemplateOPESICOD.Value   := DM.SQLConfigVendaOPESICODCUPOM.Value;
//  SQLTemplateEMPRICOD.Value   := DM.SQLEmpresaEMPRICOD.Value;
end;

procedure TFormCadastroGraficaOrdem.btnProdutosClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PRODICOD');
  FieldOrigem := 'PRODICOD' ;
  DataSetLookup := SQLProduto;
  DSMasterSys := DSTemplate;
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,False,'');
end;

procedure TFormCadastroGraficaOrdem.BtnClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookup   := DsTemplate.DataSet.FieldByName('CLIEA13ID');
  FieldOrigem   := 'CLIEA13ID';
  DataSetLookup := SQLCliente;
  CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,True,False,'');
end;

procedure TFormCadastroGraficaOrdem.btnVendedorClick(Sender: TObject);
begin
  inherited;
  FieldLookup   := DsTemplate.DataSet.FieldByName('VENDICOD');
  FieldOrigem   := 'VENDICOD';
  DataSetLookup := SQLVendedor;
  CriaFormulario(TFormCadastroVendedor,'FormCadastroVendedor',False,True,True,'');
end;

procedure TFormCadastroGraficaOrdem.btnExecutaremClick(Sender: TObject);
begin
  inherited;
  FieldLookup   := DsTemplate.DataSet.FieldByName('TIPOSERVICO');
  FieldOrigem   := 'ORDEXEID';
  DataSetLookup := SQLExecutarem;
  CriaFormulario(TFormCadastroMecExecutaEm,'FormCadastroMecExecutaEm',False,True,True,'');
end;

procedure TFormCadastroGraficaOrdem.edtProdicodKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    btnProdutos.Click;
end;


procedure TFormCadastroGraficaOrdem.ComboExecutarEmKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    btnExecutarem.Click;
end;

procedure TFormCadastroGraficaOrdem.SQLTemplateBeforePost(DataSet: TDataSet);
var nParcelas: String;
mensagem :String;
begin
  inherited;
  if DataSet.FieldByName('CLIEA13ID').AsString = '' then
  begin
    Showmessage('Campo Cliente Deve Ser Informado');
 //   ComboCliente.SetFocus;
    Abort;
    Exit;
  end;

  if DataSet.FieldByName('vendicod').AsString = '' then
  begin
    Showmessage('Campo Vendedor Deve Ser Informado');
   // ComboVendedor.SetFocus;
    Abort;
    Exit;
  end;

  if DataSet.FieldByName('TIPOSERVICO').AsString = '' then
  begin
    Showmessage('Campo Executado Em Deve Ser Informado');
  //  ComboExecutarEm.SetFocus;
    Abort;
    Exit;
  end;

  if DataSet.FieldByName('DATA').AsString <= '01/01/1900' then
  Begin
    ShowMessage('Data Inválida');
    Abort;
    Exit;
  end;

  if DataSet.FieldByName('PRODICOD').IsNull then
  begin
    Showmessage('Campo Produto Deve Ser Informado');
  //  ComboExecutarEm.SetFocus;
    Abort;
    Exit;
  end;

  if DataSet.FieldByName('comissionapor').AsString = '' Then
  Begin
    Showmessage('Forma de comissionamento não informada');
    Abort;
    Exit;
  end;

  if DataSet.FieldByName('COMISSAO').value <= 0 then
  Begin
    if SQLTemplateCOMISSIONAPOR.AsString = 'V' then
      Mensagem := 'Valor do Comissionamento não informado. Continuar assim ?'
    else
      Mensagem := 'Percental de Comissionamento não informado. Continuar assim ?' ;
    if Not Pergunta('NÃO','ATENÇÃO...'+#13+#10+Mensagem) Then
    begin
      Abort;
      Exit;
    End;
  end;

  
end;

procedure TFormCadastroGraficaOrdem.SQLTemplateAfterPost(DataSet: TDataSet);
begin
  inherited;
  if NovaOrdem then
  begin
    NovaOrdem:= False;
    Button3.Click;
  end;
end;

procedure TFormCadastroGraficaOrdem.SQLTemplateAfterCancel(DataSet: TDataSet);
begin
  inherited;
  NovaOrdem := False;
end;

procedure TFormCadastroGraficaOrdem.DBGridListaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if SQLTemplateSTATUS.AsString = 'F' then
    DBGridLista.Canvas.Font.Color := clBlue
  Else if SQLTemplateSTATUS.AsString = 'E' then
    DBGridLista.Canvas.Font.Color := clGreen
  Else if SQLTemplateSTATUS.AsString = 'C' then
    DBGridLista.Canvas.Font.Color := clRed
  Else if SQLTemplateSTATUS.AsString = 'P' then
    DBGridLista.Canvas.Font.Color := clMaroon
  Else if SQLTemplateStatus.AsString = 'R' then
    DBGridLista.Canvas.Font.Color := clYellow;
  inherited;
end;

procedure TFormCadastroGraficaOrdem.DBDateEdit2Exit(Sender: TObject);
begin
  inherited;
  if (DBDateEdit2.Text <> '  /  /    ') and (SQLTemplatePRAZOENTR.asdatetime < SQLTemplateDATA.asDateTime) then
  begin
    ShowMessage('Data de Entrega Menor que Data de Emissão');
    DBDateEdit2.SetFocus;
  end;

end;

procedure TFormCadastroGraficaOrdem.CancelarOrdemdeServioAtual1Click(
  Sender: TObject);
  var Motivo:String;
begin
  inherited;
  If SQLTemplateSTATUS.asstring = 'F' then
  begin
    if MessageDlg('Confirma o CANCELAMENTO da Ordem de Serviço Atual ?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    begin
      Motivo := InputBox('Motivo do Cancelamento','Informe:','');
      NovaOrdem := True;
      SQLTemplate.Edit;
      SQLTemplateSTATUS.AsString := 'C';
      SQLTemplateOBS.AsString    := SQLTemplateOBS.AsString + #13+#10+ Motivo;
      SQLTemplate.Post;
      ShowMessage('Cancelamento Efetuado com Sucesso.');
    end;
  end else
    ShowMessage('Somente é Permitido Cancelamento de Ordens Encerradas');
end;

procedure TFormCadastroGraficaOrdem.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  if ((SQLTemplateSTATUS.AsString <> 'A') and (SQLTemplateSTATUS.AsString <> 'P') and (SQLTemplateSTATUS.AsString <> 'R')) and (NovaOrdem <> True) then // Aberta / Pronto / Parcial
  begin
    ShowMessage('Somente é permitido alterações em Ordens ABERTAS.');
    if PnlEntrega.Visible then
      PnlEntrega.Visible := False;
    Abort;
    Exit;
  end;
end;

procedure TFormCadastroGraficaOrdem.InformarEntregadoServio1Click(
  Sender: TObject);
begin
  inherited;
  DBEditQTDEntregue.Enabled := True;
  Panel6.Caption        := '  Informe Data da Entrega' ;
  SQLTemplate.Edit;
  SQLFinaliza.First;
  QtdEntregue:= 0;
  While Not SQLFinaliza.Eof do
  begin
    QtdEntregue := QtdEntregue + SQLFinalizaQUANTIDADE.value;
    SQLFinaliza.Next;
  end;
  SQLFinaliza.Append;
  SQLTemplateENTREGADO.AsDateTime := Date;
  SQLFinalizaDATA.AsDateTime      := Date;
  SQLFinalizaORDNUM.AsInteger     := SQLTemplateORDNUM.AsInteger;
  SQLFinalizaQUANTIDADE.Value     := SQLTemplateQUANTTOTAL.Value - QtdEntregue;
  QtdFinalizado                   := SQLTemplateQUANTTOTAL.Value - QtdEntregue;
  PnlEntrega.Visible              := True;
  DBEditQTDEntregue.Visible       := True;
  LabelVlrCobrar.Visible          := True;
  Label47.Visible                 := True;
  PnlEntrega.Height               := 193;
  DBDateEdit3.SetFocus;
end;

procedure TFormCadastroGraficaOrdem.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Try
    if SQLNotafiscal.State in ([dsInsert, dsEdit]) then
      SQLNotafiscal.Post;
  Except
    SQLNotafiscal.Cancel;
  end;
  SQLNotafiscal.Close;

  if (SQLTemplateENTREGADO.asdatetime) < (SQLTemplateDATA.asdatetime) then
  begin
    ShowMessage('Data Informada Menor que Data da Inclusão da Ordem');
    DBDateEdit3.SetFocus;
    Exit;
  end;
  if Panel6.Caption = '  Informe Data da Finalização' then
    SQLTemplateSTATUS.AsString := 'F' // Finalizado
  else begin
    if SQLFinalizaQUANTIDADE.Value < SQLTemplateQUANTTOTAL.Value - QtdEntregue then
      SQLTemplateSTATUS.AsString := 'R'  // PaRcial
    else
      SQLTemplateSTATUS.AsString := 'E'; // Entregue
  end;
  QtdFinalizado   :=  SQLFinalizaQUANTIDADE.Value;

  if SQLFinaliza.State in ([dsInsert,dsEdit]) then
  begin
    SQLFinaliza.Post;
  end;
  DBEditQTDEntregue.Enabled    := True;

  SQLTemplate.Post;

  if DBEditQTDEntregue.Visible then
    GerarNotaFiscal1Click(Sender);

  PnlEntrega.Visible := False;

  if SQLNotafiscal.State in ([dsInsert, dsEdit]) then
    SQLNotafiscal.Post;

  SQLNotaFiscal.Close;
  SQLNotafiscal.Open;
end;

procedure TFormCadastroGraficaOrdem.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if SQLFinaliza.State in ([dsInsert,dsEdit]) then
    SQLFinaliza.Cancel;

  if SQLTemplate.State = dsEdit then
    SQLTemplate.Cancel;
  PnlEntrega.Visible := False;
end;

procedure TFormCadastroGraficaOrdem.ReabirOrdemdeServioCancelada1Click(
  Sender: TObject);
begin
  inherited;
  if Pergunta('SIM','Confirma a reabertura desta Ordem de Serviço?') then
  begin
    SQLTemplate.BeforeEdit := nil;
    SQLTemplate.Edit;
    SQLTemplateSTATUS.AsString := 'A';
    SQLTemplate.Post;
    SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;
  end;
end;

procedure TFormCadastroGraficaOrdem.FinalizarOrdemdeServio1Click(
  Sender: TObject);
begin
  inherited;
  NovaOrdem             := True;
  Panel6.Caption        := '  Informe Data da Finalização';

  QtdEntregue:= 0;
  SQLFinaliza.First;
  While Not SQLFinaliza.Eof do
  begin
    QtdEntregue := QtdEntregue + SQLFinalizaQUANTIDADE.value;
    SQLFinaliza.Next;
  end;

  SQLTemplate.Edit;
  SQLTemplateENTREGADO.AsDateTime := Date;

  DBEditQTDEntregue.Visible  := SQLTemplateQUANTTOTAL.value > QtdEntregue;
  LabelVlrCobrar.Visible     := SQLTemplateQUANTTOTAL.value > QtdEntregue;
  Label47.Visible            := SQLTemplateQUANTTOTAL.value > QtdEntregue;
  PnlEntrega.Height          := 151;

  if SQLTemplateQUANTTOTAL.value > QtdEntregue then
  begin
    SQLFinaliza.Append;
    SQLFinalizaDATA.AsDateTime := Date;
    SQLFinalizaORDNUM.Value    := SQLTemplateORDNUM.Value;
    SQLFinalizaQUANTIDADE.Value:= SQLTemplateQUANTTOTAL.Value - QtdEntregue;
    QtdFinalizado              := SQLTemplateQUANTTOTAL.Value - QtdEntregue;
    PnlEntrega.Height          := 193;
  end;
  DBEditQTDEntregue.Enabled := False;
  PnlEntrega.Visible := True;
  DBDateEdit3.SetFocus;

end;

procedure TFormCadastroGraficaOrdem.BTNLocalizarClick(Sender: TObject);
var
Clausula : String;
CampoOrdem : TField;
begin
  inherited;
  Clausula := '';
  if ComboBuscaCliente.Value <> '' then
    Clausula := 'CLIEA13ID = ''' + ComboBuscaCliente.Value + ''' ';
  if RadioStatus.ItemIndex >= 1 then
    if Clausula <> '' then
      Clausula := Clausula + ' and ';
  Case RadioStatus.ItemIndex of
  1 : Clausula := Clausula + ' (STATUS = ''A'' )';
  2 : Clausula := Clausula + ' (STATUS = ''C'' )';
  3 : Clausula := Clausula + ' (STATUS = ''E'' )';
  4 : Clausula := Clausula + ' (STATUS = ''F'' )';
  End;
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
    Informa('Pesquisa incomleta, verifique!');

end;

procedure TFormCadastroGraficaOrdem.GerarNotaFiscal1Click(Sender: TObject);
var NumNF:Integer;
    Form : TObject;
begin
  inherited;
  if not Pergunta('SIM','Confirma a Geração da Nota Fiscal a partir desta Ordem de Serviço?') then
    Exit;

  if PnlEntrega.Visible then
    NumNF := GerarNF(QtdFinalizado)
  Else
    NumNF := GerarNF(SQLTemplateQUANTTOTAL.Value);

  if NumNF > 0 then
  begin
    SQLFinaliza.First;
    While not SQLFinaliza.Eof do
    begin
      if (SQLFinalizaNOTAFISCAL.IsNull) or (SQLFinalizaNOTAFISCAL.Value = 0 ) then
      begin
        SQLFinaliza.Edit;
        SQLFinalizaNOTAFISCAL.Value := NumNF;
        SQLFinaliza.Post;
      End;
      SQLFinaliza.Next;
    End;
  end else
    Exit;

  CriaFormulario(TFormCadastroNotaFiscal, 'FormCadastroNotaFiscal',False,False,False,'') ;
  Form := Application.FindComponent('FormCadastroNotaFiscal');
  ((Form as TForm).FindComponent('ComboSerieNF') as TRxDBLookupCombo).KeyValue := dm.SerieAtualPedidos;
  ((Form as TForm).FindComponent('EditNroNFInicial') as TMaskEdit).Text        := IntToStr(NumNF);
  ((Form as TForm).FindComponent('EditNroNFFinal') as TMaskEdit).Text          := IntToStr(NumNF);
  ((Form as TForm).FindComponent('BTNLocalizar') as TSpeedButton).Click;
   if FileExists('AVANCO.TXT') then
     ((Form as TForm).FindComponent('NotaFiscalEletrnicaListadas1') as TMenuItem).Click
   Else
     ((Form as TForm).FindComponent('NotaFiscalJava1') as TMenuItem).Click;

end;

procedure TFormCadastroGraficaOrdem.OrdemdeServioAtual1Click(
  Sender: TObject);
begin
  inherited;
  if FileExists('AVANCO.TXT') then
  begin
    FormRelatorioOrdemGrafica:= TFormRelatorioOrdemGrafica.Create(Self);
    xCodProduto              := SQLTemplatePRODICOD.AsInteger;
    xServico                 := SQLTemplateSERVICO.AsString;
    FormRelatorioOrdemGrafica.RelatorioOrdemGrafica.PrinterSetup;
    FormRelatorioOrdemGrafica.RelatorioOrdemGrafica.Print;
    FormRelatorioOrdemGrafica.Free;
  End else
  begin
  //OrdemdeServioAtualMatricial1Click(Sender);
    if SQLTemplateTipoExecucao.AsString <> 'C' then
    begin
      FormRelatorioOrdensToazza:= TFormRelatorioOrdensToazza.Create(Self);
      xTCodProduto              := SQLTemplatePRODICOD.AsInteger;
      xTServico                 := SQLTemplateSERVICO.AsString;
      FormRelatorioOrdensToazza.RelatorioOrdemGrafica.PrinterSetup;
      FormRelatorioOrdensToazza.RelatorioOrdemGrafica.Print;
      FormRelatorioOrdensToazza.Free;
    end else
    begin
      FormRelatorioOrdemGraficaToazzaCaderno:= TFormRelatorioOrdemGraficaToazzaCaderno.Create(Self);
      xCCodProduto              := SQLTemplatePRODICOD.AsInteger;
      xCServico                 := SQLTemplateSERVICO.AsString;
      FormRelatorioOrdemGraficaToazzaCaderno.RelatorioOrdemGrafica.PrinterSetup;
      FormRelatorioOrdemGraficaToazzaCaderno.RelatorioOrdemGrafica.Print;
      FormRelatorioOrdemGraficaToazzaCaderno.Free;
    end;
  end;

end;

procedure TFormCadastroGraficaOrdem.OrdensdeServioemSequencia1Click(
  Sender: TObject);
begin
  inherited;
  if MessageDlg('Atenção...'+#13+#10+''+#13+#10+'Totas as Ordens Listadas na Tela Serão Impressas.'+#13+#10+''+#13+#10+'Confirma a Impressão em Sequencia', mtWarning, [mbYes,mbNo], 0) = mrNo then
    Exit;

  SQLTemplate.First;
  if FileExists('AVANCO.TXT') then
  begin
    FormRelatorioOrdemGrafica:= TFormRelatorioOrdemGrafica.Create(Self);
    FormRelatorioOrdemGrafica.RelatorioOrdemGrafica.DataSet := SQLTemplate;
    FormRelatorioOrdemGrafica.RelatorioOrdemGrafica.Print;
    FormRelatorioOrdemGrafica.Free;
  End Else
  begin
    FormRelatorioOrdensToazza:= TFormRelatorioOrdensToazza.Create(Self);
    FormRelatorioOrdensToazza.RelatorioOrdemGrafica.DataSet := SQLTemplate;
    FormRelatorioOrdensToazza.RelatorioOrdemGrafica.PrinterSetup;
    FormRelatorioOrdensToazza.RelatorioOrdemGrafica.Print;
    FormRelatorioOrdensToazza.Free;
  end;
end;

procedure TFormCadastroGraficaOrdem.RelatriodeOrdensListadas1Click(
  Sender: TObject);
begin
  inherited;
  FormListagemOrdemGrafica:= TFormListagemOrdemGrafica.Create(Self);
  FormListagemOrdemGrafica.ListagemOrdemGrafica.Preview;
  FormListagemOrdemGrafica.Free;
end;

procedure TFormCadastroGraficaOrdem.AlterarStatusparaPRODUZIDOa1Click(
  Sender: TObject);
begin
  inherited;
  if SQLTemplateSTATUS.asstring = 'A' then
  begin
    IF MessageDlg('Confirma a Produção desta Ordem', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    begin
      SQLTemplate.Edit;
      SQLTemplateSTATUS.AsString := 'P';
      SQLTemplate.Post;
      Button1.Click;
    end;
  end else
    Showmessage('Para Confirmar Produção o Status deve ser ABERTA');
end;

procedure TFormCadastroGraficaOrdem.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #9 then // CTRL+I
    AlterarStatusparaPRODUZIDOa1.Click
  else if key = #6 then // CTRL+F
    FinalizarOrdemdeServio1.Click
  else if key = #5 then // CTRL+E
    InformarEntregadoServio1.Click
  else if key = #16 then // CTRL+P
    OrdemdeServioAtual1.Click;
end;

procedure TFormCadastroGraficaOrdem.OrdemdeServioAtualMatricial1Click(
  Sender: TObject);
  var Linha, Col :Integer;
begin
  inherited;

  Linha:= 1;

  RDprint.Abrir;

 { if not RDPrint.Setup then
    Exit;
  }
 // RDPrint.Impressora := Grafico;

  RDPrint.ImpF(Linha,61,SQLTemplateORDNUM.AsString,[EXPANDIDO]); inc(linha,2);
  RDPrint.ImpF(Linha,58,SQLTemplateDATA.AsString,[]);inc(linha);
  RDPrint.ImpF(Linha,59,SQLTemplateVendedorLookUp.AsString,[]);inc(Linha);
  RDPrint.ImpF(Linha,63,SQLTemplatePRAZOENTR.AsString,[]);inc(Linha,5);
  RDPrint.ImpF(Linha,05,SQLTemplateCliente.AsString,[]);inc(Linha,2);
  RDPrint.ImpF(Linha,05,SQLTemplateClienteEndereco.AsString,[]);
  RDPrint.ImpF(Linha,54,SQLTemplateClienteBairro.AsString,[]);inc(Linha,2);
  RDPrint.ImpF(Linha,05,SQLTemplateClienteCidade.AsString,[]);
  RDPrint.ImpF(Linha,54,SQLTemplateClienteCep.AsString,[]);
  RDPrint.ImpF(Linha,79,SQLTemplateClienteUF.AsString,[]);inc(Linha,2);
  RDPrint.ImpF(Linha,05,SQLTemplateClienteCNPJ.AsString,[]);
  RDPrint.ImpF(Linha,40,SQLTemplateclienteIE.AsString,[]);
  RDPrint.ImpF(Linha,68,SQLTemplateClienteFone.AsString,[]);inc(Linha,3);

  // Servico de formulario
  if SQLTemplateTipoExecucao.AsString = 'F' then
  begin
    RDPrint.ImpF(Linha,1 ,'SERVIÇO: ',[]);
    RDPrint.ImpF(Linha,11,Trim(SQLTemplateProdutoLookUp.AsString)+' '+Trim(SQLTemplateSERVICO.AsString),[]);inc(Linha,1);

    RDPrint.ImpF(Linha,1 ,'LARGURA: ',[]);
    RDPrint.ImpF(Linha,11,SQLTemplateLARGURA.AsString,[]);
    RDPrint.ImpF(Linha,20,'ALTURA: ',[]);
    RDPrint.ImpF(Linha,29,SQLTemplateALTURA.AsString,[]);
    RDPrint.ImpF(Linha,38,'No. VIAS: ',[]);
    RDPrint.ImpF(Linha,48,SQLTemplateVIAS.AsString,[]);inc(Linha,1);

    RDPrint.ImpF(Linha,1 ,'NUMERAÇÃO: ',[]);
    RDPrint.ImpF(Linha,12,SQLTemplateNUMDE.AsString,[]);
    RDPrint.ImpF(Linha,22,'A: ',[]);
    RDPrint.ImpF(Linha,24,SQLTemplateNUMA.AsString,[]);
    RDPrint.ImpF(Linha,34,'QUANT.TOTAL: ',[]);
    RDPrint.ImpF(Linha,48,SQLTemplateQUANTTOTAL.AsString,[]);
    RDPrint.ImpF(Linha,58,'PAPEL: ',[]);
    RDPrint.ImpF(Linha,66,SQLTemplatePAPEL.AsString,[]);inc(Linha,1);

    RDPrint.ImpF(Linha,1 ,'CORES IMPRESSÃO: ',[]);
    RDPrint.ImpF(Linha,18,SQLTemplateCOREIMP.AsString,[]);inc(Linha,1);

    RDPrint.ImpF(Linha,1 ,'OBS: ',[]);
    RDPrint.ImpF(Linha,8 ,Copy(SQLTemplateOBS.AsString,  1,70),[]);inc(Linha,1);
    RDPrint.ImpF(Linha,8 ,Copy(SQLTemplateOBS.AsString, 71,70),[]);inc(Linha,1);
    RDPrint.ImpF(Linha,8 ,Copy(SQLTemplateOBS.AsString,140,70),[]);inc(Linha,1);
  End;

 { Impressao Plana }
  If SQLTemplateTipoExecucao.AsString = 'I' then
  begin
    RDPrint.ImpF(Linha,1 ,'SERVIÇO: ',[]);
    RDPrint.ImpF(Linha,11,Trim(SQLTemplateProdutoLookUp.AsString)+' '+Trim(SQLTemplateSERVICO.AsString),[]);inc(Linha,2);

    if SQLTemplateQUANTTALOES.value > 0 then
    begin
      RDPrint.ImpF(Linha,1 ,'QTD.TALOES: ',[]);
      RDPrint.ImpF(Linha,13,SQLTemplateQUANTTALOES.AsString,[]);
    end else
    begin
      RDPrint.ImpF(Linha,1 ,'QTD.TOTAL: ',[]);
      RDPrint.ImpF(Linha,13,SQLTemplateQUANTTOTAL.AsString,[]);
    end;
    RDPrint.ImpF(Linha,23,'No. VIAS: ',[]);
    RDPrint.ImpF(Linha,33,SQLTemplateVIAS.AsString,[]);
    RDPrint.ImpF(Linha,38,'FORMATO: ',[]);
    RDPrint.ImpF(Linha,47,SQLTemplateFORMATO.AsString,[]);
    RDPrint.ImpF(Linha,65,'TIPO: ',[]);
    RDPrint.ImpF(Linha,70,COPY(SQLTemplateExecutaremLookUp.AsString,0,10),[]);inc(Linha,1);

    Col:= 1;
    If SQLTemplatePICOTE.AsString = 'T' then
    begin
      RDPrint.ImpF(Linha,Col,'[x]Picote',[]);
      inc(col,10);
    end;
    If SQLTemplateGRAMPO.AsString = 'T' then
    begin
      RDPrint.ImpF(Linha,Col,'[x]Grampo',[]);
      inc(col,10);
    end;
    If SQLTemplateCOLA.AsString = 'T' then
    begin
      RDPrint.ImpF(Linha,Col,'[x]Cola',[]);
      inc(col,8);
    end;
    If SQLTemplateNUMERADO.AsString= 'T' then
    begin
      RDPrint.ImpF(Linha,Col,'[x]Numerado',[]);
      inc(col,12);
    end;
    If SQLTemplateSOLTO.AsString = 'T' then
    begin
      RDPrint.ImpF(Linha,Col,'[x]Solto',[]);
      inc(col,9);
    end;
    If SQLTemplateFURADO.AsString = 'T' then
    begin
      RDPrint.ImpF(Linha,Col,'[x]Furado',[]);
      inc(col,10);
    end;
    If SQLTemplatePALTIFICADO.AsString = 'T' then
    begin
      RDPrint.ImpF(Linha,Col,'[x]Plastif.',[]);
      inc(col,12);
    end;
    If SQLTemplateCARBONO.AsString = 'T' then
    begin
      RDPrint.ImpF(Linha,Col,'[x]Carbono',[]);
      inc(col,12);
    end;
    inc(linha);
    RDPrint.ImpF(Linha,1 ,'NUMERAÇÃO: ',[]);
    RDPrint.ImpF(Linha,12,SQLTemplateNUMDE.AsString,[]);
    RDPrint.ImpF(Linha,20,'A: ',[]);
    RDPrint.ImpF(Linha,22,SQLTemplateNUMA.AsString,[]);

    RDPrint.ImpF(Linha,30,'COR PAPEL: ',[]);
    RDPrint.ImpF(Linha,40,SQLTemplateCORDOPAPEL.AsString,[]);inc(Linha,2);

    RDPrint.ImpF(Linha,1 ,'CORES IMPRESSÃO: ',[]);
    RDPrint.ImpF(Linha,18,SQLTemplateCOREIMP.AsString,[]);inc(Linha,2);

    RDPrint.ImpF(Linha,1 ,'OBS: ',[]);
    RDPrint.ImpF(Linha,8 ,Copy(SQLTemplateOBS.AsString,  1,70),[]);inc(Linha,1);
    RDPrint.ImpF(Linha,8 ,Copy(SQLTemplateOBS.AsString, 71,70),[]);inc(Linha,1);
    RDPrint.ImpF(Linha,8 ,Copy(SQLTemplateOBS.AsString,140,70),[]);inc(Linha,1);
  End;

  // Cadernos
  if SQLTemplateTipoExecucao.AsString = 'C' then
  begin
    RDPrint.ImpF(Linha,1 ,'QUANTIDADE: ',[]);
    RDPrint.ImpF(Linha,13,SQLTemplateQUANTTOTAL.AsString,[]);
    RDPrint.ImpF(Linha,30,'TAMANHO: ',[]);
    RDPrint.ImpF(Linha,40,SQLTemplateFORMATO.AsString,[]); INC(LINHA);

    RDPrint.ImpF(Linha,1 ,'CAPA: ',[]);
    RDPrint.ImpF(Linha,8,Copy(SQLTemplateCAPA.AsString,  1,70),[]);inc(Linha,1);
    RDPrint.ImpF(Linha,8,Copy(SQLTemplateCAPA.AsString, 71,70),[]);inc(Linha,1);
    RDPrint.ImpF(Linha,8,Copy(SQLTemplateCAPA.AsString,140,70),[]);inc(Linha,2);

    RDPrint.ImpF(Linha,1 ,'MIOLO: ',[]);
    RDPrint.ImpF(Linha,8,Copy(SQLTemplateMIOLO.AsString,  1,70),[]);inc(Linha,1);
    RDPrint.ImpF(Linha,8,Copy(SQLTemplateMIOLO.AsString, 71,70),[]);inc(Linha,1);
    RDPrint.ImpF(Linha,8,Copy(SQLTemplateMIOLO.AsString,140,70),[]);inc(Linha,2);

    RDPrint.ImpF(Linha,1 ,'ACABAMENTO : ',[]);
    RDPrint.ImpF(Linha,13,Copy(SQLTemplateACABAMENTO.AsString,  1,65),[]);inc(Linha,1);
    RDPrint.ImpF(Linha,8,Copy(SQLTemplateACABAMENTO.AsString, 66,70),[]);inc(Linha,1);
    RDPrint.ImpF(Linha,8,Copy(SQLTemplateACABAMENTO.AsString,136,70),[]);inc(Linha,2);

    RDPrint.ImpF(Linha,1 ,'OBS..: ',[]);
    RDPrint.ImpF(Linha,8 ,Copy(SQLTemplateOBS.AsString,  1,70),[]);inc(Linha,1);
    RDPrint.ImpF(Linha,8 ,Copy(SQLTemplateOBS.AsString, 71,70),[]);inc(Linha,1);
    RDPrint.ImpF(Linha,8 ,Copy(SQLTemplateOBS.AsString,140,70),[]);inc(Linha,1);
  end;
  RDprint.Fechar;
end;

procedure TFormCadastroGraficaOrdem.OrdensdeServioemSequnciaMatricial1Click(
  Sender: TObject);
begin
  inherited;
  beep
end;

procedure TFormCadastroGraficaOrdem.SQLTemplateTIPOSERVICOChange(
  Sender: TField);
begin
  inherited;
  if SQLTemplateTipoExecucao.AsString = 'C' then
    PageControl2.ActivePageIndex := 1
  else
    PageControl2.ActivePageIndex := 0;

end;

procedure TFormCadastroGraficaOrdem.ComboClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnCliente.Click;
end;

procedure TFormCadastroGraficaOrdem.Excluir1Click(Sender: TObject);
begin
  inherited;
  if not SQLFinalizaNOTAFISCAL.IsNull then
    Showmessage('Atenção'+#13#10+'A Nota Fiscal NÃO Será Cancelada');
  if Pergunta('SIM','Excluir o Registro de Entrega?') then
    SQLFinaliza.Delete;
  if SQLFinaliza.IsEmpty then
  begin
    if Pergunta('SIM','Deseja Alterar o Status da Ordem para Aberto?') then
      ReabirOrdemdeServioCancelada1Click(Sender);
  end;
end;

procedure TFormCadastroGraficaOrdem.DBDateEdit3Change(Sender: TObject);
begin
  inherited;
  if SQLFinaliza.State in ([dsInsert,dsEdit]) then
    SQLFinalizaDATA.AsDateTime := DBDateEdit3.Date;
end;


Function TFormCadastroGraficaOrdem.BuscaDadosCliente:TCLIE;
var nLocal:TCLIE;
begin
  Try
    SQLBuscas.Close;
    SQLBuscas.SQL.Text := 'Select CLIEA2UFRES, CLIEA60RAZAOSOC, CLIEA5FISJURID, CLIECENQUADRAMENTO '+
    'From CLIENTE where CLIEA13ID = :xCLI';
    SQLBuscas.Prepare;
    SQLBuscas.ParamByName('xCLI').AsString := SQLTemplateCLIEA13ID.AsString;;
    SQLBuscas.Open;

    if not SQLBuscas.IsEmpty then
    begin
      nLocal.nCliUF           := SQLBuscas.fieldByName('CLIEA2UFRES').AsString;
      nLocal.nCliNome         := SQLBuscas.fieldByName('CLIEA60RAZAOSOC').AsString;
      nLocal.nCliPessoa       := SQLBuscas.fieldByName('CLIEA5FISJURID').AsString;
      nLocal.nCliRegime       := SQLBuscas.fieldByName('CLIECENQUADRAMENTO').AsString;
    end else
    begin
      nLocal.nCliUF           := '';
      nLocal.nCliNome         := '';
      nLocal.nCliPessoa       := '';
      nLocal.nCliRegime       := '';
    end;

    Result := nLocal;
  Except on e:Exception do
  begin
    ShowMessage('Falha ao encontar dados do Cliente - '+e.message);
  end; end;
end;


Function TFormCadastroGraficaOrdem.BuscaIcms(nCodICMS:String; SitTributaria:String):TICMSUF;
var nLocal : TICMSUF;
begin
  SQLBuscas.Close;
  SQLBuscas.SQL.Text :=  'Select * From ICMS Where ICMSICOD= :ICMSICOD';
  SQLBuscas.ParamByName('ICMSICOD').AsString := nCodICMS;
  SQLBuscas.Open;

  if SQLBuscas.IsEmpty then
  begin
    ShowMessage('ATENÇÃO...'+#13#10+#13#10+'Alíquota de ICMS não Foi Especificada para o produto '+SQLTemplatePRODICOD.AsString);
    nLocal.nICMS          := 0;
    nLocal.nRED_ICMS      := 0;
    nLocal.nICMS_INTERNO  := 0;
    nLocal.nMVA           := 0;
    nLocal.nSTFisica      := '';
    nLocal.nSTJuridica    := '';
  end else
  begin
    nLocal.nICMS          := SQLBuscas.FindField('ICMSN2ICMSM1').asFloat;
    nLocal.nRED_ICMS      := SQLBuscas.FindField('ICMSN2REDBASEICMS').asFloat;
    nLocal.nICMS_INTERNO  := SQLBuscas.FindField('ICMSN2ICMSM1').asFloat;
    nLocal.nMVA           := SQLBuscas.FindField('ICMSN2PERCSUBSTSAI').asFloat;
    nLocal.nSTFisica      := SitTributaria;
    nLocal.nSTJuridica    := SitTributaria;
  End;
  Result := nLocal;
end;

Function TFormCadastroGraficaOrdem.BuscaIcmsUf(varUF:String; varPessoa:String; varRegime:String):TICMSUF;
var SQLText : String;
    nProduto: Integer;
    nLocal : TICMSUF;
begin

  nProduto:= 0;
  // Pesquisa o UF + Cod.Produto para ver se existe algum registro especifico ao Cod Produto digitado
  SQLBuscas.Close;
  SQLBuscas.SQL.Text := 'Select * From ICMSUF Where ICMUA2UF = :ICMUA2UF AND PRODICOD = :pPRODICOD';
  SQLBuscas.ParamByName('ICMUA2UF').asString  := varUF;
  SQLBuscas.ParamByName('pPRODICOD').AsString := SQLTemplatePRODICOD.AsString;
  SQLBuscas.Open;

  // se obtiver algum registro como resultado cria o parametro para busca agregada ao produto
  if not SQLBuscas.IsEmpty then
    nProduto := SQLTemplatePRODICOD.AsInteger; ;

  // Fecha e cria o novo SQL de Pesquisa
  SQLBuscas.Close;
  SQLBuscas.SQL.Text := 'Select * From ICMSUF Where PRODICOD = :pPRODICOD AND '+
  'ICMUA2UF =:ICMUA2UF AND TIPOPESSOA = :pPESSOA AND ENQUADRAMENTO = :pREGIME';

  // Se o Resultado for em branco, busca somente pelo UF + Tipo Pessoa (Fis/Jur) + Regime (Enquadramento)
  if SQLBuscas.IsEmpty then
  begin
    SQLBuscas.Close;
    SQLBuscas.ParamByName('ICMUA2UF').asString  := varUF;
    SQLBuscas.ParamByName('pPESSOA').AsString   := varPessoa;
    SQLBuscas.ParamByName('pRegime').AsString   := varRegime;
    SQLBuscas.ParamByName('pPRODICOD').AsString := SQLTemplatePRODICOD.AsString;
    SQLBuscas.Open;
  End;

  // Se o Resultado for em branco, busca somente pelo UF + Tipo Pessoa (Fis/Jur)
  if SQLBuscas.IsEmpty then
  begin
    SQLBuscas.Close;
    SQLBuscas.ParamByName('ICMUA2UF').asString  := varUF;
    SQLBuscas.ParamByName('pPESSOA').AsString   := varPessoa;
    SQLBuscas.ParamByName('pRegime').AsString   := 'A'; // Ambas
    SQLBuscas.ParamByName('pPRODICOD').AsString := SQLTemplatePRODICOD.AsString;
    SQLBuscas.Open;
  end;

  // Se o Resultado ainda for em branco, busca somente o UF
  if SQLBuscas.IsEmpty then
  begin
    SQLBuscas.Close;
    SQLBuscas.ParamByName('ICMUA2UF').asString  := varUF;
    SQLBuscas.ParamByName('pPESSOA').AsString   := 'A';
    SQLBuscas.ParamByName('pRegime').AsString   := 'A'; // Ambas
    SQLBuscas.ParamByName('pPRODICOD').AsString := SQLTemplatePRODICOD.AsString;
    SQLBuscas.Open;
  end;
  if SQLBuscas.IsEmpty then
  begin
    ShowMessage('ATENÇÃO...'+#13#10+#13#10+'Alíquota de ICMS para o Estado '+VarUF+' não Foi Especificada'+#13#10+'Código do Produto: '+SQLTemplatePRODICOD.AsString);
    nLocal.nICMS          := 0;
    nLocal.nRED_ICMS      := 0;
    nLocal.nICMS_INTERNO  := 0;
    nLocal.nMVA           := 0;
    nLocal.nSTFisica      := '';
    nLocal.nSTJuridica    := '';
  end else
  begin
    nLocal.nICMS          := SQLBuscas.FindField('ICMUN2ALIQUOTA').asFloat;
    nLocal.nRED_ICMS      := SQLBuscas.FindField('ICMUN3REDBASECALC').asFloat;
    nLocal.nICMS_INTERNO  := SQLBuscas.FindField('ICMUN2ALIQUOTAINTERNA').asFloat;
    nLocal.nMVA           := SQLBuscas.FindField('ICMUN3MVA').asFloat;
    nLocal.nSTFisica      := SQLBuscas.FindField('ICMUISITTRIB').AsString;
    nLocal.nSTJuridica    := SQLBuscas.FindField('ICMUISITTRIBJURIDICA').AsString;
  end;

  Result := nLocal;

end;

Function TFormCadastroGraficaOrdem.BuscaDadosProduto:TPRODUTO_ID;
var nLocal:TPRODUTO_ID;
begin
  SQLBuscas.Close;
  SQLBuscas.SQL.Text := 'Select PRODN3VLRCOMPRA, PRODCSERVICO, PRODN3PERCIPI, ICMSICOD, '+
  'PRODN3PESOBRUTO, PRODN3PESOLIQ, PRODISITTRIB From PRODUTO where PRODICOD = :xPRODI';
  SQLBuscas.Prepare;
  SQLBuscas.ParamByName('xPRODI').AsString := SQLTemplatePRODICOD.AsString;
  SQLBuscas.Open;

  if not SQLBuscas.IsEmpty then
  begin
    nLocal.nProdVlrCmpra := SQLBuscas.FieldByName('PRODN3VLRCOMPRA').Value;
    nLocal.nProdPercIPI  := SQLBuscas.FieldByName('PRODN3PERCIPI').Value;
    nLocal.nProdPesoBruto:= SQLBuscas.FieldByName('PRODN3PESOBRUTO').Value;
    nLocal.nProdPesoLiq  := SQLBuscas.FieldByName('PRODN3PESOLIQ').Value;
    nLocal.nProdServico  := SQLBuscas.FieldByName('PRODCSERVICO').AsString;
    nLocal.nProdIcmsICOD := SQLBuscas.FieldByName('ICMSICOD').AsString;
    nLocal.nProdSitTrib  := SQLBuscas.FieldByName('PRODISITTRIB').AsString;
  end else
  begin
    nLocal.nProdVlrCmpra := 0;
    nLocal.nProdPercIPI  := 0;
    nLocal.nProdPesoBruto:= 0;
    nLocal.nProdPesoLiq  := 0;
    nLocal.nProdServico  := '';
    nLocal.nProdIcmsICOD := '';
    nLocal.nProdSitTrib  := '';
  end;

  Result := nLocal;
end;

Function TFormCadastroGraficaOrdem.BuscaDadosOperacao(nCodOp:String):TOPERACAO_ID;
var nLocal:TOPERACAO_ID;
begin
  try
    SQLBuscas.Close;
    SQLBuscas.SQL.Text := 'Select * From OPERACAOESTOQUE where OPESICOD = :xOPESCod';
    SQLBuscas.Prepare;
    SQLBuscas.ParamByName('xOPESCod').AsString := nCodOp;
    SQLBuscas.Open;

    if not SQLBuscas.IsEmpty then
    begin
      nLocal.nOpOrigemDestino := SQLBuscas.fieldByName('OPESCORIGEMDESTINO').AsString;
      nLocal.nOpCalcIPI       := SQLBuscas.fieldByName('OPESCCALCIPI').AsString;
      nLocal.nOpCalcICMS      := SQLBuscas.fieldByName('OPESCCALCICMS').AsString;
      nLocal.nOpCalcST        := SQLBuscas.fieldByName('OPESCCALCSUBST').AsString;
      nLocal.nOpCalcIPIFis    := SQLBuscas.fieldByName('OPESCCALCIPIFIS').AsString;
      nLocal.nOpCalcICMSFis   := SQLBuscas.fieldByName('OPESCCALCICMSFIS').AsString;
      nLocal.nOpCalcSTFis     := SQLBuscas.fieldByName('OPESCCALCSUBSTFIS').AsString;
      nLocal.nOpCFOPnoUF      := SQLBuscas.fieldByName('CFOPA5CODDENTROUF').AsString;
      nLocal.nOpCFOPForaUF    := SQLBuscas.fieldByName('CFOPA5CODFORAUF').AsString;
      nLocal.nOpPCTACred      := SQLBuscas.fieldByName('PLCTA15CODCRED').AsString;
    end else
    begin
      nLocal.nOpOrigemDestino := '';
      nLocal.nOpCalcIPI       := '';
      nLocal.nOpCalcICMS      := '';
      nLocal.nOpCalcST        := '';
      nLocal.nOpCalcIPIFis    := '';
      nLocal.nOpCalcICMSFis   := '';
      nLocal.nOpCalcSTFis     := '';
      nLocal.nOpCFOPnoUF      := '';
      nLocal.nOpCFOPForaUF    := '';
      nLocal.nOpPCTACred      := '';
    end;

    Result := nLocal;
  except on E:Exception do
  begin
    ShowMessage('Falha ao encontar dados da OPERACAO DE ESTOQUE - '+E.Message);
  End; End;
end;


Function TFormCadastroGraficaOrdem.GerarNF(Qtda:Integer):Integer;
Var nCLIE : TCLIE;
    nOPES:TOPERACAO_ID;
begin
  SQLNotaFiscal.Open;
  SQLTransportadora.Open;
  SQLNotaFiscalItem.Open;

  UFEmpresa := SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF',DM.SQLTerminalAtivo.FieldByName('EMPRICOD').AsString);
  nCLIE     := BuscaDadosCliente;

  UFCliente := nCLIE.nCliUF;

  if UFCliente  = '' then
    begin
      ShowMessage('Não foi cadastrado o Estado para o Cliente '+nCLIE.nCliNome+', Verifique!');
      Result := 0;
      Abort;
    end;

  FormTelaConfigPedidos:= TFormTelaConfigPedidos.Create(Self);
  FormTelaConfigPedidos.Label4.Caption        := '  Informe Dados Necessários para Emissão da Nota Fiscal';
  if PnlEntrega.Visible then
    FormTelaConfigPedidos.DataEmissao.Date      := DBDateEdit3.Date
  else
    FormTelaConfigPedidos.DataEmissao.Date      := Date;
  FormTelaConfigPedidos.Label14.Visible       := False;
  FormTelaConfigPedidos.ComboVendedor.Visible := False;
  FormTelaConfigPedidos.ComboFrete.ItemIndex  := 0;

  if FormTelaConfigPedidos.ShowModal = mrCancel then
  begin
    Result := 0;
    Abort;
  end;

  PesoTotalBruto                        := 0;
  PesoTotalLiq                          := 0;
  QtdeTotal                             := 0;
  SQLNotaFiscal.Append;
  SQLNotaFiscalEMPRICOD.Value           := DM.SQLTerminalAtivo.FieldByName('EMPRICOD').Value;
  SQLNotaFiscalCLIEA13ID.Value          := SQLTemplateCLIEA13ID.Value;
  SQLNotaFiscalNOFICSTATUS.Value        := 'A';
  SQLNotaFiscalNOFIDEMIS.Value          := DM.DataEmissaoPedidos;
  SQLNotaFiscalNOFIDSAIDAENTRADA.Value  := DM.DataEntregaPedidos;
  SQLNotaFiscalVENDICOD.AsString        := SQLTemplateVENDICOD.AsString;
  SQLNotaFiscalSERIA5COD.Value          := DM.SerieAtualPedidos;
  SQLNotaFiscalNOFICFRETEPORCONTA.Value := DM.FretePorConta;
  SQLNotaFiscalTRANICOD.Value           := DM.TranspAtualPedidos;
  SQLNotaFiscalVEICA13ID.Value          := DM.VeiculoAtualPedidos;
  SQLNotaFiscalNOFIA8PLACAVEIC.Value    := DM.VeiculoAtualPedidos;

  // Alimenta a Operação de Estoque Buscando do Configurador
  SQLNotaFiscalOPESICOD.AsString      := dm.SQLConfigVenda.FieldByName('OPESICODNF').AsString;

  // Busca dados da Operacao de Estoque e carrega Array nOPES
  nOPES := BuscaDadosOperacao(SQLNotaFiscalOPESICOD.AsString);

  if UFEmpresa = UFCliente then
    SQLNotaFiscalCFOPA5COD.AsString      := nOPES.nOpCFOPnoUF
  else
    SQLNotaFiscalCFOPA5COD.AsString      := nOPES.nOpCFOPForaUF;

  SQLNotaFiscalPLCTA15CODCRED.AsString   := nOPES.nOpPCTACred;
  if SQLTemplateQUANTTOTAL.Value = Qtda Then
    SQLNotaFiscalNOFIN2VLRPRODUTO.Value    := SQLTemplateVAL.Value
  Else
    SQLNotaFiscalNOFIN2VLRPRODUTO.Value    := (SQLTemplateVAL.Value / SQLTemplateQUANTTOTAL.Value)* Qtda;
  SQLNotaFiscalNOFIN2VLRDESCPROM.Value   := 0;
  SQLNotaFiscalNOFIN2VLROUTRASDESP.Value := 0;
  if SQLTemplateQUANTTOTAL.Value = Qtda Then
    SQLNotaFiscalNOFIN2VLRNOTA.Value       := SQLTemplateVAL.Value
  else
    SQLNotaFiscalNOFIN2VLRNOTA.Value       := (SQLTemplateVAL.Value / SQLTemplateQUANTTOTAL.Value)* Qtda;
  SQLNotaFiscalNOFIN2VLRFRETE.Value      := 0;
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
  SQLNotaFiscalNOFIN3QUANT.Value         := 0;
  SQLNotaFiscalPLRCICOD.Value            := SQLTemplatePARCELAS.AsInteger;
  SQLNotaFiscalPENDENTE.Value            := 'S';
  SQLNotaFiscalREGISTRO.Value            := Now;
  SQLNotaFiscalUSUAICOD.Value            := dm.UsuarioAtual;
  SQLNotaFiscalNOFIN3PESBRUT.Asstring    := Dm.PedidoPesoB;
  SQLNotaFiscalNOFIN3PESLIQ.AsString     := Dm.PedidoPesoL;
  SQLNotaFiscalNOFIA15MARCA.AsString     := Dm.PedidoMarca;
  SQLNotaFiscalNOFIA20ESPECIE.AsString   := Dm.PedidoEspecie;
  SQLNotaFiscalNOFIA255OBS.AsString      := Dm.PedidoObs;
  SQLNotaFiscalNOFICFINALIDADE.AsString  := '1';
  SQLNotaFiscal.Post;

  Result := SQLNotaFiscalNOFIINUMERO.Value;

  // Importa os Itens da Ordem

  ImportaItensPedidoVenda(nOPES,nCLIE, Qtda);

  // Alimenta o Contas a Receber
  CriaContasReceber;

  // Alimenta Totais de Impostos
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
  SQLNotaFiscalNOFIN3PESBRUT.Asstring  := Dm.PedidoPesoB;
  SQLNotaFiscalNOFIN3PESLIQ.AsString   := Dm.PedidoPesoL;
//  SQLNotaFiscalNOFIN3QUANT.Value       := QtdeTotal;
  Try
    SQLNotaFiscalNOFIN3QUANT.Value     := StrToFloat(Dm.PedidoVolume);
  Except
    SQLNotaFiscalNOFIN3QUANT.Value       := QtdeTotal;
  End;


  if DM.SQLConfigVenda.FieldByName('CFVETOBSPADRAONF').AsString <> '' then
    SQLNotaFiscalNOFIA255OBS.AsString := DM.SQLConfigVenda.FieldByName('CFVETOBSPADRAONF').AsString+ '  '+Dm.PedidoObs;

  SQLNotaFiscalNOFIN2VLRNOTA.Value     := (SQLNotaFiscalNOFIN2VLRNOTA.Value+SQLNotaFiscalNOFIN2VLRFRETE.Value+SQLNotaFiscalNOFIN2VLROUTRASDESP.Value+SQLNotaFiscalNOFIN2VLRSUBS.Value)-SQLNotaFiscalNOFIN2VLRDESCPROM.Value;

  SQLNotaFiscal.Post;

  // Gravar Data Primeira Compra e Data Ultima Compra
  Dm.SQLCliente.Close;
  Dm.SQLCliente.Sql.Clear;
  Dm.SQLCliente.SQL.Add('UPDATE CLIENTE SET Pendente=''S'' , CLIEDPRICOMPRA = ''' + FormatDateTime('mm/dd/yyyy',SQLNotaFiscalNOFIDEMIS.Value) + ''', CLIEDULTCOMPRA = ''' +FormatDateTime('mm/dd/yyyy',SQLNotaFiscalNOFIDEMIS.Value)+ ''' Where CLIEA13ID = ' + '''' + SQLNotaFiscalCLIEA13ID.Value + ''' and CLIEDPRICOMPRA is null') ;
  Dm.SQLCliente.ExecSql;
end;

procedure TFormCadastroGraficaOrdem.SQLNotaFiscalBeforePost(
  DataSet: TDataSet);
var Erro : Boolean;
begin
  inherited;
  // Gerar o ID da Nota
  if DataSet.State in [DSInsert] then
    DM.CodigoAutomatico('NOTAFISCAL',Nil,DataSet,2,0);
  // Gerar o Nro da Nota Fiscal
  SQLSerieNF.Close;
  // Alterado pelo Judi
  SQLSerieNF.MacroByName('Empresa').value := 'EMPRICOD  = '+ DM.SQLTerminalAtivo.FieldByName('EMPRICOD').asstring;//ComboEmpresa.Value;
  SQLSerieNF.MacroByName('Serie').Value   := 'SERIA5COD = '''+ SQLNotaFiscalSERIA5COD.asString+'''';
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


Procedure TFormCadastroGraficaOrdem.ImportaItensPedidoVenda(nOPES:TOPERACAO_ID; nCLIE:TCLIE; Qtda:Integer);
var CalculaSubst, CalculaIPI, CalculaICMS, FisJur, Situacao: String;
    nPRODS:TPRODUTO_ID;
    nICMS:TICMSUF;
begin
    TotBaseCalcICMS      := 0;
    TotBaseCalcICMSSubst := 0;
    TotVlrICMS           := 0;
    TotVlrICMSSubst      := 0;
    TotVlrISSQN          := 0;

      // verifica a quem a operacao de estoque esta vinculada
    if nOPES.nOpOrigemDestino = 'C' then // se operação vinculada a clientes
      FisJur := nCLIE.nCliPessoa
    Else if nOPES.nOpOrigemDestino = 'F' then // operacao vinculada a fornecedor
    begin
      FisJur := SQLLocate('FORNECEDOR','FORNICOD','FORNCFISJURID',''''+SQLTemplateCLIEA13ID.AsString+'''')
    end Else // se for vinculada a empresa sempre é juridica
      FisJur := 'J' ;

    nPRODS  := BuscaDadosProduto;

    SQLNotaFiscalItem.Append;
    SQLNotaFiscalItemNOFIA13ID.Value          := SQLNotaFiscalNOFIA13ID.AsString;
    SQLNotaFiscalItemNFITIITEM.Value          := 1;
    SQLNotaFiscalItemPRODICOD.Value           := SQLTemplatePRODICOD.Value;
    SQLNotaFiscalItemNFITA254OBS.Value        := SQLTemplateSERVICO.Value;
    SQLNotaFiscalItemNFITN3QUANT.Value        := Qtda;
    SQLNotaFiscalItemNFITN2VLRUNIT.Value      := SQLTemplateVAL.value / SQLTemplateQUANTTOTAL.Value;
    SQLNotaFiscalItemNFITN2PERCDESC.AsVariant := 0;
    SQLNotaFiscalItemNFITN2VLRDESC.AsVariant  := 0;
    SQLNotaFiscalItemNFITN2VLRLUCRO.asFloat   := 0;
    SQLNotaFiscalItemNFITN2VLRDESC.asFloat    := 0;
    SQLNotaFiscalItemNFITN3TOTVEND.Value      := (SQLTemplateVAL.value / SQLTemplateQUANTTOTAL.Value)*Qtda;
    SQLNotaFiscalItemNFITN2PERCCOMIS.AsFloat  := SQLTemplateCOMISSAO.AsFloat;
    // Produto é Servico
    if nPRODS.nProdServico = 'S' then
      begin
        SQLNotaFiscalItemNFITN2PERCISSQN.asFloat  := DM.SQLConfigVenda.FieldByName('CFVEN3ALIQISSQN').asFloat;
        SQLNotaFiscalItemNFITN2VLRISSQN.asFloat   := ((SQLTemplateVAL.value / SQLTemplateQUANTTOTAL.Value)*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat*(SQLNotaFiscalItemNFITN2PERCISSQN.asFloat / 100);
      end
    else
      begin
        // se a op.estoque estiver marcada para calcular IPI e o campo Perc IPI no cad.produtos for maior que zero.
        if FisJur = 'J' then
        begin
          CalculaIPI  := nOPES.nOpCalcIPI;
          CalculaICMS := nOPES.nOpCalcICMS;
          CalculaSubst:= nOPES.nOpCalcST;
        end else
        begin
          CalculaIPI  := nOPES.nOpCalcIPIFis;
          CalculaICMS := nOPES.nOpCalcICMSFis;
          CalculaSubst:= nOPES.nOpCalcSTFis;
        end;

        if CalculaIPI = 'S' then
          SQLNotaFiscalItemNFITN2PERCIPI.Value   := nPRODS.nProdPercIPI
        else
          SQLNotaFiscalItemNFITN2PERCIPI.Value   := 0;

        if (CalculaIPI = 'S') and (SQLNotaFiscalItemNFITN2PERCIPI.AsFloat > 0) then

          SQLNotaFiscalItemNFITN2VLRIPI.asFloat     := ((SQLTemplateVAL.value / SQLTemplateQUANTTOTAL.Value)*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat*
                                                       (SQLNotaFiscalItemNFITN2PERCIPI.asFloat/100);

       // Busca as Aliquotas de ICMS
        if UFEmpresa = UFCliente then
          nICMS := BuscaIcms(nPRODS.nProdIcmsICOD, nPRODS.nProdSitTrib)
        else
          nICMS := BuscaIcmsUf(UFCliente, FisJur, nCLIE.nCliRegime);

        If FisJur = 'F' then
          Situacao := nICMS.nSTFisica
        else
          Situacao := nICMS.nSTJuridica;
        // caso nenhuma situação tenha sido encontrada, pega a do Produto
        if Situacao = '' then
          Situacao := nPRODS.nProdSitTrib;

        SQLNotaFiscalItemNFITICST.AsString := Situacao;

        if CalculaICMS = 'S' then
        begin
          if (Situacao='0') or (Situacao='10') or (Situacao='20') or (Situacao='51') or (Situacao='70') or (Situacao='90') or (Situacao='900') then
          begin
            SQLNotaFiscalItemNFITN2PERCICMS.Value    := nICMS.nICMS; //DM.SQLLocate('ICMS','ICMSICOD','ICMSN2ICMSM1',DM.SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLNotaFiscalItemPRODICOD.AsString));
            SQLNotaFiscalItemNFITN2PERCREDUCAO.Value := nICMS.nRED_ICMS;  //DM.SQLLocate('ICMS','ICMSICOD','ICMSN2REDBASEICMS',DM.SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLNotaFiscalItemPRODICOD.AsString));

            SQLNotaFiscalItemNFITN2BASEICMS.AsFloat  := ((SQLTemplateVAL.value / SQLTemplateQUANTTOTAL.Value)*SQLNotaFiscalItemNFITN3QUANT.asFloat)-SQLNotaFiscalItemNFITN2VLRDESC.asFloat + SQLNotaFiscalItemNFITN2VLRFRETE.AsFloat;
            // Calcula a Reduçao de Base de Calculo - utilizar variavel para quando a oper.estoq. calsula somente Subst.Tribut.
            if (SQLNotaFiscalItemNFITN2PERCREDUCAO.Value > 0) then
                SQLNotaFiscalItemNFITN2BASEICMS.asFloat := (SQLNotaFiscalItemNFITN2BASEICMS.AsFloat) * (SQLNotaFiscalItemNFITN2PERCREDUCAO.Value / 100);
            SQLNotaFiscalItemNFITN2VLRICMS.asFloat := SQLNotaFiscalItemNFITN2BASEICMS.asFloat * (nICMS.nICMS / 100);
          end;
        end;

        // Calcula a substituicao tributaria
        If (CalculaSubst = 'S') Then
        Begin
          if (Situacao='10') or (Situacao='30') or (Situacao='70') or (Situacao='90') or (Situacao='201') or (Situacao='202') or (Situacao='203') or (Situacao='900') then
          begin
              // se a aliquotainterna nao foi especificada pega o percentual de icms normal (aliquota icms)
            if (FloatToSTr(nICMS.nICMS_INTERNO) = '') or (FloatToSTr(nICMS.nICMS_INTERNO) = '0') then
              nICMS.nICMS_INTERNO := nICMS.nICMS;

            If SQLNotaFiscalItemNFITN2PERCSUBS.asFloat > 0 Then
            Begin
              SQLNotaFiscalItemNFITN2BASESUBS.asFloat   := (((SQLNotaFiscalItemNFITN2BASEICMS.value + SQLNotaFiscalItemNFITN2VLRIPI.value + SQLNotaFiscalItemNFITN2VLRFRETE.value)+(SQLNotaFiscalItemNFITN2BASEICMS.value + SQLNotaFiscalItemNFITN2VLRIPI.value + SQLNotaFiscalItemNFITN2VLRFRETE.value) * (SQLNotaFiscalItemNFITN2PERCSUBS.asFloat/100)) ) ;
              SQLNotaFiscalItemNFITN2VLRSUBS.asFloat    := (SQLNotaFiscalItemNFITN2BASESUBS.asFloat  * (SQLNotaFiscalItemNFITN2PERCICMS.asFloat / 100)) - SQLNotaFiscalItemNFITN2VLRICMS.asFloat;
            End Else
            Begin
              SQLNotaFiscalItemNFITN2BASESUBS.asFloat   := 0;
              SQLNotaFiscalItemNFITN2VLRSUBS.asFloat    := 0;
            End;
          End;
        End;

        QtdeTotal      := QtdeTotal      + SQLNotaFiscalItemNFITN3QUANT.asFloat;
        PesoTotalBruto := PesoTotalBruto + StrToFloat(DM.SQLLocate('PRODUTO','PRODICOD','PRODN3PESOBRUTO',SQLNotaFiscalItemPRODICOD.AsString)) * SQLNotaFiscalItemNFITN3QUANT.asFloat;
        PesoTotalLiq   := PesoTotalLiq   + StrToFloat(DM.SQLLocate('PRODUTO','PRODICOD','PRODN3PESOLIQ',SQLNotaFiscalItemPRODICOD.AsString)) * SQLNotaFiscalItemNFITN3QUANT.asFloat;
      end;
    SQLNotaFiscalItem.Post;
    // alimenta variaveis com totais de impostos por item
    TotBaseCalcICMS := TotBaseCalcICMS + SQLNotaFiscalItemNFITN2BASEICMS.AsFloat;
    TotVlrICMS      := TotVlrICMS + SQLNotaFiscalItemNFITN2VLRICMS.AsFloat;
    TotBaseCalcICMSSubst := TotBaseCalcICMSSubst + SQLNotaFiscalItemNFITN2BASESUBS.AsFloat;
    TotVlrICMSSubst      := TotVlrICMSSubst + SQLNotaFiscalItemNFITN2VLRSUBS.AsFloat;
    TotVlrISSQN          := SQLNotaFiscalItemNFITN2VLRISSQN.asFloat;
    AliquotaISSQN        := SQLNotaFiscalItemNFITN2PERCISSQN.asFloat;

    GravaMovimentoEstoque(DM.SQLProduto,
                          DM.SQLProdutoFilho,
                          DM.SQLProdutoSaldo,
                          EmpresaCorrente,//Empresa
                          SQLNotaFiscalItemPRODICOD.Value,//Produto
                          SQLNotaFiscalOPESICOD.Value,//Operacao
                          SQLNotaFiscalItemNFITN3QUANT.Value,//Quantidade
                          'S',//ENTRADA/SAIDA
                          FormatDateTime('mm/dd/yyyy', SQLNotaFiscalNOFIDEMIS.AsDateTime),
                          SQLNotaFiscalItemNFITN2VLRUNIT.asString,
                          'NOTAFISCAL',
                          SQLNotaFiscalNOFIA13ID.AsString,
                          '');
end;

Procedure TFormCadastroGraficaOrdem.CriaContasReceber;
Var
  Valor, DiminuiAcresc, ValorJuro, Acrescimo, EntradaCalc, TaxaCred: Double;
  Erro      : Boolean;
  ValorBase : Double;
  I         : Integer;
begin
  inherited;
  DiminuiAcresc := 0;
  Acrescimo     := 0;
  EntradaCalc   := 0;
  TaxaCred      := 0;

  if (SQLTemplatePARCELAS.Value <> '') and (SQLNotaFiscalNOFIN2VLRNOTA.AsFloat > 0) and (SQLNotaFiscalNOFICSTATUS.Value = 'A') Then
  Begin
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

    SQLPlano.Close;
    SQLPlano.ParamByName('PLRCICOD').AsInteger := SQLTemplatePARCELAS.AsInteger;
    SQLPlano.Open;
    SQLPlano.First;
    if not SQLPlano.Eof then
      Begin
        SQLPlanoParcela.Close;
        SQLPlanoParcela.ParamByName('PLRCICOD').AsInteger := SQLTemplatePARCELAS.AsInteger;
        SQLPlanoParcela.Open;
        SQLPlanoParcela.First;
        ValorJuro := SQLPlanoPLRCN2TXJURO.AsFloat;
        if SQLLocate('PLANORECEBIMENTO','PLRCICOD', 'PLRCCDFIX',SQLTemplatePARCELAS.AsString) = 'V' Then
          CriaParcelasVariaveis(SQLParcelasPrazoVendaTemp,
                     SQLPlano,
                     SQLPlanoParcela,
                     0, // Entrada
                     0, // Desconto
                     SQLNotaFiscal.FindField('NOFIN2VLRNOTA').asFloat,
                     SQLTemplatePARCELAS.AsInteger,
                     SQLNotaFiscal.FindField('NOFIDEMIS').asDateTime,
                     dm.SQLTerminalAtivo.FieldByName('TERMINUMEVISTA').AsString,
                     dm.SQLTerminalAtivo.FieldByName('TERMINUMEPRAZO').AsString,
                     dm.SQLTerminalAtivo.FieldByName('TERMINUMEVISTA').AsString,
                     dm.SQLTerminalAtivo.FieldByName('TERMINUMEPRAZO').AsString,
                     SQLNotaFiscal.FindField('NOFIA13ID').asString,
                     DiminuiAcresc,
                     ValorJuro,
                     Acrescimo,
                     EntradaCalc,
                     TaxaCred)
        else
          CriaParcelas(SQLParcelasPrazoVendaTemp,
                     SQLPlano,
                     SQLPlanoParcela,
                     0, // Entrada
                     0, // Desconto
                     SQLNotaFiscal.FindField('NOFIN2VLRNOTA').asFloat,
                     SQLTemplatePARCELAS.AsInteger,
                     SQLNotaFiscal.FindField('NOFIDEMIS').asDateTime,
                     dm.SQLTerminalAtivo.FieldByName('TERMINUMEVISTA').AsString,
                     dm.SQLTerminalAtivo.FieldByName('TERMINUMEPRAZO').AsString,
                     dm.SQLTerminalAtivo.FieldByName('TERMINUMEVISTA').AsString,
                     dm.SQLTerminalAtivo.FieldByName('TERMINUMEPRAZO').AsString,
                     SQLNotaFiscal.FindField('NOFIA13ID').asString,
                     DiminuiAcresc,
                     ValorJuro,
                     Acrescimo,
                     EntradaCalc,
                     TaxaCred);

        SQLPlanoParcela.Close;
      End;
    SQLPlano.Close;
  End;

  // Lancar Contas a Receber
  if (SQLTemplatePARCELAS.Value <> '') and (SQLNotaFiscalNOFIN2VLRNOTA.AsFloat > 0) and (SQLNotaFiscalNOFICSTATUS.Value = 'A') Then
  begin
    SQLContasReceber.Close;
    SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLNotaFiscalNOFIA13ID.AsString;
    SQLContasReceber.Open;
    SQLContasReceber.First;
    While Not SQLContasReceber.Eof Do
      SQLContasReceber.Delete;

    SQLContasReceber.Close;
    SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLNotaFiscalNOFIA13ID.AsString;
    SQLContasReceber.Open;

    if not SQLParcelasPrazoVendaTemp.Active then SQLParcelasPrazoVendaTemp.Open;
    SQLParcelasPrazoVendaTemp.First;
    While Not SQLParcelasPrazoVendaTemp.Eof Do
      Begin
        SQLContasReceber.Append;
        SQLContasReceberCTRCCSTATUS.Value      := 'A';
        SQLContasReceberNOFIA13ID.AsString     := SQLNotaFiscal.FindField('NOFIA13ID').AsString;
        SQLContasReceberCTRCINROPARC.Value     := SQLParcelasPrazoVendaTempNROPARCELA.Value;
        SQLContasReceberCTRCDEMIS.Value        := SQLNotaFiscal.FindField('NOFIDEMIS').Value;
        SQLContasReceberCLIEA13ID.AsString     := SQLNotaFiscal.FindField('CLIEA13ID').AsString;
        SQLContasReceberCTRCDVENC.Value        := SQLParcelasPrazoVendaTempDATAVENCTO.Value;
        SQLContasReceberCTRCN2VLR.Value        := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
        SQLContasReceberCTRCA5TIPOPADRAO.Value := SQLParcelasPrazoVendaTempTipoPadrao.Value;
        if SQLContasReceberCTRCA5TIPOPADRAO.Value = '' then
          SQLContasReceberCTRCA5TIPOPADRAO.Value := 'CRD';
        SQLContasReceberTPDCICOD.AsVariant     := dm.SQLConfigVenda.FieldByName('TPDCICOD').AsString;
        SQLContasReceberPORTICOD.asVariant     := dm.SQLConfigVenda.FieldByName('PORTICOD').AsString;
        SQLContasReceberCTRCA30NRODUPLICBANCO.AsString := FormatFloat('######000000',SQLNotaFiscalNOFIINUMERO.Value)+'-'+SQLParcelasPrazoVendaTempNROPARCELA.AsString;
        SQLContasReceberCTRCCEMITIDOBOLETO.Value := 'N';
        SQLContasReceberNUMEICOD.Value         := SQLParcelasPrazoVendaTempNUMEICOD.Value;

        // PLANO DE CONTAS Busca do Numerario
        if SQLParcelasPrazoVendaTempNUMEICOD.AsVariant <> Null then
          begin
            SQLContasReceberPLCTA15COD.AsString       := SQLLocate('NUMERARIO','NUMEICOD','PLCTA15CODCRED',SQLParcelasPrazoVendaTempNUMEICOD.AsString);
            SQLContasReceberPLCTA15CODDEBITO.AsString := SQLLocate('NUMERARIO','NUMEICOD','PLCTA15CODDEB',SQLParcelasPrazoVendaTempNUMEICOD.AsString);
          end;

        SQLContasReceberCTRCA254HIST.AsString := 'OS '+SQLTemplateORDNUM.AsString;

        SQLContasReceberTERMICOD.AsInteger      := TerminalCorrente;
        SQLContasReceberPENDENTE.Value          := 'S' ;
        SQLContasReceberREGISTRO.Value          := Now ;

        SQLContasReceber.Post;
        SQLParcelasPrazoVendaTemp.Next;
      end;
    SQLParcelasPrazoVendaTemp.Close;
  End;
  SQLContasReceber.Close;
  SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLNotaFiscalNOFIA13ID.AsString;
  SQLContasReceber.Open;

End;

procedure TFormCadastroGraficaOrdem.SQLFinalizaQUANTIDADEChange(
  Sender: TField);
begin
  inherited;
  Try
      LabelvlrCobrar.Value := (SQLTemplateVAL.Value / SQLTemplateQUANTTOTAL.Value)* SQLFinalizaQUANTIDADE.Value;
  Except
    ShowMessage('Atenção...  Falha ao Dividir Valor Total pela Quantidade Entregue');
    LabelvlrCobrar.Value := 0;
  End;
end;

procedure TFormCadastroGraficaOrdem.SQLContasReceberBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
  If DataSet.FindField('EMPRICOD')<>Nil Then
    DataSet.FindField('EMPRICOD').Value := EmpresaCorrente ;
  If DataSet.FindField('TERMICOD')<>Nil Then
    DataSet.FindField('TERMICOD').Value := TerminalCorrente ;
  Case DataSet.State Of
    DsInsert: DM.CodigoAutomatico('CONTASRECEBER', DSSQLContasReceber, DataSet, 3, 0);
  end;
  ContasReceberID      := SQLContasReceberCTRCA13ID.asString;
  ContasReceberCliente := SQLContasReceberCLIEA13ID.asString;

end;

procedure TFormCadastroGraficaOrdem.SQLContasReceberNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('NOFIA13ID').Value           := SQLNotaFiscal.FindField('NOFIA13ID').Value;
  DataSet.FindField('CTRCINROPARC').Value        := 0 ;
  DataSet.FindField('CTRCN2DESCFIN').Value       := 0 ;
  if Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCMULATRAS').AsFloat > 0 then
    DataSet.FindField('CTRCN2TXMULTA').Value     := Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCMULATRAS').Value
  else
    DataSet.FindField('CTRCN2TXMULTA').Value     := 0 ;

  if Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCJURATRAS').Value > 0 then
    DataSet.FindField('CTRCN2TXJURO').Value      := Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCJURATRAS').Value
  else
    DataSet.FindField('CTRCN2TXJURO').Value      := 0 ;
  DataSet.FindField('CTRCN2TOTREC').Value        := 0 ;
  DataSet.FindField('CTRCN2TOTJUROREC').Value    := 0 ;
  DataSet.FindField('CTRCN2TOTMULTAREC').Value   := 0 ;
  DataSet.FindField('CTRCN2TOTDESCREC').Value    := 0 ;
  DataSet.FindField('CTRCCEMITIDOBOLETO').Value  := 'N' ;
  // Tipo de Registro no Contas a Receber -> N = Normal C = Credito D = Debito;
  DataSet.FindField('CTRCCTIPOREGISTRO').Value   := 'N';

end;

procedure TFormCadastroGraficaOrdem.SQLContasReceberPostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
var
ID : String;
begin
  inherited;
  Case DataSet.State Of
    DsInsert: begin
                DataSet.FieldByName('CTRCICOD').AsInteger:=DataSet.FieldByName('CTRCICOD').AsInteger + 1;
                ID := Format('%.3d',[EmpresaCorrente])+Format('%.3d',[TerminalCorrente])+Format('%.6d',[DataSet.FieldByName('CTRCICOD').asInteger]);
                DataSet.FieldByName('CTRCA13ID').asString:=ID+DM.DigitVerifEAN(ID);
              end;

  end;
  Action := DaRetry;
end;

procedure TFormCadastroGraficaOrdem.DBEdit10Exit(Sender: TObject);
begin
  inherited;
  Try
    if SQLTemplateNUMDE.value > 0 then
      SQLTemplateQUANTTOTAL.Value := SQLTemplateNUMA.value - SQLTemplateNUMDE.value + 1;
  Except
  End;
end;

procedure TFormCadastroGraficaOrdem.SQLTemplateCLIEA13IDChange(
  Sender: TField);
  var CordoCliente:String;
begin
  inherited;
  If SQLClienteCLIETOBS1.AsString <> '' Then
    ShowMessage(SQLClienteCLIETOBS1.AsString);

  if not SQLClienteMTBLICOD.IsNull then
    ShowMessage('Atenção...  Cliente Bloqueado.'+#13#10+ #13#10+ SQLLocate('MOTIVOBLOQUEIO','MTBLICOD','MTBLA60DESCR',SQLClienteMTBLICOD.AsString));

  SQLBuscas.Close;
  SQLBuscas.SQL.Text := 'Select CLIETOBS2 from CLIENTE WHERE CLIEA13ID = :nCLIEA13ID';
  SQLBuscas.Prepare;
  SQLBuscas.ParamByName('nCLIEA13ID').AsString := SQLTemplateCLIEA13ID.AsString;
  SQLBuscas.Open;

  if SQLBuscas.FieldByName('clietobs2').AsString <> '' then
    SQLTemplateCOREIMP.AsString := Copy(SQLBuscas.FieldByName('clietobs2').AsString,0,40);
  SQLBuscas.Close;
end;

procedure TFormCadastroGraficaOrdem.PnlEntregaExit(Sender: TObject);
begin
  inherited;
  if PnlEntrega.Visible = True then
    DBDateEdit3.setfocus;
end;


function TFormCadastroGraficaOrdem.CriaParcelasVariaveis(SQLParcelasPrazo,
                      SQLPlnRec,
                      SQLPlnRecParc : TQuery;
                      Entrada,
                      Desconto,
                      Valor:Double;
                      Plano:integer;
                      Data : TDateTime ;
                      TpRecVistaTel,
                      TpRecPrazoTel,
                      TpRecVistaPDV,
                      TpRecPrazoPDV,
                      Documento: string ;
                      DiminuiAcresc : double ;
                      var ValorJuro, Acrescimo, EntradaCalc, TaxaCred:Double ) : Variant ;
var
  OffSet,
  NumeroParcelas,
  I, n             : Integer;
  TotParc,
  Acumulado,
  ValorDevido,
  Arredondamento   : Double;
  DiasAnterior     : TDateTime;
  VarAno,
  VarMes,
  VarDia,
  VarDiaOficial    : Word;
  Erro             : Boolean;
  nVenctos: array of Integer;
  nDias, diasVencto: String;
  nnVenctos: Variant;
begin
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP') ;
  DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual)) ;
  DM.SQLTemplate.ExecSQL ;

  SQLParcelasPrazo.Close ;
  SQLParcelasPrazo.Open ;
  SQLParcelasPrazo.DisableControls ;

  n:= 1;
  diasVencto := Trim(SQLTemplatePARCELASVARIAVEIS.AsString);

  Insert(' ',diasVencto,length(diasVencto)+1);

  for i:= 1 to Length(diasVencto) do
  begin
    if diasVencto[i] <> ' ' Then
      nDias := nDias + diasVencto[i]
    else begin
      Try
        SetLength(nVenctos, n);
        nVenctos[n-1]:= StrToInt(nDias);
        inc(n);
        nDias := '';
      except
        Showmessage('Falha ao processar vencimentos do plano Variavel. Verifique!'+#13#10+
        'A Nota será gerada sem Faturamento.  Ajuste os vencimentos antes de Imprimi-la');
        Exit;
      end;
    end;
  end;


  For i:= 0 to Length(nVenctos)-1 do
  begin
    SQLParcelasPrazo.Append ;
    SQLParcelasPrazo.FieldByName('TERMICOD').Value   := TerminalAtual ;
    SQLParcelasPrazo.FieldByName('NROPARCELA').Value := nVenctos[i];
    if (nVenctos[i] mod 30 = 0) and
       (nVenctos[i] > 0) and
       (ConvenioVenda > 0) then
      begin
        nnVenctos := nVenctos[i];
        SQLParcelasPrazo.FieldByName('DATAVENCTO').Value := IncMonth(Data, nnVenctos / 30)
      end
    else
      SQLParcelasPrazo.FieldByName('DATAVENCTO').Value := Data +
                                                          nVenctos[i];

    SQLParcelasPrazo.Post;
    SQLPlnRecParc.Next;
  end ;


  SQLParcelasPrazo.Close;
  SQLParcelasPrazo.Open;
  SQLParcelasPrazo.First;


  NumeroParcelas := Length(nVenctos);
  ValorDevido := Valor ;

  TaxaCred  := 0;

  Acrescimo := 0;

  if NumeroParcelas > 0 then
  begin
    Acumulado    := 0;
    DiasAnterior := Data;
    Valor := ValorDevido / NumeroParcelas;
    for I := 1 To NumeroParcelas Do
      begin
        ValorJuro    := 0;
        DiasAnterior := SQLParcelasPrazo.FieldByName('DATAVENCTO').Value;
        Acrescimo    := Acrescimo + ValorJuro;
        Acumulado    := Acumulado + Valor + ValorJuro;
        ValorDevido  := ValorDevido - Valor;

        if NumeroParcelas <> 1 then
          SQLParcelasPrazo.Next;
      end ;

    Acrescimo := Acrescimo - DiminuiAcresc;
    Acumulado := Acumulado - DiminuiAcresc;

    For I := 1 To NumeroParcelas-1 do
     SQLParcelasPrazo.Prior;

    Valor := Acumulado / NumeroParcelas;
    while Not SQLParcelasPrazo.EOF do
    begin
      SQLParcelasPrazo.Edit;
      if (Entrada > 0) and (SQLParcelasPrazo.FieldByName('NROPARCELA').Value = 0) then
        SQLParcelasPrazo.FieldByName('VALORVENCTO').AsString := FormatFloat('###0.00', Entrada)
      else
        SQLParcelasPrazo.FieldByName('VALORVENCTO').AsString := FormatFloat('###0.00', Valor);
      SQLParcelasPrazo.Post;

      SQLParcelasPrazo.Next;
    end ;
    if not DM.SQLConfigVenda.Active then DM.SQLConfigVenda.Open;
    if (TipoPadrao <> 'CRT') then
    begin
      Arredondamento := 0;
      if DM.SQLConfigVenda.Fieldbyname('CFVECARREDPARCELA').AsString = '' then
        begin
          Informa('Você deve configurar o tipo de arredondamento, nas configurações de venda do sistema ! Operação Cancelada !');
          Abort;
        end;

      case DM.SQLConfigVenda.Fieldbyname('CFVECARREDPARCELA').AsString[1] of
        'P'://Arrendondamentos para a Primeira Parcela
            begin
              SQLParcelasPrazo.First;
              Arredondamento := 0;
              while not SQLParcelasPrazo.EOF do
              begin
              {  Arredondamento := Arredondamento +
                                  Frac(SQLParcelasPrazo.FieldByName('VALORVENCTO').Value);
               }

                SQLParcelasPrazo.Edit;
                if (Entrada > 0) and (SQLParcelasPrazo.FieldByName('NROPARCELA').Value = 0) then
                  SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := Entrada
                else
                  SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := SQLParcelasPrazo.FieldByName('VALORVENCTO').Value -
                                                                       Frac(SQLParcelasPrazo.FieldByName('VALORVENCTO').Value) ;
                SQLParcelasPrazo.Post;
                Arredondamento := Arredondamento + SQLParcelasPrazo.FieldByName('VALORVENCTO').Value;
                SQLParcelasPrazo.Next;
              end;

              SQLParcelasPrazo.First;
              SQLParcelasPrazo.Edit;
              {SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := SQLParcelasPrazo.FieldByName('VALORVENCTO').Value +
                                                                   Arredondamento;}
              SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := (Acumulado+SQLParcelasPrazo.FieldByName('VALORVENCTO').Value) - Arredondamento;
              SQLParcelasPrazo.Post;

              //CALCULAR TOTAL DAS PARCELAS
              TotParc := 0 ;
              SQLParcelasPrazo.First;
              while not SQLParcelasPrazo.EOF do
              begin
                TotParc := TotParc + SQLParcelasPrazo.FieldByName('VALORVENCTO').Value;
                SQLParcelasPrazo.Next;
              end ;
              TotParc := StrToFloat(FloatToStr(Acumulado+Entrada)) -
                         StrToFloat(FloatToStr(TotParc));

              SQLParcelasPrazo.First;
              //ESTA LINHA FOI COLOCADA PARA GRAVAR O RESTANTE NA PRIMEIRA PARACELA A PRAZO
              //SE TIVER ENTRADA
              if (Entrada > 0) then
                begin
                  SQLParcelasPrazo.Next;

                  SQLParcelasPrazo.Edit;
                  if TotParc > 0 then
                    SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := (SQLParcelasPrazo.FieldByName('VALORVENCTO').Value +
                                                                          Arredondamento) +
                                                                          ABS(TotParc)
                  else
                    SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := (SQLParcelasPrazo.FieldByName('VALORVENCTO').Value +
                                                                          Arredondamento) -
                                                                          ABS(TotParc);

                  SQLParcelasPrazo.Post;
                end;
            end;
        'U'://Arrendondamentos para a Última Parcela
            begin
              SQLParcelasPrazo.Last;
              SQLParcelasPrazo.Prior;
              while not SQLParcelasPrazo.Bof do
              begin
                Arredondamento := Arredondamento +
                                  Frac(SQLParcelasPrazo.FieldByName('VALORVENCTO').Value) ;
                SQLParcelasPrazo.Edit;
                if (Entrada > 0) and (SQLParcelasPrazo.FieldByName('NROPARCELA').Value = 0) then
                  SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := Entrada
                else
                  SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := SQLParcelasPrazo.FieldByName('VALORVENCTO').Value -
                                                                       Frac(SQLParcelasPrazo.FieldByName('VALORVENCTO').Value) ;
                SQLParcelasPrazo.Post;
                SQLParcelasPrazo.Prior;
              end;
              SQLParcelasPrazo.Last;
              SQLParcelasPrazo.Edit;
              SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := SQLParcelasPrazo.FieldByName('VALORVENCTO').Value +
                                                                   Arredondamento;
              SQLParcelasPrazo.Post;

              //CALCULAR TOTAL DAS PARCELAS
              TotParc := 0;
              SQLParcelasPrazo.First;
              while not SQLParcelasPrazo.EOF do
              begin
                TotParc := TotParc + SQLParcelasPrazo.FieldByName('VALORVENCTO').Value;

                SQLParcelasPrazo.Next;
              end ;
              TotParc := StrToFloat(FloatToStr(Acumulado+Entrada)) -
                         StrToFloat(FloatToStr(TotParc));
              SQLParcelasPrazo.Last;
              SQLParcelasPrazo.Edit;
              SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := SQLParcelasPrazo.FieldByName('VALORVENCTO').Value +
                                                                   TotParc;
              SQLParcelasPrazo.Post;
            end;
        'N'://Sem Arrendondamentos
            begin
              //CALCULAR TOTAL DAS PARCELAS
              {if OffSet = 0 then
                begin}
                  TotParc := 0 ;
                  SQLParcelasPrazo.First;
                  while not SQLParcelasPrazo.EOF do
                  begin
                    TotParc := TotParc + SQLParcelasPrazo.FieldByName('VALORVENCTO').AsFloat;

                    SQLParcelasPrazo.Next;
                  end ;
                  TotParc := StrToFloat(FloatToStr(Acumulado+Entrada)) -
                             StrToFloat(FloatToStr(TotParc));

                  SQLParcelasPrazo.Last;
                  SQLParcelasPrazo.Edit;
                  SQLParcelasPrazo.FieldByName('VALORVENCTO').Value := SQLParcelasPrazo.FieldByName('VALORVENCTO').Value +
                                                                       TotParc;
                  SQLParcelasPrazo.Post;
                //end ;
            end;
      end;
    end;
  end;
  //VER SE O PLANO É COM ENTRADA, SE FOR DEVE JOGAR O VALOR DA ENTRADA PARA O CAMPO ENTRADA
  //E DELETAR DAS PARCELAS POIS SERÁ GRAVADO NUMA TABELA DIFERENTE
  SQLParcelasPrazo.First;
  if (SQLParcelasPrazo.FieldByName('DATAVENCTO').Value = Date) and (Application.FindComponent('FormTelaFechamentoVenda') <> Nil) and (not ConsultandoPlano) then
  begin
    EntradaCalc := SQLParcelasPrazo.FieldByName('VALORVENCTO').AsFloat;
    SQLParcelasPrazo.Delete;
  end
  else EntradaCalc := 0;

  SQLParcelasPrazo.Close;
  SQLParcelasPrazo.Open;
  SQLParcelasPrazo.EnableControls;
end;


procedure TFormCadastroGraficaOrdem.SQLTemplatePARCELASChange(
  Sender: TField);
begin
  inherited;

  If (SQLLocate('PLANORECEBIMENTO','PLRCICOD','PLRCCDFIX',SQLTemplatePARCELAS.AsString) = 'V')  Then
  begin
    TelaGraficaVariavel := TTelaGraficaVariavel.Create(Self);
    if TelaGraficaVariavel.ShowModal <> mrOK then
    Begin
      Abort;
      Exit;
    end;
    SQLTemplatePARCELASVARIAVEIS.AsString := TelaGraficaVariavel.Retorno;
    TelaGraficaVariavel.Free;
  end else
      SQLTemplatePARCELASVARIAVEIS.AsString := '';

end;

procedure TFormCadastroGraficaOrdem.SQLTemplateCOMISSIONAPORChange(
  Sender: TField);
begin
  inherited;
  if SQLTemplateCOMISSIONAPOR.AsString = 'V' then
    label31.Caption := 'R$ Comissão'
  Else
    Label31.Caption := '% Comissão';
  Label31.Refresh;
end;

procedure TFormCadastroGraficaOrdem.SQLTemplateAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateCOMISSIONAPORChange(SQLTemplateCOMISSIONAPOR);
end;

End.

