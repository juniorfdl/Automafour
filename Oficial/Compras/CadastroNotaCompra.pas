unit CadastroNotaCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxDBComb, DBCtrls, ToolEdit, RXDBCtrl, VarSys, FormResources,
  EDBNum, RxLookup, RDprint, CurrEdit, Serial, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel, DBClient;

type
  TFormCadastroNotaCompra = class(TFormCadastroTEMPLATE)
    SQLTemplateNOCPA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateNOCPICOD: TIntegerField;
    SQLTemplateFORNICOD: TIntegerField;
    SQLTemplateNOCPA4ANO: TStringField;
    SQLTemplateNOCPA5SERIE: TStringField;
    SQLTemplateNOCPA30NRO: TStringField;
    SQLTemplateNOCPCSTATUS: TStringField;
    SQLTemplatePDCPA13ID: TStringField;
    SQLTemplateOPESICOD: TIntegerField;
    SQLTemplateNOCPDCANCELAMENTO: TDateTimeField;
    SQLTemplatePLPGICOD: TIntegerField;
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplateNOCPDEMISSAO: TDateTimeField;
    SQLTemplateNOCPDRECEBIMENTO: TDateTimeField;
    SQLTemplateNOCPN3TOTITENS: TFloatField;
    SQLTemplateNOCPN3VLRTOTNOTA: TFloatField;
    SQLTemplateNOCPN3VLRBASCALICM: TFloatField;
    SQLTemplateNOCPN3VLRICMS: TFloatField;
    SQLTemplateNOCPN3VLRBCICMSSUB: TFloatField;
    SQLTemplateNOCPN3VLRICMSSUB: TFloatField;
    SQLTemplateNOCPN3VLRFRETE: TFloatField;
    SQLTemplateNOCPN3VLRSEGURO: TFloatField;
    SQLTemplateNOCPN3VLROUTRADESP: TFloatField;
    SQLTemplateNOCPN3VLRIPI: TFloatField;
    SQLTemplateNOCPN3VLRDESC: TFloatField;
    SQLTemplateCFOPA5COD: TStringField;
    SQLTemplateNOCPN3PERCICMSFRET: TFloatField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    ComboStatus: TRxDBComboBox;
    Label10: TLabel;
    DBEdit9: TDBDateEdit;
    Label11: TLabel;
    DBEdit10: TDBDateEdit;
    Label6: TLabel;
    DBEditPC: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label23: TLabel;
    DBMemoObs: TDBMemo;
    SQLTemplateTRANICOD: TIntegerField;
    SQLTemplateNOCPA5TIPOFRETE: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    SQLEmpresaEMPRA2UF: TStringField;
    SQLFornecedor: TRxQuery;
    SQLFornecedorFORNICOD: TIntegerField;
    SQLFornecedorFORNA2UF: TStringField;
    SQLPlanoPagamento: TRxQuery;
    SQLPlanoPagamentoPLPGICOD: TIntegerField;
    SQLPlanoPagamentoPLPGA60DESCR: TStringField;
    SQLTransportadora: TRxQuery;
    SQLTransportadoraTRANICOD: TIntegerField;
    SQLTemplateFornecedorUFLookUp: TStringField;
    SQLTemplateTransportadoraLookup: TStringField;
    SQLTemplateEmpresaLookup: TStringField;
    SQLTemplateEmpresaUFLookUp: TStringField;
    SQLTemplatePlanoPagamentoLookUp: TStringField;
    SQLOperacaoEstoque: TRxQuery;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    SQLTemplateOperacaoEstoqueLookUp: TStringField;
    SQLPlanoContas: TRxQuery;
    SQLPlanoContasPLCTA15COD: TStringField;
    SQLPlanoContasPLCTA60DESCR: TStringField;
    SQLTemplateContaLookUp: TStringField;
    DBEdit11: TEvDBNumEdit;
    DBEdit12: TEvDBNumEdit;
    SQLTemplateNOCPN3TOTDESC: TFloatField;
    SQLTemplateNOCPN3SOMAITENS: TFloatField;
    Label28: TLabel;
    EvDBNumEdit1: TEvDBNumEdit;
    SQLNotaCompraItens: TRxQuery;
    SQLProduto: TRxQuery;
    SQLEstoqueAtual: TRxQuery;
    SQLEstoqueAtualPRODICOD: TIntegerField;
    SQLEstoqueAtualQTDEATUAL: TFloatField;
    SQLEstoqueAtualCUSTOATUAL: TFloatField;
    BtnPedidos: TSpeedButton;
    SQLTransportadoraTRANA60RAZAOSOC: TStringField;
    SQLFornecedorFORNA60RAZAOSOC: TStringField;
    EtiquetasdeCodigodeBarras1: TMenuItem;
    Button4: TRxSpeedButton;
    SQLAtualizaItemPedido: TRxQuery;
    SQLNotaParcelas: TRxQuery;
    AtualizaContasPagarPC: TRxQuery;
    SQLPedidoCompra: TRxQuery;
    SQLTemplateNOCPA254OBS: TMemoField;
    SQLEstoqueAtualCOMPRAATUAL: TFloatField;
    DSSQLOperacaoEstoque: TDataSource;
    DSSQLFornecedor: TDataSource;
    DSSQLTransportadora: TDataSource;
    DSSQLPlanoPagto: TDataSource;
    DSSQLPlanoContas: TDataSource;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    GroupBox1: TGroupBox;
    Label24: TLabel;
    ComboOperacaoEstoque: TRxDBLookupCombo;
    Label14: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit13: TEvDBNumEdit;
    DBEdit15: TEvDBNumEdit;
    DBEdit17: TEvDBNumEdit;
    DBEdit18: TEvDBNumEdit;
    DBEdit19: TEvDBNumEdit;
    DBEdit20: TEvDBNumEdit;
    DBEdit21: TEvDBNumEdit;
    Label30: TLabel;
    DBEdit22: TEvDBNumEdit;
    Label15: TLabel;
    DBEdit14: TEvDBNumEdit;
    Label17: TLabel;
    DBEdit16: TEvDBNumEdit;
    SQLOperacaoEstoqueOPESCENTRADASAIDA: TStringField;
    SQLOperacaoEstoqueOPESCORIGEMDESTINO: TStringField;
    DSSQLEmpresa: TDataSource;
    SQLTemplateEMPRICODDEST: TIntegerField;
    SQLTemplateDescr_FornEmprCli: TStringField;
    SQLParcelas: TRxQuery;
    DSSQLParcelas: TDataSource;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateUSUAA60LOGIN: TStringField;
    SQLTemplateCod_FornEmprCli: TStringField;
    Button6: TRxSpeedButton;
    SQLVeiculo: TRxQuery;
    Label26: TLabel;
    ComboFrete: TRxDBComboBox;
    SQLFornecedorFORNA14CGC: TStringField;
    LBFornEmpr: TLabel;
    ComboFornecedor: TRxDBLookupCombo;
    BtnFornecedor: TSpeedButton;
    Label27: TLabel;
    ComboTransportadora: TRxDBLookupCombo;
    BtnTransportadora: TSpeedButton;
    Label36: TLabel;
    DBEdit7: TDBEdit;
    SQLGeral: TRxQuery;
    SQLTemplateCliFornEmpEstadoLookUp: TStringField;
    SQLOperacaoEstoqueCFOPA5CODDENTROUF: TStringField;
    SQLOperacaoEstoqueCFOPA5CODFORAUF: TStringField;
    MnADMListConfEntrada: TMenuItem;
    TblNotaCompra: TTable;
    TblNotaCompraItem: TTable;
    BatchMove: TBatchMove;
    TblNotaCompraNOCPA13ID: TStringField;
    TblNotaCompraNOCPA4ANO: TStringField;
    TblNotaCompraNOCPA5SERIE: TStringField;
    TblNotaCompraNOCPA30NRO: TStringField;
    TblNotaCompraNOCPCSTATUS: TStringField;
    TblNotaCompraNOCPDCANCELAMENTO: TDateTimeField;
    TblNotaCompraNOCPDEMISSAO: TDateTimeField;
    TblNotaCompraNOCPDRECEBIMENTO: TDateTimeField;
    TblNotaCompraNOCPN3TOTITENS: TFloatField;
    TblNotaCompraNOCPN3VLRTOTNOTA: TFloatField;
    TblNotaCompraNOCPN3VLRBASCALICM: TFloatField;
    TblNotaCompraNOCPN3VLRICMS: TFloatField;
    TblNotaCompraNOCPN3VLRBCICMSSUB: TFloatField;
    TblNotaCompraNOCPN3VLRICMSSUB: TFloatField;
    TblNotaCompraNOCPN3VLRFRETE: TFloatField;
    TblNotaCompraNOCPN3VLRSEGURO: TFloatField;
    TblNotaCompraNOCPN3VLROUTRADESP: TFloatField;
    TblNotaCompraNOCPN3VLRIPI: TFloatField;
    TblNotaCompraNOCPN3VLRDESC: TFloatField;
    TblNotaCompraCFOPA5COD: TStringField;
    TblNotaCompraNOCPN3PERCICMSFRET: TFloatField;
    TblNotaCompraNOCPA5TIPOFRETE: TStringField;
    TblNotaCompraNOCPN3TOTDESC: TFloatField;
    TblNotaCompraNOCPN3SOMAITENS: TFloatField;
    TblNotaCompraNOCPA254OBS: TMemoField;
    TblNotaCompraEMPRICODDEST: TIntegerField;
    TblNotaCompraUSUAA60LOGIN: TStringField;
    TblNotaCompraOperacaoEstoqueLookup: TStringField;
    TblNotaCompraPlanoPagamentoLookup: TStringField;
    TblNotaCompraTransportadoraLookup: TStringField;
    TblNotaCompraDescr_FornEmprCli: TStringField;
    SQLNotaCompraItensNOCPA13ID: TStringField;
    SQLNotaCompraItensNOCIIITEM: TIntegerField;
    SQLNotaCompraItensPRODICOD: TIntegerField;
    SQLNotaCompraItensNOCIN3QTDBONIF: TFloatField;
    SQLNotaCompraItensNOCIN3CAPEMBAL: TFloatField;
    SQLNotaCompraItensNOCIN3QTDEMBAL: TFloatField;
    SQLNotaCompraItensNOCIN3QTDEPED: TFloatField;
    SQLNotaCompraItensNOCIN3TOTPED: TFloatField;
    SQLNotaCompraItensNOCIN3VLRDESC: TFloatField;
    SQLNotaCompraItensNOCIN3PERCDESC: TFloatField;
    SQLNotaCompraItensNOCIN3VLRICMS: TFloatField;
    SQLNotaCompraItensNOCIN3PERCICMS: TFloatField;
    SQLNotaCompraItensNOCIN3VLRSUBST: TFloatField;
    SQLNotaCompraItensNOCIN3VLRIPI: TFloatField;
    SQLNotaCompraItensNOCIN3PERCIPI: TFloatField;
    SQLNotaCompraItensNOCIN3VLRCUSTOMED: TFloatField;
    SQLNotaCompraItensNOCIN3VLRFRETE: TFloatField;
    SQLNotaCompraItensPDCPA13ID: TStringField;
    SQLNotaCompraItensPCITIPOS: TIntegerField;
    SQLNotaCompraItensPENDENTE: TStringField;
    SQLNotaCompraItensREGISTRO: TDateTimeField;
    SQLNotaCompraItensLOTEA30NRO: TStringField;
    SQLNotaCompraItensNOCIN2ITENSENVIADOS: TFloatField;
    SQLNotaCompraItensNOCIN2VLRCOMISSAO: TFloatField;
    SQLNotaCompraItensPRODA60DESCR: TStringField;
    SQLNotaCompraItensPRODA60REFER: TStringField;
    TblNotaCompraItemNOCPA13ID: TStringField;
    TblNotaCompraItemNOCIIITEM: TIntegerField;
    TblNotaCompraItemPRODICOD: TIntegerField;
    TblNotaCompraItemNOCIN3QTDBONIF: TFloatField;
    TblNotaCompraItemNOCIN3CAPEMBAL: TFloatField;
    TblNotaCompraItemNOCIN3QTDEMBAL: TFloatField;
    TblNotaCompraItemNOCIN3QTDEPED: TFloatField;
    TblNotaCompraItemNOCIN3TOTPED: TFloatField;
    TblNotaCompraItemNOCIN3VLREMBAL: TFloatField;
    TblNotaCompraItemNOCIN3VLRUNIT: TFloatField;
    TblNotaCompraItemNOCIN3VLRDESC: TFloatField;
    TblNotaCompraItemNOCIN3PERCDESC: TFloatField;
    TblNotaCompraItemNOCIN3VLRICMS: TFloatField;
    TblNotaCompraItemNOCIN3PERCICMS: TFloatField;
    TblNotaCompraItemNOCIN3VLRSUBST: TFloatField;
    TblNotaCompraItemNOCIN3VLRIPI: TFloatField;
    TblNotaCompraItemNOCIN3PERCIPI: TFloatField;
    TblNotaCompraItemNOCIN3VLRCUSTOMED: TFloatField;
    TblNotaCompraItemNOCIN3VLRFRETE: TFloatField;
    TblNotaCompraItemPDCPA13ID: TStringField;
    TblNotaCompraItemPCITIPOS: TIntegerField;
    TblNotaCompraItemPENDENTE: TStringField;
    TblNotaCompraItemREGISTRO: TDateTimeField;
    TblNotaCompraItemLOTEA30NRO: TStringField;
    TblNotaCompraItemNOCIN2ITENSENVIADOS: TFloatField;
    TblNotaCompraItemNOCIN2VLRCOMISSAO: TFloatField;
    TblNotaCompraItemPRODA60DESCR: TStringField;
    TblNotaCompraItemPRODA60REFER: TStringField;
    TblNotaCompraParcelas: TTable;
    SQLParcelasCTPGA13ID: TStringField;
    SQLParcelasEMPRICOD: TIntegerField;
    SQLParcelasCTPGICOD: TIntegerField;
    SQLParcelasFORNICOD: TIntegerField;
    SQLParcelasPLCTA15COD: TStringField;
    SQLParcelasCTPGA20DOCORIG: TStringField;
    SQLParcelasCTPGINROPARC: TIntegerField;
    SQLParcelasCTPGDTEMIS: TDateTimeField;
    SQLParcelasCTPGDVENC: TDateTimeField;
    SQLParcelasCTPGN3VLR: TFloatField;
    SQLParcelasTPDCICOD: TIntegerField;
    SQLParcelasCTPGA5TIPOPADRAO: TStringField;
    SQLParcelasNOCPA13ID: TStringField;
    SQLParcelasPORTICOD: TIntegerField;
    SQLParcelasCTPGDULTPAGTO: TDateTimeField;
    SQLParcelasCTPGN2TOTPAG: TFloatField;
    SQLParcelasCTPGN3JUROPAGTO: TFloatField;
    SQLParcelasCTPGN3MULTAPAGTO: TFloatField;
    SQLParcelasCTPGN3DESCPAGTO: TFloatField;
    SQLParcelasCTPGN2DESCPROMO: TFloatField;
    SQLParcelasPDCPA13ID: TStringField;
    SQLParcelasCTPGCPREVREAL: TStringField;
    SQLParcelasCTPGN3TXJURO: TFloatField;
    SQLParcelasCTPGN3TXMULTA: TFloatField;
    SQLParcelasPENDENTE: TStringField;
    SQLParcelasREGISTRO: TDateTimeField;
    SQLParcelasCTPGA254HIST: TStringField;
    SQLParcelasNOCPA30NRO: TStringField;
    SQLParcelasCQEMA13ID: TStringField;
    SQLParcelasHTPDICOD: TIntegerField;
    SQLParcelasPLCTA15CODCREDITO: TStringField;
    SQLParcelasCTPGDRECBTO: TDateTimeField;
    TblNotaCompraParcelasCTPGA13ID: TStringField;
    TblNotaCompraParcelasEMPRICOD: TIntegerField;
    TblNotaCompraParcelasCTPGICOD: TIntegerField;
    TblNotaCompraParcelasFORNICOD: TIntegerField;
    TblNotaCompraParcelasPLCTA15COD: TStringField;
    TblNotaCompraParcelasCTPGA20DOCORIG: TStringField;
    TblNotaCompraParcelasCTPGINROPARC: TIntegerField;
    TblNotaCompraParcelasCTPGDTEMIS: TDateTimeField;
    TblNotaCompraParcelasCTPGDVENC: TDateTimeField;
    TblNotaCompraParcelasCTPGN3VLR: TFloatField;
    TblNotaCompraParcelasTPDCICOD: TIntegerField;
    TblNotaCompraParcelasCTPGA5TIPOPADRAO: TStringField;
    TblNotaCompraParcelasNOCPA13ID: TStringField;
    TblNotaCompraParcelasPORTICOD: TIntegerField;
    TblNotaCompraParcelasCTPGDULTPAGTO: TDateTimeField;
    TblNotaCompraParcelasCTPGN2TOTPAG: TFloatField;
    TblNotaCompraParcelasCTPGN3JUROPAGTO: TFloatField;
    TblNotaCompraParcelasCTPGN3MULTAPAGTO: TFloatField;
    TblNotaCompraParcelasCTPGN3DESCPAGTO: TFloatField;
    TblNotaCompraParcelasCTPGN2DESCPROMO: TFloatField;
    TblNotaCompraParcelasPDCPA13ID: TStringField;
    TblNotaCompraParcelasCTPGCPREVREAL: TStringField;
    TblNotaCompraParcelasCTPGN3TXJURO: TFloatField;
    TblNotaCompraParcelasCTPGN3TXMULTA: TFloatField;
    TblNotaCompraParcelasPENDENTE: TStringField;
    TblNotaCompraParcelasREGISTRO: TDateTimeField;
    TblNotaCompraParcelasCTPGA254HIST: TStringField;
    TblNotaCompraParcelasNOCPA30NRO: TStringField;
    TblNotaCompraParcelasCQEMA13ID: TStringField;
    TblNotaCompraParcelasHTPDICOD: TIntegerField;
    TblNotaCompraParcelasPLCTA15CODCREDITO: TStringField;
    TblNotaCompraParcelasCTPGDRECBTO: TDateTimeField;
    TblNotaCompraEmpresaLookup: TStringField;
    Button5: TRxSpeedButton;
    TabMovEstoque: TTabSheet;
    DBGrid1: TDBGrid;
    SQLMovEstoque: TRxQuery;
    DSSQLMovEstoque: TDataSource;
    SQLMovEstoqueEMPRICOD: TIntegerField;
    SQLMovEstoqueMVESDMOV: TDateTimeField;
    SQLMovEstoqueOPESA60DESCR: TStringField;
    SQLMovEstoquePRODICOD: TIntegerField;
    SQLMovEstoquePRODA60REFER: TStringField;
    SQLMovEstoquePRODA60CODBAR: TStringField;
    SQLMovEstoqueNOCPDEMISSAO: TDateTimeField;
    SQLMovEstoqueNOCPDRECEBIMENTO: TDateTimeField;
    SQLMovEstoqueProdutoLookup: TStringField;
    PanelPesquisa: TPanel;
    BTNLocalizar: TSpeedButton;
    ComboFornecedorConsulta: TRxDBLookupCombo;
    SQLNotaCompraItensNOCIN2FATOR199: TFloatField;
    SQLNotaCompraItensNOCIN2MGVENDA: TFloatField;
    SQLNotaCompraItensNOCIN2QTDENF: TFloatField;
    SQLNotaCompraItensNOCIN2VLRVENDA: TFloatField;
    SQLNotaCompraItensNOCIN2MGVENDA2: TFloatField;
    SQLNotaCompraItensNOCIN2VLRVENDA2: TFloatField;
    RDPrintRelDep: TRDprint;
    TblNotaCompraItemNOCIN2FATOR199: TFloatField;
    TblNotaCompraItemNOCIN2MGVENDA: TFloatField;
    TblNotaCompraItemNOCIN2QTDENF: TFloatField;
    TblNotaCompraItemNOCIN2VLRVENDA: TFloatField;
    TblNotaCompraItemNOCIN2MGVENDA2: TFloatField;
    TblNotaCompraItemNOCIN2VLRVENDA2: TFloatField;
    Label8: TLabel;
    EvDBNumEdit2: TEvDBNumEdit;
    SQLTemplateNOCPN3VLRISENTO: TFloatField;
    MnEncerrarNotaSequencia: TMenuItem;
    Label37: TLabel;
    EvDBNumEdit3: TEvDBNumEdit;
    SQLTemplateEMPRN2VLRFUNDOPROMO: TFloatField;
    MnApresentarMediaCompras: TMenuItem;
    SQLNotaCompraItensNOCIN2PERCDESP: TFloatField;
    SQLNotaCompraItensNOCIN2PERCDIFICM: TFloatField;
    SQLTemplateNOCPN2VLROUTRAS: TFloatField;
    Label39: TLabel;
    EvDBNumEdit4: TEvDBNumEdit;
    MnListProdutosaltpreco: TMenuItem;
    SQLNotaCompraItensNOCIN2PERCSUBST: TFloatField;
    SQLNotaCompraItensNOCICALTPRECO: TStringField;
    TblNotaCompraItemNOCICALTPRECO: TStringField;
    TblItenscomPrecosAlterados: TTable;
    TblItenscomPrecosAlteradosNOCICALTPRECO: TStringField;
    TblItenscomPrecosAlteradosPRODICOD: TIntegerField;
    TblItenscomPrecosAlteradosPRODA60DESCR: TStringField;
    TblItenscomPrecosAlteradosQUANT: TFloatField;
    TblItenscomPrecosAlteradosVLRVENDA: TFloatField;
    TblItenscomPrecosAlteradosCDBarras: TStringField;
    SQLCodBarras: TRxQuery;
    SQLCodBarrasPRODICOD: TIntegerField;
    SQLCodBarrasPRBAA15BARRAS: TStringField;
    EtiquetasGondolaProdutoPrecoAlterado: TMenuItem;
    TblEtiquetas: TTable;
    TblEtiquetasContador: TAutoIncField;
    TblEtiquetasProdutoCodigo: TIntegerField;
    TblEtiquetasCodigoBarras: TStringField;
    TblEtiquetasREFERENCIA: TStringField;
    TblEtiquetasDescricao: TStringField;
    TblEtiquetasPreco: TFloatField;
    TblEtiquetasTamanho: TStringField;
    TblEtiquetasDescricaoReduzida: TStringField;
    TblEtiquetasCodigoEstrut: TStringField;
    TblEtiquetasMarca: TStringField;
    TblEtiquetasDtUltEntr: TDateField;
    TblEtiquetasCustFant: TStringField;
    TblEtiquetasParcPlanos: TMemoField;
    TblEtiquetasCor: TStringField;
    TblEtiquetasQuant: TIntegerField;
    TblEtiquetasProdutoCodigoAntigo: TStringField;
    TblEtiquetasLote: TStringField;
    TblEtiquetasPrateleira: TStringField;
    TblEtiquetasPavimento: TStringField;
    TblEtiquetasRua: TStringField;
    TblEtiquetasDimensao: TStringField;
    TblEtiquetasInfo01EtqBarras: TStringField;
    TblEtiquetasInfo02EtqBarras: TStringField;
    TblEtiquetasUnidade: TStringField;
    TblItenscomPrecosAlteradosNOCPA13ID: TStringField;
    Label38: TLabel;
    DBEdit1: TDBEdit;
    SQLOperacaoEstoqueOPESCGERAFINANCEIRO: TStringField;
    Label40: TLabel;
    EditCNPJ: TMaskEdit;
    MnAtualizaProdSemEncerrarNotas: TMenuItem;
    MnListagemdeProdutosDigitados: TMenuItem;
    MnReabrirNotaCancelada: TMenuItem;
    TblEmpresa: TRxQuery;
    DSTblEmpresa: TDataSource;
    ComboEmpresa: TRxDBLookupCombo;
    Label41: TLabel;
    SQLTemplateEMPRICODDESTCOMPRA: TIntegerField;
    EditFilial: TMaskEdit;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    DBEdit3: TDBEdit;
    SQLTemplatePLCTA15CODCRED: TStringField;
    SQLTemplatePLCTA15CODDEB: TStringField;
    SQLTemplateNOCPCEXPCONTABIL: TStringField;
    SQLTemplateNOCPN3VLRCOFINS: TFloatField;
    SQLTemplateNOFIA15PROTOCOLO: TStringField;
    SQLTemplateNOFIA44CHAVEACESSO: TStringField;
    SQLTemplateNOFIA5CODRETORNO: TStringField;
    SQLTemplateNOFITRETORNO: TStringField;
    SQLTemplateNOCPN3VLRPIS: TFloatField;
    SQLNotaCompraItensCFOPA5CODAUX: TStringField;
    SQLNotaCompraItensNOCA3CSTCOFINS: TStringField;
    SQLNotaCompraItensNOCIA3CSTICMS: TStringField;
    SQLNotaCompraItensNOCA3CSTIPI: TStringField;
    SQLNotaCompraItensNOCA3CSTPIS: TStringField;
    SQLNotaCompraItensNOCIN2BASECOFINS: TFloatField;
    SQLNotaCompraItensNOCIN2BASEISS: TFloatField;
    SQLNotaCompraItensNOCIN2BASEPIS: TFloatField;
    SQLNotaCompraItensNOCIN2PCREDSN: TFloatField;
    SQLNotaCompraItensNOCIN2PERCCOFINS: TFloatField;
    SQLNotaCompraItensNOCIN2PERCISS: TFloatField;
    SQLNotaCompraItensNOCIN2PERCPIS: TFloatField;
    SQLNotaCompraItensNOCIN2PMVAST: TFloatField;
    SQLNotaCompraItensNOCIN2PREDBC: TFloatField;
    SQLNotaCompraItensNOCIN2PREDBCST: TFloatField;
    SQLNotaCompraItensNOCIN2VBC: TFloatField;
    SQLNotaCompraItensNOCIN2VBCIPI: TFloatField;
    SQLNotaCompraItensNOCIN2VBCST: TFloatField;
    SQLNotaCompraItensNOCIN2VBCSTRET: TFloatField;
    SQLNotaCompraItensNOCIN2VCREDICMSSN: TFloatField;
    SQLNotaCompraItensNOCIN2VICMSSTRET: TFloatField;
    SQLNotaCompraItensNOCIN2VLRCOFINS: TFloatField;
    SQLNotaCompraItensNOCIN2VLRDESPESAS: TFloatField;
    SQLNotaCompraItensNOCIN2VLRISS: TFloatField;
    SQLNotaCompraItensNOCIN2VLRPIS: TFloatField;
    SQLNotaCompraItensNOCIN2VLRSEGURO: TFloatField;
    SQLNotaCompraItensNOCN4COFINSQTD: TFloatField;
    SQLNotaCompraItensNOCN4COFINSREAL: TFloatField;
    SQLNotaCompraItensNOCN4PISQTD: TFloatField;
    SQLNotaCompraItensNOCN4PISREAL: TFloatField;
    SQLNotaCompraItensNOCN4QTDIPI: TFloatField;
    SQLNotaCompraItensNOCN4UNDIPI: TFloatField;
    SQLNotaCompraItensNOCIN3VLREMBAL: TFloatField;
    SQLNotaCompraItensNOCIN3VLRUNIT: TFloatField;
    SomenteparaAjustes1: TMenuItem;
    ReabrirNotaEncerradanomovimentestoque1: TMenuItem;
    FecharNotaAbertaNoMovimentaEstoque1: TMenuItem;
    BtnPlanoContas: TSpeedButton;
    ComboPlanoContas: TRxDBLookupCombo;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    SQLTemplateNOCPCFRETEMANUAL: TStringField;
    DBCheckFreteManual: TDBCheckBox;
    N1: TMenuItem;
    MnRecalcularFretenosItens: TMenuItem;
    SQLNotaCompraItensNOCIN3PERCFRETE: TFloatField;
    ProgressBar: TProgressBar;
    cdsProdutos: TClientDataSet;
    cdsProdutosPRODICOD: TIntegerField;
    cdsProdutosQUANTIDADE: TFloatField;
    SQLParcelasDATA_PREVISTA: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplatePDCPA13IDChange(Sender: TField);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure FormCadastroPedidoCompraCancelarNotadeCompra1Click(
      Sender: TObject);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure BtnTransportadoraClick(Sender: TObject);
    procedure BtnFornecedorClick(Sender: TObject);
    procedure DBEditPCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnPedidosClick(Sender: TObject);
    procedure EtiquetasdeCodigodeBarras1Click(Sender: TObject);
    procedure SQLPedidoCompraBeforeDelete(DataSet: TDataSet);
    procedure DBEdit11Exit(Sender: TObject);
    procedure BtnPlanoContasClick(Sender: TObject);
    procedure SQLTemplateAfterInsert(DataSet: TDataSet);
    procedure ComboFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboPlanoContasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboTransportadoraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplatePLPGICODChange(Sender: TField);
    procedure SQLParcelasNewRecord(DataSet: TDataSet);
    procedure SQLParcelasBeforePost(DataSet: TDataSet);
    procedure SQLParcelasAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MnADMListConfEntradaClick(Sender: TObject);
    procedure SQLMovEstoqueCalcFields(DataSet: TDataSet);
    procedure BTNLocalizarClick(Sender: TObject);
    procedure MnEncerrarNotaSequenciaClick(Sender: TObject);
    procedure MnListProdutosaltprecoClick(Sender: TObject);
    procedure EtiquetasGondolaProdutoPrecoAlteradoClick(Sender: TObject);
    procedure MnApresentarMediaComprasClick(Sender: TObject);
    procedure MnAtualizaProdSemEncerrarNotasClick(Sender: TObject);
    procedure SQLTemplateFORNICODChange(Sender: TField);
    procedure MnListagemdeProdutosDigitadosClick(Sender: TObject);
    procedure MnReabrirNotaCanceladaClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit12Enter(Sender: TObject);
    procedure ReabrirNotaEncerradanomovimentestoque1Click(Sender: TObject);
    procedure FecharNotaAbertaNoMovimentaEstoque1Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure MnRecalcularFretenosItensClick(Sender: TObject);
  private
    { Private declarations }
    PedidoAnterior, PedidoNovo, StatusAnterior, StatusNovo:String;
    CancelandoNota, CallDetail, EncerrandoemSequencia, fDandoPost :Boolean;
    BkpEmpresaCorrente :Integer;
    function CommaToPoint(Value : Double) : String;
    Function VerificaCFOPs:Boolean;
  public
  ImportandoPedido : Boolean;
    { Public declarations }
  end;

var
  FormCadastroNotaCompra: TFormCadastroNotaCompra;

implementation

uses CadastroNotaCompraItem, TelaImportacaoPedidoCompra, DataModulo, UnitLibrary,
  CadastroTransportadora, CadastroFornecedor, CadastroPlanoPagamento, CadastroPedidoCompra,
  TelaEmissaoEtiquetasCodigoBarras, CadastroNotaCompraFinanceiro, TelaConsultaPlanoContasDebitos,
  TelaConsultaCliente, WaitWindow, DataModuloTemplate, RelatorioMediaComprasPeriodo;

{$R *.dfm}
procedure TFormCadastroNotaCompra.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'NOTACOMPRA';
  TblEmpresa.Open;

  if not DM.SQLConfigCompra.Active then
    DM.SQLConfigCompra.Open;

  cdsProdutos.CreateDataSet;
end;

procedure TFormCadastroNotaCompra.Button1Click(Sender: TObject);
begin
  inherited;
  If (Sender as TRxSpeedButton).Name='Button3' Then
    Begin
      DSMasterSys := DsTemplate;
      CriaFormulario(TFormCadastroNotaCompraItem,'FormCadastroNotaCompraItem',True,False,True,'Nota de Entrada Série/Nº ' + SQLTemplateNOCPA5SERIE.Value+'/'+SQLTemplateNOCPA30NRO.Value);
    End;

  If (Sender as TRxSpeedButton).Name='Button4' Then
    Begin
      DSMasterSys := DsTemplate;
      CriaFormulario(TFormCadastroNotaCompraFinanceiro,'FormCadastroNotaCompraFinanceiro',True,False,True,'Nota de Entrada Série/Nº ' + SQLTemplateNOCPA5SERIE.Value+'/'+SQLTemplateNOCPA30NRO.Value);
    End;

  If (Sender as TRxSpeedButton).Name='Button5' Then
    Begin
      SQLMovEstoque.Close;
      SQLMovEstoque.Open;
      PagePrincipal.ActivePage := TabMovEstoque;
    End;
end;

procedure TFormCadastroNotaCompra.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  PedidoAnterior                      := '';
  StatusAnterior                      := '';
  SQLTemplateNOCPCSTATUS.Value        := 'A';
  SQLTemplateNOCPA5TIPOFRETE.Value    := 'C';
  SQLTemplateNOCPDEMISSAO.Value       := Date;
  SQLTemplateNOCPDRECEBIMENTO.Value   := Date;
  SQLTemplateNOCPA4ANO.Value          := FormatDateTime('yyyy',Date);
  SQLTemplateNOCPN3TOTITENS.Value     := 0;
  SQLTemplateNOCPN3VLRTOTNOTA.Value   := 0;
  SQLTemplateNOCPN3VLRBASCALICM.Value := 0;
  SQLTemplateNOCPN3VLRICMS.Value      := 0;
  SQLTemplateNOCPN3VLRBCICMSSUB.Value := 0;
  SQLTemplateNOCPN3VLRICMSSUB.Value   := 0;
  SQLTemplateNOCPN3VLRFRETE.Value     := 0;
  SQLTemplateNOCPN3VLRSEGURO.Value    := 0;
  SQLTemplateNOCPN3VLROUTRADESP.Value := 0;
  SQLTemplateNOCPN3VLRIPI.Value       := 0;
  SQLTemplateNOCPN3VLRDESC.Value      := 0;
  SQLTemplateNOCPN3PERCICMSFRET.Value := 0;
  SQLTemplateNOCPN3TOTDESC.Value      := 0;
  SQLTemplateNOCPN3SOMAITENS.Value    := 0;
  SQLTemplateNOCPN3VLRISENTO.Value    := 0;
  SQLTemplateEMPRICOD.Value           := EmpresaCorrente;
  SQLTemplateEMPRICODDESTCOMPRA.Value := EmpresaCorrente;
  SQLTemplateOPESICOD.AsVariant       := Dm.SQLConfigCompra.fieldbyname('CFCOITIPMOVNFE').AsVariant;
  SQLTemplateUSUAA60LOGIN.AsString    := UsuarioAtualNome;
end;

procedure TFormCadastroNotaCompra.SQLTemplatePDCPA13IDChange(
  Sender: TField);
begin
  inherited;
  {se a nota foi importa pelo importador xml entao apenas fica o id do pedido compra para conferencia}
  If (SQLTemplateNOFIA44CHAVEACESSO.Value<>'') then
    begin
      ImportandoPedido := False;
      exit;
    end;

  If (SQLTemplate.FieldByName('PDCPA13ID').AsVariant <> null) and (SQLTemplate.State in dsEditModes) and (DM.ProcuraRegistro('PEDIDOCOMPRA',['PDCPA13ID'],[SQLTemplate.FieldByName('PDCPA13ID').AsString],1)) Then
    If DM.SQLTemplate.FindField('EMPRICODDEST').asInteger = EmpresaCorrente Then
      If DM.SQLTemplate.FindField('PDCPCSTATUS').asString = 'E' Then
        Begin
          SQLTemplate.FindField('FORNICOD').Asstring             := DM.SQLTemplate.FindField('FORNICOD').Asstring;
          SQLTemplate.FindField('TRANICOD').Asstring             := DM.SQLTemplate.FindField('TRANICOD').Asstring;
          SQLTemplate.FindField('NOCPA5TIPOFRETE').Asstring      := DM.SQLTemplate.FindField('PDCPA5TIPOFRETE').Asstring;
          SQLTemplate.FindField('NOCPN3VLROUTRADESP').asFloat    := DM.SQLTemplate.FindField('PDCPN2VLRENCARGO').asFloat;
          SQLTemplate.FindField('NOCPN3VLRFRETE').asFloat        := DM.SQLTemplate.FindField('PDCPN2VLRFRETE').asFloat;
          SQLTemplate.FindField('NOCPN3VLRDESC').asFloat         := DM.SQLTemplate.FindField('PDCPN2DESCPROM').asFloat;
          SQLTemplate.FindField('NOCPN3TOTITENS').asFloat        := DM.SQLTemplate.FindField('PDCPN2TOTITENS').asFloat;
          SQLTemplate.FindField('NOCPN3TOTDESC').asFloat         := DM.SQLTemplate.FindField('PDCPN3TOTDESC').asFloat;
          SQLTemplate.FindField('NOCPN3VLRTOTNOTA').asFloat      := DM.SQLTemplate.FindField('PDCPN2TOTITENS').asFloat - DM.SQLTemplate.FindField('PDCPN2DESCPROM').asFloat + DM.SQLTemplate.FindField('PDCPN2VLRENCARGO').asFloat+
                                                                    SQLTemplate.FindField('NOCPN3VLROUTRADESP').asFloat;
          SQLTemplate.FindField('PLPGICOD').Asstring             := DM.SQLTemplate.FindField('PLPGICOD').Asstring;
          if (DM.SQLConfigCompra.fieldbyname('CFCOCNIMPFINPEDCOMP').AsString = 'S') then
            ImportandoPedido := False
          else
            ImportandoPedido := True;
        End
      Else
        Begin
          If DM.SQLTemplate.FindField('PDCPCSTATUS').asString = 'A' Then
            ShowMessage('Este pedido de compra está em aberto!')
          Else
            ShowMessage('Este pedido de compra está cancelado!');
          Abort;
        End
    Else
      Begin
        ShowMessage('Este pedido de compra se destina a outra empresa!');
        Abort;
      End;
end;

procedure TFormCadastroNotaCompra.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  If (Sender as TDataSource).State in dsEditModes Then
    Begin
      DBEditPC.TabStop  := True;
      DBEditPC.ReadOnly := False;
      DBEditPC.Color    := clWindow;
    End
  Else
    Begin
      DBEditPC.TabStop  := False;
      DBEditPC.ReadOnly := True;
      DBEditPC.Color    := $00F7F0EA;
    End;
end;

procedure TFormCadastroNotaCompra.SQLTemplateBeforeEdit(DataSet: TDataSet);
begin
  If Not CancelandoNota Then
    If SQLTemplate.FindField('NOCPCSTATUS').asString='E' Then
      Begin
        ShowMessage('Nota Encerrada! Não pode ser alterada!');
        Abort;
      End;
  If Not CancelandoNota Then
    If SQLTemplate.FindField('NOCPCSTATUS').asString='C' Then
      Begin
        ShowMessage('Nota Cancelada! Não pode ser alterada!');
        Abort;
      End;
  inherited;
  StatusAnterior := SQLTemplate.FindField('NOCPCSTATUS').Value;
  PedidoAnterior := SQLTemplate.FindField('PDCPA13ID').asString;
end;

procedure TFormCadastroNotaCompra.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  If SQLTemplate.FindField('NOCPCSTATUS').asString<>'A' Then
    Begin
      ShowMessage('Exclusões somente são permitidas enquanto a nota de entrada está com o status de ''Aberta'', esta operação será cancelada!');
      Abort;
    End;
  inherited;
end;

procedure TFormCadastroNotaCompra.SQLTemplateBeforePost(DataSet: TDataSet);
Var
  Soma:Double;
  next : integer;
  UfFornec, xSerie, xInconsistencias : String;
begin
  //dm.Zdb.Connected := False;
  //dm.Zdb.Connected := True;

  if  SQLTemplateNOCPDEMISSAO.Value > SQLTemplateNOCPDRECEBIMENTO.Value then
    begin
      ShowMessage('ERRO: A data de emissão não pode ser superior a data do Recebimento!');
      Abort;
    end;

  if (DataSet.State in [DsInsert]) and (SQLTemplateFORNICOD.AsVariant <> Null) then
    if Dm.ProcuraRegistro('NOTACOMPRA',['NOCPA5SERIE','NOCPA30NRO','FORNICOD'],[SQLTemplateNOCPA5SERIE.AsString,SQLTemplateNOCPA30NRO.AsString,SQLTemplateFORNICOD.AsString],3) then
      begin
        while not Dm.SQLTemplate.Eof do
          begin
            if Dm.SQLTemplate.FieldByName('NOCPCSTATUS').AsString <> 'C' then
              begin
                Informa('ERRO: O número desta nota fiscal já foi incluido para este fornecedor !');
                Abort;
              end;
            Dm.SQLTemplate.Next;
          end;
      end;

  if (DataSet.State in [DsInsert]) and (SQLTemplateFORNICOD.AsVariant <> Null) then
    begin
      UfFornec := dm.SQLLocate('ICMSUF','ICMUA2UF','ICMUA2UF',''''+SQLFornecedorFORNA2UF.AsString+'''');
      if  UfFornec = '' then
        begin
          ShowMessage('ERRO: Este estado não consta no cadastro de ICMS por UF !');
          Abort;
        end;
    end;

  BkpEmpresaCorrente := EmpresaCorrente;
  EmpresaCorrente    := SQLTemplateEMPRICOD.AsInteger;
  If Not DM.InserindoItemNC Then
    Begin
      If (StatusAnterior = '') and (StatusAnterior<>SQLTemplate.FindField('NOCPCSTATUS').asString) Then
        If (SQLTemplate.FindField('NOCPCSTATUS').asString <> 'A') Then
          Begin
            ShowMessage('ERRO: Status Permitido: Aberta');
            EmpresaCorrente := BkpEmpresaCorrente;
            Abort;
          End;
      If (StatusAnterior = 'A')  and (StatusAnterior<>SQLTemplate.FindField('NOCPCSTATUS').asString) Then
        If (SQLTemplate.FindField('NOCPCSTATUS').asString <> 'E') Then
          Begin
            ShowMessage('ERRO: Status Permitido: Encerrada');
            EmpresaCorrente := BkpEmpresaCorrente;
            Abort;
          End
        Else
          if VerificaCFOPs = False then
          begin
            Abort;
            Exit;
          end;

      If ((SQLTemplate.FindField('NOCPCSTATUS').asString = 'E')) and (DM.SQLConfigCompra.FieldByName('CFCOCTESTAITENSNFE').Value='S') AND
      (FormatFloat('###0.00',SQLTemplateNOCPN3TOTITENS.asFloat-SQLTemplateNOCPN3TOTDESC.asFloat)<>FormatFloat('###0.00',SQLTemplateNOCPN3SOMAITENS.asFloat)) Then
        Begin
          if not Pergunta('NAO','Total de Itens ('+FormatFloat('#,##0.00',SQLTemplateNOCPN3TOTITENS.asFloat)+') <> Total dos Itens Digitados('+FormatFloat('#,##0.00',SQLTemplateNOCPN3SOMAITENS.asFloat)+')'+#13+#10+'Proceguir mesmo assim?') Then
          begin
            EmpresaCorrente := BkpEmpresaCorrente;
            Abort;
          end;
        End;
      If (StatusAnterior = 'E')  and (StatusAnterior<>SQLTemplate.FindField('NOCPCSTATUS').asString) Then
        If (SQLTemplate.FindField('NOCPCSTATUS').asString <> 'C') Then
          Begin
            ShowMessage('ERRO: Status Permitido: Cancelada');
            EmpresaCorrente := BkpEmpresaCorrente;
            Abort;
          End;
      PedidoNovo := SQLTemplate.FindField('PDCPA13ID').asString;
      StatusNovo := SQLTemplate.FindField('NOCPCSTATUS').asString;
      If (StatusNovo='E') and (StatusNovo<>StatusAnterior) Then
        Begin
          // Testar se falta alguma informação importante no Produto
          xInconsistencias := '';
          SQLNotaCompraItens.Close;
          SQLNotaCompraItens.MacroByName('MFiltro').AsString := 'NOCPA13ID = ''' + DataSet.FindField('NOCPA13ID').AsString + '''' ;
          SQLNotaCompraItens.Open;
          if SQLNotaCompraItens.IsEmpty then
            begin
              Informa('Nota Fiscal não possui itens lancados, impossível continuar !');
              Exit;
            end;
          SQLNotaCompraItens.First;
          while not SQLNotaCompraItens.eof do
            begin
              dm.zConsulta.Close;
              dm.zConsulta.sql.Clear;
              dm.zConsulta.sql.add('select icmsicod, unidicod, ncmicod, PRODN2PERCIPIENTRADA, PRODN3PERCIPI, PRODN2PERCSUBST, PRODN2PERCDESP, PRODN2PERCDIFICM from produto where prodicod = '+SQLNotaCompraItens.FindField('PRODICOD').AsString);
              dm.zConsulta.Open ;
              if dm.zConsulta.IsEmpty then
                xInconsistencias := 'Produto: '+SQLNotaCompraItens.FindField('PRODICOD').AsString+'. Não Encontrado no Cadastro de Produtos!';

              if dm.zConsulta.fieldbyname('icmsicod').IsNull then
                xInconsistencias := xInconsistencias + #13#10 +
                                    'Produto: '+SQLNotaCompraItens.FindField('PRODICOD').AsString+'. ICMS de Venda não Cadastrado!';
              if SQLLocate('ICMS','ICMSICOD','ICMSN2ALIQUOTA',dm.zConsulta.FieldByName('ICMSICOD').AsString) = '' then
                xInconsistencias := xInconsistencias + #13#10 +
                                    'Produto: '+SQLNotaCompraItens.FindField('PRODICOD').AsString+'. Aliquota do ICMS de Venda está Nulo!';

              if dm.zConsulta.fieldbyname('unidicod').IsNull then
                xInconsistencias := xInconsistencias + #13#10 +
                                    'Produto: '+SQLNotaCompraItens.FindField('PRODICOD').AsString+'. UNIDADE de Venda não Cadastrada!';
              if dm.zConsulta.fieldbyname('ncmicod').IsNull then
                xInconsistencias := xInconsistencias + #13#10 +
                                    'Produto: '+SQLNotaCompraItens.FindField('PRODICOD').AsString+'. NCM não Cadastrado!';
              if dm.zConsulta.fieldbyname('PRODN2PERCIPIENTRADA').IsNull then
                xInconsistencias := xInconsistencias + #13#10 +
                                    'Produto: '+SQLNotaCompraItens.FindField('PRODICOD').AsString+'. Percentual IPI Entrada está Nulo!';
              if dm.zConsulta.fieldbyname('PRODN3PERCIPI').IsNull then
                xInconsistencias := xInconsistencias + #13#10 +
                                    'Produto: '+SQLNotaCompraItens.FindField('PRODICOD').AsString+'. Percentual IPI Saída está Nulo!';
              if dm.zConsulta.fieldbyname('PRODN2PERCSUBST').IsNull then
                xInconsistencias := xInconsistencias + #13#10 +
                                    'Produto: '+SQLNotaCompraItens.FindField('PRODICOD').AsString+'. Percentual ST está Nulo!';
//              if dm.zConsulta.fieldbyname('VALOR_FRETE').IsNull then
//                xInconsistencias := xInconsistencias + #13#10 +
//                                    'Produto: '+SQLNotaCompraItens.FindField('PRODICOD').AsString+'. Valor FRETE está Nulo!';
              if dm.zConsulta.fieldbyname('PRODN2PERCDESP').IsNull then
                xInconsistencias := xInconsistencias + #13#10 +
                                    'Produto: '+SQLNotaCompraItens.FindField('PRODICOD').AsString+'. Percentual OUTRAS DESP está Nulo!';
              if dm.zConsulta.fieldbyname('PRODN2PERCDIFICM').IsNull then
                xInconsistencias := xInconsistencias + #13#10 +
                                    'Produto: '+SQLNotaCompraItens.FindField('PRODICOD').AsString+'. Percentual DIF.ICMS está Nulo!';

              SQLNotaCompraItens.next;
              if xInconsistencias <> '' then
                xInconsistencias := xInconsistencias + #13#10 + '---------------------------------------------------------';
            end;
          SQLNotaCompraItens.Close;
          if xInconsistencias <> '' then
            begin
              showmessage(xInconsistencias);
              Abort;
            end;

          if SQLOperacaoEstoqueOPESCGERAFINANCEIRO.AsString = 'S' then
            begin
              SQLNotaParcelas.ParamByName('NOCPA13ID').asString := DataSet.FindField('NOCPA13ID').asString;
              SQLNotaParcelas.Open;
              Soma := SQLNotaParcelas.FindField('SOMA').AsFloat;
              SQLNotaParcelas.Close;
              If FormatFloat('##0.00',Soma) <> FormatFloat('##0.00',DataSet.FindFIeld('NOCPN3VLRTOTNOTA').asFloat) Then
                Begin
                  if Application.MessageBox('ERRO: O Total do Financeiro difere do total da nota !' + #13#10 + 'Deseja encerrar mesmo assim ?','Pergunta',MB_YESNO + MB_ICONQUESTION + MB_SYSTEMMODAL + MB_DEFBUTTON2)= IdNO then
                    Abort;
                End;
            end;
        End;
    End;

  if SQLTemplate.FindField('EmpresaUFLookUp').asString<>SQLTemplate.FindField('CliFornEmpEstadoLookUp').asString Then
    SQLTemplate.FindField('CFOPA5COD').asString := SQLOperacaoEstoqueCFOPA5CODFORAUF.AsString
  else
    SQLTemplate.FindField('CFOPA5COD').asString   := SQLOperacaoEstoqueCFOPA5CODDENTROUF.AsString;

  inherited;
end;

procedure TFormCadastroNotaCompra.FormCadastroPedidoCompraCancelarNotadeCompra1Click(
  Sender: TObject);
begin
  inherited;
  If (Not SQLTemplate.IsEmpty) And (SQLTemplate.FindField('NOCPCSTATUS').asString = 'E') Then
    Begin
      if Application.MessageBox('Deseja realmente cancelar a Nota?','Atenção',MB_YesNo + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONQUESTION)=IdYes then
        begin
          CancelandoNota := True;
          SQLTemplate.Edit;
          SQLTemplate.FindField('NOCPCSTATUS').asString := 'C';
          SQLTemplate.FindField('NOCPDCANCELAMENTO').AsString := FormatDateTime('dd/mm/yyyy',Now);
          SQLTemplate.FindField('USUAA60LOGIN').AsString       := UsuarioAtualNome;
          SQLTemplate.Post;
          CancelandoNota := False;
        end
      else
        begin
          Informa('Operação Cancelada !');
          Exit;
        end;
    End
  else
    begin
      if SQLTemplate.IsEmpty then
        Informa('Você deve selecionar uma nota antes de cancelar!')
      else
        if SQLTemplate.FindField('NOCPCSTATUS').asString = 'A' then
          Informa('Nota de Entrada só pode ser cancelada depois de Encerrada!')
        else
          if SQLTemplate.FindField('NOCPCSTATUS').asString = 'C' then
            Informa('Nota de Entrada já foi cancelada!');
      Exit;
    end;
end;

procedure TFormCadastroNotaCompra.SQLTemplateAfterPost(DataSet: TDataSet);
Var
  Erro      : Boolean;
  OperacaoEstoque,
  Next, Item : Integer;
  ValorBase,
  CustoUnit,
  ValorCusto,
  FreteUnit,
  ValorCompra,
  ICMS,
  SaldoAtual,
  CustoAtual,
  CompraAtual, ValorFundoPromo, quantidade : Double;
  somanocusto, Denominador : Extended;
  Backup_Texto : string;
begin
  inherited;
  If DM.InserindoItemNC Then Exit;
  If (StatusNovo = 'E') Then
    Begin
      // Atualizando Ficha Produtos e Estoque
      SQLNotaCompraItens.Close;
      SQLNotaCompraItens.MacroByName('MFiltro').AsString := 'NOCPA13ID = ''' + DataSet.FindField('NOCPA13ID').AsString + '''' ;
      SQLNotaCompraItens.Open;
      if SQLNotaCompraItens.IsEmpty then
        begin
          Informa('Nota Fiscal não possui itens lancados, impossível continuar !');
          Exit;
        end;

      sqlnotacompraitens.First;
      if SQLTemplateOPESICOD.AsInteger > 0 then
        begin
          if DM.SQLConfigCompra.fieldbyname('CFCOITIPMOVNFE').Value <= 0 then
            OperacaoEstoque := SQLTemplateOPESICOD.AsInteger
          else
            if DM.SQLConfigCompra.fieldbyname('CFCOITIPMOVNFE').Value <> SQLTemplateOPESICOD.AsInteger then
              OperacaoEstoque := SQLTemplateOPESICOD.AsInteger
            else
              OperacaoEstoque := DM.SQLConfigCompra.fieldbyname('CFCOITIPMOVNFE').Value;
        end
      else
        OperacaoEstoque := DM.SQLConfigCompra.fieldbyname('CFCOITIPMOVNFE').Value;

      if OperacaoEstoque <= 0 then
        begin
          Informa('Nenhuma operação de estoque foi selecionada, impossível continuar !');
          SQLTemplate.Cancel;
          Exit;
        end;

      ProgressBar.Visible := true;
      ProgressBar.Min:=1;
      ProgressBar.Max:=SQLNotaCompraItens.RecordCount;

      if cdsProdutos.Active then
         begin
          cdsProdutos.EmptyDataSet;
          cdsProdutos.Close;
         end;
      cdsProdutos.Open;
      SQLNotaCompraItens.First;
      while not(SQLNotaCompraItens.Eof) do
      begin
        if not(cdsProdutos.Locate('PRODICOD', SQLNotaCompraItensPRODICOD.AsInteger, [])) then
        begin
          cdsProdutos.Insert;
          cdsProdutosPRODICOD.AsInteger := SQLNotaCompraItensPRODICOD.AsInteger;
        end
        else cdsProdutos.Edit;

        cdsProdutosQUANTIDADE.AsFloat := cdsProdutosQUANTIDADE.AsFloat + (SQLNotaCompraItens.FindField('NOCIN3CAPEMBAL').asFloat * (SQLNotaCompraItens.FindField('NOCIN3QTDEMBAL').asFloat + SQLNotaCompraItens.FindField('NOCIN3QTDBONIF').asFloat));

        SQLNotaCompraItens.Next;
      end;

      SQLNotaCompraItens.First;
      Item := 1;
      While Not SQLNotaCompraItens.Eof Do
        Begin
          ProgressBar.Position:=ProgressBar.Position+1;
          ProgressBar.UpDate;

          Backup_Texto := LabelDataHoraAlteracao.Caption;
          LabelDataHoraAlteracao.Caption := 'Atualizando Nota Nro/Fornecedor/Produto: '+ SQltemplateNOCPA30NRO.AsString+'/'+
                                                                                         SQLTemplateDescr_FornEmprCli.AsString+'/'+
                                                                                         SQLNotaCompraItensPRODICOD.AsString;
          LabelDataHoraAlteracao.Update;

          CustoUnit   := SQLNotaCompraItens.FindField('NOCIN3VLRCUSTOMED').asFloat;
          ValorCompra := SQLNotaCompraItens.FindField('NOCIN3VLRUNIT').asFloat;
                         {-((SQLNotaCompraItens.FindField('NOCIN3VLRUNIT').asFloat *
                         (SQLNotaCompraItens.FindField('NOCIN3PERCDESC').asFloat/100)));}

          if SQLNotaCompraItens.FindField('NOCIN3VLRFRETE').asFloat > 0 then
            FreteUnit := SQLNotaCompraItens.FindField('NOCIN3VLRFRETE').asFloat
          else
            FreteUnit := 0 ;

          SQLProduto.Close;
          SQLProduto.ParamByName('PRODICOD').AsInteger := SQLNotaCompraItens.FindField('PRODICOD').asInteger;
          SQLProduto.Open ;

          Erro := True;
          While Erro Do
            begin
              TRY
                if (MatrizFilial = 'M') then
                  SQLProduto.Edit;

                // Passar produto para Ativo
                if SQLProduto.FindField('PRODCATIVO').AsString = 'N' then
                  SQLProduto.FindField('PRODCATIVO').AsString := 'S';

                SQLEstoqueAtual.Close;
                SQLEstoqueAtual.ParamByName('PRODICOD').AsInteger := SQLNotaCompraItens.FindField('PRODICOD').asInteger;
                SQLEstoqueAtual.ParamByName('EMPRICOD').AsInteger := EmpresaCorrente;
                SQLEstoqueAtual.Open;

                //GRAVA O MOVIMENTO DE ESTOQUE E ATUALIZA SALDO DE ESTOQUE
                begin
                  quantidade := 0;

                  if SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',IntToStr(OperacaoEstoque)) = 'E' then
                  begin
                    if cdsProdutos.Locate('PRODICOD', SQLNotaCompraItensPRODICOD.AsInteger, []) then
                      quantidade := cdsProdutosQUANTIDADE.AsFloat;

                    if not TestaNotaCompraMovimentoEstoque(DataSet.FindField('NOCPA13ID').AsString, '', '',
                                                           SQLNotaCompraItens.FindField('PRODICOD').AsString, quantidade) then
                    GravaMovimentoEstoque(DM.SQLProduto,
                                          DM.SQLProdutoFilho,
                                          DM.SQLProdutoSaldo,
                                          SQLTemplateEMPRICODDESTCOMPRA.Value,//Empresa
                                          SQLNotaCompraItens.FindField('PRODICOD').asInteger,//Produto
                                          OperacaoEstoque,//Operacao
                                          quantidade, //Quantidade
                                          'E',//ENTRADA/SAIDA
                                          FormatDateTime('mm/dd/yyyy', DataSet.FindField('NOCPDRECEBIMENTO').AsDateTime),
                                          SQLNotaCompraItens.FindField('NOCIN3VLRUNIT').asString,
                                          'NOTACOMPRA',
                                          DataSet.FindField('NOCPA13ID').AsString,
                                          SQLNotaCompraItens.FindField('LOTEA30NRO').AsString);

                  end;
                end;
                //Grava Saldo consignado
                if SQLLocate('OPERACAOESTOQUE','OPESICOD','MOVIMENTA_CONSIGNADO',IntToStr(OperacaoEstoque)) = 'E' then
                  GravaSaldoConsignacao(EmpresaPadrao, SQLNotaCompraItens.FindField('PRODICOD').AsString,' + ',
                                        SQLNotaCompraItens.FindField('NOCIN3CAPEMBAL').asFloat * (SQLNotaCompraItens.FindField('NOCIN3QTDEMBAL').asFloat + SQLNotaCompraItens.FindField('NOCIN3QTDBONIF').asFloat));

                if DM.SQLConfigCompra.fieldbyname('CFCOCVERIFICAVLRMENOR').AsString <> 'S' then
                  begin
                    if (MatrizFilial = 'M') then
                      if SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCGERAFINANCEIRO',IntToStr(OperacaoEstoque)) = 'S' then
                        if (DM.SQLConfigCompra.fieldbyname('CFCOCALTVLRCOMPRA').Value = 'S') and
                           (SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',IntToStr(OperacaoEstoque)) = 'E') then
                          SQLProduto.FindField('PRODN3VLRCOMPRA').asFloat := ValorCompra;
                  end
                else
                  begin
                    if (MatrizFilial = 'M') then
                      if (DM.SQLConfigCompra.fieldbyname('CFCOCVERIFICAVLRMENOR').AsString = 'S') and
                         (SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',IntToStr(OperacaoEstoque)) = 'E') then
                        begin
                          if SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCGERAFINANCEIRO',IntToStr(OperacaoEstoque)) = 'S' then
                            if (ValorCompra >= SQLProduto.FindField('PRODN3VLRCOMPRA').asFloat) then
                              SQLProduto.FindField('PRODN3VLRCOMPRA').asFloat := ValorCompra;
                        end;
                  end;
                if DM.SQLConfigCompra.fieldbyname('CFCOCVERIFICAVLRMENOR').AsString <> 'S' then
                  begin
                    if (MatrizFilial = 'M') then
                      if SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCGERAFINANCEIRO',IntToStr(OperacaoEstoque)) = 'S' then
                        if (DM.SQLConfigCompra.fieldbyname('CFCOCALTVLRCUSTO').Value = 'S') and
                           (SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',IntToStr(OperacaoEstoque)) = 'E') then
                          SQLProduto.FindField('PRODN3VLRCUSTO').AsFloat := CustoUnit;
                  end
                else
                  begin
                    if (MatrizFilial = 'M') then
                      if SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCGERAFINANCEIRO',IntToStr(OperacaoEstoque)) = 'S' then
                        if (DM.SQLConfigCompra.fieldbyname('CFCOCVERIFICAVLRMENOR').AsString = 'S') and
                           (SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',IntToStr(OperacaoEstoque)) = 'E') then
                          begin
                            ValorCusto := 0;
                            ValorCusto := CustoUnit;
                            if ValorCusto >= SQLProduto.FindField('PRODN3VLRCUSTO').asFloat then
                              SQLProduto.FindField('PRODN3VLRCUSTO').asFloat := CustoUnit;
                          end;
                  end;
                if (MatrizFilial = 'M') then
                  if SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCGERAFINANCEIRO',IntToStr(OperacaoEstoque)) = 'S' then
                    if (DM.SQLConfigCompra.fieldbyname('CFCOCALTPERCIPI').Value = 'S') then
                      begin
                        // IPI Percentual
                        if SQLNotaCompraItens.FindField('NOCIN3PERCIPI').asFloat > 0 then
                          SQLProduto.FindField('PRODN2PERCIPIENTRADA').value := SQLNotaCompraItens.FindField('NOCIN3PERCIPI').asFloat;
                        // Valor Percentual
                        if SQLNotaCompraItens.FindField('NOCIN3VLRFRETE').asFloat > 0 then
                          SQLProduto.FindField('VALOR_FRETE').value := SQLNotaCompraItens.FindField('NOCIN3VLRFRETE').asFloat / SQLNotaCompraItens.FindField('NOCIN3QTDEMBAL').asFloat;
                        // Outras Desp Percentual
                        if SQLNotaCompraItens.FindField('NOCIN2PERCDESP').asFloat > 0 then
                          SQLProduto.FindField('PRODN2PERCDESP').value := SQLNotaCompraItens.FindField('NOCIN2PERCDESP').asFloat;
                        // Dif.ICMS Percentual
                        if SQLNotaCompraItens.FindField('NOCIN2PERCDIFICM').asFloat > 0 then
                          SQLProduto.FindField('PRODN2PERCDIFICM').value := SQLNotaCompraItens.FindField('NOCIN2PERCDIFICM').asFloat;
                        // Perc.Pis
                        if SQLNotaCompraItens.FindField('NOCIN2PERCPIS').asFloat > 0 then
                          SQLProduto.FindField('PRODN2ALIQPIS').value := SQLNotaCompraItens.FindField('NOCIN2PERCPIS').asFloat;
                        // Perc.Cofins
                        if SQLNotaCompraItens.FindField('NOCIN2PERCCOFINS').asFloat > 0 then
                          SQLProduto.FindField('PRODN2ALIQCOFINS').value := SQLNotaCompraItens.FindField('NOCIN2PERCCOFINS').asFloat;
                        // Perc.IPI
                        if SQLNotaCompraItens.FindField('NOCIN3PERCIPI').asFloat > 0 then
                          SQLProduto.FindField('PRODN2PERCIPIENTRADA').value := SQLNotaCompraItens.FindField('NOCIN3PERCIPI').asFloat;

                        // Subst Trib Percentual
                        if (SQLNotaCompraItens.FindField('NOCIN2VBCST').asFloat>0) and (SQLNotaCompraItens.FindField('NOCIN3VLRSUBST').asFloat>0) then
                          SQLProduto.FindField('VALOR_ICMSST').asFloat := SQLNotaCompraItens.FindField('NOCIN3VLRSUBST').asFloat / (SQLNotaCompraItens.FindField('NOCIN3CAPEMBAL').asFloat * SQLNotaCompraItens.FindField('NOCIN3QTDEMBAL').asFloat);

                        if (SQLNotaCompraItens.FindField('NOCIN3VLRDESC').asFloat>0) then
                          SQLProduto.FindField('VALOR_DESC_ENTRADA').asFloat := SQLNotaCompraItens.FindField('NOCIN3VLRDESC').asFloat / SQLNotaCompraItens.FindField('NOCIN3QTDEMBAL').AsFloat;
                      end;

                if (SQLEstoqueAtualQTDEATUAL.asFloat <= 0) or (SQLEstoqueAtualQTDEATUAL.IsNull)  then
                  SaldoAtual := 1
                else
                  SaldoAtual := SQLEstoqueAtualQTDEATUAL.asFloat;

                if (SQLEstoqueAtualCUSTOATUAL.asFloat <= 0) or (SQLEstoqueAtualCUSTOATUAL.IsNull) then
                  CustoAtual := 0
                else
                  CustoAtual := SQLEstoqueAtualCUSTOATUAL.asFloat;

                if (SQLEstoqueAtualCOMPRAATUAL.asFloat <= 0) or (SQLEstoqueAtualCOMPRAATUAL.IsNull) then
                  CompraAtual := 0
                else
                  CompraAtual := SQLEstoqueAtualCOMPRAATUAL.asFloat;

                // CALCULA PREÇO DE CUSTO MÉDIO
                if (MatrizFilial = 'M') then
                  if SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCGERAFINANCEIRO',IntToStr(OperacaoEstoque)) = 'S' then
                    if (SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',IntToStr(OperacaoEstoque))  = 'E') and
                       (SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCORIGEMDESTINO',IntToStr(OperacaoEstoque)) = 'F') then
                      begin
                        if CustoAtual > 0 then
                          SQLProduto.FindField('PRODN3VLRCUSTOMED').asFloat := (CustoAtual +
                                                                               ((SQLNotaCompraItens.FindField('NOCIN3CAPEMBAL').AsFloat*
                                                                               SQLNotaCompraItens.FindField('NOCIN3QTDEMBAL').AsFloat)*
                                                                               CustoUnit))/
                                                                             (SaldoAtual +
                                                                             (SQLNotaCompraItens.FindField('NOCIN3CAPEMBAL').AsFloat*
                                                                              SQLNotaCompraItens.FindField('NOCIN3QTDEMBAL').AsFloat))
                        else
                          SQLProduto.FindField('PRODN3VLRCUSTOMED').asFloat := CustoUnit;

                        if CompraAtual > 0 then // CALCULA PREÇO DE COMPRA MÉDIO
                          SQLProduto.FindField('PRODN3VLRCOMPRAMED').asFloat :=(CompraAtual +
                                                                               ((SQLNotaCompraItens.FindField('NOCIN3CAPEMBAL').AsFloat*
                                                                               SQLNotaCompraItens.FindField('NOCIN3QTDEMBAL').AsFloat)*
                                                                               ValorCompra))/
                                                                               (SaldoAtual +
                                                                               (SQLNotaCompraItens.FindField('NOCIN3CAPEMBAL').AsFloat*
                                                                               SQLNotaCompraItens.FindField('NOCIN3QTDEMBAL').AsFloat))
                        else
                          SQLProduto.FindField('PRODN3VLRCOMPRAMED').asFloat := ValorCompra;

                        // LANCA REAJUSTE DE PREÇO.
                        LancaReajustePreco(0,
                                           0,
                                           SQLProduto.FindField('PRODN3VLRCOMPRAMED').asFloat,
                                           0,
                                           SQLProduto.FindField('PRODN3VLRCUSTOMED').asFloat,
                                           0,
                                           SQLProduto.FindField('PRODICOD').asInteger);
                        SQLEstoqueAtual.Close;
                      end;
                if (MatrizFilial = 'M') then
                  if SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCGERAFINANCEIRO',IntToStr(OperacaoEstoque)) = 'S' then
                    if (DM.SQLConfigCompra.fieldbyname('CFCOCALTPRCPRODENT').Value = 'S') and
                       (SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',IntToStr(OperacaoEstoque)) = 'E') then
                      begin
                        if SQLProduto.FindField('ICMSICOD').IsNull then
                          ICMS := 0
                        else
                          ICMS := StrToFloat(SQLLocate('ICMS','ICMSICOD','ICMSN2ALIQUOTA',SQLProduto.FieldByName('ICMSICOD').AsString));

                        If DM.SQLConfigCompra.fieldbyname('CFCOCTOTPRCVENPROD').Value='U' Then
                          ValorBase := SQLProduto.FindField('PRODN3VLRCUSTO').asFloat;
                        If DM.SQLConfigCompra.fieldbyname('CFCOCTOTPRCVENPROD').Value='M' Then
                          ValorBase := SQLProduto.FindField('PRODN3VLRCUSTOMED').asFloat;

                        // Margem Varejo Fixa
                        if SQLNotaCompraItens.FindField('NOCIN2MGVENDA').asFloat > 0 then
                          SQLProduto.FindField('PRODN3PERCMGLVFIXA').value := SQLNotaCompraItens.FindField('NOCIN2MGVENDA').asFloat;
                        // Margem Atacado Fixa
                        if SQLNotaCompraItens.FindField('NOCIN2MGVENDA2').asFloat > 0 then
                          SQLProduto.FindField('PRODN3PERCMGLAFIXA').value := SQLNotaCompraItens.FindField('NOCIN2MGVENDA2').asFloat;

                        // Valor Venda Varejo
                        if SQLNotaCompraItens.FindField('NOCIN2VLRVENDA').asFloat > 0 then
                          begin
                            SQLProduto.FindField('PRODN3PERCMARGLUCR').asFloat := ((SQLNotaCompraItens.FindField('NOCIN2VLRVENDA').asFloat / ValorBase) - 1) * 100;
                            SQLProduto.FindField('PRODN3VLRVENDA').asFloat  := SQLNotaCompraItens.FindField('NOCIN2VLRVENDA').asFloat;
                          end;

                        // Valor Venda Atacado
                        if SQLNotaCompraItens.FindField('NOCIN2MGVENDA2').asFloat > 0 then
                          begin
                            SQLProduto.FindField('PRODN3PERCMARGLUC2').asFloat := SQLNotaCompraItens.FindField('NOCIN2MGVENDA2').asFloat;
                            SQLProduto.FindField('PRODN3VLRVENDA2').asFloat := SQLNotaCompraItens.FindField('NOCIN2VLRVENDA2').asFloat;
                          end;

                        // Lança Reajuste de Preço
                        if SQLNotaCompraItens.FindField('NOCIN2VLRVENDA').asFloat > 0 then
                          LancaReajustePreco(SQLProduto.FindField('PRODN3VLRVENDA').asFloat,
                                             0,
                                             0,
                                             0,
                                             0,
                                             0,
                                             SQLProduto.FindField('PRODICOD').asInteger);

                      end
                    else
                      begin
                        if (MatrizFilial = 'M') then
                          begin
                            If DM.SQLConfigCompra.fieldbyname('CFCOCTOTPRCVENPROD').Value='U' Then
                              ValorBase := SQLProduto.FindField('PRODN3VLRCUSTO').asFloat;
                            If DM.SQLConfigCompra.fieldbyname('CFCOCTOTPRCVENPROD').Value='M' Then
                              ValorBase := SQLProduto.FindField('PRODN3VLRCUSTOMED').asFloat;

                            if (SQLNotaCompraItens.FindField('NOCIN2VLRVENDA').asFloat>0) and (ValorBase>0) then
                              SQLProduto.FindField('PRODN3PERCMARGLUCR').asFloat := ((SQLNotaCompraItens.FindField('NOCIN2VLRVENDA').asFloat / ValorBase) - 1) * 100;

                            // Lança Reajuste de Preço
                            LancaReajustePreco(0,
                                               0,
                                               0,
                                               0,
                                               0,
                                               SQLProduto.FindField('PRODN3PERCMARGLUCR').asFloat,
                                               SQLProduto.FindField('PRODICOD').asInteger);
                          end;
                      end ;

                if (MatrizFilial = 'M') then
                  begin
                    if SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCGERAFINANCEIRO',IntToStr(OperacaoEstoque)) = 'S' then
                      begin
                        SQLProduto.FindField('PRODN3CAPACEMBAL').value    := SQLNotaCompraItens.FindField('NOCIN3CAPEMBAL').asFloat;
                        SQLProduto.FindField('PRODDULTCOMPRA').AsDateTime := SQLTemplateNOCPDRECEBIMENTO.Value;
                        SQLProduto.FindField('PRODN3QTDULTCOMPRA').value  := SQLNotaCompraItens.FindField('NOCIN3CAPEMBAL').asFloat *
                                                                             SQLNotaCompraItens.FindField('NOCIN3QTDEMBAL').asFloat;
                      end;

                    SQLProduto.FindField('REGISTRO').AsDateTime := Now;
                    SQLProduto.FindField('PENDENTE').Value      := 'S';
                    SQLProduto.Post;
                    Erro := False;
                  end
                else
                  Erro := False;
              EXCEPT
                on E: Exception do
                begin
                  Erro := True;
                  ShowMessage('Problemas ao gravar o item da Nota de Entrada:' + #13 + E.Message) ;
                end ;
              END ;
            end;

          // Atualizar todos produtos que possuam o mesmo Cd.Principal para Reajuste de Preco.
         if SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCGERAFINANCEIRO',IntToStr(OperacaoEstoque)) = 'S' then
          if (MatrizFilial = 'M') and (SQLProduto.FindField('PRODIPRINCIPAL').AsString <> '') then
            begin
              try
                dm.SQLTemplate.Close;
                dm.SQLTemplate.sql.Clear;
                dm.SQLTemplate.sql.Add('Update PRODUTO Set ');
                if SQLProduto.FindField('PRODN3PERCMARGLUCR').AsVariant > 0 then
                  dm.SQLTemplate.sql.Add('PRODN3PERCMARGLUCR = '+ ConvFloatToStr(SQLProduto.FindField('PRODN3PERCMARGLUCR').Value))
                else
                  dm.SQLTemplate.sql.Add('PRODN3PERCMARGLUCR = PRODN3PERCMARGLUCR ');
                 if SQLProduto.FindField('PRODN3VLRVENDA').AsVariant > 0 then
                  dm.SQLTemplate.sql.Add(', PRODN3VLRVENDA = '+ ConvFloatToStr(SQLProduto.FindField('PRODN3VLRVENDA').Value));
                if SQLProduto.FindField('PRODN3PERCMARGLUC2').AsVariant > 0 then
                  dm.SQLTemplate.sql.Add(', PRODN3PERCMARGLUC2 = '+ ConvFloatToStr(SQLProduto.FindField('PRODN3PERCMARGLUC2').Value));
                if SQLProduto.FindField('PRODN3VLRVENDA2').AsVariant > 0 then
                  dm.SQLTemplate.sql.Add(', PRODN3VLRVENDA2 = '+ ConvFloatToStr(SQLProduto.FindField('PRODN3VLRVENDA2').Value));
                if ValorCompra > 0 then
                  dm.SQLTemplate.sql.Add(', PRODN3VLRCOMPRA = '+ ConvFloatToStr(ValorCompra));
                if ValorCusto > 0 then
                  dm.SQLTemplate.sql.Add(', PRODN3VLRCUSTO  = '+ ConvFloatToStr(ValorCusto));
                if SQLProduto.FindField('PRODN2PERCDIFICM').AsVariant > 0 then
                  dm.SQLTemplate.sql.Add(', PRODN2PERCDIFICM = '+ ConvFloatToStr(SQLProduto.FindField('PRODN2PERCDIFICM').Value));
                if SQLProduto.FindField('PRODN2PERCSUBST').AsVariant > 0 then
                  dm.SQLTemplate.sql.Add(', PRODN2PERCSUBST = '+ ConvFloatToStr(SQLProduto.FindField('PRODN2PERCSUBST').Value));
                if SQLProduto.FindField('PRODN2PERCIPIENTRADA').AsVariant > 0 then
                  dm.SQLTemplate.sql.Add(', PRODN2PERCIPIENTRADA = '+ ConvFloatToStr(SQLProduto.FindField('PRODN2PERCIPIENTRADA').Value));

                dm.SQLTemplate.sql.Add(' Where PRODICOD <> '+ SQLProduto.FindField('PRODICOD').AsString +
                                       ' and PRODIPRINCIPAL = '+ SQLProduto.FindField('PRODIPRINCIPAL').AsString);

                dm.SQLTemplate.ExecSQL;
              except
                ShowMessage('Erro ao Tentar Atualizar Produtos com mesmo Cd Principal');
              end;
            end;
          SQLNotaCompraItens.Next;
          Item := Item + 1;
        End;

      ProgressBar.Position:=0;
      ProgressBar.Visible := false;
      LabelDataHoraAlteracao.Caption := Backup_Texto;
      LabelDataHoraAlteracao.Update;
      
      SQLNotaCompraItens.Close;
      if SQLTemplateEMPRN2VLRFUNDOPROMO.Value > 0 then
        begin
          dm.SQLTemplate.Close;
          dm.SQLTemplate.sql.Clear;
          dm.SQLTemplate.sql.Add('Select * From EMPRESA Where EMPRICOD = '+EmpresaPadrao);
          dm.SQLTemplate.Open;
          if dm.SQLTemplate.FindField('EMPRN2VLRFUNDOPROMO').AsFloat > 0 then
            ValorFundoPromo := dm.SQLTemplate.FindField('EMPRN2VLRFUNDOPROMO').AsFloat
          else
            ValorFundoPromo := 0;
          ValorFundoPromo := ValorFundoPromo + SQLTemplateEMPRN2VLRFUNDOPROMO.Value;
          dm.SQLTemplate.Close;
          dm.SQLTemplate.sql.Clear;
          dm.SQLTemplate.sql.Add('Update EMPRESA Set EMPRN2VLRFUNDOPROMO = '+ FloatToStr(ValorFundoPromo));
          dm.SQLTemplate.sql.Add(' Where EMPRICOD = '+EmpresaPadrao);
          dm.SQLTemplate.ExecSQL;
        end;
      // Excluir Pedido de Compra após Encerramento da Nota Compra se Tiver
      If (DM.SQLConfigCompra.fieldbyname('CFCOCEXCLUIPEDENT').asString='S') and (SQLTemplatePDCPA13ID.AsVariant<>Null) Then
        Begin
          SQLPedidoCompra.ParamByName('PDCPA13ID').asString:= SQLTemplate.FieldByName('PDCPA13ID').asString;
          SQLPedidoCompra.Close;
          SQLPedidoCompra.Open;
          SQLPedidoCompra.First;
          If Not SQLPedidoCompra.Eof Then
            SQLPedidoCompra.Delete;
          SQLPedidoCompra.Close;
        End;
      // Alterar Status para Faturado após Encerramento da Nota Compra
      If (SQLTemplatePDCPA13ID.AsVariant<>Null) Then
        Begin
          SQLPedidoCompra.ParamByName('PDCPA13ID').asString:= SQLTemplate.FieldByName('PDCPA13ID').asString;
          SQLPedidoCompra.Close;
          SQLPedidoCompra.Open;
          SQLPedidoCompra.First;
          If Not SQLPedidoCompra.Eof Then
            begin
              SQLPedidoCompra.Edit;
              SQLPedidoCompra.FieldByName('PDCPCSTATUS').value := 'F';
              SQLPedidoCompra.Post;
            end;
          SQLPedidoCompra.Close;
        End;
    End;
  If (StatusNovo = 'C') Then
    Begin
      SQLNotaCompraItens.Close;
      SQLNotaCompraItens.MacroByName('MFiltro').AsString := 'NOCPA13ID = ''' + DataSet.FindField('NOCPA13ID').AsString + '''';
      SQLNotaCompraItens.Open;
      SQLNotaCompraItens.First;
      if SQLTemplateOPESICOD.AsInteger > 0 then
        begin
          if DM.SQLConfigCompra.fieldbyname('CFCOITIPMOVCANCNFE').Value <= 0 then
            OperacaoEstoque := SQLTemplateOPESICOD.AsInteger
          else
            OperacaoEstoque := DM.SQLConfigCompra.fieldbyname('CFCOITIPMOVCANCNFE').Value;
        end
      else
        OperacaoEstoque := DM.SQLConfigCompra.fieldbyname('CFCOITIPMOVCANCNFE').Value;

      if OperacaoEstoque <= 0 then
        begin
          Informa('Nenhuma operação de estoque foi selecionada, impossível continuar !');
          SQLTemplate.Cancel;
          Exit;
        end;

      While Not SQLNotaCompraItens.Eof Do
        Begin
          if SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',IntToStr(OperacaoEstoque)) <> 'N' then
            GravaMovimentoEstoque(DM.SQLProduto,
                                  DM.SQLProdutoFilho,
                                  DM.SQLProdutoSaldo,
                                  SQLTemplateEMPRICODDESTCOMPRA.Value,//Empresa
                                  SQLNotaCompraItens.FindField('PRODICOD').asInteger,//Produto
                                  OperacaoEstoque,//Operacao
                                  SQLNotaCompraItens.FindField('NOCIN3CAPEMBAL').asFloat * (SQLNotaCompraItens.FindField('NOCIN3QTDEMBAL').asFloat + SQLNotaCompraItens.FindField('NOCIN3QTDBONIF').asFloat),//Quantidade
                                  'S',//ENTRADA/SAIDA
                                  FormatDateTime('mm/dd/yyyy', Now),
                                  SQLNotaCompraItens.FindField('NOCIN3VLRUNIT').asString,
                                  'NOTACOMPRA',
                                  DataSet.FindField('NOCPA13ID').AsString,
                                  SQLNotaCompraItens.FindField('LOTEA30NRO').AsString);
          If (SQLNotaCompraItens.FindField('PDCPA13ID').asVariant<>Null) and
             (SQLNotaCompraItens.FindField('PCITIPOS').asVariant<>Null) Then
            Begin
              SQLAtualizaItemPedido.ParamByName('PDCPA13ID').Value := SQLNotaCompraItens.FindField('PDCPA13ID').Value;
              SQLAtualizaItemPedido.ParamByName('PCITIPOS').Value  := SQLNotaCompraItens.FindField('PCITIPOS').Value;
              SQLAtualizaItemPedido.ParamByName('QtdePed').Value   := SQLNotaCompraItens.FindField('NOCIN3QTDEPED').Value;
              SQLAtualizaItemPedido.ExecSql;
            End;
          SQLNotaCompraItens.Next;
        End;

       // Cancela saldo consignado
        SQLNotaCompraItens.First;
        While Not SQLNotaCompraItens.Eof Do
        begin
          if SQLLocate('OPERACAOESTOQUE','OPESICOD','MOVIMENTA_CONSIGNADO',IntToStr(SQLTemplateOPESICOD.AsInteger)) = 'E' then
            GravaSaldoConsignacao(EmpresaPadrao, SQLNotaCompraItens.FindField('PRODICOD').AsString,' - ',
                                  SQLNotaCompraItens.FindField('NOCIN3CAPEMBAL').asFloat * (SQLNotaCompraItens.FindField('NOCIN3QTDEMBAL').asFloat + SQLNotaCompraItens.FindField('NOCIN3QTDBONIF').asFloat));
          SQLNotaCompraItens.Next;
        end;

      SQLNotaCompraItens.Close;
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Clear;
      DM.SQLTemplate.SQL.Add('Delete from ContasPagar Where NOCPA13ID = ''' + DataSet.FindField('NOCPA13ID').AsString + '''');
      DM.SQLTemplate.ExecSQL;
    End;
  If PedidoNovo <> PedidoAnterior Then
    If PedidoNovo <> '' Then
      Begin
        AtualizaContasPagarPC.ParamByName('PDCPA13ID').asString := SQLTemplate.FindField('PDCPA13ID').AsString;
        AtualizaContasPagarPC.ParamByName('NOCPA13ID').asString := SQLTemplate.FindField('NOCPA13ID').AsString;
        If SQLTemplate.FindField('PLCTA15COD').asVariant<>Null Then
          AtualizaContasPagarPC.MacroByName('MConta').asString := ', PLCTA15COD = '''+SQLTemplate.FindField('PLCTA15COD').asString+''''
        Else
          AtualizaContasPagarPC.MacroByName('MConta').asString := '';
        Erro:=True;
        While Erro Do
          Try
            AtualizaContasPagarPC.ExecSQL;
            Erro:=False;
          Except
            Erro:=True;
          End;
      End;
  EmpresaCorrente := BkpEmpresaCorrente;
  if ImportandoPedido then
    begin
      DSMasterSys := DsTemplate;
      CriaFormulario(TFormCadastroNotaCompraItem,'FormCadastroNotaCompraItem',True,False,True,'Nota de Entrada Nº ' + SQLTemplateNOCPA13ID.Value);
      CriaFormulario(TFormTelaImportacaoPedidoCompra,'FormTelaImportacaoPedidoCompra',False,False,True,'');
      ImportandoPedido := False;
    end
  else
    if CallDetail then
      begin
        CallDetail := False;
        if FileExists('..\Dutoal.txt') then
          Button3.Click
        else
          Button4.Click;
      end;
end;

procedure TFormCadastroNotaCompra.BtnTransportadoraClick(Sender: TObject);
begin
  inherited;
  ComboTransportadora.SetFocus;
  FieldLookUp := SQLTemplate.FindField('TRANICOD');
  FieldOrigem := 'TRANICOD';
  DataSetLookup := SQLTransportadora;
  CriaFormulario(TFormCadastroTransportadora,'FormCadastroTransportadora',False,True,True,'');
end;

procedure TFormCadastroNotaCompra.BtnFornecedorClick(Sender: TObject);
begin
  inherited;
  ComboFornecedor.SetFocus;
  if SQLOperacaoEstoqueOPESCORIGEMDESTINO.AsString = 'F' then
     begin
       FieldLookUp := SQLTemplate.FindField('FORNICOD');
       FieldOrigem := 'FORNICOD';
       DataSetLookup := SQLFornecedor;
       CriaFormulario(TFormCadastroFornecedor,'FormCadastroFornecedor',False,True,False,'');
     end;
end;

procedure TFormCadastroNotaCompra.DBEditPCKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnPedidos.Click;
end;

procedure TFormCadastroNotaCompra.BtnPedidosClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('PDCPA13ID');
  FieldOrigem := 'PDCPA13ID';
  CriaFormulario(TFormCadastroPedidoCompra,'FormCadastroPedidoCompra',False,True,False,'');
end;

procedure TFormCadastroNotaCompra.EtiquetasdeCodigodeBarras1Click(
  Sender: TObject);
begin
  inherited;
  EtiquetaNotaCompra := SQLTemplate.FindField('NOCPA13ID').asString;
  CriaFormulario(TFormTelaEmissaoEtiquetasCodigoBarras,'FormTelaEmissaoEtiquetasCodigoBarras',False,False,True,'');
end;

procedure TFormCadastroNotaCompra.SQLPedidoCompraBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  DM.RegistraExclusao('PEDIDOCOMPRA',SQLPedidoCompra);
  SQLExcluiDetalhes.MacroByName('MTabela').AsString   := 'PEDIDOCOMPRAITEM';
  SQLExcluiDetalhes.MacroByName('MFiltro').asString   := DM.ClausulaFiltro('PEDIDOCOMPRA',SQLPedidoCompra);
  SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Select *';
  SQLExcluiDetalhes.Open;
  SQLExcluiDetalhes.First;
  While Not SQLExcluiDetalhes.Eof Do
    Begin
      DM.RegistraExclusao('PEDIDOCOMPRAITEM',SQLExcluiDetalhes);
      SQLExcluiDetalhes.Next;
    End;
  SQLExcluiDetalhes.Close;
  SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Delete';
  SQLExcluiDetalhes.ExecSQL;
end;

procedure TFormCadastroNotaCompra.DBEdit11Exit(Sender: TObject);
begin
  inherited;
  if (DSTemplate.DataSet.State in DSEditModes) then
    SQLTemplateNOCPN3VLRTOTNOTA.Value := SQLTemplateNOCPN3TOTITENS.Value   +
                                         SQLTemplateNOCPN3VLRFRETE.Value   +
                                         SQLTemplateNOCPN3VLRICMSSUB.Value +
                                         SQLTemplateNOCPN3VLRIPI.Value     -
                                         SQLTemplateNOCPN3TOTDESC.Value    +
                                         SQLTemplateNOCPN3VLROUTRADESP.Value ;
end;

procedure TFormCadastroNotaCompra.BtnPlanoContasClick(Sender: TObject);
begin
  inherited;
  ComboPlanoContas.SetFocus;
  FieldLookUp := SQLTemplate.FindField('PLCTA15COD');
  FieldOrigem := 'PLCTA15COD';
  DataSetLookup := SQLPlanoContas;
  CriaFormulario(TFormTelaConsultaPlanoContasDebitos,'FormTelaConsultaPlanoContasDebitos',False,True,True,'');
end;

procedure TFormCadastroNotaCompra.SQLTemplateAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  CallDetail := True;
end;

procedure TFormCadastroNotaCompra.ComboFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnFornecedor.Click;
end;

procedure TFormCadastroNotaCompra.ComboPlanoContasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnPlanoContas.Click;
end;

procedure TFormCadastroNotaCompra.ComboTransportadoraKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnTransportadora.Click;
end;

procedure TFormCadastroNotaCompra.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
//  ComboPlanoPagto.Enabled           := SQLTemplateNOCPA13ID.AsString <> '';
  ComboFornecedor.DataField         := '';
  ComboFornecedor.LookupDisplay     := '';
  ComboFornecedor.LookupField       := '';
  ComboFornecedor.LookupSource      := nil;
  if SQLOperacaoEstoqueOPESCORIGEMDESTINO.AsString = 'F' then
    Begin
      LBFornEmpr.Caption            := 'Fornecedor';
      LBFornEmpr.Update;
      ComboFornecedor.DataField     := 'FORNICOD';
      ComboFornecedor.LookupDisplayIndex := 2;
      ComboFornecedor.LookupDisplay := 'FORNICOD;FORNA14CGC;FORNA60RAZAOSOC';
      ComboFornecedor.LookupField   := 'FORNICOD';
      ComboFornecedor.LookupSource  := DSSQLFornecedor;
    End;
  if SQLOperacaoEstoqueOPESCORIGEMDESTINO.AsString = 'E' then
    Begin
      LBFornEmpr.Caption            := 'Empresa';
      LBFornEmpr.Update;
      ComboFornecedor.DataField     := 'EMPRICODDEST';
      ComboFornecedor.LookupDisplay := 'EMPRA60NOMEFANT';
      ComboFornecedor.LookupField   := 'EMPRICOD';
      ComboFornecedor.LookupSource  := DSSQLEmpresa;
    End;
end;

procedure TFormCadastroNotaCompra.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  SQLOperacaoEstoque.Locate('OPESICOD',SQLTemplateOPESICOD.Value,[]);
  if SQLOperacaoEstoqueOPESCORIGEMDESTINO.AsString = 'F' then
    begin
      SQLFornecedor.Locate('FORNICOD',SQLTemplateFORNICOD.Value,[]);
      SQLTemplateCod_FornEmprCli.Value   := SQLFornecedorFORNICOD.AsString;
      SQLTemplateDescr_FornEmprCli.Value := SQLFornecedorFORNA60RAZAOSOC.Value;
      SQLTemplateCliFornEmpEstadoLookUp.AsString  := SQLFornecedorFORNA2UF.AsString;
    end;
  if SQLOperacaoEstoqueOPESCORIGEMDESTINO.AsString = 'E' then
    begin
      SQLEmpresa.Locate('EMPRICOD',SQLTemplateEMPRICODDEST.Value,[]);
      SQLTemplateCod_FornEmprCli.Value   := SQLEmpresaEMPRICOD.AsString;
      SQLTemplateDescr_FornEmprCli.Value := SQLEmpresaEMPRA60NOMEFANT .Value;
      SQLTemplateCliFornEmpEstadoLookUp.AsString  := SQLEmpresaEMPRA2UF.AsString;
    end;
end;

procedure TFormCadastroNotaCompra.SQLTemplatePLPGICODChange(
  Sender: TField);
begin
  inherited;
  {if SQLTemplatePLPGICOD.AsVariant <> Null then
    begin
      if SQLTemplateNOCPN3VLRTOTNOTA.AsString <> '' then
        begin
          SQLParcelas.Close;
          SQLParcelas.MacroByName('MFiltro').AsString := 'NOCPA13ID = ''' + SQLTemplateNOCPA13ID.AsString + '''';
          SQLParcelas.Open;
          SQLParcelas.First;
          While not SQLParcelas.Eof do
            SQLParcelas.Delete;
          CriaParcelasPagar(SQLParcelas,
                            SQLTemplatePLPGICOD.AsInteger,
                            SQLTemplateNOCPDEMISSAO.AsDateTime,
                            SQLTemplateNOCPN3VLRTOTNOTA.AsFloat);
       end;
    end;}
end;

procedure TFormCadastroNotaCompra.SQLParcelasNewRecord(DataSet: TDataSet);
begin
  inherited;
  // OS CAMPOS DE DATA DE EMISSAO, VENCTO, VALOR E PARCELA
  // SAO ALIMENTADOS PELA PROCEDURE CRIAPARCELASPAGAR QUE E
  // EXECUTADA TODA VEZ QUE SE MUDA O PLANO DE PAGAMENTO;
  // O AUTOINCREMENTO DA TABELA E O ID SAO GERADOS PELAS ROTINAS
  // PADROES DO DATA MODULO E SAO EFETUADAS NA PROPRIA DATA SET;
  SQLParcelasCTPGA20DOCORIG.AsString   := '';
  SQLParcelasCTPGA5TIPOPADRAO.AsString := '';
  SQLParcelasCTPGCPREVREAL.AsString    := 'R';
  SQLParcelasCTPGDULTPAGTO.AsVariant   := Null;
  SQLParcelasCTPGN2TOTPAG.AsFloat      := 0;
  SQLParcelasCTPGN2DESCPROMO.AsFloat   := 0;
  SQLParcelasCTPGN3DESCPAGTO.AsFloat   := 0;
  SQLParcelasCTPGN3JUROPAGTO.AsFloat   := 0;
  SQLParcelasCTPGN3MULTAPAGTO.AsFloat  := 0;
  SQLParcelasCTPGN3TXJURO.AsFloat      := 0;
  SQLParcelasCTPGN3TXMULTA.AsFloat     := 0;
  SQLParcelasEMPRICOD.AsInteger        := SQLTemplateEMPRICOD.AsInteger;
  SQLParcelasFORNICOD.AsInteger        := SQLTemplateFORNICOD.AsInteger;
  SQLParcelasNOCPA13ID.AsString        := SQLTemplateNOCPA13ID.AsString;
  SQLParcelasNOCPA30NRO.AsString       := SQLTemplateNOCPA30NRO.AsString;
  SQLParcelasCTPGDRECBTO.AsDateTime    := SQLTemplateNOCPDRECEBIMENTO.AsDateTime;
  SQLParcelasPENDENTE.AsString         := 'S';
  SQLParcelasPLCTA15COD.AsString       := SQLTemplatePLCTA15COD.AsString;
  if DM.SQLConfigCompra.fieldbyname('PORTICOD').AsInteger > 0 then
    SQLParcelasPORTICOD.AsString := DM.SQLConfigCompra.fieldbyname('PORTICOD').AsString;
  if DM.SQLConfigCompra.fieldbyname('TPDCICOD').AsInteger > 0 then
    SQLParcelasTPDCICOD.AsString := DM.SQLConfigCompra.fieldbyname('TPDCICOD').AsString;
end;

procedure TFormCadastroNotaCompra.SQLParcelasBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State in [DsInsert] then
    DM.CodigoAutomatico('CONTASPAGAR',DSSQLParcelas,DataSet,2,0);
end;

procedure TFormCadastroNotaCompra.SQLParcelasAfterPost(DataSet: TDataSet);
begin
  inherited;
  if SQLParcelas.UpdatesPending then
    begin
      SQLParcelas.ApplyUpdates;
      SQLParcelas.CommitUpdates;
    end;
end;

function TFormCadastroNotaCompra.CommaToPoint(Value : Double) : String;
begin
    Result := FormatFloat('###0.00',Value);
    Result[Pos(',',Result)] := '.';
end;

procedure TFormCadastroNotaCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DataSetLookup := nil ;
end;

procedure TFormCadastroNotaCompra.MnADMListConfEntradaClick(Sender: TObject);
var I, Linha, vCol, Pag : Integer;
  vCor, vMarca, vUnidade, Apresentacao : String;
begin
  inherited;
  try
    TblNotaCompra.Close;
    TblNotaCompra.DeleteTable;
    TblNotaCompra.CreateTable;
  except
    TblNotaCompra.CreateTable;
  end;
  TblNotaCompra.AddIndex('ID','NOCPA13ID',[IxPrimary]);
  TblNotaCompra.Open;

  TblNotaCompra.Append;
  for I := 0 to  SQLTemplate.FieldCount - 1 do
    begin
      if TblNotaCompra.FindField(SQLTemplate.Fields[I].FieldName) <> Nil then
        TblNotaCompra.FindField(SQLTemplate.Fields[I].FieldName).AsVariant := SQLTemplate.Fields[I].AsVariant
    end;
  TblNotaCompra.Post;

  try
    TblNotaCompraItem.Close;
    TblNotaCompraItem.DeleteTable;
    TblNotaCompraItem.CreateTable;
  except
    TblNotaCompraItem.CreateTable;
  end;
  TblNotaCompraItem.AddIndex('Pr','NOCPA13ID;NOCIIITEM',[ixPrimary]);
  TblNotaCompraItem.AddIndex('Indice','NOCICALTPRECO;PRODICOD',[ixCaseInsensitive]);
  TblNotaCompraItem.IndexName := 'Indice';

  TblNotaCompraItem.Open;

  SQLNotaCompraItens.Close;
  SQLNotaCompraItens.MacroByName('MFiltro').AsString := 'NOCPA13ID = ''' + SQLTemplate.FindField('NOCPA13ID').AsString + '''';
  SQLNotaCompraItens.Open;
  SQLNotaCompraItens.First;

  while not SQLNotaCompraItens.Eof do
    begin
      TblNotaCompraItem.Append;
      for I := 0 to  SQLNotaCompraItens.FieldCount - 1 do
        begin
          if TblNotaCompraItem.FindField(SQLNotaCompraItens.Fields[I].FieldName) <> Nil then
            TblNotaCompraItem.FindField(SQLNotaCompraItens.Fields[I].FieldName).AsVariant := SQLNotaCompraItens.Fields[I].AsVariant;
        end;
      TblNotaCompraItem.Post;
      SQLNotaCompraItens.Next;
    end;

  SQLParcelas.Close;
  SQLParcelas.MacroByName('MFiltro').AsString := 'NOCPA13ID = ''' + SQLTemplateNOCPA13ID.AsString + '''';
  SQLParcelas.Open;
  SQLParcelas.First;

  try
    TblNotaCompraParcelas.Close;
    TblNotaCompraParcelas.DeleteTable;
    TblNotaCompraParcelas.CreateTable;
  except
    TblNotaCompraParcelas.CreateTable;
  end;
    TblNotaCompraParcelas.Open;

  while not SQLParcelas.Eof do
    begin
      TblNotaCompraParcelas.Append;
      for I := 0 to  SQLParcelas.FieldCount - 1 do
        begin
          if TblNotaCompraParcelas.FindField(SQLParcelas.Fields[I].FieldName) <> Nil then
            TblNotaCompraParcelas.FindField(SQLParcelas.Fields[I].FieldName).AsVariant := SQLParcelas.Fields[I].AsVariant;
        end;
      TblNotaCompraParcelas.Post;
      SQLParcelas.Next;
    end;

    Linha := 1;
    Pag   := 1;
    RDPrintRelDep.Abrir;
    RDPrintRelDep.ImpF(Linha, 1,'Conferencia de Entrada no Estoque',[Expandido, Normal]);   Inc(Linha,2);
    RDPrintRelDep.Imp(Linha, 1,'Dt Entrada: '  + TblNotaCompraNOCPDRECEBIMENTO.AsString);
    RDPrintRelDep.Imp(Linha,30,'ID Nota.: '    + TblNotaCompraNOCPA13ID.AsString);
    RDPrintRelDep.Imp(Linha,60,'N.Fiscal: '    + TblNotaCompraNOCPA30NRO.AsString);         Inc(Linha);
    RDPrintRelDep.Imp(Linha, 1,'Fornecedor: '  + TblNotaCompraDescr_FornEmprCli.AsString);
    RDPrintRelDep.Imp(Linha,60,'Vlr.Nota: '    + FormatFloat('##0.00',TblNotaCompraNOCPN3VLRTOTNOTA.Value));         Inc(Linha);
    RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
//    RDPrintRelDep.ImpF(Linha,1,'Cod       Cd.Barras       Descricao/Un/Cor                                        Referencia                Marca             Quant      Vlr.Venda         ST',[Comp20]); Inc(Linha);
    RDPrintRelDep.ImpF(Linha,1,'Cod    Apresentacao Cd.Barras       Descricao/Un/Cor                                        Referencia      Marca             Quant      Vlr.Venda         ST',[Comp20]); Inc(Linha);
    RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
    TblNotaCompraItem.First;
    While not TblNotaCompraItem.eof Do
      Begin
        vCor := '';
        vMarca := '';
        if linha > 60 then
          begin
            Linha := 1;
            RDPrintRelDep.Novapagina;
            RDPrintRelDep.ImpF(Linha,1,'Conferencia de Entrada no Estoque',[Expandido, Normal]);   Inc(Linha,2);
            RDPrintRelDep.Imp(Linha, 1,'Dt Entrada: '  + TblNotaCompraNOCPDRECEBIMENTO.AsString);
            RDPrintRelDep.Imp(Linha,30,'ID Nota.: '    + TblNotaCompraNOCPA13ID.AsString);
            RDPrintRelDep.Imp(Linha,60,'N.Fiscal: '    + TblNotaCompraNOCPA30NRO.AsString);         Inc(Linha);
            RDPrintRelDep.Imp(Linha, 1,'Fornecedor: '  + TblNotaCompraDescr_FornEmprCli.AsString);
            RDPrintRelDep.Imp(Linha,60,'Vlr.Nota: '    + FormatFloat('##0.00',TblNotaCompraNOCPN3VLRTOTNOTA.Value));       Inc(Linha);
            RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
            RDPrintRelDep.ImpF(Linha,1,'Cod    Apresentacao Cd.Barras       Descricao/Un/Cor                                        Referencia      Marca             Quant      Vlr.Venda         ST',[Comp20]); Inc(Linha);
            RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
          end;

        Apresentacao := SQLLocate('PRODUTO','PRODICOD','PRODN3CAPACEMBAL',TblNotaCompraItemPRODICOD.AsString);
        RDPrintRelDep.ImpF(Linha, 1,FormatFloat('#####00000',TblNotaCompraItemPRODICOD.Value),[Comp20]);
        RDPrintRelDep.ImpF(Linha, 6,Apresentacao,[Comp20]);
        RDPrintRelDep.ImpF(Linha,11,SQLLocate('PRODUTO','PRODICOD','PRODA60CODBAR',TblNotaCompraItemPRODICOD.AsString),[Comp20]);

        vUnidade := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLLocate('PRODUTO','PRODICOD','UNIDICOD',TblNotaCompraItemPRODICOD.AsString));
        vCor := SQLLocate('PRODUTO','PRODICOD','CORICOD',TblNotaCompraItemPRODICOD.AsString);
        if vCor <> '' then
        vCor := SQLLocate('COR','CORICOD','CORA30DESCR',vCor);
        if vCor <> '' then
          RDPrintRelDep.ImpF(Linha, 19,copy(TblNotaCompraItemPRODA60DESCR.AsString,1,40)+'/'+vUnidade+'/'+copy(vCor,1,6),[Comp20])
        else
          RDPrintRelDep.ImpF(Linha, 19,copy(TblNotaCompraItemPRODA60DESCR.AsString,1,50)+'/'+vUnidade,[Comp20]);

        RDPrintRelDep.ImpF(Linha,47,copy(TblNotaCompraItemPRODA60REFER.value,1,10),[Comp20]);

        vMarca := SQLLocate('MARCA','MARCICOD','MARCA60DESCR', SQLLocate('PRODUTO','PRODICOD','MARCICOD',TblNotaCompraItemPRODICOD.AsString));
        if vMarca <> '' then
          RDPrintRelDep.ImpF(Linha,55,copy(vMarca,1,8),[Comp20]);

        RDPrintRelDep.ImpVal(Linha,63,'##0.000',TblNotaCompraItemNOCIN3QTDEMBAL.Value,[Comp20]);
        RDPrintRelDep.ImpVal(Linha,70,'#,##0.00',TblNotaCompraItemNOCIN2VLRVENDA.Value,[Comp20]);
        RDPrintRelDep.ImpF(Linha,79,TblNotaCompraItemNOCICALTPRECO.value,[Comp20]);
        Inc(Linha);
        TblNotaCompraItem.Next;
      End;
    RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
    RDPrintRelDep.Imp(Linha, 1,'Recebido Por: _______________');
    RDPrintRelDep.Imp(Linha,32,'Cd.Barras ( )');
    RDPrintRelDep.Imp(Linha,46,'Etiquetas ( )');
    RDPrintRelDep.Imp(Linha,60,'Mostruario ( )'); Inc(Linha);
    RDPrintRelDep.Imp(Linha,32,'Precos ( )');
    RDPrintRelDep.Imp(Linha,46,'Deposito ( )');
    RDPrintRelDep.Fechar;
end;

procedure TFormCadastroNotaCompra.SQLMovEstoqueCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FieldByName('PRODICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) Then
        Begin
          DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODICOD').AsString + ' - ' + DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;

          if (DM.SQLTemplate.FindField('GRADICOD').AsVariant <> NULL) and (DM.SQLTemplate.FindField('GRTMICOD').AsVariant <> NULL) then
                DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                                   ' / ' + RetornaTamanhoProduto(DM.SQLTemplate.FindField('GRADICOD').AsString,
                                                                                                 DM.SQLTemplate.FindField('GRTMICOD').AsString);
          if DM.SQLTemplate.FindField('CORICOD').AsVariant <> NULL then
              DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                               ' / ' + RetornaCorProduto(DM.SQLTemplate.FindField('CORICOD').AsString);
      end
    end
  else
    DataSet.FieldByName('ProdutoLookup').asString       := MensagemLookUp;

end;

procedure TFormCadastroNotaCompra.BTNLocalizarClick(Sender: TObject);
var
Clausula, Clausula1 : String;
CampoOrdem : TField;
begin
  inherited;
  Clausula := '';
  if (EditFilial.Text = '') and (EditCNPJ.Text = '') and (ComboFornecedorConsulta.Value = '') then
    begin
      Informa('Pesquisa incompleta, verifique!');
      Exit;
    end;
  if (EditFilial.Text <> '') then
    Clausula1 := 'EMPRICODDESTCOMPRA = '+ EditFilial.Text;

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

  if Clausula <> '' then
    if Clausula1 <> '' then
       Clausula := Clausula + ' and ' + Clausula1;
  if (Clausula = '') and (Clausula1 <> '') then
    Clausula := Clausula1;

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

procedure TFormCadastroNotaCompra.MnEncerrarNotaSequenciaClick(
  Sender: TObject);
begin
  inherited;
  if SQLTemplate.IsEmpty then
    begin
      ShowMessage('Não foi encontrado nenhuma nota de compra a ser encerrada!');
      exit;
    end;
  EncerrandoemSequencia := True;
  SQLTemplate.First;
  while not SQLTemplate.eof do
    begin
      if SQLTemplateNOCPCSTATUS.Value = 'A' then
        begin
          SQLTemplate.Edit;
          SQLTemplateNOCPCSTATUS.Value  := 'E';
          SQLTemplate.Post
        end;
      SQLTemplate.Next;
    end;
  EncerrandoemSequencia := False;
end;

procedure TFormCadastroNotaCompra.MnListProdutosaltprecoClick(
  Sender: TObject);
var Linha, vCol, Pag : Integer;
begin
  inherited;
  Linha := 1;
  try
    TblItenscomPrecosAlterados.Close;
    TblItenscomPrecosAlterados.DeleteTable;
    TblItenscomPrecosAlterados.CreateTable;
  except
    TblItenscomPrecosAlterados.CreateTable;
  end;
  TblItenscomPrecosAlterados.AddIndex('PR','CDBarras',[IxPrimary]);
  TblItenscomPrecosAlterados.AddIndex('Indice','NOCICALTPRECO;CdBarras',[ixCaseInsensitive]);
  TblItenscomPrecosAlterados.IndexName := 'Indice';
  TblItenscomPrecosAlterados.Open;

  While not SQLTemplate.Eof Do
    begin
      SQLNotaCompraItens.Close;
      SQLNotaCompraItens.MacroByName('MFiltro').AsString := 'NOCPA13ID = ''' + SQLTemplate.FindField('NOCPA13ID').AsString + '''';
      SQLNotaCompraItens.Open;
      SQLNotaCompraItens.First;
      while not SQLNotaCompraItens.Eof do
        begin
          if SQLNotaCompraItensNOCICALTPRECO.Value <> 'I' then
            begin
              TblItenscomPrecosAlterados.Append;
              TblItenscomPrecosAlteradosNOCPA13ID.Value     := SQLNotaCompraItensNOCPA13ID.Value;
              TblItenscomPrecosAlteradosNOCICALTPRECO.Value := SQLNotaCompraItensNOCICALTPRECO.Value;
              TblItenscomPrecosAlteradosPRODICOD.value      := SQLNotaCompraItensPRODICOD.Value;
              TblItenscomPrecosAlteradosPRODA60DESCR.value  := SQLLocate('Produto','Prodicod','Proda60descr',SQLNotaCompraItensPRODICOD.AsString);
              TblItenscomPrecosAlteradosQUANT.value         := SQLNotaCompraItensNOCIN3QTDEMBAL.Value * SQLNotaCompraItensNOCIN3CAPEMBAL.Value;
              TblItenscomPrecosAlteradosVLRVENDA.value      := SQLNotaCompraItensNOCIN2VLRVENDA.Value;
              TblItenscomPrecosAlteradosCDBarras.value      := SQLLocate('Produto','Prodicod','Proda60CodBar',SQLNotaCompraItensPRODICOD.AsString);
              if TblItenscomPrecosAlteradosCDBarras.value = '' then
                TblItenscomPrecosAlteradosCDBarras.value := SQLNotaCompraItensPRODICOD.AsString;
              try
                TblItenscomPrecosAlterados.Post;
              except
                TblItenscomPrecosAlterados.Cancel;
              end;
              SQLCodBarras.Close;
              SQLCodBarras.MacroByName('MFiltro').Value := 'PRODICOD = ' + SQLNotaCompraItensPRODICOD.AsString;
              SQLCodBarras.Open;
              if not SQLCodBarras.IsEmpty then
                begin
                  while not SQLCodBarras.eof do
                    begin
                      if SQLNotaCompraItensNOCICALTPRECO.Value <> 'I' then
                        begin
                          TblItenscomPrecosAlterados.Append;
                          TblItenscomPrecosAlteradosNOCICALTPRECO.Value := SQLNotaCompraItensNOCICALTPRECO.Value;
                          TblItenscomPrecosAlteradosPRODICOD.value      := SQLNotaCompraItensPRODICOD.Value;
                          TblItenscomPrecosAlteradosNOCPA13ID.Value     := SQLNotaCompraItensNOCPA13ID.Value;
                          TblItenscomPrecosAlteradosPRODA60DESCR.value  := SQLLocate('Produto','Prodicod','PRODA30ADESCRREDUZ',SQLNotaCompraItensPRODICOD.AsString);
                          TblItenscomPrecosAlteradosQUANT.value         := SQLNotaCompraItensNOCIN3QTDEMBAL.Value * SQLNotaCompraItensNOCIN3CAPEMBAL.Value;
                          TblItenscomPrecosAlteradosVLRVENDA.value      := SQLNotaCompraItensNOCIN2VLRVENDA.Value;
                          TblItenscomPrecosAlteradosCDBarras.value      := SQLCodBarrasPRBAA15BARRAS.Value;
                          if TblItenscomPrecosAlteradosCDBarras.value = '' then
                            TblItenscomPrecosAlteradosCDBarras.value := SQLNotaCompraItensPRODICOD.AsString;
                          try
                            TblItenscomPrecosAlterados.Post;
                          except
                            TblItenscomPrecosAlterados.Cancel;
                          end;
                        end;
                      SQLCodBarras.next;
                    end;
                end;
            end;
          SQLNotaCompraItens.Next;
        end;
      SQLTemplate.Next;
    end;
  TblItenscomPrecosAlterados.First;
  RDPrintRelDep.TitulodoRelatorio := 'Relação de preços alterados';
  Pag   := 1;
  RDPrintRelDep.Abrir;
  RDPrintRelDep.ImpF(Linha,1,'Relação de preços alterados',[Expandido, Normal]);   Inc(Linha,2);
  RDPrintRelDep.Imp(Linha,1,'Data Emissao => '+ FormatDateTime('dd/mm/yyyy hh:nn:ss',now)); Inc(Linha);
  RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
  RDPrintRelDep.Imp(Linha,1,'Cod    Descricao                                  Cd.Barras     Vlr.Venda Status'); Inc(Linha);
  RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
  While not TblItenscomPrecosAlterados.eof do
    begin
      if linha > 60 then
        begin
          Linha := 1;
          RDPrintRelDep.Novapagina;
          RDPrintRelDep.ImpF(Linha,1,'Relação de preços alterados',[Expandido, Normal]);   Inc(Linha,2);
          RDPrintRelDep.Imp(Linha,1,'Data Emissao => '+ FormatDateTime('dd/mm/yyyy hh:nn:ss',now)); Inc(Linha);
          RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
          RDPrintRelDep.Imp(Linha,1,'Cod    Descricao                                  Cd.Barras     Vlr.Venda Status'); Inc(Linha);
          RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
        end;
      if TblItenscomPrecosAlteradosNOCICALTPRECO.Value <> 'I' then
        begin
          RDPrintRelDep.Imp(Linha, 1,FormatFloat('######000000',TblItenscomPrecosAlteradosPRODICOD.Value));
          RDPrintRelDep.Imp(Linha,10,copy(TblItenscomPrecosAlteradosPRODA60DESCR.AsString,1,39));
          RDPrintRelDep.Imp(Linha,48,TblItenscomPrecosAlteradosCDBarras.AsString);
          RDPrintRelDep.ImpVal(Linha,66,'#,##0.00',TblItenscomPrecosAlteradosVLRVENDA.Value,[]);
          RDPrintRelDep.Imp(Linha,77,TblItenscomPrecosAlteradosNOCICALTPRECO.AsString);
          Inc(Linha);
        end;
      TblItenscomPrecosAlterados.Next;
    end;
  RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
  RDPrintRelDep.Imp(Linha,1,'Verificado Por: _______________');
  RDPrintRelDep.Fechar;
  TblItenscomPrecosAlterados.Close;
  SQLNotaCompraItens.Close;
end;

procedure TFormCadastroNotaCompra.EtiquetasGondolaProdutoPrecoAlteradoClick(
  Sender: TObject);
begin
  inherited;
  try
    TblItenscomPrecosAlterados.Close;
    TblItenscomPrecosAlterados.DeleteTable;
    TblItenscomPrecosAlterados.CreateTable;
  except
    TblItenscomPrecosAlterados.CreateTable;
  end;
  //  TblItenscomPrecosAlterados.AddIndex('PR','CDBarras',[IxPrimary]);
  TblItenscomPrecosAlterados.Open;

  While not SQLTemplate.Eof Do
    begin
      SQLNotaCompraItens.Close;
      SQLNotaCompraItens.MacroByName('MFiltro').AsString := 'NOCPA13ID = ''' + SQLTemplate.FindField('NOCPA13ID').AsString + '''';
      SQLNotaCompraItens.Open;
      SQLNotaCompraItens.First;
      while not SQLNotaCompraItens.Eof do
        begin
          if (SQLNotaCompraItensNOCICALTPRECO.Value <> 'I') and (SQLLocate('Produto','Prodicod','PRODCIMPETIQCDBAR',SQLNotaCompraItensPRODICOD.AsString)='S') then
            begin
              TblItenscomPrecosAlterados.Append;
              TblItenscomPrecosAlteradosNOCICALTPRECO.Value := SQLNotaCompraItensNOCICALTPRECO.Value;
              TblItenscomPrecosAlteradosPRODICOD.value      := SQLNotaCompraItensPRODICOD.Value;
              TblItenscomPrecosAlteradosNOCPA13ID.Value     := SQLNotaCompraItensNOCPA13ID.Value;
              TblItenscomPrecosAlteradosPRODA60DESCR.value  := SQLLocate('Produto','Prodicod','PRODA60DESCR',SQLNotaCompraItensPRODICOD.AsString);
              TblItenscomPrecosAlteradosCDBarras.value      := SQLLocate('Produto','Prodicod','Proda60CodBar',SQLNotaCompraItensPRODICOD.AsString);
              TblItenscomPrecosAlteradosQUANT.value         := SQLNotaCompraItensNOCIN3QTDEMBAL.Value * SQLNotaCompraItensNOCIN3CAPEMBAL.Value;
              TblItenscomPrecosAlteradosVLRVENDA.AsString   := SQLLocate('Produto','Prodicod','PRODN3VLRVENDA',SQLNotaCompraItensPRODICOD.AsString);
              SQLNotaCompraItensNOCIN2VLRVENDA.Value;
              try
                TblItenscomPrecosAlterados.Post;
              except
                TblItenscomPrecosAlterados.Cancel;
              end;
              SQLCodBarras.Close;
              SQLCodBarras.MacroByName('MFiltro').Value := 'PRODICOD = ' + SQLNotaCompraItensPRODICOD.AsString;
              SQLCodBarras.Open;
              if not SQLCodBarras.IsEmpty then
                begin
                  while not SQLCodBarras.eof do
                    begin
                      if (SQLNotaCompraItensNOCICALTPRECO.Value <> 'I') and (SQLLocate('ProdutoBarras','Prodicod','PRODCIMPETIQCDBAR',SQLNotaCompraItensPRODICOD.AsString)='S') then
                        begin
                          TblItenscomPrecosAlterados.Append;
                          TblItenscomPrecosAlteradosNOCICALTPRECO.Value := SQLNotaCompraItensNOCICALTPRECO.Value;
                          TblItenscomPrecosAlteradosPRODICOD.value      := SQLNotaCompraItensPRODICOD.Value;
                          TblItenscomPrecosAlteradosNOCPA13ID.Value     := SQLNotaCompraItensNOCPA13ID.Value;
                          TblItenscomPrecosAlteradosPRODA60DESCR.value  := SQLLocate('Produto','Prodicod','PRODA60DESCR',SQLNotaCompraItensPRODICOD.AsString);
                          TblItenscomPrecosAlteradosCDBarras.value      := SQLCodBarrasPRBAA15BARRAS.Value;
                          TblItenscomPrecosAlteradosQUANT.value         := SQLNotaCompraItensNOCIN3QTDEMBAL.Value * SQLNotaCompraItensNOCIN3CAPEMBAL.Value;
                          TblItenscomPrecosAlteradosVLRVENDA.AsString   := SQLLocate('Produto','Prodicod','PRODN3VLRVENDA',SQLNotaCompraItensPRODICOD.AsString);
                          try
                            TblItenscomPrecosAlterados.Post;
                          except
                            TblItenscomPrecosAlterados.Cancel;
                          end;
                        end;
                      SQLCodBarras.Next;
                    end;
                end;
            end;
          SQLNotaCompraItens.Next;
        end;
      SQLTemplate.Next;
    end;
  // Gravar na tabela temp de etiquetas
  TblEtiquetas.Close;
  try
    TblEtiquetas.DeleteTable ;
  except
    Application.ProcessMessages;
  end ;
  TblEtiquetas.CreateTable ;
  TblEtiquetas.Open ;

  TblItenscomPrecosAlterados.First;
  while not TblItenscomPrecosAlterados.Eof do
    begin
      TblEtiquetas.Append;
      TblEtiquetasProdutoCodigo.Value     := TblItenscomPrecosAlteradosPRODICOD.value ;
      TblEtiquetasDescricao.Value         := SQLLocate('Produto','Prodicod','PRODA60DESCR',TblItenscomPrecosAlteradosPRODICOD.AsString);
      TblEtiquetasDescricaoReduzida.Value := SQLLocate('Produto','Prodicod','PRODA30ADESCRREDUZ',TblItenscomPrecosAlteradosPRODICOD.AsString);
      TblEtiquetasCodigoBarras.Value      := TblItenscomPrecosAlteradosCDBarras.value ;
      TblEtiquetasQuant.Value             := 1 ;
      TblEtiquetasPreco.Value             := TblItenscomPrecosAlteradosVLRVENDA.value ;
      try
        TblEtiquetas.Post;
      except
        TblEtiquetas.Cancel;
      end;
      TblItenscomPrecosAlterados.Next;
    end;
  TblItenscomPrecosAlterados.Close;
  TblEtiquetas.Close;

  // Chamar Executavel de Etiquetas para Gondola
  if FileExists('..\EtiquetasGondola.exe') then
    WinExec(PChar('..\EtiquetasGondola.exe'), SW_SHOW)
  else
    ShowMessage('O programa de impressão de etiquetas para Gondola não foi encontrado!') ;
end;

procedure TFormCadastroNotaCompra.MnApresentarMediaComprasClick(
  Sender: TObject);
begin
  inherited;
  if SQLTemplate.IsEmpty then
    begin
      ShowMessage('Não foi encontrado nenhuma nota de compra a ser encerrada!');
      exit;
    end;
  EncerrandoemSequencia := True;
  SQLTemplate.First;
  while not SQLTemplate.eof do
    begin
      if SQLTemplateNOCPCSTATUS.Value = 'P' then
        begin
          SQLTemplate.Edit;
          SQLTemplateNOCPCSTATUS.Value  := 'E';
          SQLTemplate.Post
        end;
      SQLTemplate.Next;
    end;
  EncerrandoemSequencia := False;
end;

procedure TFormCadastroNotaCompra.MnAtualizaProdSemEncerrarNotasClick(Sender: TObject);
var CustoUnit, ValorCompra, FreteUnit, ValorCusto, CustoAtual, CompraAtual, ICMS : Double;
    Item : Integer;
    Erro : Boolean;
begin
  inherited;
  if SQLTemplate.IsEmpty then
    begin
      ShowMessage('Não foi encontrado nenhuma nota de compra a ser encerrada!');
      exit;
    end;
  SQLTemplate.First;
  while not SQLTemplate.eof do
    begin
      SQLNotaCompraItens.Close;
      SQLNotaCompraItens.MacroByName('MFiltro').AsString := 'NOCPA13ID = ''' + SQLTemplate.fieldbyname('NOCPA13ID').AsString + '''' ;
      SQLNotaCompraItens.Open;

      MakeWindow(SQLNotaCompraItens.RecordCount, 'Aguarde, Atualizando Ficha de Produtos!');
      SQLNotaCompraItens.First;
      Item := 1;
      While Not SQLNotaCompraItens.Eof Do
        Begin
          SetProgress(Item);
          CustoUnit   := SQLNotaCompraItens.FindField('NOCIN3VLRCUSTOMED').asFloat;
          ValorCompra := SQLNotaCompraItens.FindField('NOCIN3VLRUNIT').asFloat -
                         ((SQLNotaCompraItens.FindField('NOCIN3VLRUNIT').asFloat*
                         (SQLNotaCompraItens.FindField('NOCIN3PERCDESC').asFloat/100)));

          if SQLNotaCompraItens.FindField('NOCIN3VLRFRETE').asFloat > 0 then
            FreteUnit := SQLNotaCompraItens.FindField('NOCIN3VLRFRETE').asFloat
          else
            FreteUnit := 0;

          SQLProduto.Close;
          SQLProduto.ParamByName('PRODICOD').AsInteger := SQLNotaCompraItens.FindField('PRODICOD').asInteger;
          SQLProduto.Open ;

          Erro := True;
          While Erro Do
            TRY
              SQLProduto.Edit;

              if DM.SQLConfigCompra.fieldbyname('CFCOCVERIFICAVLRMENOR').AsString <> 'S' then
                begin
                  if (DM.SQLConfigCompra.fieldbyname('CFCOCALTVLRCOMPRA').Value = 'S') and
                     (SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',IntToStr(SQLTemplateOPESICOD.Value)) = 'E') then
                    SQLProduto.FindField('PRODN3VLRCOMPRA').asFloat := ValorCompra;
                end
              else
                begin
                  if (DM.SQLConfigCompra.fieldbyname('CFCOCVERIFICAVLRMENOR').AsString = 'S') and
                     (SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',IntToStr(SQLTemplateOPESICOD.Value)) = 'E') then
                    begin
                      if ValorCompra >= SQLProduto.FindField('PRODN3VLRCOMPRA').asFloat then
                        SQLProduto.FindField('PRODN3VLRCOMPRA').asFloat := ValorCompra;
                    end;
                end;
              if DM.SQLConfigCompra.fieldbyname('CFCOCVERIFICAVLRMENOR').AsString <> 'S' then
                begin
                  if (DM.SQLConfigCompra.fieldbyname('CFCOCALTVLRCUSTO').Value = 'S') and
                     (SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',IntToStr(SQLTemplateOPESICOD.Value)) = 'E') then
                    SQLProduto.FindField('PRODN3VLRCUSTO').AsFloat := CustoUnit;
                end
              else
                begin
                  if (DM.SQLConfigCompra.fieldbyname('CFCOCVERIFICAVLRMENOR').AsString = 'S') and
                     (SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',IntToStr(SQLTemplateOPESICOD.Value)) = 'E') then
                    begin
                      ValorCusto := 0;
                      ValorCusto := CustoUnit;
                      if ValorCusto >= SQLProduto.FindField('PRODN3VLRCUSTO').asFloat then
                        SQLProduto.FindField('PRODN3VLRCUSTO').asFloat := CustoUnit;
                    end;
                end;
              if DM.SQLConfigCompra.fieldbyname('CFCOCALTPERCIPI').Value = 'S' then
                SQLProduto.FindField('PRODN3PERCIPI').asFloat := SQLNotaCompraItens.FindField('NOCIN3PERCIPI').asFloat;

              if (SQLProduto.FindField('PRODN3VLRCOMPRA').asFloat <= 0) or (SQLProduto.FindField('PRODN3VLRCOMPRA').IsNull) then
                CompraAtual := 0
              else
                CompraAtual := SQLProduto.FindField('PRODN3VLRCOMPRA').asFloat;

              if (DM.SQLConfigCompra.fieldbyname('CFCOCALTPRCPRODENT').Value = 'S') and
                  (SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCENTRADASAIDA',IntToStr(SQLTemplateOPESICOD.Value)) = 'E') then
                begin
                  if SQLProduto.FindField('PRODN3PERCMARGLUCR').IsNull then
                    ICMS := 0
                  else
                    ICMS := StrToFloat(SQLLocate('ICMS','ICMSICOD','ICMSN2ALIQUOTA',SQLProduto.FieldByName('ICMSICOD').AsString));

                  SQLProduto.FindField('PRODN2PERCDESP').asFloat   := SQLNotaCompraItens.FindField('NOCIN2PERCDESP').asFloat;
                  SQLProduto.FindField('PRODN2PERCDIFICM').asFloat := SQLNotaCompraItens.FindField('NOCIN2PERCDIFICM').asFloat;
                  SQLProduto.FindField('PRODN2PERCSUBST').asFloat  := (SQLNotaCompraItens.FindField('NOCIN3VLRSUBST').asFloat/SQLNotaCompraItens.FindField('NOCIN2VBCST').asFloat) * 100 ;

                  if SQLNotaCompraItens.FindField('NOCIN2MGVENDA').asFloat > 0 then
                    SQLProduto.FindField('PRODN3PERCMARGLUCR').asFloat := SQLNotaCompraItens.FindField('NOCIN2MGVENDA').asFloat;
                  if SQLNotaCompraItens.FindField('NOCIN2VLRVENDA').asFloat > 0 then
                    SQLProduto.FindField('PRODN3VLRVENDA').asFloat     := SQLNotaCompraItens.FindField('NOCIN2VLRVENDA').asFloat;
                  if SQLNotaCompraItens.FindField('NOCIN2MGVENDA2').asFloat > 0 then
                    SQLProduto.FindField('PRODN3PERCMARGLUC2').asFloat := SQLNotaCompraItens.FindField('NOCIN2MGVENDA2').asFloat;
                  if SQLNotaCompraItens.FindField('NOCIN2VLRVENDA2').asFloat > 0 then
                    SQLProduto.FindField('PRODN3VLRVENDA2').asFloat    := SQLNotaCompraItens.FindField('NOCIN2VLRVENDA2').asFloat;

                end;

              SQLProduto.FindField('PRODDULTCOMPRA').AsDateTime := SQLTemplateNOCPDRECEBIMENTO.Value;
              SQLProduto.FindField('PRODN3QTDULTCOMPRA').value  := SQLNotaCompraItens.FindField('NOCIN3CAPEMBAL').asFloat *
                                                                   SQLNotaCompraItens.FindField('NOCIN3QTDEMBAL').asFloat;

              SQLProduto.FindField('REGISTRO').AsDateTime := Now;
              SQLProduto.FindField('PENDENTE').Value      := 'S';
              SQLProduto.Post;
              SQLProduto.Close;
              Erro := False;
            EXCEPT
              on E: Exception do
              begin
                Erro := True;
                Informa('Problemas ao gravar o item da Nota de Entrada:' + #13 + E.Message) ;
              end ;
            END ;

          SQLNotaCompraItens.Next;
          Item := Item + 1;
        End;

      SQLTemplate.Next;
    end;
  SQLNotaCompraItens.Close;
  DestroyWindow;
end;

procedure TFormCadastroNotaCompra.SQLTemplateFORNICODChange(
  Sender: TField);
begin
  inherited;
  if SQLTemplateFORNICOD.AsString <> '' then
    SQLTemplatePLCTA15COD.Value := SQLLocate('FORNECEDOR','FORNICOD','PLCTA15CODDEBITO',SQLTemplateFORNICOD.AsString);
end;

procedure TFormCadastroNotaCompra.MnListagemdeProdutosDigitadosClick(
  Sender: TObject);
var Linha, vCol, Pag : Integer;
begin
  inherited;
  Linha := 1;
  try
    TblItenscomPrecosAlterados.Close;
    TblItenscomPrecosAlterados.DeleteTable;
    TblItenscomPrecosAlterados.CreateTable;
  except
    TblItenscomPrecosAlterados.CreateTable;
  end;
  TblItenscomPrecosAlterados.AddIndex('PR','CdBarras',[ixPrimary]);
  TblItenscomPrecosAlterados.AddIndex('Indice','NOCICALTPRECO;CdBarras',[ixCaseInsensitive]);
  TblItenscomPrecosAlterados.IndexName := 'Indice';
  TblItenscomPrecosAlterados.Open;

  While not SQLTemplate.Eof Do
    begin
      SQLNotaCompraItens.Close;
      SQLNotaCompraItens.MacroByName('MFiltro').AsString := 'NOCPA13ID = ''' + SQLTemplate.FindField('NOCPA13ID').AsString + '''';
      SQLNotaCompraItens.Open;
      SQLNotaCompraItens.First;
      while not SQLNotaCompraItens.Eof do
        begin
          TblItenscomPrecosAlterados.Append;
          TblItenscomPrecosAlteradosNOCPA13ID.Value     := SQLNotaCompraItensNOCPA13ID.Value;
          TblItenscomPrecosAlteradosNOCICALTPRECO.Value := SQLNotaCompraItensNOCICALTPRECO.Value;
          TblItenscomPrecosAlteradosPRODICOD.value      := SQLNotaCompraItensPRODICOD.Value;
          TblItenscomPrecosAlteradosPRODA60DESCR.value  := SQLLocate('Produto','Prodicod','Proda60descr',SQLNotaCompraItensPRODICOD.AsString);
          TblItenscomPrecosAlteradosQUANT.value         := SQLNotaCompraItensNOCIN3QTDEMBAL.Value * SQLNotaCompraItensNOCIN3CAPEMBAL.Value;
          TblItenscomPrecosAlteradosVLRVENDA.value      := SQLNotaCompraItensNOCIN2VLRVENDA.Value;
          TblItenscomPrecosAlteradosCDBarras.value      := SQLLocate('Produto','Prodicod','Proda60CodBar',SQLNotaCompraItensPRODICOD.AsString);
          if TblItenscomPrecosAlteradosCDBarras.value = '' then
            TblItenscomPrecosAlteradosCDBarras.value := SQLNotaCompraItensPRODICOD.AsString;
          try
            TblItenscomPrecosAlterados.Post;
          except
            TblItenscomPrecosAlterados.Cancel;
          end;
          SQLCodBarras.Close;
          SQLCodBarras.MacroByName('MFiltro').Value := 'PRODICOD = ' + SQLNotaCompraItensPRODICOD.AsString;
          SQLCodBarras.Open;
          if not SQLCodBarras.IsEmpty then
            begin
              while not SQLCodBarras.eof do
                begin
                  TblItenscomPrecosAlterados.Append;
                  TblItenscomPrecosAlteradosNOCICALTPRECO.Value := SQLNotaCompraItensNOCICALTPRECO.Value;
                  TblItenscomPrecosAlteradosPRODICOD.value      := SQLNotaCompraItensPRODICOD.Value;
                  TblItenscomPrecosAlteradosNOCPA13ID.Value     := SQLNotaCompraItensNOCPA13ID.Value;
                  TblItenscomPrecosAlteradosPRODA60DESCR.value  := SQLLocate('Produto','Prodicod','PRODA30ADESCRREDUZ',SQLNotaCompraItensPRODICOD.AsString);
                  TblItenscomPrecosAlteradosQUANT.value         := SQLNotaCompraItensNOCIN3QTDEMBAL.Value * SQLNotaCompraItensNOCIN3CAPEMBAL.Value;
                  TblItenscomPrecosAlteradosVLRVENDA.value      := SQLNotaCompraItensNOCIN2VLRVENDA.Value;
                  TblItenscomPrecosAlteradosCDBarras.value      := SQLCodBarrasPRBAA15BARRAS.Value;
                  if TblItenscomPrecosAlteradosCDBarras.value = '' then
                    TblItenscomPrecosAlteradosCDBarras.value := SQLNotaCompraItensPRODICOD.AsString;
                  try
                    TblItenscomPrecosAlterados.Post;
                  except
                    TblItenscomPrecosAlterados.Cancel;
                  end;
                  SQLCodBarras.next;
                end;
            end;
          SQLNotaCompraItens.Next;
        end;
      SQLTemplate.Next;
    end;
  TblItenscomPrecosAlterados.First;
  RDPrintRelDep.TitulodoRelatorio := 'Relação Geral de Produtos Digitados';
  Pag   := 1;
  RDPrintRelDep.Abrir;
  RDPrintRelDep.ImpF(Linha,1,'Relação Geral de Produtos Digitados',[Expandido, Normal]);   Inc(Linha,2);
  RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
  RDPrintRelDep.Imp(Linha,1,'Cod    Descricao                                  Cd.Barras     Vlr.Venda Status'); Inc(Linha);
  RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
  While not TblItenscomPrecosAlterados.eof do
    begin
      if linha > 60 then
        begin
          Linha := 1;
          RDPrintRelDep.Novapagina;
          RDPrintRelDep.ImpF(Linha,1,'Relação Geral de Produtos Digitados',[Expandido, Normal]);   Inc(Linha,2);
          RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
          RDPrintRelDep.Imp(Linha,1,'Cod    Descricao                                  Cd.Barras     Vlr.Venda Status'); Inc(Linha);
          RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
        end;
      RDPrintRelDep.Imp(Linha, 1,FormatFloat('######000000',TblItenscomPrecosAlteradosPRODICOD.Value));
      RDPrintRelDep.Imp(Linha,10,copy(TblItenscomPrecosAlteradosPRODA60DESCR.AsString,1,39));
      RDPrintRelDep.Imp(Linha,48,TblItenscomPrecosAlteradosCDBarras.AsString);
      RDPrintRelDep.ImpVal(Linha,66,'#,##0.00',TblItenscomPrecosAlteradosVLRVENDA.Value,[]);
      RDPrintRelDep.Imp(Linha,77,TblItenscomPrecosAlteradosNOCICALTPRECO.AsString);
      Inc(Linha);
      TblItenscomPrecosAlterados.Next;
    end;
  RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
  RDPrintRelDep.Imp(Linha,1,'Verificado Por: _______________');
  RDPrintRelDep.Fechar;
  TblItenscomPrecosAlterados.Close;
  SQLNotaCompraItens.Close;
end;

procedure TFormCadastroNotaCompra.MnReabrirNotaCanceladaClick(
  Sender: TObject);
begin
  inherited;
  if  SQLTemplateNOCPCSTATUS.asstring <> 'C' then
    begin
      Showmessage('Somente é permitido trocar status de notas CANCELADAS');
      Exit;
    end;
  if Pergunta('Não','Confirma a troca de Status desta nota para ABERTA?') then
    begin
      if (SQLTemplateNOCPCSTATUS.Value = 'C') and (not SQLTemplate.IsEmpty) then
        begin
          try
            dm.SQLTemplate.Close;
            dm.SQLTemplate.SQL.Clear;
            dm.SQLTemplate.SQL.Add('Update NotaCompra set NOCPCSTATUS = ''A'', NOCPDCANCELAMENTO = NULL where NOCPA13ID = '''+ SQLTemplateNOCPA13ID.Value+'''');
            dm.SQLTemplate.ExecSQL;
            ShowMessage('Operação realizada com sucesso!');
            SQLTemplate.Close;
          except
            Application.ProcessMessages;
            ShowMessage('Não foi possível trocar o Status da Nota Atual, verifique!');
          end;
        end;
    end;
end;

function TFormCadastroNotaCompra.verificaCFOPs:Boolean;
Var Posicao:TBookmark;
    nTxtErros: String;
begin
  SQLNotaCompraItens.Close;
  SQLNotaCompraItens.MacroByName('MFiltro').AsString := 'NOCPA13ID = ''' + SQLTemplate.FindField('NOCPA13ID').AsString + '''' ;
  SQLNotaCompraItens.Open;

  nTxTErros := '';
  Posicao   := SQLNotaCompraItens.GetBookmark;
  SQLNotaCompraItens.First;
  Result := True;
  While Not SQLNotaCompraItens.Eof do
  begin
    Try
      if StrToInt(SQLNotaCompraItensCFOPA5CODAUX.AsString) > 4999 then
      begin
        nTxtErros := nTxtErros + 'CFOP do Produto '+SQLNotaCompraItensPRODICOD.AsString+' Não é de Entrada/Aquisição'+#13+#10;
        Result := False;
      End;
    Except
      Begin
        nTxtErros := nTxtErros + 'CFOP do Produto '+SQLNotaCompraItensPRODICOD.AsString+' Não é de Entrada/Aquisição'+#13+#10;
        Result := False;
      end;
    End;
    SQLNotaCompraItens.Next;
  end;
  if nTxtErros <> '' then
    ShowMessage(nTxtErros);
  SQLNotaCompraItens.GotoBookmark(Posicao);
End;

procedure TFormCadastroNotaCompra.DBEdit4Exit(Sender: TObject);
var Cod : Integer;
var CodSTR : string;
begin
  inherited;
  if SQLTemplate.State in ([dsInsert, dsEdit]) then
    begin
      try
        CodSTR := sqltemplateNOCPA30NRO.Value;
        while pos('/',CodSTR) > 0 do
          delete(CodSTR,pos('/',CodSTR),1);
        while pos('.',CodSTR) > 0 do
          delete(CodSTR,pos('.',CodSTR),1);
        while pos('-',CodSTR) > 0 do
          delete(CodSTR,pos('-',CodSTR),1);
        Cod := StrToInt(CodSTR);
        sqltemplateNOCPA30NRO.Value := IntToStr(Cod);
      except
        ShowMessage('Numero da Nota Digitado é Inválido! Campo Numérico! Não use pontos, virgulas, zeros a esquerda!');
        DBEdit4.SetFocus;
      end;
    end;
end;

procedure TFormCadastroNotaCompra.DBEdit12Enter(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in ([dsInsert, dsEdit]) then
    SQLTemplateNOCPN3VLRTOTNOTA.Value := SQLTemplateNOCPN3TOTITENS.Value - SQLTemplateNOCPN3TOTDESC.Value;
end;

procedure TFormCadastroNotaCompra.ReabrirNotaEncerradanomovimentestoque1Click(
  Sender: TObject);
begin
  inherited;
  Dm.SQLTemplate.SQL.Text := 'Update notacompra set nocpcstatus = :xStatus where nocpa13id = :xid';
  Dm.SQLTemplate.ParamByName('xStatus').Asstring := 'A';
  Dm.SQLTemplate.ParamByName('xID').Asstring     := SQLTemplateNOCPA13ID.AsString;
  Dm.SQLTemplate.ExecSQL;
  SQLTemplate.Close;
  SQLTemplate.Open;
  Showmessage('Nota Fiscal Reaberta!');
end;

procedure TFormCadastroNotaCompra.FecharNotaAbertaNoMovimentaEstoque1Click(
  Sender: TObject);
begin
  inherited;
  Dm.SQLTemplate.SQL.Text := 'Update notacompra set nocpcstatus = :xStatus where nocpa13id = :xid';
  Dm.SQLTemplate.ParamByName('xStatus').Asstring := 'E';
  Dm.SQLTemplate.ParamByName('xID').Asstring     := SQLTemplateNOCPA13ID.AsString;
  Dm.SQLTemplate.ExecSQL;
  SQLTemplate.Close;
  SQLTemplate.Open;
  Showmessage('Nota Fiscal Encerrada!');

end;

procedure TFormCadastroNotaCompra.DBEdit3Exit(Sender: TObject);
var Ano, Mes, Serie, Numero, Cnpj: String;
begin
  inherited;
  if DSTemplate.State in dsEditModes then
    begin
      if sqltemplateNOFIA44CHAVEACESSO.Value <> '' then
        if length(sqltemplateNOFIA44CHAVEACESSO.Value) <> 44 then
          begin
            Showmessage('Tamanho da Chave da NFe esta errado! Verifique!');
            dbedit3.SetFocus;
          end
        else
          begin
            Cnpj   := copy(sqltemplateNOFIA44CHAVEACESSO.Value,7,14);
            Serie  := copy(sqltemplateNOFIA44CHAVEACESSO.Value,23,3);
            Numero := copy(sqltemplateNOFIA44CHAVEACESSO.Value,26,9);
            Ano    := copy(sqltemplateNOFIA44CHAVEACESSO.Value,3,2);
            Mes    := copy(sqltemplateNOFIA44CHAVEACESSO.Value,5,2);

            sqltemplateNOCPA4ANO.Value       := '20'+Ano;
            SQLTemplateNOCPA5SERIE.AsInteger := StrToInt(Serie);
            sqltemplateNOCPA30NRO.Value      := IntToStr(strToInt(Numero));
            SQLTemplateFORNICOD.AsString     := dm.sqllocate('FORNECEDOR','FORNA14CGC','FORNICOD',''''+Cnpj+'''') ;
            sqltemplateNOCPDEMISSAO.AsString := copy(sqltemplateNOCPDEMISSAO.AsString,1,2)+'/' + Mes + '/20' + Ano;
            SQLTemplateNOCPDRECEBIMENTO.AsString := copy(sqltemplateNOCPDEMISSAO.AsString,1,2)+'/' + Mes + '/20' + Ano;
            DBEdit11.setfocus;
          end;
    end;
end;

procedure TFormCadastroNotaCompra.DBEdit10Exit(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in ([dsInsert, dsEdit]) then
    if (sqltemplateNOCPDEMISSAO.Value > sqltemplateNOCPDRECEBIMENTO.Value) then
      begin
        ShowMessage('Data do Recebimento Não pode ser menor que a Data da Emissão!');
        DBEdit10.SetFocus;
      end;
end;

procedure TFormCadastroNotaCompra.MnRecalcularFretenosItensClick(
  Sender: TObject);
var PercSobreTotal, TotalItem, VlrFreteItem : double;
begin
  inherited;
  if SQLTemplateNOCPCFRETEMANUAL.Value='S' then
    begin
      SQLNotaCompraItens.Close;
      SQLNotaCompraItens.MacroByName('MFiltro').AsString := 'NOCPA13ID = ''' + SQLTemplate.FindField('NOCPA13ID').AsString + '''' ;
      SQLNotaCompraItens.Open;
      SQLNotaCompraItens.first;
      while not SQLNotaCompraItens.eof do
        begin
          TotalItem      := (SQLNotaCompraItensNOCIN3VLREMBAL.Value * SQLNotaCompraItensNOCIN3QTDEMBAL.Value)-SQLNotaCompraItensNOCIN3VLRDESC.Value;
          PercSobreTotal := (TotalItem / SQLTemplateNOCPN3TOTITENS.Value) * 100;
          VlrFreteItem   := (SQLTemplateNOCPN3VLRFRETE.Value * PercSobreTotal) / 100;
          dm.sqltemplate.Close;
          dm.sqltemplate.sql.clear;
          dm.sqltemplate.sql.add('update notacompraitem set NOCIN3VLRFRETE='+ConvFloatToStr(VlrFreteItem));
          dm.sqltemplate.sql.add('where nocpa13id='''+SQLTemplateNOCPA13ID.Value+''' and prodicod='+SQLNotaCompraItensPRODICOD.AsString);
          dm.sqltemplate.Prepare;
          dm.sqltemplate.ExecSQL;

          SQLNotaCompraItens.next;
        end;
      showMessage('Rotina de Frete Recalculado com sucesso!');
    end
  else
    showMessage('O frete precisa ter sido lançado manual para poder executar essa rotina!');
end;

end.



