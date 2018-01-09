unit DataModulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModuloTemplate, DB, DBTables, DBLists, RxQuery, UCrpe32,
  ppStrtch, ppMemo, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ACBrNFeDANFEClass,
  ACBrNFeDANFeESCPOS, ACBrDFe, ACBrNFe, ACBrBase, ACBrPosPrinter, MemTable,
  RestClient, RestUtils, DBClient, UnitLibrary;

type
  TDM = class(TDMTemplate)
    SQLConfigGeral: TRxQuery;
    SQLConfigGeralCFGECATIVAEXPORT: TStringField;
    SQLConfigGeralCFGECATUSALDODIA: TStringField;
    SQLConfigGeralCFGEITIPMOVCONTENT: TIntegerField;
    SQLConfigGeralCFGEITIPMOVCONTSAI: TIntegerField;
    SQLConfigGeralCFGEA255PATHBLOQ: TStringField;
    SQLConfigGeralCFGECSETAREMPADREL: TStringField;
    SQLConfigGeralCFGECTROCAEMPLOGON: TStringField;
    SQLConfigGeralCFGEA255PATHFOTOCLI: TStringField;
    SQLConfigGeralCFGE1255PATHMALDIR: TStringField;
    SQLConfigGeralCFGECDELARQTEMPREL: TStringField;
    SQLConfigGeralCFGEA255PATHLOGOEMP: TStringField;
    SQLConfigGeralCFGECATUALSALDOMES: TStringField;
    SQLConfigGeralCFGECVALCODBARPROD: TStringField;
    SQLConfigGeralCFGECVALCODANTPRO: TStringField;
    SQLConfigGeralCFGECVALREFPROD: TStringField;
    SQLConfigGeralCFGECBASEPRCVENDA: TStringField;
    SQLConfigGeralCFGEIEMPPADRAO: TIntegerField;
    SQLConfigGeralCFGEA60HOSTSMTP: TStringField;
    SQLConfigGeralCFGEA60ENDRETSMTP: TStringField;
    SQLConfigGeralCFGEA60ENDHOSTPOP: TStringField;
    SQLConfigGeralCFGEA60NOMEUSERPOP: TStringField;
    SQLConfigGeralCFGEA60SENHAPOP: TStringField;
    SQLConfigGeralCGGEA30VERSAO: TStringField;
    SQLConfigGeralCFGEA255PATHVERSAO: TStringField;
    SQLConfigGeralCFGEA255PATHETIBAR: TStringField;
    SQLConfigGeralEmpresaMatrizFilialLookUp: TStringField;
    SQLConfigGeralCFGEA255PATHREPORT: TStringField;
    SQLConfigGeralCFGECTESTEANPROD: TStringField;
    SQLConfigGeralCFGECTESTREFPROD: TStringField;
    SQLConfigGeralCFGEA255EXEDUPLICATA: TStringField;
    SQLConfigGeralCFGECESTOQUEPORLOTE: TStringField;
    SQLConfigGeralCFGECALCPRECOAUTOM: TStringField;
    SQLConfigGeralCFGECUSASALDODIARIO: TStringField;
    SQLConfigGeralCFGECTIPOMARGLUCRO: TStringField;
    SQLConfigGeralOPESICODTRANSFENTR: TIntegerField;
    SQLConfigGeralOPESICODTRANSFSAID: TIntegerField;
    SQLConfigGeralCFGECBLOQ: TStringField;
    SQLConfigGeralCFGECUSAMARGLIQ: TStringField;
    SQLConfigGeralCFGEDBLOQ: TDateTimeField;
    SQLUsuario: TQuery;
    SQLTerminalAtivo: TRxQuery;
    SQLConfigVenda: TRxQuery;
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
    SQLEmpresaEMPRBLOGOTIPO: TBlobField;
    SQLEmpresaEMPRA15CODEAN: TStringField;
    SQLEmpresaEMPRA60CONTATO: TStringField;
    SQLEmpresaEMPRCLUCROREAL: TStringField;
    SQLEmpresaEMPRN2VLRFUNDOPROMO: TFloatField;
    SQLEmpresaEMPRA3CRT: TStringField;
    SQLEmpresaEMPRIENDNRO: TIntegerField;
    SQLEmpresaEMPRA75EMAILUSUARIO: TStringField;
    SQLEmpresaEMPRA50EMAILHOST: TStringField;
    SQLEmpresaEMPRIEMAILPORTA: TIntegerField;
    SQLEmpresaEMPRA50EMAILSENHA: TStringField;
    SQLEmpresaEMPRA1SSL: TStringField;
    SQLEmpresaEMPRA60EMAILCOPIA: TStringField;
    SQLEmpresaEMPRA1TSL: TStringField;
    SQLEmpresaEMPRA100CERTIFSERIE: TStringField;
    SQLEmpresaEMPRA35CERTIFSENHA: TStringField;
    SQLEmpresaEMPRIMUNICODFED: TIntegerField;
    SQLEmpresaEMPRIUFCODFED: TIntegerField;
    SqlConsulta: TQuery;
    SQLConfigCompra: TRxQuery;
    SQLConfigInventario: TQuery;
    SQLConfigInventarioOPESICODENTRADA: TIntegerField;
    SQLConfigInventarioOPESICODSAIDA: TIntegerField;
    SQLConfigCrediario: TQuery;
    zConsulta: TQuery;
    SQLConfigConta: TRxQuery;
    SQLPlanodeContas: TRxQuery;
    SQLPlanodeContasPLCTA15COD: TStringField;
    SQLPlanodeContasPLCTA15CODPAI: TStringField;
    SQLPlanodeContasPLCTA30CODEDIT: TStringField;
    SQLPlanodeContasPLCTA60DESCR: TStringField;
    SQLPlanodeContasPLCTCANALSINT: TStringField;
    SQLPlanodeContasPLCTCTIPOSALDO: TStringField;
    SQLPlanodeContasPENDENTE: TStringField;
    SQLPlanodeContasREGISTRO: TDateTimeField;
    SQLPlanodeContasPLCTINIVEL: TIntegerField;
    SQLProduto: TRxQuery;
    SQLProdutoFilho: TRxQuery;
    SQLProdutoSaldo: TRxQuery;
    SQLProdutoSaldoEMPRICOD: TIntegerField;
    SQLProdutoSaldoPRODICOD: TIntegerField;
    SQLProdutoSaldoPSLDN3QTDE: TFloatField;
    SQLProdutoSaldoPSLDN3QTDMIN: TFloatField;
    SQLProdutoSaldoPSLDN3QTDMAX: TFloatField;
    DSSQLProduto: TDataSource;
    SQLUpdate: TQuery;
    Report: TCrpe;
    DSTblPedidoItens: TDataSource;
    PipePedVd: TppBDEPipeline;
    PipePedVdIt: TppBDEPipeline;
    TblPedidoCab: TTable;
    TblPedidoCabPedICod: TStringField;
    TblPedidoCabEmitente_Nome: TStringField;
    TblPedidoCabEmitente_Ender: TStringField;
    TblPedidoCabEmitente_Bairro: TStringField;
    TblPedidoCabEmitente_Cidade: TStringField;
    TblPedidoCabEmitente_UF: TStringField;
    TblPedidoCabEmitente_CGC: TStringField;
    TblPedidoCabEmitente_IE: TStringField;
    TblPedidoCabEmitente_Fone: TStringField;
    TblPedidoCabDtEmissao: TDateField;
    TblPedidoCabDestinatario_Nome: TStringField;
    TblPedidoCabDestinatario_Endereco: TStringField;
    TblPedidoCabDestinatario_Bairro: TStringField;
    TblPedidoCabDestinatario_Cep: TStringField;
    TblPedidoCabDestinatario_Cidade: TStringField;
    TblPedidoCabDestinatario_UF: TStringField;
    TblPedidoCabDestinatario_CpfCgc: TStringField;
    TblPedidoCabDestinatario_IE: TStringField;
    TblPedidoCabDestinatario_Fone: TStringField;
    TblPedidoCabDestinatario_Fone2: TStringField;
    TblPedidoCabDestinatario_Fax: TStringField;
    TblPedidoCabTransp: TStringField;
    TblPedidoCabDtaEntrega: TDateField;
    TblPedidoCabComprador: TStringField;
    TblPedidoCabOrdemCompra: TStringField;
    TblPedidoCabPlano: TStringField;
    TblPedidoCabTipoFrete: TStringField;
    TblPedidoCabValorFrete: TFloatField;
    TblPedidoCabTotalDesconto: TFloatField;
    TblPedidoCabTotal: TFloatField;
    TblPedidoCabObservacoes: TMemoField;
    TblPedidoCabVendedor: TStringField;
    TblPedidoCabEmail: TStringField;
    TblPedidoCabTotalGeral: TFloatField;
    TblPedidoCabEmitente_Email: TStringField;
    TblPedidoCabEmitente_URL: TStringField;
    TblPedidoCabEmitenteLogo: TBlobField;
    TblPedidoCabValorEntrada: TFloatField;
    TblPedidoCabRota: TStringField;
    TblPedidoCabPlacaVeiculo: TStringField;
    TblPedidoCabTroco: TFloatField;
    TblPedidoCabPEDIDOORCAMENTO: TStringField;
    TblPedidoItens: TTable;
    TblPedidoItensPedICod: TStringField;
    TblPedidoItensCodigo: TIntegerField;
    TblPedidoItensDescricao: TStringField;
    TblPedidoItensUn: TStringField;
    TblPedidoItensQtd1: TFloatField;
    TblPedidoItensVlrUnitario: TFloatField;
    TblPedidoItensVlrTotal: TFloatField;
    TblPedidoItensCor: TStringField;
    TblPedidoItensTecido: TStringField;
    TblPedidoItensLegenda: TIntegerField;
    TblPedidoItensQtd2: TFloatField;
    TblPedidoItensQtd3: TFloatField;
    TblPedidoItensQtd4: TFloatField;
    TblPedidoItensQtd5: TFloatField;
    TblPedidoItensQtd6: TFloatField;
    TblPedidoItensQtd7: TFloatField;
    TblPedidoItensQtd8: TFloatField;
    TblPedidoItensQtd9: TFloatField;
    TblPedidoItensQtd10: TFloatField;
    TblPedidoItensQtd11: TFloatField;
    TblPedidoItensQtd12: TFloatField;
    TblPedidoItensQtd13: TFloatField;
    TblPedidoItensQtd14: TFloatField;
    TblPedidoItensQtd15: TFloatField;
    TblPedidoItensReferencia: TStringField;
    TblPedidoItensCodItem: TIntegerField;
    TblPedidoFinan: TTable;
    TblPedidoFinanPedICod: TStringField;
    TblPedidoFinanParcela: TStringField;
    TblPedidoFinanVencimento: TDateField;
    TblPedidoFinanValor: TFloatField;
    TblPedidoFinanPortador: TStringField;
    TblPedidoFinanNumerario: TStringField;
    DSTblPedidoFinan: TDataSource;
    PipePedFin: TppBDEPipeline;
    ReportOrc: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLabel28: TppLabel;
    ppDBText24: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBText18: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDBText19: TppDBText;
    ppLabel21: TppLabel;
    ppDBText20: TppDBText;
    ppLabel22: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLine2: TppLine;
    ppDBText23: TppDBText;
    DSTblPedidoCab: TDataSource;
    SQLProvedorCartao: TRxQuery;
    SQLConfigGeralEmpresaPadraoCalcField: TStringField;
    ACBrPosPrinter: TACBrPosPrinter;
    ACBrNFe: TACBrNFe;
    ACBrNFeDANFeESCPOS: TACBrNFeDANFeESCPOS;
    TblTicketPreVendaCab: TTable;
    TblTicketPreVendaCabTicketNumero: TStringField;
    TblTicketPreVendaCabVendedor: TStringField;
    TblTicketPreVendaCabPlano: TStringField;
    TblTicketPreVendaCabCliente: TStringField;
    TblTicketPreVendaCabFoneCliente: TStringField;
    TblTicketPreVendaCabTotalNominal: TFloatField;
    TblTicketPreVendaCabTaxaCrediario: TFloatField;
    TblTicketPreVendaCabAcrescimo: TFloatField;
    TblTicketPreVendaCabDesconto: TFloatField;
    TblTicketPreVendaCabTotalGeral: TFloatField;
    TblTicketPreVendaCabNroCreditCard: TStringField;
    TblTicketPreVendaCabNumerarioPagto: TStringField;
    TblTicketPreVendaCabMensagem: TStringField;
    TblTicketPreVendaCabDataEntrega: TStringField;
    TblTicketPreVendaCabTipoVenda: TStringField;
    TblTicketPreVendaCabPessoaRecebeNome: TStringField;
    TblTicketPreVendaCabPessoaRecebeEnder: TStringField;
    TblTicketPreVendaCabPessoaRecebeBai: TStringField;
    TblTicketPreVendaCabPessoaRecebeCid: TStringField;
    TblTicketPreVendaCabPessoaRecebeUF: TStringField;
    TblTicketPreVendaCabPessoaRecebeFone: TStringField;
    TblTicketPreVendaCabMensagem2: TMemoField;
    TblTicketPreVendaCabVlrEntrada: TFloatField;
    TblTicketPreVendaCabNomeClienteVenda: TStringField;
    TblTicketPreVendaCabDocumentoClienteVenda: TStringField;
    TblTicketPreVendaCabEnderecoClienteVenda: TStringField;
    TblTicketPreVendaCabCidadeClienteVenda: TStringField;
    TblTicketPreVendaCabOBSImpressaoCupom: TStringField;
    TblTicketPreVendaCabTERMICOD: TIntegerField;
    TblTicketPreVendaCabPRVDICOD: TIntegerField;
    TblTicketPreVendaCabDataEmissao: TDateTimeField;
    TblTicketPreVendaCabFoneClienteVenda: TStringField;
    TblTicketPreVendaCabUsuarioVendaSTR: TStringField;
    TblTicketPreVendaCabPlacaVeiculo: TStringField;
    TblTicketPreVendaCabTroco: TFloatField;
    TblTicketPreVendaCabPEDIDOORCAMENTO: TStringField;
    TblTicketPreVendaCabDisplayNumero: TIntegerField;
    TblTicketPreVendaCabMesaCodigo: TIntegerField;
    TblTicketPreVendaCabContaCodigo: TIntegerField;
    TblTicketPreVendaCabLevarCasa: TStringField;
    TblTicketPreVendaCabBairroClienteVenda: TStringField;
    TblTicketPreVendaCabKM: TStringField;
    TblTicketPreVendaCabEmpresaEmit: TStringField;
    TblTicketPreVendaCabEmpresaEmit_Ender: TStringField;
    TblTicketPreVendaCabEmpresaEmit_Bairro: TStringField;
    TblTicketPreVendaCabEmpresaEmit_Cidade: TStringField;
    TblTicketPreVendaCabEmpresaEmit_Fone: TStringField;
    TblTicketPreVendaCabClienteDependente: TStringField;
    TblTicketPreVendaCabTerminal: TStringField;
    TblTicketPreVendaItem: TTable;
    TblTicketPreVendaItemCodigo: TIntegerField;
    TblTicketPreVendaItemDescricao: TStringField;
    TblTicketPreVendaItemValorUnitario: TFloatField;
    TblTicketPreVendaItemQuantidade: TFloatField;
    TblTicketPreVendaItemValorTotal: TFloatField;
    TblTicketPreVendaItemDesconto: TFloatField;
    TblTicketPreVendaItemMarca: TStringField;
    TblTicketPreVendaItemReferencia: TStringField;
    TblTicketPreVendaItemUnidade: TStringField;
    TblTicketPreVendaItemTroca: TStringField;
    TblTicketPreVendaItemComplemento: TStringField;
    TblTicketPreVendaItemImpCozinha: TStringField;
    TblTicketPreVendaItemImpVale: TStringField;
    TblTicketPreVendaFin: TTable;
    TblTicketPreVendaFinPedICod: TStringField;
    TblTicketPreVendaFinParcela: TStringField;
    TblTicketPreVendaFinVencimento: TDateField;
    TblTicketPreVendaFinValor: TFloatField;
    TblTicketPreVendaFinPortador: TStringField;
    TblTicketPreVendaFinNumerario: TStringField;
    TblTicketPreVendaFinTipopadrao: TStringField;
    TblTicketPreVendaFinBonusTroca: TStringField;
    SQLConfigFinanceiro: TRxQuery;
    SQLPreVenda: TRxQuery;
    SQLPreVendaTERMICOD: TIntegerField;
    SQLPreVendaPRVDICOD: TIntegerField;
    SQLPreVendaCONVICOD: TIntegerField;
    SQLPreVendaCLIEA13ID: TStringField;
    SQLPreVendaPLRCICOD: TIntegerField;
    SQLPreVendaPRVDCMARCADO: TStringField;
    SQLPreVendaPRVDN2TOTITENS: TFloatField;
    SQLPreVendaPRVDN2DESC: TFloatField;
    SQLPreVendaVENDICOD: TIntegerField;
    SQLPreVendaPRVDCIMPORT: TStringField;
    SQLPreVendaCLIEA60RAZAOSOC: TStringField;
    SQLPreVendaCLIEA60ENDRES: TStringField;
    SQLPreVendaCLIEA60BAIRES: TStringField;
    SQLPreVendaCLIEA60CIDRES: TStringField;
    SQLPreVendaCLIEA15FONE1: TStringField;
    SQLPreVendaCLIEDCAD: TDateTimeField;
    SQLPreVendaCLIEDPRICOMPRA: TDateTimeField;
    SQLPreVendaCLIEDULTCOMPRA: TDateTimeField;
    SQLPreVendaTPCLICOD: TIntegerField;
    SQLPreVendaMTBLICOD: TIntegerField;
    SQLPreVendaVENDA60NOME: TStringField;
    SQLPreVendaTERMA60DESCR: TStringField;
    SQLPreVendaCLIENTENOME: TStringField;
    SQLPreVendaCLIENTEENDE: TStringField;
    SQLPreVendaCLIENTECIDA: TStringField;
    SQLPreVendaCLIENTEOBS: TStringField;
    SQLPreVendaCLIENTECNPJ: TStringField;
    SQLPreVendaCLIEDNASC: TDateTimeField;
    SQLPreVendaCLIEN2RENDA: TFloatField;
    SQLPreVendaCLIEN2CONJUGERENDA: TFloatField;
    SQLPreVendaCLIEN2LIMITECRED: TFloatField;
    SQLPreVendaPDVDDHVENDA: TDateTimeField;
    SQLPreVendaPDVCPRECONCLU: TStringField;
    SQLPreVendaCLIENTEFONE: TStringField;
    SQLPreVendaCLDPICOD: TIntegerField;
    SQLPreVendaCLIETOBS1: TBlobField;
    SQLPreVendaItem1: TRxQuery;
    SQLPreVendaItem1TERMICOD: TIntegerField;
    SQLPreVendaItem1PRVDICOD: TIntegerField;
    SQLPreVendaItem1PVITIPOS: TIntegerField;
    SQLPreVendaItem1PRODICOD: TIntegerField;
    SQLPreVendaItem1PVITN3QTD: TFloatField;
    SQLPreVendaItem1PVITN3VLRUNIT: TFloatField;
    SQLPreVendaItem1PVITN3VLRCUSTUNIT: TFloatField;
    SQLPreVendaItem1PVITN2DESC: TFloatField;
    SQLPreVendaItem1VENDICOD: TIntegerField;
    SQLPreVendaItem1PVITN3VLRUNITLUCR: TFloatField;
    SQLPreVendaItem1PVITCSTATUS: TStringField;
    SQLPreVendaItem1PVITN2ICMSALIQ: TFloatField;
    SQLPreVendaItem1PRODA60NROSERIE: TStringField;
    SQLPreVendaItem1PVITN3QTDTROCA: TFloatField;
    SQLPreVendaItem1PVITTOBS: TStringField;
    SQLPreVendaItem1M3_ESPESSURA: TFloatField;
    SQLPreVendaItem1M3_LARGURA: TFloatField;
    SQLPreVendaItem1M3_COMPRI: TFloatField;
    SQLPreVendaNumerario: TRxQuery;
    SQLPreVendaNumerarioTERMICOD: TIntegerField;
    SQLPreVendaNumerarioPRVDICOD: TIntegerField;
    SQLPreVendaNumerarioNUMEICOD: TIntegerField;
    SQLPreVendaNumerarioPVNUN2VLR: TFloatField;
    SQLPreVendaContasReceber: TRxQuery;
    SQLPreVendaContasReceberPVCRICOD: TIntegerField;
    SQLPreVendaContasReceberTERMICOD: TIntegerField;
    SQLPreVendaContasReceberPRVDICOD: TIntegerField;
    SQLPreVendaContasReceberNUMEICOD: TIntegerField;
    SQLPreVendaContasReceberPVCRINROPARC: TIntegerField;
    SQLPreVendaContasReceberPVCRDVENC: TDateTimeField;
    SQLPreVendaContasReceberPVCRN2VLR: TFloatField;
    SQLPreVendaContasReceberPVCRN2DESCFIN: TFloatField;
    SQLCup: TRxQuery;
    SQLCupomIt: TRxQuery;
    SQLCupomItCUPOA13ID: TStringField;
    SQLCupomItCPITIPOS: TIntegerField;
    SQLCupomItPRODICOD: TIntegerField;
    SQLCupomItCPITCSTATUS: TStringField;
    SQLCupomItCPITN3QTD: TFloatField;
    SQLCupomItCPITN3QTDTROCA: TFloatField;
    SQLCupomItCPITN3VLRUNIT: TFloatField;
    SQLCupomItCPITN2DESC: TFloatField;
    SQLCupomItVENDICOD: TIntegerField;
    SQLCupomItADICIONAIS: TStringField;
    SQLCupomItCPITN2VLRDESCSOBTOT: TFloatField;
    SQLCupomItCPITTOBS: TStringField;
    SQLCupomItem: TRxQuery;
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
    SQLCupomItemCPITN2VLRDESCSOBTOT: TFloatField;
    SQLCupomItemCPITN2BASEICMS: TFloatField;
    SQLCupomItemCPITN2VLRICMS: TFloatField;
    SQLCupomItemCPITN2VLRQDEVERIAVENDER: TFloatField;
    SQLCupomItemBOMBICOD: TIntegerField;
    SQLCupomItemEMPRICOD: TIntegerField;
    SQLCupomItemENCERRANTE: TIntegerField;
    SQLCupomItemCPITTOBS: TStringField;
    SQLCupomItemADICIONAIS: TStringField;
    SQLCupomItemCPITN2IMPOSTOMED: TFloatField;
    SQLCupomItemTERMICOD: TIntegerField;
    SQLCupomItemDENSIDADE: TStringField;
    SQLCupomItemMEDIDA: TStringField;
    SQLCupomItemESPESSURA: TStringField;
    SQLCupomItemTECIDO: TStringField;
    SQLCupomItemM3_LARGURA: TFloatField;
    SQLCupomItemM3_COMPRI: TFloatField;
    SQLCupomItemM3_ESPESSURA: TFloatField;
    SQLPedidoVenda: TRxQuery;
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
    SQLPedidoVendaPDVDCIMPORTADO: TStringField;
    SQLPedidoVendaCLIENTENOME: TStringField;
    SQLPedidoVendaCLIENTEFONE: TStringField;
    SQLPedidoVendaCLIENTEEMAIL: TStringField;
    SQLPedidoVendaUSUAA60LOGIN: TStringField;
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
    SQLPedidoVendaItemPDVDA60OBS: TStringField;
    SQLPedidoVendaItemPVITN2PERCCOMIS: TFloatField;
    SQLPedidoVendaItemPVITN3QUANTVEND: TFloatField;
    SQLPedidoVendaItemPDVDA255OBS1: TStringField;
    SQLPedidoVendaItemPVITN3TOTVENDITEM: TFloatField;
    SQLPedidoVendaItemUNIDICOD: TIntegerField;
    SQLPedidoVendaItemPRODCMIX: TStringField;
    SQLPedidoVendaItemPRODN3PESOBRUTO: TFloatField;
    TblCheques: TMemoryTable;
    TblChequesDtDep: TDateTimeField;
    TblChequesNroCheque: TFloatField;
    TblChequesValor: TFloatField;
    TblChequesHistorico: TStringField;
    TblChequesPORTICOD: TIntegerField;
    TblChequesBANCA5COD: TStringField;
    TblChequesAGENCIA: TStringField;
    TblChequesCONTA: TStringField;
    TblChequesDATAABERT: TDateField;
    TblChequesTITULAR: TStringField;
    TblChequesCGCCPF: TStringField;
    TblChequesALINICOD: TIntegerField;
    TblChequesDataVecto: TDateField;
    TblChequesNroDias: TIntegerField;
    DSTblCheques: TDataSource;
    SQLParcelas: TRxQuery;
    SQLCliente: TRxQuery;
    SQLPreVendaItem2: TRxQuery;
    SQLPreVendaItem2TERMICOD: TIntegerField;
    SQLPreVendaItem2PRVDICOD: TIntegerField;
    SQLPreVendaItem2PVITIPOS: TIntegerField;
    SQLPreVendaItem2PRODICOD: TIntegerField;
    SQLPreVendaItem2PVITN3QTD: TFloatField;
    SQLPreVendaItem2PVITN3VLRUNIT: TFloatField;
    SQLPreVendaItem2PVITN3VLRCUSTUNIT: TFloatField;
    SQLPreVendaItem2PVITN2DESC: TFloatField;
    SQLPreVendaItem2VENDICOD: TIntegerField;
    SQLPreVendaItem2PVITN3VLRUNITLUCR: TFloatField;
    SQLPreVendaItem2PVITCSTATUS: TStringField;
    SQLPreVendaItem2PVITN2ICMSALIQ: TFloatField;
    SQLPreVendaItem2PRODA60NROSERIE: TStringField;
    SQLPreVendaItem2PVITN3QTDTROCA: TFloatField;
    SQLPreVendaItem2PVITTOBS: TStringField;
    SQLPreVendaItem2M3_LARGURA: TFloatField;
    SQLPreVendaItem2M3_COMPRI: TFloatField;
    SQLPreVendaItem2M3_ESPESSURA: TFloatField;
    SQLCupomNumerario: TRxQuery;
    SQLCupomNumerarioCUPOA13ID: TStringField;
    SQLCupomNumerarioNUMEICOD: TIntegerField;
    SQLCupomNumerarioCONMCSTATUS: TStringField;
    SQLCupomNumerarioCPNMN2VLR: TFloatField;
    SQLCupomNumerarioPENDENTE: TStringField;
    SQLCupomNumerarioREGISTRO: TDateTimeField;
    SQLCupomNumerarioCPNMCAUTENT: TStringField;
    SQLCupomNumerarioCLIEA13ID: TStringField;
    SQLCupomNumerarioPLCTA15COD: TStringField;
    SQLCupomNumerarioEMPRICOD: TIntegerField;
    MemCtRecParc: TTable;
    MemCtRecParcCTRCDVENC: TDateTimeField;
    MemCtRecParcCUPODEMIS: TDateTimeField;
    MemCtRecParcCUPOA13ID: TStringField;
    MemCtRecParcCTRCA13ID: TStringField;
    MemCtRecParcCTRCINROPARC: TIntegerField;
    MemCtRecParcCUPON2DESC: TFloatField;
    MemCtRecParcCUPON2TOTITENS: TFloatField;
    MemCtRecParcCUPON2ACRESC: TFloatField;
    MemCtRecParcCLIEA13ID: TStringField;
    MemCtRecParcCTRCN2VLR: TFloatField;
    MemCtRecParcBaixar: TBooleanField;
    MemCtRecParcCTRCN2VLRJURO: TFloatField;
    MemCtRecParcCTRCN2VLRMULTA: TFloatField;
    MemCtRecParcCTRCN2VLRDESC: TFloatField;
    MemCtRecParcCTRCN2VLRTXCOBR: TFloatField;
    MemCtRecParcCTRCDULTREC: TDateField;
    MemCtRecParcValorOrigem: TFloatField;

    DSMemCtRecParc: TDataSource;
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
    SQLContasReceberPLCTA15CODDEBITO: TStringField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberCTRCDESTORNO: TDateTimeField;
    SQLContasReceberFRETA13ID: TStringField;
    SQLContasReceberCTRCCTEMREGRECEBER: TStringField;
    SQLContasReceberCOBRA13ID: TStringField;
    SQLContasReceberCTRCDENVIOCOBRANCA: TDateTimeField;
    SQLContasReceberCTRCA254HIST: TStringField;
    SQLContasReceberDUPLA13ID: TStringField;
    SQLContasReceberAVALA13ID: TStringField;
    SQLContasReceberCTRCCTIPOREGISTRO: TStringField;
    SQLContasReceberHTPDICOD: TIntegerField;
    SQLContasReceberCONTA13ID: TStringField;
    SQLContasReceberCTRCA13CTRCAIDCHQ: TStringField;
    SQLContasReceberCTRCCEMITIDOBOLETO: TStringField;
    SQLContasReceberCTRCA2MESCOMP: TStringField;
    SQLContasReceberCTRCA4ANOCOMP: TStringField;
    SQLContasReceberCLDPICOD: TIntegerField;
    SQLPopUP: TQuery;
    SQLPopUPPOPTEMPO: TStringField;
    SQLPopUPCFGCCEXIBIRPOPTARE: TStringField;
    SQLPreVD: TRxQuery;
    SQLPreVDIt: TRxQuery;
    SQLECF: TRxQuery;
    SQLPedidoOrcamento: TRxQuery;
    SQLPedidoOrcamentoPDVDA13ID: TStringField;
    SQLPedidoOrcamentoCLIEA13ID: TStringField;
    SQLPedidoOrcamentoVENDICOD: TIntegerField;
    SQLPedidoOrcamentoPLRCICOD: TIntegerField;
    SQLPedidoOrcamentoPDVDN2TOTPROD: TFloatField;
    SQLPedidoOrcamentoCLIEA60RAZAOSOC: TStringField;
    SQLPedidoOrcamentoVENDA60NOME: TStringField;
    SQLPedidoOrcamentoPLRCA60DESCR: TStringField;
    SQLPedidoOrcamentoPDVDN2VLRDESC: TFloatField;
    SQLPedidoOrcamentoPDVDN2VLRDESCPROM: TFloatField;
    SQLPedidoOrcamentoPDVDN2VLRFRETE: TFloatField;
    SQLPedidoOrcamentoPDVDTOBS: TStringField;
    SQLPedidoOrcamentoPDVDCTIPO: TStringField;
    SQLPedidoOrcamentoPDVDDEMISSAO: TDateTimeField;
    SQLPedidoOrcamentoEMPRICOD: TIntegerField;
    SQLPedidoOrcamentoPDVDICOD: TIntegerField;
    SQLPedidoOrcamentoTRANICOD: TIntegerField;
    SQLPedidoOrcamentoPDVDA30NROPEDCOMP: TStringField;
    SQLPedidoOrcamentoPDVDA30COMPRADOR: TStringField;
    SQLPedidoOrcamentoPDVDCSTATUS: TStringField;
    SQLPedidoOrcamentoPDVDN2TOTPED: TFloatField;
    SQLPedidoOrcamentoREGISTRO: TDateTimeField;
    SQLPedidoOrcamentoPENDENTE: TStringField;
    SQLPedidoOrcamentoPDVDCTIPOFRETE: TStringField;
    SQLPedidoOrcamentoPDVDDENTREGA: TDateTimeField;
    SQLPedidoOrcamentoPDVDINROTALAO: TIntegerField;
    SQLPedidoOrcamentoPDVDCIMPORTADO: TStringField;
    SQLPedidoOrcamentoPDVDN2PERCFAT: TFloatField;
    SQLPedidoOrcamentoPDVDN2PERCOMIS: TFloatField;
    SQLPedidoOrcamentoUSUAA60LOGIN: TStringField;
    SQLPedidoOrcamentoROTAICOD: TIntegerField;
    SQLPedidoOrcamentoSERIA5COD: TStringField;
    SQLPedidoOrcamentoVEICA13ID: TStringField;
    SQLPedidoOrcamentoPDVDA15NROPEDPALM: TStringField;
    SQLPedidoOrcamentoNOFIAOBSCORPONF: TStringField;
    SQLPedidoOrcamentoPDVD8PLACAVEIC: TStringField;
    SQLPedidoOrcamentoOPESICOD: TIntegerField;
    SQLPedidoOrcamentoCLIENTENOME: TStringField;
    SQLPedidoOrcamentoCLIENTEFONE: TStringField;
    SQLPedidoOrcamentoCLIENTEEMAIL: TStringField;
    SQLPedidoOrcamentoItem: TRxQuery;
    SQLPedidoOrcamentoItemPDVDA13ID: TStringField;
    SQLPedidoOrcamentoItemPVITIITEM: TIntegerField;
    SQLPedidoOrcamentoItemPRODICOD: TIntegerField;
    SQLPedidoOrcamentoItemPVITN3QUANT: TFloatField;
    SQLPedidoOrcamentoItemPVITN2VLRUNIT: TFloatField;
    SQLPedidoOrcamentoItemPVITN2PERCDESC: TFloatField;
    SQLPedidoOrcamentoItemPVITN2VLRDESC: TFloatField;
    SQLPedidoOrcamentoItemREGISTRO: TDateTimeField;
    SQLPedidoOrcamentoItemPENDENTE: TStringField;
    SQLPedidoOrcamentoItemPVITN3QUANTVEND: TFloatField;
    SQLPedidoOrcamentoItemPDVDA60OBS: TStringField;
    SQLPedidoOrcamentoItemPVITN2PERCCOMIS: TFloatField;
    SQLPedidoOrcamentoItemPDVDA255OBS1: TStringField;
    SQLPedidoOrcamentoItemLOTEA30NRO: TStringField;
    sqlImportarPrevenda: TRxQuery;
    TblAutenticacao: TTable;
    TblAutenticacaoEmpresaNome: TStringField;
    TblAutenticacaoOperacao: TStringField;
    TblAutenticacaoUsuarioNome: TStringField;
    TblAutenticacaoValor: TFloatField;
    TblAutenticacaoHistorico: TStringField;
    TblAutenticacaoTerminalNome: TStringField;
    TblAutenticacaoForma: TStringField;
    SQLTotalizadorCaixa: TRxQuery;
    SQLTotalizar: TRxQuery;
    SQLFechamentoCaixa: TRxQuery;
    SQLFechamentoCaixaFECXA13ID: TStringField;
    SQLFechamentoCaixaFECXDDATAMOV: TDateTimeField;
    SQLFechamentoCaixaEMPRICOD: TIntegerField;
    SQLFechamentoCaixaTERMICOD: TIntegerField;
    SQLFechamentoCaixaNUMEICOD: TIntegerField;
    SQLFechamentoCaixaFECXICOD: TIntegerField;
    SQLFechamentoCaixaFECXN2VALOR: TFloatField;
    SQLFechamentoCaixaUSUAICOD: TIntegerField;
    SQLFechamentoCaixaNUMEA30DESCR: TStringField;
    SQLFechamentoCaixaPENDENTE: TStringField;
    SQLFechamentoCaixaREGISTRO: TDateTimeField;
    SQLNumerario: TRxQuery;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    SQLNumerarioNUMECVISTAPRAZO: TStringField;
    SQLNumerarioNUMECATIVO: TStringField;
    SQLNumerarioNUMEA5TIPO: TStringField;
    SQLNumerarioOPCXICOD: TIntegerField;
    SQLNumerarioPENDENTE: TStringField;
    SQLNumerarioREGISTRO: TDateTimeField;
    SQLNumerarioPRCAA13ID: TStringField;
    SQLCupom: TRxQuery;
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
    SQLCupomPENDENTE: TStringField;
    SQLCupomREGISTRO: TDateTimeField;
    SQLCupomCUPON3BONUSTROCA: TFloatField;
    SQLCupomCUPODENTREGA: TDateTimeField;
    SQLCupomTPVDICOD: TIntegerField;
    SQLCupomCUPON3CREDTAXA: TFloatField;
    SQLCupomCUPOCCONSIG: TStringField;
    SQLCupomCUPOV254OBS: TStringField;
    SQLCupomUSUAICODCANC: TIntegerField;
    SQLCupomCUPOA30DATACARTAO: TStringField;
    SQLCupomCUPOA30HORACARTAO: TStringField;
    SQLCupomCUPOA30NSUPROVEDOR: TStringField;
    SQLCupomCUPOA30NSUINSTITUICAO: TStringField;
    SQLCupomCUPON2DESCITENS: TFloatField;
    SQLCupomCATCA13ID: TStringField;
    SQLCupomOPESICOD: TIntegerField;
    SQLCupomPLCTA15CODCRED: TStringField;
    SQLCupomPLCTA15CODDEB: TStringField;
    SQLCupomCUPON2BASEICMS: TFloatField;
    SQLCupomCUPON2VLRICMS: TFloatField;
    SQLCupomCUPOA13IDCUPNEG: TStringField;
    SQLCupomCFOPA5COD: TStringField;
    SQLCupomAVALA13ID: TStringField;
    SQLCupomCUPODQUITACAO: TDateTimeField;
    SQLCupomCLIENTENOME: TStringField;
    SQLCupomCLIENTECNPJ: TStringField;
    SQLCupomCLIENTEENDE: TStringField;
    SQLCupomCLIENTECIDA: TStringField;
    SQLCupomCLIENTEFONE: TStringField;
    SQLCupomUSUAICODVENDA: TIntegerField;
    SQLCupomCLDPICOD: TIntegerField;
    SQLCupomCUPOA8PLACAVEIC: TStringField;
    SQLCupomTROCO: TFloatField;
    SQLCupomDISPICOD: TIntegerField;
    SQLCupomCHAVEACESSO: TStringField;
    SQLCupomPROTOCOLO: TStringField;
    DBRel: TDatabase;
    RestClient: TRestClient;
    cdsAPIAutorizacao: TClientDataSet;
    cdsAPIAutorizacaoDATA_AUTORIZACAO: TStringField;
    cdsAPIAutorizacaoOBS_AUTORIZACAO: TStringField;
    TblAPIAutorizacao: TTable;
    TblAPIAutorizacaoOBS_AUTORIZACAO: TStringField;
    TblAPIAutorizacaoDATA_AUTORIZACAO: TDateField;
    SQLConfigGeralDIAS_AVISO: TIntegerField;
    cdsAPIAutorizacaoDIAS_AVISO: TStringField;
    TblAPIAutorizacaoDIAS_AVISO: TStringField;
    ACBrNFeCad: TACBrNFe;
    SQLConfigGeralDATA_INI_SEM_NET: TDateTimeField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DBAfterConnect(Sender: TObject);
  private
    { Private declarations }
    procedure GetDataValidadeSistema;
    procedure GetDataValidadeSistemaWebApi;

  public
    { Public declarations }
    {CodTarefa, SerieAtualPedidos,  FretePorConta, PedidoVolume,  VeiculoAtualPedidos,
    PedidoEspecie, PedidoMarca, PedidoPesoB, PedidoPesoL, PedidoObs:String;
    GerandoPedidoCompra, InserindoItemPC, GerandoNotaCompra, IncluindoGrade, ImportandoPedidoCompra, InserindoItemNC, ProcurandoProduto,
    GerandoMovtoDiverso, GerandoPedidoVenda, ImportandoColetor, InserindoItemPV:Boolean;
    ConfigEtiqueta, SeqItemCompra, CodigoProdutoCompra, VendedorAtualPedidos, RotaAtualPedidos,
    TranspAtualPedidos:Integer;
    DataEntregaPedidos, DataEmissaoPedidos:TDateTime;
     }
    vSEM_INTERNET:Boolean; 
    Cupom, CodTarefa, SerieAtualPedidos, VeiculoAtualPedidos, FretePorConta, PedidoVolume, PedidoEspecie, PedidoMarca, PedidoPesoB, PedidoPesoL,
      PedidoObs, SubTotal_ECF, NumerarioCartao, CodNextOrc, CodNextCupom, ID_NotaFiscal_Boleto, PrevendaCodigoStr, PrevendaTerminalStr: string;
    ImportandoPedidoVenda, ImportandoColetor, GerarNovaNota, GerandoNotaFiscal,
      GerandoPedidoVenda, InserindoItemPV, GerandoPedidoCompra, InserindoItemPC,
      GerandoNotaCompra, IncluindoGrade, ImportandoPedidoCompra, InserindoItemNC,
      ProcurandoProduto, TrocarStatusPedidoParaFaturado, InserindoItemNV,
      GerandoMovtoDiverso, AceitaMotivoNaoAtend: Boolean;
    ConfigEtiqueta, VendedorAtualPedidos, RotaAtualPedidos, TranspAtualPedidos, SeqItemCompra, CodigoProdutoCompra: Integer;
    DataEntregaPedidos, DataEmissaoPedidos, DataSistema: TDate;
    TotalCartao: Double;
    TemClienteDiferente: Boolean;
    OBSAutorizacao: string;
    function ConectaServidor: boolean;
    procedure Inicia_NFe;
    procedure Inicia_NFeCAD;

  end;

var
  DM: TDM;

implementation

uses TelaSplash, JsonToDataSetConverter, DateUtils, Math, TelaAtivacao;

{$R *.dfm}

function TDM.ConectaServidor: boolean;
begin
   {Tenta conectar pra ver se o servidor esta Online se estiver inicia a transmissao!}
  if FileExists('Online.txt') then
    result := true
  else
    result := false;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
  vSEM_INTERNET := False;
  FormSplash.lbDados.Caption := 'Abrindo Tabela de Filiais...'; FormSplash.lbDados.Update;
  SQLEmpresa.Open ;

  FormSplash.lbDados.Caption := 'Abrindo Tabela de Usuarios...'; FormSplash.lbDados.Update;
  SQLUsuario.Open;

  FormSplash.lbDados.Caption := 'Licença de uso Válida até => ' + FormatDateTime('dd/mm/yyyy', SQLConfigGeralCFGEDBLOQ.Value); FormSplash.lbDados.Update;
  Sleep(1000);
  FormSplash.close;
end;

procedure TDM.Inicia_NFe();
begin
  {$IFDEF ACBrNFeOpenSSL}
    ACBrNFe.Configuracoes.Certificados.ArquivoPFX  := sqlEmpresa.FieldByName('EMPRA100CERTIFSERIE').AsString;
    ACBrNFe.Configuracoes.Certificados.Certificado := sqlEmpresa.FieldByName('EMPRA100CERTIFSERIE').AsString;
    ACBrNFe.Configuracoes.Certificados.Senha       := sqlEmpresa.FieldByName('EMPRA35CERTIFSENHA').AsString;
  {$ELSE}
    ACBrNFe.Configuracoes.Certificados.NumeroSerie  := sqlEmpresa.FieldByName('EMPRA100CERTIFSERIE').AsString;
    ACBrNFe.Configuracoes.Certificados.Senha        := sqlEmpresa.FieldByName('EMPRA35CERTIFSENHA').AsString;
  {$ENDIF}

  if sqlEmpresa.FindField('idTOKEN') <> nil then
  begin
    ACBrNFe.Configuracoes.Geral.IdCSC  := sqlEmpresa.FieldByName('idTOKEN').AsString;
    ACBrNFe.Configuracoes.Geral.CSC    := sqlEmpresa.FieldByName('TOKEN').AsString;
  end;

  ACBrNFe.DANFE.ViaConsumidor := True;
  ACBrNFe.DANFE.ImprimirItens := True;

  if (ECFAtual = 'NFCE A4')       then  ACBrPosPrinter.Modelo := ppTexto;
  if (ECFAtual = 'NFCE EPSON')    then  ACBrPosPrinter.Modelo := ppEscPosEpson;
  if (ECFAtual = 'NFCE BEMATECH') then  ACBrPosPrinter.Modelo := ppEscBematech;
  if (ECFAtual = 'NFCE ELGIN')    then  ACBrPosPrinter.Modelo := ppEscElgin;
  if (ECFAtual = 'NFCE DR700')    then  ACBrPosPrinter.Modelo := ppEscDaruma;
  if (ECFAtual = 'NFCE DR800') then
    begin
      ACBrPosPrinter.Modelo := ppEscDaruma;
      ACBrPosPrinter.ControlePorta := False;
    end;

  if SQLTerminalAtivo.FieldByName('TERMA5ECFPORTACOM').Value <> 'USB' then
    ACBrPosPrinter.Device.Porta := SQLTerminalAtivo.FieldByName('TERMA5ECFPORTACOM').Value
  else
    ACBrPosPrinter.Device.Porta := '\\localhost\nfce' ;

  if not SQLTerminalAtivo.FieldByName('ECF_VELOC').IsNull then
    ACBrPosPrinter.Device.Baud  := SQLTerminalAtivo.FieldByName('ECF_VELOC').Value;

  ACBrNFeDANFeESCPOS.ImprimeEmUmaLinha     := False;
  ACBrNFeDANFeESCPOS.ImprimeDescAcrescItem := True;
end;

procedure TDM.DBAfterConnect(Sender: TObject);
begin
  inherited;

  SQLConfigGeral.Close;
  SQLConfigGeral.Open;
  SQLConfigVenda.Close;
  SQLConfigVenda.Open;
  SQLUsuario.Close;
  SQLUsuario.Open;
  SQLTerminalAtivo.Close;
  SQLTerminalAtivo.Open;

  DataSistema := ExecSql('select current_timestamp from rdb$relations').fieldbyname('current_timestamp').AsDateTime;
  DataSistema := StrToDate(FormatDateTime('dd/mm/yyyy', DataSistema));
  GetDataValidadeSistema;
end;

procedure TDM.GetDataValidadeSistema;
var
  Data: TDateTime;
  DiasVencimento: integer;
begin

  OBSAutorizacao := '';
  if SQLConfigGeralCFGEDBLOQ.AsDateTime < DataSistema then
  begin
    GetDataValidadeSistemaWebApi;
  end;

  SQLConfigGeral.Edit;

  if not vSEM_INTERNET then
    Dm.SQLConfigGeralDATA_INI_SEM_NET.Clear
  else begin
    if Dm.SQLConfigGeralDATA_INI_SEM_NET.IsNull then
      Dm.SQLConfigGeralDATA_INI_SEM_NET.AsDateTime := DataSistema;
  end;

  if SQLConfigGeralCFGEDBLOQ.AsDateTime < DataSistema then
    SQLConfigGeralCFGECBLOQ.Value := 'S'
  else begin
    SQLConfigGeralCFGECBLOQ.Value := '';

    if SQLConfigGeralDIAS_AVISO.Value > 0 then
    begin
      DiasVencimento := DaysBetween(SQLConfigGeralCFGEDBLOQ.AsDateTime, DataSistema);

      if SQLConfigGeralDIAS_AVISO.Value >= DiasVencimento then
      begin
        if DiasVencimento = 1 then
          OBSAutorizacao := '01 dia'
        else
          OBSAutorizacao := FormatFloat('00', DiasVencimento) + ' dias '; // - Falta '+FormatFloat('00', DiasVencimento)+' dias;
      end;
    end;

  end;
  SQLConfigGeral.Post;
end;

procedure TDM.GetDataValidadeSistemaWebApi;
var
  Data: TDate;
  xhttp: string;
begin
  if not SQLEmpresa.Active then
    SQLEmpresa.Open;

  cdsAPIAutorizacao.Close;
  cdsAPIAutorizacao.CreateDataSet;

  xhttp := 'http://200.98.202.84/Automafour/api/cad_pessoa/documento/'
    + SQLEmpresaEMPRA14CGC.AsString;

  //xhttp:= 'http://localhost:51308/api/cad_pessoa/documento/83125841020';

  try
    try
      RestClient.Resource(xhttp).Accept(RestUtils.MediaType_Json).GetAsDataSet(cdsAPIAutorizacao);
    except
      on E: Exception do
      begin         
        // E.message
        vSEM_INTERNET := True;
        exit;
      end;
    end;

    if cdsAPIAutorizacao.Active then
    begin
      if cdsAPIAutorizacaoDATA_AUTORIZACAO.AsString <> '' then
      begin
        Data := StrToDate(copy(cdsAPIAutorizacaoDATA_AUTORIZACAO.value, 9, 2) + '/' + copy(cdsAPIAutorizacaoDATA_AUTORIZACAO.value, 6, 2)
          + '/' + copy(cdsAPIAutorizacaoDATA_AUTORIZACAO.value, 1, 4));

        SQLConfigGeral.Edit;
        SQLConfigGeralCFGEDBLOQ.Value := Data;
        SQLConfigGeralDIAS_AVISO.AsInteger := StrToIntDef(cdsAPIAutorizacaoDIAS_AVISO.AsString, 0);
        SQLConfigGeral.Post;
      end
    end;

  finally
    if not((DM.vSEM_INTERNET)and((DM.DataSistema-DM.SQLConfigGeralDATA_INI_SEM_NET.AsDateTime) <= 7)) then
    if ((not cdsAPIAutorizacao.Active) or (cdsAPIAutorizacaoDATA_AUTORIZACAO.AsString = ''))and(not DelphiAberto) then
    begin
      FormTelaAtivacao := TFormTelaAtivacao.Create(Application);
      FormTelaAtivacao.lblMensagem.Font.Size := 17;
      FormTelaAtivacao.lblMensagem.Caption := 'Cadastro não encontrado na Base de Dados da Automafour!';
      FormTelaAtivacao.ShowModal;
      Application.terminate;
      Abort;
    end;
  end;

end;

procedure TDM.Inicia_NFeCAD;
begin
 {$IFDEF ACBrNFeOpenSSL}
    ACBrNFeCad.Configuracoes.Certificados.ArquivoPFX  := sqlEmpresa.FieldByName('EMPRA100CERTIFSERIE').AsString;
    ACBrNFeCad.Configuracoes.Certificados.Certificado := sqlEmpresa.FieldByName('EMPRA100CERTIFSERIE').AsString;
    ACBrNFeCad.Configuracoes.Certificados.Senha       := sqlEmpresa.FieldByName('EMPRA35CERTIFSENHA').AsString;
  {$ELSE}
    ACBrNFeCad.Configuracoes.Certificados.NumeroSerie  := sqlEmpresa.FieldByName('EMPRA100CERTIFSERIE').AsString;
    ACBrNFeCad.Configuracoes.Certificados.Senha        := sqlEmpresa.FieldByName('EMPRA35CERTIFSENHA').AsString;
  {$ENDIF}

end;

end.

