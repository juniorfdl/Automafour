unit DataModulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModuloTemplate, DB, DBTables, DBLists, RxQuery, UCrpe32;

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
    SQLConfigGeralEmpresaPadraoCalcField: TStringField;
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
    Report: TCrpe;
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
    TblPedidoCabPEDIDOORCAMENTO: TStringField;
    TblPedidoCabTotalGeral: TFloatField;
    TblPedidoCabEmitente_Email: TStringField;
    TblPedidoCabEmitente_URL: TStringField;
    TblPedidoCabEmitenteLogo: TBlobField;
    TblPedidoCabRota: TStringField;
    DSTblPedidoCab: TDataSource;
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
    DSTblPedidoItens: TDataSource;
    TblPedidoFinan: TTable;
    TblPedidoFinanPedICod: TStringField;
    TblPedidoFinanVencimento: TDateField;
    TblPedidoFinanValor: TFloatField;
    DSTblPedidoFinan: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CodTarefa, SerieAtualPedidos, VeiculoAtualPedidos, FretePorConta, PedidoVolume, PedidoEspecie,
    PedidoMarca, PedidoPesoB, PedidoPesoL, PedidoObs : String;
    GerandoPedidoVenda, InserindoItemPV, GerandoPedidoCompra, InserindoItemPC, GerandoNotaCompra, IncluindoGrade,ImportandoColetor,
    ImportandoPedidoCompra, InserindoItemNC, ProcurandoProduto, TrocarStatusPedidoParaFaturado : Boolean;
    ConfigEtiqueta, VendedorAtualPedidos, RotaAtualPedidos, TranspAtualPedidos :Integer;
    DataEntregaPedidos, DataEmissaoPedidos : TDate;
  end;

var
  DM: TDM;

implementation

uses TelaSplash;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FormSplash.lbDados.Caption := 'Abrindo Tabela de Usuarios...'; FormSplash.lbDados.Update;
  SQLUsuario.Open ;

  FormSplash.lbDados.Caption := 'Licença de uso Válida até => '+FormatDateTime('dd/mm/yyyy',SQLConfigGeralCFGEDBLOQ.Value) ; FormSplash.lbDados.Update;
  Sleep(1000);
  FormSplash.close;
end;

end.
