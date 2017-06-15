unit CadastroMecOrdem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, RxLookup, DBCtrls, FormResources, VarSys,RxDBComb, RDprint,
  CurrEdit, ToolEdit, RXDBCtrl, AdvOfficeStatusBar, Inifiles,
  AdvOfficeStatusBarStylers, AdvPanel, ACBrBase, ACBrPosPrinter;

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
  TFormCadastroMecOrdem = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    edtPlaca: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    DBComboBox1: TDBComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    SQLTemplateORDID: TIntegerField;
    SQLTemplateORDREINCIDENTE: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateDATA: TDateTimeField;
    SQLTemplateACESSORIOS: TMemoField;
    SQLTemplatePROBLEMA: TMemoField;
    SQLTemplateVALOR: TFloatField;
    SQLTemplateFINALIZADO: TDateTimeField;
    SQLTemplateKM_ENTRADA: TIntegerField;
    SQLTemplateCOMBUSTIVEL: TStringField;
    SQLTemplateLITROS: TSmallintField;
    SQLTemplateORDA10COR: TStringField;
    SQLTemplateDATA_ENTREGA: TDateTimeField;
    SQLTemplateOBS_ENTREGA: TMemoField;
    SQLTemplateSOLUCAO: TMemoField;
    SQLTemplateGARANTIA: TSmallintField;
    SQLTemplateCDUSU: TSmallintField;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    DSSQLCliente: TDataSource;
    SQLTemplateCliente: TStringField;
    BtnCliente: TSpeedButton;
    ComboCliente: TRxDBLookupCombo;
    Label15: TLabel;
    BtnVeiculos: TSpeedButton;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit16: TDBEdit;
    SQLClienteCLIEA60ENDRES: TStringField;
    SQLClienteCLIEA60BAIRES: TStringField;
    SQLClienteCLIEA60CIDRES: TStringField;
    SQLClienteCLIEA2UFRES: TStringField;
    SQLClienteCLIEA11CPF: TStringField;
    SQLClienteCLIEA10RG: TStringField;
    SQLClienteCLIEA14CGC: TStringField;
    SQLClienteCLIEA20IE: TStringField;
    SQLTemplateClienteEndereco: TStringField;
    SQLTemplateClienteBairro: TStringField;
    SQLTemplateClienteCidade: TStringField;
    DSSQLVeiculos: TDataSource;
    SQLExecutarem: TRxQuery;
    DSSQLExecutarem: TDataSource;
    DBComboBoxVeiculo: TDBComboBox;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    SQLTemplateMARCAA30: TStringField;
    SQLVeiculos: TRxQuery;
    SQLTemplateORDA50VEICULO: TStringField;
    SQLTemplateANO_MODELO: TStringField;
    Label19: TLabel;
    ComboStatus: TRxDBComboBox;
    SQLTemplateSTATUS: TStringField;
    SQLTemplateClienteUF: TStringField;
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
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateEmpresaLookUp: TStringField;
    SQLTemplateCliFornEmpLookUp: TStringField;
    SQLTemplateCliFornEmpEnderecoLookUp: TStringField;
    SQLTemplateCliFornEmpEstadoLookUp: TStringField;
    SQLTemplateCliFornEmpBairroLookUp: TStringField;
    SQLTemplateCliFornEmpCEPLookUp: TStringField;
    SQLTemplateCliFornEmpCGCCPFLookUp: TStringField;
    SQLTemplateCliFornEmpIERGLookUp: TStringField;
    SQLTemplateCliFornEmpCidadeLookUp: TStringField;
    SQLTemplateCliFornEmpFoneLookUp: TStringField;
    SQLTemplateCliFornEmpTabelaPrecoLookUp: TIntegerField;
    DBEdit17: TDBEdit;
    SQLTemplateEmpresaUFLookUp: TStringField;
    SQLTemplateORITN2VLRPRODUTO: TFloatField;
    SQLTemplateORITN2VLRSERVICO: TFloatField;
    SQLTemplateORITN2VLRDESC: TFloatField;
    SQLVeiculosVICLICODVEICULO: TIntegerField;
    SQLVeiculosVICLA15PLACA: TStringField;
    SQLVeiculosCLIEA13ID: TStringField;
    SQLVeiculosVICLA40MODELO: TStringField;
    SQLVeiculosVOCLA20ESPECIE: TStringField;
    SQLVeiculosVICLA1ATIVO: TStringField;
    SQLVeiculosVICLDDATAINC: TDateTimeField;
    SQLVeiculosVICLA10FROTA: TStringField;
    SQLVeiculosVICLA15COR: TStringField;
    SQLVeiculosVICLA1COMBUSTIVEL: TStringField;
    SQLVeiculosVICLA25MARCA: TStringField;
    SQLVeiculosVICLIPLRCPREFERENCIAL: TIntegerField;
    SQLVeiculosVICLN2KMATUAL: TFloatField;
    SQLVeiculosVICLA9ANOMODELO: TStringField;
    SQLVeiculosREGISTRO: TDateTimeField;
    SQLVeiculosPENDENTE: TStringField;
    SQLVeiculosVEICA60PLRCOPCIONAIS: TStringField;
    SQLTemplatePLACA: TStringField;
    impOrdemdeServioA4: TMenuItem;
    N1: TMenuItem;
    RDprint: TRDprint;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    DBEdit18: TDBEdit;
    Label20: TLabel;
    PanelPesquisa: TPanel;
    BTNLocalizar: TSpeedButton;
    ComboBuscaCliente: TRxDBLookupCombo;
    RadioStatus: TRadioGroup;
    SQLTemplateVALORTOTAL: TFloatField;
    ConcluirOrdem1: TMenuItem;
    FinalizareEmitirNotaFiscal1: TMenuItem;
    N2: TMenuItem;
    CancelarOrdemdeServio1: TMenuItem;
    N3: TMenuItem;
    AlterarStatusparaABERTO1: TMenuItem;
    PnlEntrega: TPanel;
    Panel6: TPanel;
    InformarEntregadoVeiculoEquipamento1: TMenuItem;
    GroupBox2: TGroupBox;
    Shape1: TShape;
    Label3: TLabel;
    Shape2: TShape;
    Label21: TLabel;
    Shape4: TShape;
    Label32: TLabel;
    Shape5: TShape;
    Label33: TLabel;
    Shape3: TShape;
    Label34: TLabel;
    RelatoriodeOrdensListadas1: TMenuItem;
    Label22: TLabel;
    SQLFinaliza: TRxQuery;
    SQLFinalizaORDNUM: TIntegerField;
    SQLFinalizaDATA: TDateTimeField;
    SQLFinalizaNOTAFISCAL: TIntegerField;
    SQLNumerarioPrazo: TRxQuery;
    SQLNumerarioVista: TRxQuery;
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
    SQLNumerario: TRxQuery;
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
    SQLSerieNF: TRxQuery;
    SQLSerieNFSERIA5COD: TStringField;
    SQLSerieNFSERIINRONF: TIntegerField;
    SQLSerieNFEMPRICOD: TIntegerField;
    SQLSerieNFSERIA100PATHEXEIMP: TStringField;
    SQLSerieNFPENDENTE: TStringField;
    SQLSerieNFREGISTRO: TDateTimeField;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TFloatField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    SQLParcelasPrazoVendaTempNumerarioLookup: TStringField;
    SQLParcelasPrazoVendaTempTipoPadrao: TStringField;
    SQLPlanoParcela: TRxQuery;
    SQLPortador: TRxQuery;
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
    SQLTipoDoc: TRxQuery;
    SQLTipoDocTPDCICOD: TIntegerField;
    SQLTipoDocTPDCA60DESCR: TStringField;
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
    DSSQLContasReceber: TDataSource;
    SQLBuscas: TRxQuery;
    DSSQLFinanceiro: TDataSource;
    SQLFinanceiro: TRxQuery;
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
    SQLTemplatePARCELAS: TStringField;
    SQLTemplatePARCELASVARIAVEIS: TStringField;
    SQLTemplatePlanoRecebimentoLookUp: TStringField;
    Label23: TLabel;
    DBEdit3: TDBEdit;
    DBText1: TDBText;
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
    DSSQLFinaliza: TDataSource;
    ExclurirRegistrodeFinalizao1: TMenuItem;
    SQLConfigOrdem: TRxQuery;
    SQLConfigOrdemEMPRICOD: TIntegerField;
    SQLConfigOrdemOP_SAIDA: TIntegerField;
    SQLConfigOrdemOP_ENTRADA: TIntegerField;
    SQLConfigOrdemOP_EMITENOTA: TIntegerField;
    DBEdit6: TDBEdit;
    MenuRelatorio: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    RxSpeedButton1: TRxSpeedButton;
    AplicarDesconto1: TMenuItem;
    Panel8: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel4: TPanel;
    Panel7: TPanel;
    Label46: TLabel;
    Label24: TLabel;
    DBDateEdit3: TDBDateEdit;
    LabelvlrCobrar: TCurrencyEdit;
    LookUpPlano: TRxDBLookupCombo;
    Panel9: TPanel;
    CheckPercentual: TRadioButton;
    CheckValor: TRadioButton;
    edtDescto: TCurrencyEdit;
    SQLOrdItens: TQuery;
    SQLOrdItensORDITENSID: TIntegerField;
    SQLOrdItensORDID: TIntegerField;
    SQLOrdItensGRUPO_SERVICO: TIntegerField;
    SQLOrdItensGARANTIA: TStringField;
    SQLOrdItensPRODICOD: TIntegerField;
    SQLOrdItensORITN3QUANT: TFloatField;
    SQLOrdItensORITN2VLRUNIT: TFloatField;
    SQLOrdItensORITN2PERCDESC: TFloatField;
    SQLOrdItensORITN3TOTVEND: TFloatField;
    SQLOrdItensORITA254OBS: TStringField;
    SQLOrdItensORMCTIPOSERVICOID: TIntegerField;
    SQLOrdItensIDMECANICO: TIntegerField;
    SQLOrdItensORITN2PERCCOMIS: TFloatField;
    SQLOrdItensORITN3TEMPO: TFloatField;
    SQLOrdItensPRODA60DESCR: TStringField;
    SQLOrdItensPRODA60REFER: TStringField;
    SQLOrdItensPRODCSERVICO: TStringField;
    SQLNotaFiscalNOFICFINALIDADE: TStringField;
    SQLExecutaremORDEXEID: TIntegerField;
    SQLExecutaremORDA25EXECUTAEM: TStringField;
    SQLExecutaremTIPOSERVICO: TStringField;
    SQLOrdItensORITN2VLRDESC: TFloatField;
    Label17: TLabel;
    DBEdit4: TDBEdit;
    impOrdemdeServioBobina: TMenuItem;
    ACBrPosPrinter: TACBrPosPrinter;
    MemoImpressao: TMemo;
    SQLClienteCLIEA5NROENDRES: TStringField;
    SQLTemplateClienteEnderecoNro: TStringField;
    MnRemoverIfemdasplacas: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure BtnClienteClick(Sender: TObject);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure BtnVeiculosClick(Sender: TObject);
    procedure edtPlacaExit(Sender: TObject);
    procedure edtPlacaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBComboBoxVeiculoExit(Sender: TObject);
    procedure DBComboBoxVeiculoChange(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure TabSheetDadosPrincipaisEnter(Sender: TObject);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateAfterCancel(DataSet: TDataSet);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure OrdensdeServioemBRANCO1Click(Sender: TObject);
    procedure impOrdemdeServioA4Click(Sender: TObject);
    procedure OrdensdeServioemSequncia1Click(Sender: TObject);
    Procedure ImprimeOrdem;
    procedure BTNLocalizarClick(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ConcluirOrdem1Click(Sender: TObject);
    procedure InformarEntregadoVeiculoEquipamento1Click(Sender: TObject);
    procedure FinalizareEmitirNotaFiscal1Click(Sender: TObject);
    procedure CancelarOrdemdeServio1Click(Sender: TObject);
    procedure AlterarStatusparaABERTO1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure CriaContasReceber;

    Function BuscaIcmsUf(nCodProduto:Integer; varUF:String; varPessoa:String; varRegime:String):TICMSUF;
    Function BuscaIcms(nCodProduto:Integer; nCodICMS:String; SitTributaria:String):TICMSUF;
    Function BuscaDadosProduto(nCodProduto:Integer):TPRODUTO_ID;
    Function BuscaDadosOperacao(nCodOp:String):TOPERACAO_ID;
    Function BuscaDadosCliente: TCLIE;

    procedure ImportaItensPedidoVenda(nOPES:TOPERACAO_ID; nCLIE:TCLIE);
    Function  GerarNF:Integer;
    Function  CriaParcelasVariaveis(SQLParcelasPrazo,
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
    procedure PnlEntregaExit(Sender: TObject);
    procedure SQLNotaFiscalBeforePost(DataSet: TDataSet);
    procedure SQLContasReceberBeforePost(DataSet: TDataSet);
    procedure SQLContasReceberNewRecord(DataSet: TDataSet);
    procedure SQLContasReceberPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure ExclurirRegistrodeFinalizao1Click(Sender: TObject);
    procedure RelatoriodeOrdensListadas1Click(Sender: TObject);
    procedure RelatoriodeServiosPorMecanico1Click(Sender: TObject);
    procedure RelatoriodeServiosxExecuo1Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure AplicarDesconto1Click(Sender: TObject);
    procedure CheckPercentualClick(Sender: TObject);
    Procedure AplicarDescontos;
    procedure MenuItem8Click(Sender: TObject);
    procedure impOrdemdeServioBobinaClick(Sender: TObject);
    procedure MnRemoverIfemdasplacasClick(Sender: TObject);

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
  FormCadastroMecOrdem: TFormCadastroMecOrdem;
  NovaOrdem : Boolean;

implementation

uses CadastroCliente, CadastroMecOrdemItens,
  CadastroMecExecutaEm, CadastroMecanicos,  UnitLibrary,
  DataModulo, CadastroClienteVeiculos, TelaConfigPedidos,
  CadastroNotaFiscal, TelaParcelasVariaveis, RelatorioOrdensListadas,
  RelatorioOrdensPorMecanico, RelatorioOrdensPorExecucao,
  RelatorioOrdensPecas, FormRelatorioServicosPorTipo;

{$R *.dfm}

procedure TFormCadastroMecOrdem.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ORD_MECANICA';
  NovaOrdem := False;
  SQLFinaliza.Open;
end;


procedure TFormCadastroMecOrdem.DBEdit6KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnCliente.Click;
end;

procedure TFormCadastroMecOrdem.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  NovaOrdem := False;
  SQLTemplateDATA.AsDateTime  := Now;
  SQLTemplateSTATUS.AsString  := 'A';
  SQLTemplateEMPRICOD.Value   := EmpresaCorrente;
end;

procedure TFormCadastroMecOrdem.Button3Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DsTemplate;
  CriaFormulario(TFormCadastroMecOrdemItem,'FormCadastroMecOrdemItem',True,False,True,'Ordem Nº ' + SQLTemplateORDID.AsString);
end;

procedure TFormCadastroMecOrdem.BtnVeiculosClick(Sender: TObject);
begin
  inherited;
  edtPlaca.SetFocus;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLACA');
  FieldOrigem := 'VICLA15PLACA' ;
  DataSetLookup := SQLCliente;
  DSMasterSys := DSTemplate;
  CriaFormulario(TFormCadastroClienteVeiculos,'FormCadastroClienteVeiculos',False,True,True,'Veiculos do Cliente: ' + SQLTemplateCliente.asString);
end;

procedure TFormCadastroMecOrdem.BtnClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookup   := DsTemplate.DataSet.FieldByName('CLIEA13ID');
  FieldOrigem   := 'CLIEA13ID';
  DataSetLookup := SQLCliente;
  CriaFormulario(TFormCadastroCliente,'FormCadastroCliente',False,True,False,'');
end;

procedure TFormCadastroMecOrdem.edtPlacaExit(Sender: TObject);
begin
  inherited;
//  if (copy(SQLTemplatePLACA.AsString,4,1) <> '-') And (SQLTemplatePLACA.AsString <> '') And (SQLTemplate.State in ([dsEdit, dsInsert])) then
  //  MessageDlg('Atenção... O 4º Digito da PLACA não é (-) hífem.'+#13+#10+''+#13+#10+'Se estiver digitando uma PLACA digite no formato XXX-9999', mtWarning, [mbOK], 0);

  SQLVeiculos.Close;
  SQLVeiculos.Open;
  DBComboBoxVeiculo.Items.Clear;
  While Not SQLVeiculos.Eof do
  begin
    DBComboBoxVeiculo.Items.Add(SQLVeiculos.Fieldbyname('VICLA40MODELO').asstring);
    SQLVeiculos.Next;
  end;

  If SQLTemplate.State in ([dsInsert, dsEdit]) then
  begin
    If SQLVeiculos.Locate('VICLA15PLACA',edtPlaca.Text,[]) then
    begin
      DBComboBoxVeiculo.Text              := SQLVeiculos.FieldbyName('VICLA40MODELO').AsString;
      SQLTemplateORDA50VEICULO.AsString   := SQLVeiculos.FieldbyName('VICLA40MODELO').AsString;
      SQLTemplateANO_MODELO.AsString      := SQLVeiculos.Fieldbyname('VICLA9ANOMODELO').asstring;
      SQLTemplateCOMBUSTIVEL.AsString     := SQLVeiculos.Fieldbyname('VICLA1COMBUSTIVEL').asstring;
      SQLTemplateORDA10COR.AsString       := SQLVeiculos.Fieldbyname('VICLA15COR').asstring;
      SQLTemplateMARCAA30.AsString        := SQLVeiculos.Fieldbyname('VICLA25MARCA').asstring;
      SQLTemplatePLACA.AsString           := SQLVeiculos.Fieldbyname('VICLA15PLACA').asstring;
    End;
  end;
end;


procedure TFormCadastroMecOrdem.edtPlacaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnVeiculos.Click;
end;


procedure TFormCadastroMecOrdem.DBComboBoxVeiculoExit(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in ([dsEdit,dsInsert]) then
  begin
    if SQLVeiculos.Locate('VICLA40MODELO',DBComboBoxVeiculo.Text,[]) then
    begin
      DBComboBoxVeiculo.Text              := SQLVeiculos.FieldbyName('VICLA40MODELO').AsString;
      SQLTemplateORDA50VEICULO.AsString   := SQLVeiculos.FieldbyName('VICLA40MODELO').AsString;
      SQLTemplateANO_MODELO.AsString      := SQLVeiculos.Fieldbyname('VICLA9ANOMODELO').asstring;
      SQLTemplateCOMBUSTIVEL.AsString     := SQLVeiculos.Fieldbyname('VICLA1COMBUSTIVEL').asstring;
      SQLTemplateORDA10COR.AsString       := SQLVeiculos.Fieldbyname('VICLA15COR').asstring;
      SQLTemplateMARCAA30.AsString        := SQLVeiculos.Fieldbyname('VICLA25MARCA').asstring;
      SQLTemplatePLACA.AsString           := SQLVeiculos.Fieldbyname('VICLA15PLACA').asstring;
    end;
  end;
end;

procedure TFormCadastroMecOrdem.DBComboBoxVeiculoChange(Sender: TObject);
begin
  inherited;
  SQLTemplateANO_MODELO.clear;
  SQLTemplateCOMBUSTIVEL.Clear;
  SQLTemplateORDA10COR.Clear;
  SQLTemplateMARCAA30.Clear;
end;

procedure TFormCadastroMecOrdem.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('CLIEA13ID').AsString = '' then
  begin
    Showmessage('Campo Cliente Deve Ser Informado');
    ComboCliente.SetFocus;
    Abort;
    Exit;
  end;

{  if DataSet.FieldByName('ORDA50VEICULO').AsString = '' then
  begin
    Showmessage('Campo Veiculo Deve Ser Informado');
    DBComboBoxVeiculo.SetFocus;
    Abort;
    Exit;
  end; }

  inherited;
end;

procedure TFormCadastroMecOrdem.TabSheetDadosPrincipaisEnter(
  Sender: TObject);
begin
  inherited;
  If not SQLVeiculos.Active then
    SQLVeiculos.Open;
  DBComboBoxVeiculo.Items.Clear;
  While Not SQLVeiculos.Eof do
  begin
    DBComboBoxVeiculo.Items.Add(SQLVeiculos.Fieldbyname('VICLA40MODELO').asstring);
    SQLVeiculos.Next;
  end;
end;

procedure TFormCadastroMecOrdem.SQLTemplateAfterPost(DataSet: TDataSet);
begin
  inherited;
  if NovaOrdem then
  begin
    NovaOrdem:= False;
    Button3.Click;
  end;
end;

procedure TFormCadastroMecOrdem.SQLTemplateAfterCancel(DataSet: TDataSet);
begin
  inherited;
  NovaOrdem := False;
end;

procedure TFormCadastroMecOrdem.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('valortotal').value    := DataSet.FieldByName('ORITN2VLRPRODUTO').value + DataSet.FieldByName('ORITN2VLRSERVICO').value;
  If DataSet.FieldByName('CLIEA13ID').AsVariant <> null then
  Begin
    If DM.ProcuraRegistro('CLIENTE',['CLIEA13ID'],[SQLTemplateCLIEA13ID.asString],1) Then
      Begin
        if DM.SQLTemplate.FindField('PLRCICOD').AsVariant <> null then
          DataSet.FieldByName('PlanoClienteLookUp').AsVariant          := DM.SQLTemplate.FindField('PLRCICOD').AsVariant;


        DataSet.FieldByName('CliFornEmpLookup').AsVariant            := DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').AsVariant;
        DataSet.FieldByName('CliFornEmpEnderecoLookUp').AsVariant    := DM.SQLTemplate.FindField('CLIEA60ENDRES').AsVariant;
        DataSet.FieldByName('CliFornEmpEstadoLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA2UFRES').AsVariant;
        DataSet.FieldByName('CliFornEmpCEPLookUp').AsVariant         := DM.SQLTemplate.FindField('CLIEA8CEPRES').AsVariant;
        DataSet.FieldByName('CliFornEmpCidadeLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA60CIDRES').AsVariant;
        DataSet.FieldByName('CliFornEmpBairroLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA60BAIRES').AsVariant;
        DataSet.FieldByName('CliFornEmpFoneLookUp').AsVariant        := DM.SQLTemplate.FindField('CLIEA15FONE1').AsVariant;
        DataSet.FieldByName('CliFornEmpTabelaPrecoLookUp').AsVariant := DM.SQLTemplate.FindField('TPRCICOD').AsVariant;
        If DM.SQLTemplate.FindField('CLIEA5FISJURID').asString = 'F' Then
          Begin
            DataSet.FieldByName('CliFornEmpCGCCPFLookUp').AsVariant    := DM.SQLTemplate.FindField('CLIEA11CPF').AsVariant;
            DataSet.FieldByName('CliFornEmpIERGLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA10RG').AsVariant;
           // DataSet.FieldByName('CliFornEmpCGCCPFLookUp').EditMask     := '000.000.000-00;0;_';
          End
        Else
          Begin
            DataSet.FieldByName('CliFornEmpCGCCPFLookUp').AsVariant    := DM.SQLTemplate.FindField('CLIEA14CGC').AsVariant;
            DataSet.FieldByName('CliFornEmpIERGLookUp').AsVariant      := DM.SQLTemplate.FindField('CLIEA20IE').AsVariant;
           // DataSet.FieldByName('CliFornEmpCGCCPFLookUp').EditMask     := '00.000.000/0000-00;0;_';
          End;
      End
    Else
      begin
        DataSet.FieldByName('CliFornEmpLookup').asString     := MensagemLookUp;
      end;
  End
end;

procedure TFormCadastroMecOrdem.OrdensdeServioemBRANCO1Click(
  Sender: TObject);
  var nlin:Integer;
begin
  inherited;
  RDPrint.Abrir;
  nLin := 1;
  RDPrint.ImpF(nLin,1,'Ordem de Serviço No.:',[Negrito,Expandido]); inc(nlin,2);
  RDPrint.ImpF(nlin, 1,'Cliente.: ',[Negrito]);  inc(nLin);
  RDPrint.ImpF(nlin, 1,'Endereco: ',[Negrito]);
  RDPrint.ImpF(nlin,59,'Fone: ',[Negrito]);     inc(nLin);
  RDPrint.ImpF(nlin, 1,'Cidade..: ',[Negrito]);
  RDPrint.ImpF(nlin,59,'Cel.: ',[Negrito]);  inc(nLin,2);
  RDPrint.ImpF(nlin,1,'Descrição:',[Comp20]);inc(nlin);
  RDPrint.ImpF(nlin,1,'Placa....:                      Ano\Modelo:                    Cor:',[Comp20]);inc(nlin);
  RDPrint.ImpF(nlin,1,'Entrada..:                      Hora......:                     Km:               R$ Previsto:',[Comp20]);inc(nlin);
  RDPrint.ImpF(nlin,1,'Prometido:                      Data Saída:                   Hora:                        Km:',[Comp20]);inc(nlin);
  RDPrint.ImpF(nLin,1,'----------------------------------------------------------------------------------------------------------------------------------------------------------------',[Comp20]); Inc(nlin);
  RDPrint.Imp (nLin,1,'P R O B L E M A');Inc(nLin,4);
  RDPrint.Imp (nLin,1,'O B S E R V A Ç Õ E S');Inc(nLin,4);
  RDPrint.ImpF(nLin,1,'----------------------------------------------------------------------------------------------------------------------------------------------------------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,' Gas e Solta                                           |   Silicone                                |  Lubrificante                                              ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------------------------------------------------------------------------------------------------------------------------------------------------------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,' Material de Limpeza                                   |   Ferro                                   |  Trava Rosca                                               ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------------------------------------------------------------------------------------------------------------------------------------------------------------',[Comp20]); Inc(nlin);
  RDPrint.Imp (nLin,1,'Peças e Serviços Prestados');Inc(nLin);
  RDPrint.ImpF(nLin,1,'----------------------------------------------------------------------------------------------------------------------------------------------------------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'  Qtd     |    Cod.    | Descricao Peca ou Servico                                                                                 |  R$ Unitario |     R$ Total',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------+------------+-----------------------------------------------------------------------------------------------------------+--------------+-------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'          |            |                                                                                                           |              |             ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------+------------+-----------------------------------------------------------------------------------------------------------+--------------+-------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'          |            |                                                                                                           |              |             ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------+------------+-----------------------------------------------------------------------------------------------------------+--------------+-------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'          |            |                                                                                                           |              |             ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------+------------+-----------------------------------------------------------------------------------------------------------+--------------+-------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'          |            |                                                                                                           |              |             ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------+------------+-----------------------------------------------------------------------------------------------------------+--------------+-------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'          |            |                                                                                                           |              |             ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------|------------|-----------------------------------------------------------------------------------------------------------|--------------|-------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'          |            |                                                                                                           |              |             ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------|------------|-----------------------------------------------------------------------------------------------------------|--------------|-------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'          |            |                                                                                                           |              |             ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------|------------|-----------------------------------------------------------------------------------------------------------|--------------|-------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'          |            |                                                                                                           |              |             ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------|------------|-----------------------------------------------------------------------------------------------------------|--------------|-------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'          |            |                                                                                                           |              |             ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------|------------|-----------------------------------------------------------------------------------------------------------|--------------|-------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'          |            |                                                                                                           |              |             ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------|------------|-----------------------------------------------------------------------------------------------------------|--------------|-------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'          |            |                                                                                                           |              |             ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------|------------|-----------------------------------------------------------------------------------------------------------|--------------|-------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'          |            |                                                                                                           |              |             ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------|------------|-----------------------------------------------------------------------------------------------------------|--------------|-------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'          |            |                                                                                                           |              |             ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------|------------|-----------------------------------------------------------------------------------------------------------|--------------|-------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'          |            |                                                                                                           |              |             ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------|------------|-----------------------------------------------------------------------------------------------------------|--------------|-------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'          |            |                                                                                                           |              |             ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------|------------|-----------------------------------------------------------------------------------------------------------|--------------|-------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'          |            |                                                                                                           |              |             ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------|------------|-----------------------------------------------------------------------------------------------------------|--------------|-------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'          |            |                                                                                                           |              |             ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------+------------+-----------------------------------------------------------------------------------------------------------+--------------+-------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'Nao nos responsabilizamos por mercadoria nao retirada no prazo de 60 dias.                                   R$ Peças    ->             ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'                                                                                                             R$ Servicos ->             ',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'--------------------------------------------         ----------------------------------------                R$ Total    ->             ',[Comp20]);
  RDPrint.Fechar;



end;

procedure TFormCadastroMecOrdem.impOrdemdeServioA4Click(Sender: TObject);
begin
  inherited;
  RDPrint.Abrir;
  ImprimeOrdem;
  RDPrint.Fechar;
end;

procedure TFormCadastroMecOrdem.OrdensdeServioemSequncia1Click(
  Sender: TObject);
begin
  inherited;
  RDPrint.Abrir;
  While not SQLTemplate.Eof do
  begin
    ImprimeOrdem;
    RDprint.Novapagina;
    SQLTemplate.Next;
  end;
  RDPrint.Fechar;
end;

procedure TFormCadastroMecOrdem.ImprimeOrdem;
var nLin, x, xi:Integer;
    ValorPecas, ValorServico: Extended;
begin
  // abre o SQL dos itens da ordem
  SQLOrdItens.Close;
  SQLOrdItens.Prepare;
  SQLORDItens.ParambyName('MFiltro').AsString := SQLTemplate.FindField('ORDID').AsString ;
  SQLOrdItens.Open;
  SQLOrdItens.First;
  // inicia o relatorio

  nLin := 1;
  RDPrint.ImpF(nLin, 1,'Ordem de Serviço No.: '+SQLTemplateORDID.AsString,[Negrito,Expandido]); inc(nlin,2);
  RDPrint.ImpF(nlin, 1,'Cliente.: ',[Negrito]);
  RDPrint.Imp (nlin,11,SQLTemplateCliente.asstring);inc(nlin);
  RDPrint.ImpF(nlin, 1,'Endereco: ',[Negrito]);
  RDPrint.Imp (nlin,11,SQLTemplateClienteEndereco.AsString);
  RDPrint.ImpF(nlin,59,'Fone: ',[Negrito]);
  RDPrint.Imp (nlin,65,SQLLocate('CLIENTE','CLIEA13ID','CLIEA15FONE1',''''+SQLTemplateCLIEA13ID.AsString+''''));inc(nlin);
  RDPrint.ImpF(nlin, 1,'Cidade..: ',[Negrito]);
  RDPrint.Imp (nlin,11,SQLTemplateClienteCidade.AsString);
  RDPrint.ImpF(nlin,59,'Cel.: ',[Negrito]);
  RDPrint.Imp (nlin,65,SQLLocate('CLIENTE','CLIEA13ID','CLIEA15FONE2',''''+SQLTemplateCLIEA13ID.AsString+''''));inc(nLin);
  RDPrint.ImpF(nLin,1,'----------------------------------------------------------------------------------------------------------------------------------------------------------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nlin, 1,'Descrição: '+SQLTemplateORDA50VEICULO.AsString,[Comp20]);inc(nlin);
  RDPrint.ImpF(nlin, 1,'Placa....: '+SQLTemplatePLACA.AsString,[Comp20]);
  RDPrint.ImpF(nlin,18,'Ano\Modelo: '+SQLTemplateANO_MODELO.AsString,[Comp20]);
  RDPrint.ImpF(nlin,38,'Cor: '+SQLTemplateORDA10COR.AsString,[Comp20]); Inc(nlin);
  RDPrint.ImpF(nlin, 1,'Entrada..: '+Copy(SQLTemplateDATA.AsString,0,10),[Comp20]);
  RDPrint.ImpF(nlin,18,'Hora......: '+Copy(SQLTemplateData.AsString,11,10),[Comp20]);
  RDPrint.ImpF(nlin,38,' Km: '+SQLTemplateKM_ENTRADA.AsString,[Comp20]);
  RDPrint.ImpF(nlin,58,'R$ Previsto: '+FormatFloat(',0.00',SQLTemplateVALOR.value),[Comp20]);inc(nLin);
  RDPrint.ImpF(nlin, 1,'Prometido: '+SQLTemplateDATA_ENTREGA.AsString,[Comp20]);
  RDPrint.ImpF(nlin,18,'Data Saída: '+Copy(SQLTemplateFinalizado.AsString,0,10),[Comp20]);
  RDPrint.ImpF(nlin,37,' Hora: '+Copy(SQLTemplateFinalizado.AsString,11,10),[Comp20]);
  RDPrint.ImpF(nlin,58,'R$ Total...: '+FormatFloat(',0.00',SQLTemplateVALOR.value),[Comp20]);inc(nLin);

  RDPrint.ImpF(nLin,1,'----------------------------------------------------------------------------------------------------------------------------------------------------------------',[Comp20]); Inc(nlin);
  RDPrint.Imp (nLin,1,'P R O B L E M A');inc(nLin);
  x:= 119;
  xi:= 0;
  ValorPecas  := 0;
  ValorServico:= 0;

  while x-119 < length(SQLTemplate.Fieldbyname('PROBLEMA').asstring) do
  begin
     RDPrint.ImpF(nLin,1,'                  '+Copy(SQLTemplate.FieldbyName('PROBLEMA').asstring,(119*xi)+1,119),[Comp20]);
     inc(x,119);
     inc(xi);
     inc(nLin);
  end;
  x:= 119;
  xi:= 0;
  If SQLTemplate.FieldbyName('Obs_Entrega').asstring <> '' then
    RDPrint.Imp (nLin,1,'O B S E R V A Ç A O');inc(nLin);
  while x-119 < length(SQLTemplate.FieldbyName('Obs_Entrega').asstring) do
  begin
     RDPrint.ImpF(nLin,1,'                  '+Copy(SQLTemplate.FieldbyName('obs_entrega').asstring,(119*xi)+1,119),[Comp20]);
     inc(x,119);
     inc(xi);
     inc(nLin);
  end;

  RDPrint.ImpF(nLin,1,'----------------------------------------------------------------------------------------------------------------------------------------------------------------',[Comp20]); Inc(nlin);
  RDPrint.Imp (nLin,1,'Peças e Serviços Prestados');Inc(nLin);
  RDPrint.ImpF(nLin,1,'----------------------------------------------------------------------------------------------------------------------------------------------------------------',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'  Qtd     |   Cod.     | Descricao Peca ou Servico                                                                                 |  R$ Unitario |     R$ Total',[Comp20]); Inc(nlin);
  RDPrint.ImpF(nLin,1,'----------+------------+-----------------------------------------------------------------------------------------------------------+--------------+-------------',[Comp20]); Inc(nlin);

  While not SQLOrdItens.Eof do
  begin
    While (not SQLOrdItens.Eof) and (nLin < 60) do
    begin
      RDPrint.ImpF(nLin,1,'          |            |                                                                                                           |              |             ',[Comp20]);
      RDPrint.ImpVal(nLin, 1,'###,##0.00',SQLOrdItensORITN3QUANT.Value,[Comp20]);
      RDPrint.ImpF(nLin, 8,SQLOrdItensPRODICOD.AsString,[Comp20]);
      RDPrint.ImpF(nLin,14,SQLOrdItensPRODA60DESCR.AsString,[Comp20]);
      RDPrint.ImpVal(nLin,69,'###,##0.00',SQLOrdItensORITN2VLRUNIT.value,[Comp20]);
      RDPrint.ImpVal(nLin,76,'###,##0.00',(SQLOrdItensORITN2VLRUNIT.value*SQLOrdItensORITN3QUANT.Value)-SQLOrdItensORITN2VLRDESC.Value,[Comp20]);inc(nLin);
      RDPrint.ImpF(nLin, 1,'----------|------------|-----------------------------------------------------------------------------------------------------------|--------------|-------------',[Comp20]); Inc(nlin);
      // Totaliza a ordem
      if SQLOrdItensPRODCSERVICO.AsString = 'S' Then
        ValorServico := ValorServico + (SQLOrdItensORITN2VLRUNIT.value*SQLOrdItensORITN3QUANT.Value)-SQLOrdItensORITN2VLRDESC.Value
      else
        ValorPecas   := ValorPecas   + (SQLOrdItensORITN2VLRUNIT.value*SQLOrdItensORITN3QUANT.Value)-SQLOrdItensORITN2VLRDESC.Value;

      SQLOrdItens.Next;
    end;
    if nLin >= 60 then
    begin
      RDPrint.ImpF(nLin,1,'Continua na proxima página...',[Comp20]);
      RDPrint.Novapagina;
      nLin := 1;
      RDPrint.ImpF(nLin,1,'----------------------------------------------------------------------------------------------------------------------------------------------------------------',[Comp20]); Inc(nlin);
      RDPrint.ImpF(nLin,1,'  Qtd     |      Cod.  | Descricao Peca ou Servico                                                                                 |  R$ Unitario |     R$ Total',[Comp20]); Inc(nlin);
      RDPrint.ImpF(nLin,1,'----------+------------+-----------------------------------------------------------------------------------------------------------+--------------+-------------',[Comp20]); Inc(nlin);
    end;
  end;
  While nLin < 60 do
  begin
    RDPrint.ImpF(nLin, 1,'          |            |                                                                                                           |              |             ',[Comp20]); inc(nlin);
    RDPrint.ImpF(nLin, 1,'----------|------------|-----------------------------------------------------------------------------------------------------------|--------------|-------------',[Comp20]); Inc(nlin);
  end;
  RDPrint.ImpF(nLin,1,'Nao nos responsabilizamos por veiculos nao retirados no prazo de 60 dias.                                    R$ Peças    ->             ',[Comp20]);
  RDPrint.ImpVal(nLin,76,'###,##0.00',ValorPecas,[Comp20]);inc(nLin);
  RDPrint.ImpF(nLin,1,'                                                                                                             R$ Servicos ->             ',[Comp20]);
  RDPrint.ImpVal(nLin,76,'###,##0.00',ValorServico,[Comp20]);inc(nLin);
  RDPrint.ImpF(nLin,1,'--------------------------------------------         ----------------------------------------                R$ Total    ->             ',[Comp20]);
  RDPrint.ImpVal(nLin,76,'###,##0.00',ValorPecas+ValorServico,[Comp20]);
  SQLOrdItens.Close;
end;


procedure TFormCadastroMecOrdem.BTNLocalizarClick(Sender: TObject);
var
Clausula : String;
CampoOrdem : TField;
begin
  inherited;
  Clausula := '';
  if ComboBuscaCliente.Value <> '' then
    Clausula := 'CLIEA13ID = ''' + ComboBuscaCliente.Value + ''' ';
  if (Clausula <> '') or (ComboBuscaCliente.Value <> '') then
    Clausula := Clausula + ' and ';
  case RadioStatus.ItemIndex of
    0 : Clausula := Clausula + ' (0 = 0)';
    1 : Clausula := Clausula + ' (STATUS = ''A'' )';
    2 : Clausula := Clausula + ' (STATUS = ''C'' )';
    3 : Clausula := Clausula + ' (STATUS = ''E'' )';
    4 : Clausula := Clausula + ' (STATUS = ''F'' )';
    5 : Clausula := Clausula + ' (STATUS = ''P'' )';
  end;
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

procedure TFormCadastroMecOrdem.DBGridListaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if SQLTemplateSTATUS.AsString = 'F' then
    DBGridLista.Canvas.Font.Color := clBlue
  Else if SQLTemplateSTATUS.AsString = 'E' then
    DBGridLista.Canvas.Font.Color := clGreen
  Else if SQLTemplateSTATUS.AsString = 'C' then
    DBGridLista.Canvas.Font.Color := clRed
  Else if SQLTemplateStatus.AsString = 'R' then
    DBGridLista.Canvas.Font.Color := clYellow;
  inherited;
end;

procedure TFormCadastroMecOrdem.ConcluirOrdem1Click(Sender: TObject);
begin
  inherited;
  Panel7.Visible := True;
  Panel9.Visible := False;
  if SQLTemplateSTATUS.asstring = 'A' then
    begin
      IF MessageDlg('Confirma a Efetivação desta Ordem?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
      begin
        SQLTemplate.BeforeEdit := nil;
        SQLTemplate.Edit;
        SQLTemplateSTATUS.AsString := 'F';
        SQLTemplate.Post;
        SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;
        Button1.Click;
      end;
    end
  else
    Showmessage('Para Confirmar Entrega o Status deve ser ABERTA');
end;

procedure TFormCadastroMecOrdem.InformarEntregadoVeiculoEquipamento1Click(
  Sender: TObject);
begin
  inherited;
  Panel7.Visible := True;
  Panel9.Visible := False;
  Panel6.Caption          := '  Informe Data da Entrega' ;
  LookupPlano.visible     := True;
  Label24.visible         := True;
  SQLPlano.Open;
  SQLFinanceiro.Open;
  SQLTemplate.BeforeEdit  := Nil;
  SQLTemplate.Edit;
  PnlEntrega.Visible      := True;
  LabelVlrCobrar.Visible  := True;
  LabelVlrCobrar.Value    := SQLTemplateVALORTOTAL.Value;
  DBDateEdit3.Date := Now;
  DBDateEdit3.SetFocus;
end;

procedure TFormCadastroMecOrdem.FinalizareEmitirNotaFiscal1Click(
  Sender: TObject);
begin
  inherited;
  Panel7.Visible := True;
  Panel9.Visible := False;
  Panel6.Caption        := '  Informe Data da Finalização';
  LookupPlano.visible     := True;
  Label24.visible         := True;
  SQLPlano.Open;
  SQLFinanceiro.Open;
  SQLTemplate.BeforeEdit := Nil;
  SQLTemplate.Edit;
  SQLTemplateFINALIZADO.AsDateTime := nOW;
  PnlEntrega.Visible := True;
  LabelVlrCobrar.Value    := SQLTemplateVALORTOTAL.Value;
  DBDateEdit3.SetFocus;
  SQLFinaliza.Append;
  SQLFinalizaDATA.AsDateTime := Date;
  SQLFinalizaORDNUM.Value    := SQLTemplateORDID.Value;
end;

procedure TFormCadastroMecOrdem.CancelarOrdemdeServio1Click(
  Sender: TObject);
  var motivo:String;
begin
  inherited;
  If SQLTemplateSTATUS.asstring = 'F' then
  begin
    if MessageDlg('Confirma o CANCELAMENTO da Ordem de Serviço Atual ?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    begin
      Motivo := InputBox('Motivo do Cancelamento','Informe:','');
      SQLTemplate.BeforeEdit := nil;
      SQLTemplate.Edit;
      SQLTemplateSTATUS.AsString := 'C';
      SQLTemplateOBS_ENTREGA.AsString    := SQLTemplateOBS_ENTREGA.AsString + #13+#10+ Motivo;
      SQLTemplate.Post;
      SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;
      ShowMessage('Cancelamento Efetuado com Sucesso.');
    end;
  end else
    ShowMessage('Somente é Permitido Cancelamento de Ordens Finalizadas');
end;

procedure TFormCadastroMecOrdem.AlterarStatusparaABERTO1Click(
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

procedure TFormCadastroMecOrdem.BitBtn1Click(Sender: TObject);
var NumNF:Integer;
    Form : TObject;
begin
  inherited;
  if Panel6.Caption = '  Informe Desconto Concedido' then
  begin
    if Pergunta('SIM','Confirma o Desconto Informado ?') then
      AplicarDescontos;
    PnlEntrega.Visible := False;
  end else
  begin
    Try
      if SQLNotafiscal.State in ([dsInsert, dsEdit]) then
        SQLNotafiscal.Post;
    Except
      SQLNotafiscal.Cancel;
    end;
    SQLNotafiscal.Close;

    if (SQLTemplateFinalizado.asdatetime+Time) < (SQLTemplateDATA.asdatetime) then
    begin
      ShowMessage('Data Informada Menor que Data da Inclusão da Ordem');
      DBDateEdit3.SetFocus;
      Exit;
    end;

    if Panel6.Caption = '  Informe Data da Finalização' then
      SQLTemplateSTATUS.AsString := 'F'  // Finalizado
    else begin
      SQLTemplateSTATUS.AsString := 'E'; // Entregue
    end;

    if (SQLTemplateSTATUS.AsString = 'F') and (SQLTemplatePARCELAS.AsString = '') then
    begin
      ShowMessage('Informe Plano de Recebimento');
      LookUpPlano.SetFocus;
      Exit;
    end;

    SQLTemplate.Post;
    SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;

    if SQLTemplateSTATUS.AsString = 'F' then
    begin
      if Pergunta('SIM','Confirma a Geração da Nota Fiscal a partir desta Ordem de Serviço?') then
      begin
        NumNF := GerarNF;

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

          CriaFormulario(TFormCadastroNotaFiscal, 'FormCadastroNotaFiscal',False,False,False,'') ;
          Form := Application.FindComponent('FormCadastroNotaFiscal');
          ((Form as TForm).FindComponent('ComboSerieNF') as TRxDBLookupCombo).KeyValue := dm.SerieAtualPedidos;
          ((Form as TForm).FindComponent('EditNroNFInicial') as TMaskEdit).Text        := IntToStr(NumNF);
          ((Form as TForm).FindComponent('EditNroNFFinal') as TMaskEdit).Text          := IntToStr(NumNF);
          ((Form as TForm).FindComponent('BTNLocalizar') as TSpeedButton).Click;
          //((Form as TForm).FindComponent('NotaFiscalEletrnicaListadas1') as TMenuItem).Click;
        End;
      End;
    end;
    PnlEntrega.Visible := False;

    if SQLNotafiscal.State in ([dsInsert, dsEdit]) then
      SQLNotafiscal.Post;

    SQLNotaFiscal.Close;
    SQLNotafiscal.Open;
  end;
end;

procedure TFormCadastroMecOrdem.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if SQLFinaliza.State in ([dsInsert,dsEdit]) then
    SQLFinaliza.Cancel;

  if SQLTemplate.State = dsEdit then
    SQLTemplate.Cancel;
  PnlEntrega.Visible := False;
end;

procedure TFormCadastroMecOrdem.SQLTemplateBeforeDelete(DataSet: TDataSet);
begin
  If SQLTemplateSTATUS.AsString <> 'A' then
  begin
    ShowMessage('Somente é permitido excluir ordens com Status ABERTO');
    Abort;
  end;
  inherited;
end;


Function TFormCadastroMecOrdem.BuscaDadosCliente:TCLIE;
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


Function TFormCadastroMecOrdem.BuscaIcms(nCodProduto:Integer; nCodICMS:String; SitTributaria:String):TICMSUF;
var nLocal : TICMSUF;
begin
  SQLBuscas.Close;
  SQLBuscas.SQL.Text :=  'Select * From ICMS Where ICMSICOD= :ICMSICOD';
  SQLBuscas.ParamByName('ICMSICOD').AsString := nCodICMS;
  SQLBuscas.Open;

  if SQLBuscas.IsEmpty then
  begin
    ShowMessage('ATENÇÃO...'+#13#10+#13#10+'Alíquota de ICMS não Foi Especificada para o produto '+IntToStr(nCodProduto));
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

Function TFormCadastroMecOrdem.BuscaIcmsUf(nCodProduto:Integer; varUF:String; varPessoa:String; varRegime:String):TICMSUF;
var SQLText : String;
    nProduto: Integer;
    nLocal : TICMSUF;
begin

  nProduto:= 0;
  // Pesquisa o UF + Cod.Produto para ver se existe algum registro especifico ao Cod Produto digitado
  SQLBuscas.Close;
  SQLBuscas.SQL.Text := 'Select * From ICMSUF Where ICMUA2UF = :ICMUA2UF AND PRODICOD = :pPRODICOD';
  SQLBuscas.ParamByName('ICMUA2UF').asString   := varUF;
  SQLBuscas.ParamByName('pPRODICOD').AsInteger := nCodProduto;
  SQLBuscas.Open;

  // se obtiver algum registro como resultado cria o parametro para busca agregada ao produto
  if not SQLBuscas.IsEmpty then
    nProduto := nCodProduto;

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
    SQLBuscas.ParamByName('pPRODICOD').AsInteger:= nCodProduto;
    SQLBuscas.Open;
  End;

  // Se o Resultado for em branco, busca somente pelo UF + Tipo Pessoa (Fis/Jur)
  if SQLBuscas.IsEmpty then
  begin
    SQLBuscas.Close;
    SQLBuscas.ParamByName('ICMUA2UF').asString  := varUF;
    SQLBuscas.ParamByName('pPESSOA').AsString   := varPessoa;
    SQLBuscas.ParamByName('pRegime').AsString   := 'A'; // Ambas
    SQLBuscas.ParamByName('pPRODICOD').AsInteger:= nCodProduto;
    SQLBuscas.Open;
  end;

  // Se o Resultado ainda for em branco, busca somente o UF
  if SQLBuscas.IsEmpty then
  begin
    SQLBuscas.Close;
    SQLBuscas.ParamByName('ICMUA2UF').asString  := varUF;
    SQLBuscas.ParamByName('pPESSOA').AsString   := 'A';
    SQLBuscas.ParamByName('pRegime').AsString   := 'A'; // Ambas
    SQLBuscas.ParamByName('pPRODICOD').AsInteger:= nCodProduto;
    SQLBuscas.Open;
  end;
  if SQLBuscas.IsEmpty then
  begin
    ShowMessage('ATENÇÃO...'+#13#10+#13#10+'Alíquota de ICMS para o Estado '+VarUF+' não Foi Especificada'+#13#10+'Código do Produto: '+IntToStr(nCodProduto));
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

Function TFormCadastroMecOrdem.BuscaDadosProduto(nCodProduto:Integer):TPRODUTO_ID;
var nLocal:TPRODUTO_ID;
begin
  SQLBuscas.Close;
  SQLBuscas.SQL.Text := 'Select PRODN3VLRCOMPRA, PRODCSERVICO, PRODN3PERCIPI, ICMSICOD, '+
  'PRODN3PESOBRUTO, PRODN3PESOLIQ, PRODISITTRIB From PRODUTO where PRODICOD = :xPRODI';
  SQLBuscas.Prepare;
  SQLBuscas.ParamByName('xPRODI').AsInteger:= nCodProduto;
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

Function TFormCadastroMecOrdem.BuscaDadosOperacao(nCodOp:String):TOPERACAO_ID;
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


Function TFormCadastroMecOrdem.GerarNF:Integer;
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
  SQLNotaFiscalVENDICOD.AsString        := '';
  SQLNotaFiscalSERIA5COD.Value          := DM.SerieAtualPedidos;
  SQLNotaFiscalNOFICFRETEPORCONTA.Value := DM.FretePorConta;
  SQLNotaFiscalTRANICOD.Value           := DM.TranspAtualPedidos;
  SQLNotaFiscalVEICA13ID.Value          := DM.VeiculoAtualPedidos;
  SQLNotaFiscalNOFIA8PLACAVEIC.Value    := DM.VeiculoAtualPedidos;

  // Alimenta a Operação de Estoque Buscando do Configurador
  SQLConfigOrdem.Open;
  SQLNotaFiscalOPESICOD.AsString      := SQLConfigOrdemOP_EMITENOTA.AsString;
  SQLConfigOrdem.Close;
  // Busca dados da Operacao de Estoque e carrega Array nOPES
  nOPES := BuscaDadosOperacao(SQLNotaFiscalOPESICOD.AsString);

  if UFEmpresa = UFCliente then
    SQLNotaFiscalCFOPA5COD.AsString      := nOPES.nOpCFOPnoUF
  else
    SQLNotaFiscalCFOPA5COD.AsString      := nOPES.nOpCFOPForaUF;

  SQLNotaFiscalPLCTA15CODCRED.AsString   := nOPES.nOpPCTACred;
  SQLNotaFiscalNOFIN2VLRPRODUTO.Value    := SQLTemplateORITN2VLRPRODUTO.Value;
  SQLNotaFiscalNOFIN2VLRDESCPROM.Value   := 0;
  SQLNotaFiscalNOFIN2VLROUTRASDESP.Value := 0;
  SQLNotaFiscalNOFIN2VLRNOTA.Value       := SQLTemplateVALORTOTAL.Value ;
  SQLNotaFiscalNOFIN2VLRFRETE.Value      := 0;
  SQLNotaFiscalNOFIN2BASCALCCIPI.Value   := 0;
  SQLNotaFiscalNOFIN2BASCALCICMS.Value   := 0;
  SQLNotaFiscalNOFIN2BASCALCSUBS.Value   := 0;
  SQLNotaFiscalNOFIN2VLRDESC.Value       := SQLTemplateORITN2VLRDESC.Value;
  SQLNotaFiscalNOFIN2VLRICMS.Value       := 0;
  SQLNotaFiscalNOFIN2VLRICMSFRETE.Value  := 0;
  SQLNotaFiscalNOFIN2VLRIPI.Value        := 0;
  SQLNotaFiscalNOFIN2VLRISSQN.Value      := 0;
  SQLNotaFiscalNOFIN2VLRSERVICO.Value    := SQLTemplateORITN2VLRSERVICO.value;
  SQLNotaFiscalNOFIN2VLRSEGURO.Value     := 0;
  SQLNotaFiscalNOFIN2VLRSUBS.Value       := 0;
  SQLNotaFiscalNOFIN3QUANT.Value         := 0;
  SQLNotaFiscalNOFICFINALIDADE.value     := '1';
  SQLNotaFiscalPLRCICOD.Value            := SQLTemplatePARCELAS.AsInteger;
  SQLNotaFiscalPENDENTE.Value            := 'S';
  SQLNotaFiscalREGISTRO.Value            := Now;
  SQLNotaFiscalUSUAICOD.Value            := dm.UsuarioAtual;
  SQLNotaFiscalNOFIN3PESBRUT.Asstring    := Dm.PedidoPesoB;
  SQLNotaFiscalNOFIN3PESLIQ.AsString     := Dm.PedidoPesoL;
  SQLNotaFiscalNOFIA15MARCA.AsString     := Dm.PedidoMarca;
  SQLNotaFiscalNOFIA20ESPECIE.AsString   := Dm.PedidoEspecie;
  SQLNotaFiscalNOFIA255OBS.AsString      := Dm.PedidoObs + 'Veiculo: '+edtPlaca.Text + ' - '+DBComboBoxVeiculo.Text;
  SQLNotaFiscal.Post;

  Result := SQLNotaFiscalNOFIINUMERO.Value;

  // Importa os Itens da Ordem
  ImportaItensPedidoVenda(nOPES,nCLIE);

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

Procedure TFormCadastroMecOrdem.ImportaItensPedidoVenda(nOPES:TOPERACAO_ID; nCLIE:TCLIE);
var CalculaSubst, CalculaIPI, CalculaICMS, FisJur, Situacao: String;
    nPRODS:TPRODUTO_ID;
    nICMS:TICMSUF;
    nIten:Integer;
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

    SQLOrdItens.Close;
    SQLOrdItens.Prepare;
    SQLORDItens.ParambyName('MFiltro').AsString :=  SQLTemplate.FindField('ORDID').AsString ;
    SQLOrdItens.Open;
    SQLOrdItens.First;
    nIten:= 1;

    While Not SQLOrdItens.Eof do
    begin

      nPRODS  := BuscaDadosProduto(SQLOrdItensPRODICOD.AsInteger);

      SQLNotaFiscalItem.Append;
      SQLNotaFiscalItemNOFIA13ID.Value          := SQLNotaFiscalNOFIA13ID.AsString;
      SQLNotaFiscalItemNFITIITEM.Value          := nIten; inc(nIten);
      SQLNotaFiscalItemPRODICOD.Value           := SQLOrdItensPRODICOD.AsInteger;
      SQLNotaFiscalItemNFITA254OBS.Value        := SQLOrdItensORITA254OBS.Value;
      SQLNotaFiscalItemNFITN3QUANT.Value        := SQLOrdItensORITN3QUANT.Value;
      SQLNotaFiscalItemNFITN2VLRUNIT.Value      := SQLOrdItensORITN2VLRUNIT.value;
      SQLNotaFiscalItemNFITN2PERCDESC.value     := SQLOrdItensORITN2PERCDESC.Value;
      SQLNotaFiscalItemNFITN2VLRDESC.value      := SQLOrdItensORITN2VLRDESC.Value;
      SQLNotaFiscalItemNFITN2VLRLUCRO.asFloat   := 0;
      SQLNotaFiscalItemNFITN3TOTVEND.Value      := SQLOrdItensORITN3TOTVEND.Value;
      SQLNotaFiscalItemNFITN2PERCCOMIS.AsFloat  := SQLOrdItensORITN2PERCCOMIS.AsFloat;
      // Produto é Servico
      if nPRODS.nProdServico = 'S' then
        begin
          SQLNotaFiscalItemNFITN2PERCISSQN.asFloat  := DM.SQLConfigVenda.FieldByName('CFVEN3ALIQISSQN').asFloat;
          SQLNotaFiscalItemNFITN2VLRISSQN.asFloat   := ((SQLOrdItensORITN2VLRUNIT.value )*SQLOrdItensORITN3QUANT.asFloat)-SQLOrdItensORITN2VLRDESC.asFloat*(SQLNotaFiscalItemNFITN2PERCISSQN.asFloat / 100);
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

            SQLNotaFiscalItemNFITN2VLRIPI.asFloat     := ((SQLOrdItensORITN2VLRUNIT.value)*SQLOrdItensORITN3QUANT.asFloat)-SQLOrdItensORITN2VLRDESC.asFloat*
                                                         (SQLNotaFiscalItemNFITN2PERCIPI.asFloat/100);

         // Busca as Aliquotas de ICMS
          if UFEmpresa = UFCliente then
            nICMS := BuscaIcms(SQLOrdItensPRODICOD.AsInteger, nPRODS.nProdIcmsICOD, nPRODS.nProdSitTrib)
          else
            nICMS := BuscaIcmsUf(SQLOrdItensPRODICOD.AsInteger, UFCliente, FisJur, nCLIE.nCliRegime);

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

              SQLNotaFiscalItemNFITN2BASEICMS.AsFloat  := ((SQLOrdItensORITN2VLRUNIT.Value)*SQLOrdItensORITN3QUANT.asFloat)-SQLOrdItensORITN2VLRDESC.asFloat;
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

      SQLOrdItens.Next;
    End;
{    GravaMovimentoEstoque(DM.SQLProduto,
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
}
end;

Procedure TFormCadastroMecOrdem.CriaContasReceber;
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

        SQLContasReceberCTRCA254HIST.AsString := 'OS '+SQLTemplateORDID.AsString;

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


procedure TFormCadastroMecOrdem.SQLTemplatePARCELASChange(Sender: TField);
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


function TFormCadastroMecOrdem.CriaParcelasVariaveis(SQLParcelasPrazo,
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

procedure TFormCadastroMecOrdem.PnlEntregaExit(Sender: TObject);
begin
  inherited;
  if PnlEntrega.Visible = True then
    DBDateEdit3.setfocus;
end;

procedure TFormCadastroMecOrdem.SQLNotaFiscalBeforePost(DataSet: TDataSet);
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

procedure TFormCadastroMecOrdem.SQLContasReceberBeforePost(
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

procedure TFormCadastroMecOrdem.SQLContasReceberNewRecord(
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

procedure TFormCadastroMecOrdem.SQLContasReceberPostError(
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

procedure TFormCadastroMecOrdem.ExclurirRegistrodeFinalizao1Click(
  Sender: TObject);
begin
  inherited;
  if not SQLFinalizaNOTAFISCAL.IsNull then
    Showmessage('Atenção'+#13#10+'A Nota Fiscal NÃO Será Cancelada');
  if Pergunta('SIM','Excluir o Registro de Entrega?') then
    SQLFinaliza.Delete;
  if SQLFinaliza.IsEmpty then
  begin
    if Pergunta('SIM','Deseja Alterar o Status da Ordem para Aberto?') then
      AlterarStatusparaABERTO1Click(Sender);
  end;
end;

procedure TFormCadastroMecOrdem.RelatoriodeOrdensListadas1Click(
  Sender: TObject);
begin
  inherited;
  FormListagemOrdemMecanica:= TFormListagemOrdemMecanica.Create(Self);
  FormListagemOrdemMecanica.QuickListagemOrdens.Preview;
  FormListagemOrdemMecanica.Free;

end;

procedure TFormCadastroMecOrdem.RelatoriodeServiosPorMecanico1Click(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TRelatorioOrdPorMecanico, 'RelatorioOrdPorMecanico',False,False,True,'')
  else
    ShowMessage('Acesso Negado.wav');

end;

procedure TFormCadastroMecOrdem.RelatoriodeServiosxExecuo1Click(
  Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TRelatorioOrdPorExecucao, 'RelatorioOrdPorExecucao',False,False,True,'')
  else
    ShowMessage('Acesso Negado.wav');

end;

procedure TFormCadastroMecOrdem.MenuItem10Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioOrdPecas, 'FormRelatorioOrdPecas',False,False,True,'')
  else
    ShowMessage('Acesso Negado.wav');

end;

procedure TFormCadastroMecOrdem.AplicarDesconto1Click(Sender: TObject);
begin
  inherited;
  Panel6.Caption := '  Informe Desconto Concedido';
  Panel7.Visible := False;
  Panel9.Visible := True;
  PnlEntrega.Visible := True;
  edtDescto.SetFocus;
end;

procedure TFormCadastroMecOrdem.CheckPercentualClick(Sender: TObject);
begin
  inherited;
  CheckPercentual.Checked := not CheckValor.Checked;
  CheckValor.Checked      := not CheckPercentual.Checked;
end;

Procedure TFormCadastroMecOrdem.AplicarDescontos;
var nItens:Integer;
    nPerc :Extended;
    nConcedido: Extended;
    nTotalDesc: Extended;
begin
  // conta o numero de itens da ordem
  SQLOrdItens.Close;
  SQLORDItens.ParambyName('MFiltro').AsString :=  SQLTemplate.FindField('ORDID').AsString ;
  SQLOrdItens.Prepare;
  SQLOrdItens.Open;
  SQLOrdItens.Last;
  nItens := SQLOrdItens.RecordCount;
  SQLOrdItens.First;

  if CheckValor.Checked then
    // Calcula o percentual de desconto que insidira em cada item
    nPerc :=(edtDescto.value /(SQLTemplateVALORTOTAL.AsFloat * nItens)) * 100
  else
    nPerc := edtDescto.Value;

  nConcedido := 0;
  SQLBuscas.Close;
  SqlBuscas.SQL.Text := 'update ORD_MEC_ITENS SET '+
                       'ORITN2PERCDESC = :nORITN2PERCDESC, '+
                       'ORITN2VLRDESC = :nORITN2VLRDESC '+
                       'Where ORDITENSID = :nItem';
  While Not SQLOrdItens.Eof do
  begin
    SQLBUSCAS.ParamByName('nORITN2PERCDESC').value := nPerc;
    SQLBUSCAS.ParamByName('nORITN2VLRDESC').value  := (SQLOrdItensORITN2VLRUNIT.AsFloat * SQLOrdItensORITN3QUANT.asFloat) * (nPerc / 100);
    SQLBUSCAS.ParamByName('nItem').value           := SQLOrdItensORDITENSID.Value;
    SQLBUSCAS.ExecSQL;
    nConcedido := nConcedido + SQLBUSCAS.ParamByName('nORITN2VLRDESC').value;
    SQLOrdItens.Next;
  end;


  // ajusta total da Ordem
  SQLBuscas.RequestLive := False;
  SQLBuscas.Close;
  SQLBuscas.SQL.Text := 'Select p.prodicod, P.PRODCSERVICO , o.ORITN2VLRDESC, '+
  '((o.ORITN2VLRUNIT * o.ORITN3QUANT)- o.ORITN2VLRDESC)  AS SOMAITENS '+
  'FROM ORD_MEC_ITENS o LEFT OUTER JOIN PRODUTO P ON P.PRODICOD = o.PRODICOD '+
  'WHERE o.ORDID = :nOrdem';
  SQLBuscas.Prepare;
  SQLBuscas.ParamByName('nOrdem').AsString       := SQLTemplate.FindField('ORDID').AsString ;
  SQLBuscas.Open;

  nPerc      := 0; // recebe o valor dos servicos
  nConcedido := 0; // recebe o valor dos produtos
  nTotalDesc := 0; // recebe o total de descontos
  While not SQLBuscas.Eof do
  begin
    if SQLBuscas.FieldByName('PRODCSERVICO').asstring = 'S' then
      nPerc := nPerc + SQLBuscas.FieldbyName('SomaItens').value
    Else
      nConcedido := nConcedido + SQLBuscas.FieldbyName('SomaItens').value;
    nTotalDesc:= nTotalDesc + SQLBuscas.FieldbyName('ORITN2VLRDESC').value;
    SQLBuscas.Next;
  end;
  // Ajusta Total dos Serviços e Servicos
  SQLTemplate.Edit;
  SQLTemplateORITN2VLRSERVICO.Value := nPerc;
  SQLTemplateORITN2VLRPRODUTO.Value := nConcedido;
  SQLTemplateORITN2VLRDESC.Value    := nTotalDesc;
  SQLTemplate.Post;

  SQLOrdItens.Close;
  SQLBuscas.Close;
  SQLBuscas.RequestLive := True;
end;


procedure TFormCadastroMecOrdem.MenuItem8Click(Sender: TObject);
begin
  inherited;
  if DM.Acesso((Sender as TMenuItem).Name) > 0 then
    CriaFormulario(TFormRelatorioOrdPorTipoServico, 'FormRelatorioOrdPorTipoServico',False,False,True,'')
  else
    ShowMessage('Acesso Negado.wav');
end;

procedure TFormCadastroMecOrdem.impOrdemdeServioBobinaClick(
  Sender: TObject);
var Inifile: TInifile;
var CodCliente, NroReduzido, ImpMarca, ImpCaixaPorta, ImpCaixaVeloc : String;
var ValorPecas, ValorServico: Extended;
begin
  inherited;
  ACBrPosPrinter.Desativar;
  memoImpressao.Lines.clear;

  // abre o SQL dos itens da ordem
  SQLOrdItens.Close;
  SQLOrdItens.Prepare;
  SQLORDItens.ParambyName('MFiltro').AsString := SQLTemplate.FindField('ORDID').AsString ;
  SQLOrdItens.Open;

  IniFile        := TIniFile.Create('C:\Easy2Solutions\Gestao\Parceiro.ini');
  ImpMarca       := IniFile.ReadString('Restaurante','ImpMarca','');
  ImpCaixaPorta  := IniFile.ReadString('Restaurante','ImpCaixaPorta','');
  ImpCaixaVeloc  := IniFile.ReadString('Restaurante','ImpCaixaVeloc','9600');
  IniFile.Free;

  if ImpMarca = 'EPSON'    then ACBrPosPrinter.Modelo := ppEscPosEpson;
  if ImpMarca = 'BEMATECH' then ACBrPosPrinter.Modelo := ppEscBematech;
  if ImpMarca = 'ELGIN'    then ACBrPosPrinter.Modelo := ppEscElgin;
  if ImpMarca = 'DR700'    then ACBrPosPrinter.Modelo := ppEscDaruma;

  ACBrPosPrinter.Device.Porta := ImpCaixaPorta;
  ACBrPosPrinter.Device.Baud  := StrToint(ImpCaixaVeloc);

  memoImpressao.Lines.Add('</ce><e>'  +dm.SQLEmpresaEMPRA60NOMEFANT.Value+'</e>');
  memoImpressao.Lines.Add('</fn></ce>'+dm.SQLEmpresaEMPRA60END.Value);
  memoImpressao.Lines.Add('</fn></ce>'+dm.SQLEmpresaEMPRA60CID.Value);
  memoImpressao.Lines.Add('</fn></ce>'+dm.SQLEmpresaEMPRA20FONE.Value);
  memoImpressao.Lines.Add('</fn>------------------------------------------------');
  memoImpressao.Lines.Add('<ce><e>OS Nro: '+sqltemplateORDID.AsString+'</e></ce>');
  memoImpressao.Lines.Add('</fn>------------------------------------------------');
  memoImpressao.Lines.Add('</ae><e>DADOS DO CLIENTE</e>');
  memoImpressao.Lines.Add('</fn>------------------------------------------------');
  memoImpressao.Lines.Add('</ae><e>'+ComboCliente.Text);
  if sqltemplateCliFornEmpFoneLookUp.AsString <> '' then
    memoImpressao.Lines.Add(sqltemplateCliFornEmpFoneLookUp.Asstring);
  if sqltemplateClienteEndereco.AsString <> '' then
    memoImpressao.Lines.Add(sqltemplateClienteEndereco.Asstring+','+SQLTemplateClienteEnderecoNro.AsString);
  if SQLTemplateClienteBairro.AsString <> '' then
    memoImpressao.Lines.Add(SQLTemplateClienteBairro.Asstring);
  if SQLTemplateClienteCidade.AsString <> '' then
    memoImpressao.Lines.Add(SQLTemplateClienteCidade.Asstring);
  memoImpressao.Lines.Add('</fn>------------------------------------------------');
  memoImpressao.Lines.Add('</ae><e>DADOS DO VEICULO</e>');
  memoImpressao.Lines.Add('</fn>------------------------------------------------');
  memoImpressao.Lines.Add('</ae>Descrição: '+SQLTemplateORDA50VEICULO.AsString);
  memoImpressao.Lines.Add('</ae>Placa....: '+SQLTemplatePLACA.AsString);
  memoImpressao.Lines.Add('</ae>Ano\Modelo: '+SQLTemplateANO_MODELO.AsString);
  memoImpressao.Lines.Add('</ae>Cor: '+SQLTemplateORDA10COR.AsString);
  memoImpressao.Lines.Add('</ae>Entrada..: '+SQLTemplateDATA.AsString);
  memoImpressao.Lines.Add('</ae>Km: '+SQLTemplateKM_ENTRADA.AsString);
  memoImpressao.Lines.Add('</ae>Prometido: '+SQLTemplateDATA_ENTREGA.AsString);
  memoImpressao.Lines.Add('</ae>Data Saída: '+Copy(SQLTemplateFinalizado.AsString,0,10));
  memoImpressao.Lines.Add('</ae>Hora Saida: '+Copy(SQLTemplateFinalizado.AsString,11,10));
  memoImpressao.Lines.Add('</fn>------------------------------------------------');
  memoImpressao.Lines.Add('</ae><e>PROBLEMA</e>');
  memoImpressao.Lines.Add('</ae>'+SQLTemplate.FieldbyName('PROBLEMA').asstring);
  memoImpressao.Lines.Add('</fn>------------------------------------------------');
  memoImpressao.Lines.Add('</ae><e>OBS ENTREGA</e>');
  memoImpressao.Lines.Add('</ae>'+SQLTemplate.FieldbyName('Obs_Entrega').asstring);
  memoImpressao.Lines.Add('</fn>------------------------------------------------');
  memoImpressao.Lines.Add('</ae><e>ACESSORIOS</e>');
  memoImpressao.Lines.Add('</ae>'+SQLTemplate.FieldbyName('ACESSORIOS').asstring);
  memoImpressao.Lines.Add('</fn>------------------------------------------------');
  memoImpressao.Lines.Add('</ae>Valor Previsto R$ '+FormatFloat(',0.00',SQLTemplateVALOR.value));
  memoImpressao.Lines.Add('</fn>------------------------------------------------');
  memoImpressao.Lines.Add('</ae>Pecas e Servicos                                ');
  memoImpressao.Lines.Add('</ae>       Quantidade     Valor Unit       Vlr.Total');
  memoImpressao.Lines.Add('</fn>------------------------------------------------');
  SQLOrdItens.First;
  While not SQLOrdItens.Eof do
    begin
      memoImpressao.Lines.Add('</ae>'+SQLOrdItensPRODICOD.AsString + '-' + SQLOrdItensPRODA60DESCR.AsString);
      memoImpressao.Lines.Add('</ad>'+FormatFloat('##00.00',SQLOrdItensORITN3QUANT.Value)+'     '+
                                      FormatFloat('R$ ##0.00',SQLOrdItensORITN2VLRUNIT.value)+'     '+
                                      FormatFloat('R$ ##0.00',(SQLOrdItensORITN2VLRUNIT.value*SQLOrdItensORITN3QUANT.Value)-SQLOrdItensORITN2VLRDESC.Value)+'   ');
      // Totaliza a ordem
      if SQLOrdItensPRODCSERVICO.AsString = 'S' Then
        ValorServico := ValorServico + (SQLOrdItensORITN2VLRUNIT.value*SQLOrdItensORITN3QUANT.Value)-SQLOrdItensORITN2VLRDESC.Value
      else
        ValorPecas   := ValorPecas   + (SQLOrdItensORITN2VLRUNIT.value*SQLOrdItensORITN3QUANT.Value)-SQLOrdItensORITN2VLRDESC.Value;

      SQLOrdItens.Next;
    end;
  memoImpressao.Lines.Add('</fn>------------------------------------------------');
  MemoImpressao.Lines.Add('</ce><e><n>Pecas    ' + FormatFloat('R$ ##0.00',ValorPecas) + '</n></e>');
  MemoImpressao.Lines.Add('</ce><e><n>Servicos ' + FormatFloat('R$ ##0.00',ValorServico) + '</n></e>');
  MemoImpressao.Lines.Add('</ce><e><n>TOTAL    ' + FormatFloat('R$ ##0.00',SQLTemplateVALORTOTAL.Value) + '</n></e>');
  memoImpressao.Lines.Add(' ');
  memoImpressao.Lines.Add(' ');
  memoImpressao.Lines.Add(' ');
  memoImpressao.Lines.Add(' ');
  memoImpressao.Lines.Add('</corte_total>');

  ACBrPosPrinter.Desativar;
  ACBrPosPrinter.Ativar;
  ACBrPosPrinter.Imprimir(MemoImpressao.Lines.Text);
  ACBrPosPrinter.AbrirGaveta;
  ACBrPosPrinter.Desativar;
end;

procedure TFormCadastroMecOrdem.MnRemoverIfemdasplacasClick(
  Sender: TObject);
var xplaca : string;
begin
  inherited;
  sqltemplate.first;
  while not sqltemplate.Eof do
    begin
      sqltemplate.Edit;
      xplaca := SQLTemplatePLACA.Value ;
      try
        while pos('-',xplaca) > 0 do
          delete(xplaca,pos('-', xplaca),1);
        while pos(' ',xplaca) > 0 do
          delete(xplaca,pos(' ',xplaca),1);
        SQLTemplatePLACA.Value := xplaca ;
        sqltemplate.post;
      except
        sqltemplate.cancel;
        Application.ProcessMessages;
      end;


      sqltemplate.Next;
    end;
  showmessage('Concluido!');
end;

end.
