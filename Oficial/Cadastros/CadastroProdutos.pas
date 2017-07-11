unit CadastroProdutos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, RXCtrls, StdCtrls, Mask,
  Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, jpeg, DBCtrls, RxDBComb,
  ToolEdit, RXDBCtrl, FormResources, VarSys, CurrEdit, DBActns, ActnList,
  ImgList, Variants, EDBNum, RxLookup, MemTable, ExtDlgs, Math, QDialogs,
  Serial, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel, UCrpe32;

type
  TFormCadastroProduto = class(TFormCadastroTEMPLATE)
    SQLTemplatePRODICOD: TIntegerField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplatePRODIAGRUPGRADE: TIntegerField;
    SQLTemplateGRADICOD: TIntegerField;                     
    SQLTemplateCORICOD: TIntegerField;
    SQLTemplateICMSICOD: TIntegerField;
    SQLTemplateCLFSICOD: TIntegerField;
    SQLTemplateUNIDICOD: TIntegerField;
    SQLTemplateMARCICOD: TIntegerField;
    SQLTemplateGRUPICOD: TIntegerField;
    SQLTemplateSUBGICOD: TIntegerField;
    SQLTemplateVARIICOD: TIntegerField;
    SQLTemplatePRODICODPAI: TIntegerField;
    SQLTemplatePRODCTIPOBAIXA: TStringField;
    SQLTemplatePRODA60CODBAR: TStringField;
    SQLTemplatePRODA60REFER: TStringField;
    SQLTemplatePRODA30ADESCRREDUZ: TStringField;
    SQLTemplatePRODICODBALANCA: TIntegerField;
    SQLTemplatePRODA15APAVIM: TStringField;
    SQLTemplatePRODA15RUA: TStringField;
    SQLTemplatePRODA15PRATEL: TStringField;
    SQLTemplatePRODN3PESOBRUTO: TFloatField;
    SQLTemplatePRODN3PESOLIQ: TFloatField;
    SQLTemplatePRODN3CAPACEMBAL: TFloatField;
    SQLTemplatePRODDCAD: TDateTimeField;
    SQLTemplatePRODDULTALTER: TDateTimeField;
    SQLTemplatePRODDINIPROMO: TDateTimeField;
    SQLTemplatePRODDFIMPROMO: TDateTimeField;
    SQLTemplatePRODN3VLRCOMPRA: TFloatField;
    SQLTemplatePRODN3VLRCUSTO: TFloatField;
    SQLTemplatePRODN2COMISVISTA: TFloatField;
    SQLTemplatePRODDIMOBOLIZ: TDateTimeField;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    LabelSubGrupo: TLabel;
    LabelVariacao: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    SQLTemplatePRODN3VLRVENDA: TFloatField;
    AcessaMarca: TSpeedButton;
    AcessaUnidade: TSpeedButton;
    AcessaGrupo: TSpeedButton;
    AcessaSubgrupo: TSpeedButton;
    AcessaVariacao: TSpeedButton;
    AcessaGrade: TSpeedButton;
    AcessaTamanho: TSpeedButton;
    AcessaCor: TSpeedButton;
    Label20: TLabel;
    TabSheetDadosAdicionais: TTabSheet;
    SQLTemplatePRODN3QTDEBAIXA: TFloatField;
    SQLTemplatePRODA60DESCR: TStringField;
    SQLTemplatePRODN3VLRVENDAPROM: TFloatField;
    SQLTemplatePRODN3VLRCUSTOMED: TFloatField;
    SQLTemplatePRODN3PERCIPI: TFloatField;
    SQLTemplatePRODN3PERCMARGLUCR: TFloatField;
    SQLTemplatePRODCATIVO: TStringField;
    SQLTemplatePRODCSERVICO: TStringField;
    SQLTemplatePRODCGERACOMIS: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePRODN2COMISPRAZO: TFloatField;
    Panel4: TPanel;
    Label47: TLabel;
    DBEdit38: TDBEdit;
    Label50: TLabel;
    DBEdit41: TDBEdit;
    Label52: TLabel;
    DBEdit46: TDBEdit;
    Label53: TLabel;
    DBEdit47: TDBEdit;
    Label54: TLabel;
    DBEdit48: TDBEdit;
    Label61: TLabel;
    DBEdit55: TDBEdit;
    Label62: TLabel;
    SQLTemplateGRTMICOD: TIntegerField;
    DBEdit56: TDBEdit;
    ButtonComposicao: TRxSpeedButton;
    GroupBox4: TGroupBox;
    DBEdit13: TDBMemo;
    ButtonFornecedores: TRxSpeedButton;
    ButtonSaldo: TRxSpeedButton;
    ButtonReajustes: TRxSpeedButton;
    TabSheetSaldos: TTabSheet;
    GroupBox5: TGroupBox;
    SQLProdutoSaldo: TRxQuery;
    SQLProdutoSaldoEMPRICOD: TIntegerField;
    SQLProdutoSaldoPRODICOD: TIntegerField;
    SQLProdutoSaldoPSLDN3QTDE: TFloatField;
    SQLProdutoSaldoPSLDN3QTDMIN: TFloatField;
    SQLProdutoSaldoPSLDN3QTDMAX: TFloatField;
    DSSQLProdutoSaldo: TDataSource;
    SQLProdutoSaldoEmpresaLookup: TStringField;
    TabSheetReajustes: TTabSheet;
    SQLTemplatePRODIORIGEM: TIntegerField;
    SQLProdutoReajuste: TRxQuery;
    DSSQLProdutoReajuste: TDataSource;
    SQLProdutoReajustePRODICOD: TIntegerField;
    SQLProdutoReajustePRRJDREAJUSTE: TDateTimeField;
    SQLProdutoReajustePRRJN2VLRCOMPRA: TFloatField;
    SQLProdutoReajustePRRJN2MARGEM: TFloatField;
    SQLProdutoReajustePRRJVLRVENDA: TFloatField;
    DBGrid2: TDBGrid;
    GeraodaGrade1: TMenuItem;
    SQLProdutoSaldoNovo: TRxQuery;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLOperacaoEstoque: TRxQuery;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    SQLProdutoSaldoNovoEMPRICOD: TIntegerField;
    SQLProdutoSaldoNovoPRODICOD: TIntegerField;
    SQLProdutoSaldoNovoPSLDN3QTDE: TFloatField;
    SQLProdutoSaldoNovoPSLDN3QTDMIN: TFloatField;
    SQLProdutoSaldoNovoPSLDN3QTDMAX: TFloatField;
    SQLProdutoSaldoNovoPENDENTE: TStringField;
    SQLProdutoSaldoNovoREGISTRO: TDateTimeField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    ButtonProdutoSerie: TRxSpeedButton;
    SQLTemplatePRODDULTATUALIZ: TDateTimeField;
    SQLTemplatePRODA60DIMENSAO: TStringField;
    UpdateSQLProdutoSaldo: TUpdateSQL;
    SQLProdutoReajustePRRJICOD: TIntegerField;
    ButtonCompras: TRxSpeedButton;
    SQLNotasCompra: TRxQuery;
    DSSQLNotasCompra: TDataSource;
    TabSheetCompras: TTabSheet;
    DBGridCompras: TDBGrid;
    SQLNotasCompraNOCPA13ID: TStringField;
    SQLNotasCompraEMPRICOD: TIntegerField;
    SQLNotasCompraFORNICOD: TIntegerField;
    SQLNotasCompraNOCPA30NRO: TStringField;
    SQLNotasCompraNOCPCSTATUS: TStringField;
    SQLNotasCompraOPESICOD: TIntegerField;
    SQLNotasCompraNOCPDEMISSAO: TDateTimeField;
    SQLNotasCompraNOCPDRECEBIMENTO: TDateTimeField;
    SQLNotasCompraPRODICOD: TIntegerField;
    SQLNotasCompraNOCIN3QTDBONIF: TFloatField;
    SQLNotasCompraNOCIN3VLRDESC: TFloatField;
    SQLNotasCompraNOCIN3PERCDESC: TFloatField;
    SQLNotasCompraNOCIN3VLRICMS: TFloatField;
    SQLNotasCompraNOCIN3PERCICMS: TFloatField;
    SQLNotasCompraNOCIN3VLRSUBST: TFloatField;
    SQLNotasCompraNOCIN3VLRIPI: TFloatField;
    SQLNotasCompraNOCIN3PERCIPI: TFloatField;
    SQLNotasCompraNOCIN3VLRCUSTOMED: TFloatField;
    SQLNotasCompraNOCIN3VLRFRETE: TFloatField;
    SQLNotasCompraFORNA60RAZAOSOC: TStringField;
    SQLNotasCompraLOTEA30NRO: TStringField;
    SQLTemplatePRODISITTRIB: TIntegerField;
    SQLTemplatePRODICODETIQBAL: TIntegerField;
    SQLTemplatePRODIDIASVALIDADE: TIntegerField;
    SQLProdutoReajustePRRJN3VLRCUSTO: TFloatField;
    SQLTemplatePRODN3VLRCOMPRAMED: TFloatField;
    SQLGrupo: TRxQuery;
    SQLSubGrupo: TRxQuery;
    SQLVariacao: TRxQuery;
    DSSQLGrupo: TDataSource;
    DSSQLSubGrupo: TDataSource;
    ComboGrupo: TRxDBLookupCombo;
    ComboSubGrupo: TRxDBLookupCombo;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    SQLSubGrupoGRUPICOD: TIntegerField;
    SQLVariacaoVARIICOD: TIntegerField;
    SQLVariacaoVARIA60DESCR: TStringField;
    ComboVariacao: TRxDBLookupCombo;
    DSSQLVariacao: TDataSource;
    Label11: TLabel;
    SQLTemplateGRUPA60DESCR: TStringField;
    SQLTemplateSUBGA60DESCR: TStringField;
    SQLTemplateVARIA60DESCR: TStringField;
    ComboMarca: TRxDBLookupCombo;
    SQLMarca: TRxQuery;
    DSSQLMarca: TDataSource;
    SQLTemplateMARCA60DESCR: TStringField;
    ComboGrade: TRxDBLookupCombo;
    SQLGrade: TRxQuery;
    DSSQLGrade: TDataSource;
    SQLGradeGRADICOD: TIntegerField;
    SQLGradeGRADA30DESCR: TStringField;
    ComboTamanho: TRxDBLookupCombo;
    SQLTamanho: TRxQuery;
    DSSQLTamanho: TDataSource;
    ComboCor: TRxDBLookupCombo;
    SQLTamanhoGRTMICOD: TIntegerField;
    SQLTamanhoGRTMA5DESCR: TStringField;
    SQLTemplateGRTMA5DESCR: TStringField;
    SQLCor: TRxQuery;
    SQLCorCORICOD: TIntegerField;
    SQLCorCORA30DESCR: TStringField;
    DSSQLCor: TDataSource;
    ComboUnidade: TRxDBLookupCombo;
    SQLUnidade: TRxQuery;
    DSSQLUnidade: TDataSource;
    SQLUnidadeUNIDICOD: TIntegerField;
    SQLUnidadeUNIDA5DESCR: TStringField;
    SQLIcms: TRxQuery;
    DSSQLIcms: TDataSource;
    SQLIcmsICMSICOD: TIntegerField;
    SQLIcmsICMSA60DESCR: TStringField;
    SQLClasFiscal: TRxQuery;
    SQLClasFiscalCLFSICOD: TIntegerField;
    SQLClasFiscalCLFSA30DESCR: TStringField;
    DSSQLClasFiscal: TDataSource;
    SQLIcmsICMSN2ALIQUOTA: TFloatField;
    SQLTemplateICMSN2ALIQUOTA: TFloatField;
    SQLTemplateCORA30DESCR: TStringField;
    SQLTemplateGRADA30DESCR: TStringField;
    SQLTemplateUNIDA5DESCR: TStringField;
    SQLTemplateCLFSA30DESCR: TStringField;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    SQLGradeTamanho: TRxQuery;
    SQLGradeTamanhoGRADICOD: TIntegerField;
    SQLGradeTamanhoGRTMICOD: TIntegerField;
    SQLGradeTamanhoGRTMA5DESCR: TStringField;
    SQLGradeTamanhoPENDENTE: TStringField;
    SQLGradeTamanhoREGISTRO: TDateTimeField;
    SQLProduto: TRxQuery;
    SQLProdutoGrade: TRxQuery;
    SQLProdutoGradePRODICOD: TIntegerField;
    SQLProdutoGradePRODIAGRUPGRADE: TIntegerField;
    SQLProdutoGradePRODA60DESCR: TStringField;
    SQLProdutoGradePRODN3VLRVENDA: TFloatField;
    SQLProdutoGradePRODN3VLRCOMPRA: TFloatField;
    SQLProdutoGradePRODN3VLRCUSTO: TFloatField;
    SQLProdutoGradeGRADICOD: TIntegerField;
    TblSaldoEmpresa: TMemoryTable;
    TblSaldoEmpresaEmpresa: TStringField;
    TblSaldoEmpresaCor: TStringField;
    TblSaldoEmpresaTotal: TFloatField;
    TblSaldoEmpresaQtd1: TFloatField;
    TblSaldoEmpresaQtd2: TFloatField;
    TblSaldoEmpresaQtd3: TFloatField;
    TblSaldoEmpresaQtd4: TFloatField;
    TblSaldoEmpresaQtd5: TFloatField;
    TblSaldoEmpresaQtd6: TFloatField;
    TblSaldoEmpresaQtd7: TFloatField;
    TblSaldoEmpresaQtd8: TFloatField;
    TblSaldoEmpresaQtd9: TFloatField;
    TblSaldoEmpresaQtd10: TFloatField;
    TblSaldoEmpresaQtd11: TFloatField;
    TblSaldoEmpresaQtd12: TFloatField;
    TblSaldoEmpresaQtd13: TFloatField;
    TblSaldoEmpresaQtd14: TFloatField;
    TblSaldoEmpresaQtd15: TFloatField;
    DSTblSaldoEmpresa: TDataSource;
    DBGridGradeSaldo: TDBGrid;
    DBGridSaldo: TDBGrid;
    Panel7: TPanel;
    Label73: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    DBEdit10: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    Label51: TLabel;
    DBEdit42: TDBEdit;
    SQLTamanhoGRADICOD: TIntegerField;
    ButtonGrade: TRxSpeedButton;
    TabSheetGrade: TTabSheet;
    DBGrid1: TDBGrid;
    MEMGradeProduto: TMemoryTable;
    MEMGradeProdutoGrade: TStringField;
    MEMGradeProdutoTam1: TStringField;
    MEMGradeProdutoTam2: TStringField;
    MEMGradeProdutoTam3: TStringField;
    MEMGradeProdutoTam4: TStringField;
    MEMGradeProdutoTam5: TStringField;
    MEMGradeProdutoTam6: TStringField;
    MEMGradeProdutoTam7: TStringField;
    MEMGradeProdutoTam8: TStringField;
    MEMGradeProdutoTam9: TStringField;
    MEMGradeProdutoTam10: TStringField;
    MEMGradeProdutoTam11: TStringField;
    MEMGradeProdutoTam12: TStringField;
    MEMGradeProdutoTam13: TStringField;
    MEMGradeProdutoTam14: TStringField;
    MEMGradeProdutoTam15: TStringField;
    MEMGradeProdutoCor: TStringField;
    MEMGradeProdutoValorVenda: TFloatField;
    DSMEMGradeProduto: TDataSource;
    SQLGradeProduto: TRxQuery;
    DBGridGradeProduto: TDBGrid;
    DSSQLGradeProduto: TDataSource;
    Panel8: TPanel;
    Label63: TLabel;
    Label91: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label104: TLabel;
    DBEdit57: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit79: TDBEdit;
    Label90: TLabel;
    DBEdit65: TDBEdit;
    MEMGradeCompras: TMemoryTable;
    MEMGradeComprasNota: TStringField;
    SQLGradeNotaCompra: TRxQuery;
    SQLGradeNotaCompraNOCPA30NRO: TStringField;
    SQLGradeNotaCompraPRODICOD: TIntegerField;
    SQLGradeNotaCompraNOCIN3QTDEMBAL: TFloatField;
    SQLGradeNotaCompraPRODIAGRUPGRADE: TIntegerField;
    SQLGradeNotaCompraGRADICOD: TIntegerField;
    SQLGradeNotaCompraGRTMICOD: TIntegerField;
    SQLGradeNotaCompraCORICOD: TIntegerField;
    SQLGradeNotaCompraCORA30DESCR: TStringField;
    MEMGradeComprasCor: TStringField;
    MEMGradeComprasTotal: TFloatField;
    MEMGradeComprasQtd1: TFloatField;
    MEMGradeComprasQtd2: TFloatField;
    MEMGradeComprasQtd3: TFloatField;
    MEMGradeComprasQtd4: TFloatField;
    MEMGradeComprasQtd5: TFloatField;
    MEMGradeComprasQtd6: TFloatField;
    MEMGradeComprasQtd7: TFloatField;
    MEMGradeComprasQtd8: TFloatField;
    MEMGradeComprasQtd9: TFloatField;
    MEMGradeComprasQtd10: TFloatField;
    MEMGradeComprasQtd11: TFloatField;
    MEMGradeComprasQtd12: TFloatField;
    MEMGradeComprasQtd13: TFloatField;
    MEMGradeComprasQtd14: TFloatField;
    MEMGradeComprasQtd15: TFloatField;
    DBGridGradeCompras: TDBGrid;
    DSMEMGradeCompras: TDataSource;
    SQLMovimentoEstoqueGrade: TRxQuery;
    SQLExclusaoGrade: TRxQuery;
    UpdateSQLExclusaoGrade: TUpdateSQL;
    SQLExclusaoGradePRODICOD: TIntegerField;
    SQLCupom: TRxQuery;
    SQLCupomCUPOA13ID: TStringField;
    SQLCupomPRODICOD: TIntegerField;
    SQLCupomCPITN3QTD: TFloatField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLCupomOPESA60DESCR: TStringField;
    SQLCupomOPESCENTRADASAIDA: TStringField;
    SQLCupomPRODA60DESCR: TStringField;
    SQLCupomPRODIAGRUPGRADE: TIntegerField;
    SQLCupomPRODA60REFER: TStringField;
    SQLCupomCORA30DESCR: TStringField;
    SQLCupomGRTMA5DESCR: TStringField;
    SQLCupomEMPRICOD: TIntegerField;
    SQLCupomCUPOINRO: TIntegerField;
    SQLNotaFiscal: TRxQuery;
    SQLNotaFiscalNOFIA13ID: TStringField;
    SQLNotaFiscalPRODICOD: TIntegerField;
    SQLNotaFiscalNFITN3QUANT: TFloatField;
    SQLNotaFiscalNOFIDEMIS: TDateTimeField;
    SQLNotaFiscalOPESA60DESCR: TStringField;
    SQLNotaFiscalOPESCENTRADASAIDA: TStringField;
    SQLNotaFiscalPRODA60DESCR: TStringField;
    SQLNotaFiscalPRODIAGRUPGRADE: TIntegerField;
    SQLNotaFiscalPRODA60REFER: TStringField;
    SQLNotaFiscalCORA30DESCR: TStringField;
    SQLNotaFiscalGRTMA5DESCR: TStringField;
    SQLNotaFiscalEMPRICOD: TIntegerField;
    SQLNotaFiscalNOFIINUMERO: TIntegerField;
    SQLNotaFiscalLOTEA30NRO: TStringField;
    SQLNotaCompra: TRxQuery;
    SQLNotaCompraNOCPA13ID: TStringField;
    SQLNotaCompraPRODICOD: TIntegerField;
    SQLNotaCompraNOCPDRECEBIMENTO: TDateTimeField;
    SQLNotaCompraOPESA60DESCR: TStringField;
    SQLNotaCompraOPESCENTRADASAIDA: TStringField;
    SQLNotaCompraPRODA60DESCR: TStringField;
    SQLNotaCompraPRODIAGRUPGRADE: TIntegerField;
    SQLNotaCompraPRODA60REFER: TStringField;
    SQLNotaCompraCORA30DESCR: TStringField;
    SQLNotaCompraGRTMA5DESCR: TStringField;
    SQLNotaCompraEMPRICOD: TIntegerField;
    SQLNotaCompraNOCPA30NRO: TStringField;
    SQLNotaCompraLOTEA30NRO: TStringField;
    SQLMovimentoDiverso: TRxQuery;
    SQLMovimentoDiversoMOVDA13ID: TStringField;
    SQLMovimentoDiversoPRODICOD: TIntegerField;
    SQLMovimentoDiversoMVDIN3QTD: TFloatField;
    SQLMovimentoDiversoMOVDDMOVIMENTO: TDateTimeField;
    SQLMovimentoDiversoOPESA60DESCR: TStringField;
    SQLMovimentoDiversoOPESCENTRADASAIDA: TStringField;
    SQLMovimentoDiversoPRODA60DESCR: TStringField;
    SQLMovimentoDiversoPRODIAGRUPGRADE: TIntegerField;
    SQLMovimentoDiversoPRODA60REFER: TStringField;
    SQLMovimentoDiversoCORA30DESCR: TStringField;
    SQLMovimentoDiversoGRTMA5DESCR: TStringField;
    SQLMovimentoDiversoEMPRICOD: TIntegerField;
    SQLMovimentoDiversoLOTEA30NRO: TStringField;
    SQLProdutoMov: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODA60REFER: TStringField;
    DSSQLProduto: TDataSource;
    SQLSaldo: TRxQuery;
    DSTblTemporaria: TDataSource;
    TblTemporaria: TTable;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaDataMov: TDateField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaQtde: TFloatField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaPRODA60REFER: TStringField;
    TblTemporariaCORA30DESCR: TStringField;
    TblTemporariaGRTMA5DESCR: TStringField;
    TblTemporariaDOCUMENTO: TStringField;
    TblTemporariaOPESA60DESCR: TStringField;
    TblTemporariaEntradaSaida: TStringField;
    TblTemporariaLOTEA30NRO: TStringField;
    TblTemporariaSALDOINICIAL: TFloatField;
    DSSQLEmpresa: TDataSource;
    SQLProdutoComposicao: TRxQuery;
    DSSQLProdutoComposicao: TDataSource;
    SQLProdutoComposicaoPRODICOD: TIntegerField;
    SQLProdutoReajustePRRJN3ULTCOMPRAMED: TFloatField;
    SQLProdutoReajustePRRJN3ULTCUSTOMED: TFloatField;
    SQLTemplatePRODN3DOLARCUSTO: TFloatField;
    SQLTemplatePRODN3DOLARCOMPRA: TFloatField;
    SQLTemplatePRODN3DOLARVENDA: TFloatField;
    SQLTemplateVlrVendaConvertido: TFloatField;
    SQLTemplateVlrCustoConvertido: TFloatField;
    SQLGradeProdutoPRODICOD: TIntegerField;
    SQLGradeProdutoPRODA60CODBAR: TStringField;
    SQLGradeProdutoPRODA15CODANT: TStringField;
    SQLGradeProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLGradeProdutoPRODA60REFER: TStringField;
    SQLGradeProdutoPRODA60DESCR: TStringField;
    SQLGradeProdutoPRODA30ADESCRREDUZ: TStringField;
    SQLGradeProdutoPRODDCAD: TDateTimeField;
    SQLGradeProdutoPRODDULTALTER: TDateTimeField;
    SQLGradeProdutoPRODN3VLRVENDA: TFloatField;
    SQLGradeProdutoPRODN3VLRCOMPRA: TFloatField;
    SQLGradeProdutoPRODN3VLRCUSTO: TFloatField;
    SQLGradeProdutoPRODN3VLRCUSTOMED: TFloatField;
    SQLGradeProdutoPRODN3PERCIPI: TFloatField;
    SQLGradeProdutoPRODN3PERCMARGLUCR: TFloatField;
    SQLGradeProdutoPRODCGERACOMIS: TStringField;
    SQLGradeProdutoPRODN2COMISVISTA: TFloatField;
    SQLGradeProdutoPRODN2COMISPRAZO: TFloatField;
    SQLGradeProdutoCORA30DESCR: TStringField;
    SQLGradeProdutoMARCA60DESCR: TStringField;
    SQLGradeProdutoGRUPA60DESCR: TStringField;
    SQLGradeProdutoSUBGA60DESCR: TStringField;
    SQLGradeProdutoVARIA60DESCR: TStringField;
    SQLGradeProdutoGRTMA5DESCR: TStringField;
    SQLGradeProdutoGRADA30DESCR: TStringField;
    SQLGradeProdutoPRODCATIVO: TStringField;
    SQLGradeProdutoMARCICOD: TIntegerField;
    SQLGradeProdutoUNIDICOD: TIntegerField;
    SQLGradeProdutoGRADICOD: TIntegerField;
    SQLGradeProdutoGRTMICOD: TIntegerField;
    SQLGradeProdutoGRUPICOD: TIntegerField;
    SQLGradeProdutoSUBGICOD: TIntegerField;
    SQLGradeProdutoVARIICOD: TIntegerField;
    SQLGradeProdutoICMSICOD: TIntegerField;
    SQLGradeProdutoCORICOD: TIntegerField;
    SQLGradeProdutoPENDENTE: TStringField;
    SQLGradeProdutoREGISTRO: TDateTimeField;
    SQLGradeProdutoPRODN3VLRCOMPRAMED: TFloatField;
    SQLTemplatePRODITIPOPRODBALAN: TStringField;
    PictureDialog: TOpenPictureDialog;
    SQLTemplatePRODBIMAGEM: TBlobField;
    SQLTemplatePRODCSUBSTRIB: TStringField;
    SQLTemplateVlrCompraConvertido: TFloatField;
    SQLSaldoMes: TRxQuery;
    DBGrid4: TDBGrid;
    Label92: TLabel;
    DSSQLSaldoMes: TDataSource;
    SQLSaldoMesPSMEA2MES: TStringField;
    SQLSaldoMesPSMEA4ANO: TStringField;
    SQLSaldoMesPSMEN3QTDE: TFloatField;
    SQLSaldoMesPSMEN2CUSTO: TFloatField;
    SQLSaldoMesPSMEN2CUSTOMED: TFloatField;
    SQLSaldoMesPSMEN2CUSTOTOT: TFloatField;
    SQLSaldoMesPSMEN2CUSTOMEDTOT: TFloatField;
    SQLSaldoMesPSMEN2COMPRA: TFloatField;
    SQLSaldoMesPSMEN2COMPRATOT: TFloatField;
    SQLSaldoMesPSMEN2COMPRAMED: TFloatField;
    SQLSaldoMesPSMEN2COMPRAMEDTOT: TFloatField;
    SQLSaldoMesEMPRICOD: TIntegerField;
    SQLTemplatePRODCTEMNROSERIE: TStringField;
    DBCheckBox2: TDBCheckBox;
    GroupBox1: TGroupBox;
    DBGridProdutoSerie: TDBGrid;
    SQLProdutoSerie: TRxQuery;
    SQLProdutoSeriePRSEA60NROSERIE: TStringField;
    DSSQLProdutoSerie: TDataSource;
    abeladePreco1: TMenuItem;
    SQLSaldoEmpresaAtual: TRxQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    BCDField1: TFloatField;
    BCDField2: TFloatField;
    BCDField3: TFloatField;
    DSSQLSaldoEmpresaAtual: TDataSource;
    SQLTemplatePRODN2PERCFRETE: TFloatField;
    GroupBoxFOTO: TGroupBox;
    ImageProduto: TImage;
    SQLTemplatePRODA03GARANTIA: TStringField;
    SQLTemplatePRODA30INF01ETQBARRAS: TStringField;
    SQLTemplatePRODA30INF02ETQBARRAS: TStringField;
    Label6: TLabel;
    ComboColecao: TRxDBLookupCombo;
    AcessaColecao: TSpeedButton;
    SQLColecao: TRxQuery;
    DSSQLColecao: TDataSource;
    SQLColecaoCOLEICOD: TIntegerField;
    SQLColecaoCOLEA60DESCR: TStringField;
    SQLColecaoPENDENTE: TStringField;
    SQLColecaoREGISTRO: TDateTimeField;
    SQLTemplateCOLEICOD: TIntegerField;
    BtnCapturaFoto: TSpeedButton;
    BtnRemoveFoto: TSpeedButton;
    SQLUnidadeUNIDA15DESCR: TStringField;
    SQLTemplatePRODCTIPO: TStringField;
    SQLTemplatePRODN2PERDA: TFloatField;
    SQLTemplatePRODN2PIS: TFloatField;
    SQLTemplatePRODN3ALTURA: TFloatField;
    SQLTemplatePRODN3COMPRIMENTO: TFloatField;
    SQLTemplatePRODN3DIMENTOTAL: TFloatField;
    SQLTemplatePRODN3LARGURA: TFloatField;
    SQLTemplatePRODN2PERCDESP: TFloatField;
    SQLTemplatePRODN2PERCSUBST: TFloatField;
    SQLTemplatePRODA30CODESTRUT: TStringField;
    SQLTemplatePRODA15CODANT: TStringField;
    PanelPesquisa: TPanel;
    BTNLocalizar: TSpeedButton;
    ComboConsultaMarca: TRxDBLookupCombo;
    ComboConsultaGrupo: TRxDBLookupCombo;
    Label41: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    TblTemporariaVENDICOD: TIntegerField;
    SQLCupomVENDICOD: TIntegerField;
    SQLNotaFiscalVENDICOD: TIntegerField;
    SQLTemplatePRODN3PERCMARGLUC2: TFloatField;
    MnEntradaRapidaEstoque: TMenuItem;
    AcessaCdBarras: TSpeedButton;
    BtSalvarImagem: TSpeedButton;
    SQLTemplatePRODN3PERCMGLVFIXA: TFloatField;
    SQLTemplatePRODN3PERCMGLAFIXA: TFloatField;
    SQLTemplatePRODDULTCOMPRA: TDateTimeField;
    SQLTemplatePRODDULTVENDA: TDateTimeField;
    SQLTemplatePRODN3QTDULTCOMPRA: TFloatField;
    GroupBoxDatas: TGroupBox;
    Label30: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label26: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label33: TLabel;
    EvDBNumEdit3: TEvDBNumEdit;
    SQLTemplatePRODN2PERCDIFICM: TFloatField;
    SQLNotasCompraNOCIN3CAPEMBAL: TFloatField;
    SQLTemplatePRODIPRINCIPAL: TIntegerField;
    SQLGradeProdutoPRODN3VLRVENDA2: TFloatField;
    RecalcularaMargemdeLucroRealdetodososprodutos1: TMenuItem;
    MnCriaCdBarras: TMenuItem;
    SQLTemplatePRODCPERMITETROCA: TStringField;
    SQLTemplatePRODDPREVCOMPRA: TDateTimeField;
    Label56: TLabel;
    DBDateEdit3: TDBDateEdit;
    GroupConsultaSituacao: TGroupBox;
    RadioAtivo: TRadioButton;
    RadioInativo: TRadioButton;
    MnEnviarProdCadMat: TMenuItem;
    SQLTemplatePRODCCOFINS: TStringField;
    MnExportarProdutosparaContabilidadeAnalisarIncideCofins: TMenuItem;
    LabelInfo: TLabel;
    SQLTemplatePRODN3VLRVENDA2: TFloatField;
    TabSheetMovimentoEstoque: TTabSheet;
    ButtonMovimentoEstoque: TRxSpeedButton;
    GroupBox10: TGroupBox;
    ComboEmpresa: TRxDBLookupCombo;
    GroupBox9: TGroupBox;
    Label93: TLabel;
    Label97: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    Progresso: TProgressBar;
    BtnVisualizar: TSpeedButton;
    SQLSaldoEmpresaAtualVlrCustoEstoqueEmpresaAtual: TFloatField;
    DBEdit32: TDBEdit;
    Label111: TLabel;
    SQLNotaCompraNOCIN3CAPEMBAL: TFloatField;
    SQLMovimentoEstoque: TRxQuery;
    SQLMovimentoEstoqueEMPRICOD: TIntegerField;
    SQLMovimentoEstoqueMVESDMOV: TDateTimeField;
    SQLMovimentoEstoqueOPESICOD: TIntegerField;
    SQLMovimentoEstoquePRODICOD: TIntegerField;
    SQLMovimentoEstoqueCUPOA13ID: TStringField;
    SQLMovimentoEstoqueNOFIA13ID: TStringField;
    SQLMovimentoEstoqueMOVDA13ID: TStringField;
    SQLMovimentoEstoqueNOCPA13ID: TStringField;
    SQLMovimentoEstoqueMVESN3QTDENTRADA: TFloatField;
    SQLMovimentoEstoqueMVESN3QTDSAIDA: TFloatField;
    SQLMovimentoEstoqueOPESA60DESCR: TStringField;
    SQLMovimentoEstoqueOPESCENTRADASAIDA: TStringField;
    SQLMovimentoEstoquePRODA60DESCR: TStringField;
    SQLMovimentoEstoquePRODIAGRUPGRADE: TIntegerField;
    SQLMovimentoEstoquePRODA60REFER: TStringField;
    SQLMovimentoEstoqueCORA30DESCR: TStringField;
    SQLMovimentoEstoqueGRTMA5DESCR: TStringField;
    SQLTemplatePRODCIMPETIQCDBAR: TStringField;
    MnVerificaProdutossemGrupo: TMenuItem;
    MnVerificaProdutossemGrupoSubGrupo: TMenuItem;
    MnVerificaProdutossemGrupoSubGrupoVariao: TMenuItem;
    MnVerificaProdutossemMarca: TMenuItem;
    SQLSubGrupoSUBGN3MARGEM: TFloatField;
    SQLTemplatePRODN3QTDVOLUME: TFloatField;
    SQLGradeProdutoPRODDULTCOMPRA: TDateTimeField;
    SQLGradeProdutoPRODDULTVENDA: TDateTimeField;
    SQLEspelhoNovoLanc: TRxQuery;
    SQLTemplatePRODCVDESTNEG: TStringField;
    DBGrid3: TDBGrid;
    BtnDetalhado: TSpeedButton;
    TblTemporaria2: TTable;
    DSTblTemporaria2: TDataSource;
    TblTemporaria2CLIENTE: TStringField;
    TblTemporaria2MUNICIPIO: TStringField;
    TblTemporaria2UF: TStringField;
    TblTemporaria2VALORUNITARIO: TFloatField;
    TblTemporaria2VENCIMENTO: TDateField;
    TblTemporaria2EMPRICOD: TIntegerField;
    TblTemporaria2PRODICOD: TIntegerField;
    TblTemporaria2PRODA60DESCR: TStringField;
    TblTemporaria2PRODA60REFER: TStringField;
    TblTemporaria2CORA30DESCR: TStringField;
    TblTemporaria2GRTMA5DESCR: TStringField;
    TblTemporaria2DOCUMENTO: TStringField;
    TblTemporaria2OPESA60DESCR: TStringField;
    TblTemporaria2LOTEA30NRO: TStringField;
    TblTemporaria2SALDOINICIAL: TFloatField;
    TblTemporaria2VENDICOD: TIntegerField;
    TblTemporaria2DATAMOV: TDateField;
    TblTemporaria2QTDE: TFloatField;
    TblTemporaria2ENTRADASAIDA: TStringField;
    SQLProdutoOldView: TRxQuery;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    BCDField4: TFloatField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    SQLProdutoPRODICOD2: TIntegerField;
    SQLProdutoPRODIAGRUPGRADE2: TIntegerField;
    SQLProdutoPRODA60DESCR2: TStringField;
    SQLProdutoPRODN3VLRCUSTO: TFloatField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoCORA30DESCR: TStringField;
    SQLProdutoPSLDN3QTDE: TFloatField;
    SQLProdutoEMPRICOD: TIntegerField;
    SQLTemplatePRODA2CSTIPI: TStringField;
    SQLTemplatePRODA2CSTCOFINS: TStringField;
    SQLTemplatePRODA2CSTPIS: TStringField;
    SQLTemplatePRODN2ALIQCOFINS: TFloatField;
    SQLTemplatePRODN2ALIQPIS: TFloatField;
    SQLTemplatePRODCBLOQVPRAZO: TStringField;
    dsNCM: TDataSource;
    SQLNcm: TRxQuery;
    SQLNcmNCMICOD: TIntegerField;
    SQLNcmNCMA100DESCR: TStringField;
    SQLTemplateNCMICOD: TIntegerField;
    Label121: TLabel;
    N2: TMenuItem;
    N3: TMenuItem;
    MnSaidaRapidaEstoque: TMenuItem;
    MnCorrigeProdutosFilhosqueestaodiferentesdosPais: TMenuItem;
    SQLNcmNCMA30CODIGO: TStringField;
    SQLTemplatePRODA1TIPO: TStringField;
    SQLTemplatePRODA1MODBCST: TStringField;
    SQLTemplatePRODA1MODBC: TStringField;
    SQLTemplatePRODN2DESCMAX: TFloatField;
    Label106: TLabel;
    EvDBNumEdit7: TEvDBNumEdit;
    SQLIcmsICMSICODSITTRIB: TIntegerField;
    SQLTemplatePRODA20BARRAUNIDADE: TStringField;
    Label107: TLabel;
    DBEdit52: TDBEdit;
    DBMemo4: TDBMemo;
    SQLTemplatePRODA2TIPOITEM: TStringField;
    Label114: TLabel;
    ComboVendaEstNeg: TRxDBComboBox;
    Label132: TLabel;
    SQLTemplatePRODA30COZINHA: TStringField;
    SQLTemplatePRODCIMPCOZINHA: TStringField;
    SQLTemplatePRODCIMPVALE: TStringField;
    PageControl1: TPageControl;
    TabSheet5: TTabSheet;
    Label7: TLabel;
    Label122: TLabel;
    RxDBComboBox5: TRxDBComboBox;
    RxDBComboBox11: TRxDBComboBox;
    TabSheet1: TTabSheet;
    Label34: TLabel;
    AcessaICMS: TSpeedButton;
    Label13: TLabel;
    Label68: TLabel;
    Label105: TLabel;
    Label103: TLabel;
    ComboICMS: TRxDBLookupCombo;
    ComboOrigem: TRxDBComboBox;
    ComboSitTrib: TRxDBComboBox;
    ComboDetBaseCalcICM: TRxDBComboBox;
    ComboDetBaseCalcICMST: TRxDBComboBox;
    TabSheet2: TTabSheet;
    Label123: TLabel;
    Label116: TLabel;
    Label32: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    DBIPISaida: TEvDBNumEdit;
    RxDBComboBox8: TRxDBComboBox;
    RxDBComboBox12: TRxDBComboBox;
    EvDBNumEdit8: TEvDBNumEdit;
    EvDBNumEdit9: TEvDBNumEdit;
    EvDBNumEdit10: TEvDBNumEdit;
    TabSheet3: TTabSheet;
    Label118: TLabel;
    Label113: TLabel;
    Label128: TLabel;
    Label138: TLabel;
    RxDBComboBox10: TRxDBComboBox;
    DBEdit51: TDBEdit;
    RxDBComboBox13: TRxDBComboBox;
    EvDBNumEdit11: TEvDBNumEdit;
    PageControlValores: TPageControl;
    TabReais: TTabSheet;
    BtnCalcula: TSpeedButton;
    Label72: TLabel;
    Label108: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label39: TLabel;
    LbValorVenda: TLabel;
    LbValorVenda2: TLabel;
    DBEditVlrCusto: TEvDBNumEdit;
    DBEditCustoMedio: TEvDBNumEdit;
    Panel6: TPanel;
    DBMargemVarejo: TEvDBNumEdit;
    DBEditVlrPromocao: TEvDBNumEdit;
    DBSubsttrib: TEvDBNumEdit;
    DBFreteProduto: TEvDBNumEdit;
    DBDespDiv: TEvDBNumEdit;
    Panel13: TPanel;
    Panel14: TPanel;
    DBEditVlrCompra: TEvDBNumEdit;
    DBEditVlrVenda: TEvDBNumEdit;
    DBDataPromoIni: TDBDateEdit;
    DBDataPromoFim: TDBDateEdit;
    DBEditVlrVendaAtacado: TEvDBNumEdit;
    DBMargemAtacado: TEvDBNumEdit;
    Panel15: TPanel;
    DBMgFixaVarejo: TEvDBNumEdit;
    DBMgFixaAtacado: TEvDBNumEdit;
    DBDIFICM: TEvDBNumEdit;
    TabDolar: TTabSheet;
    Label31: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    EditDolarCompra: TEvDBNumEdit;
    EditDolarCusto: TEvDBNumEdit;
    EditDolarVenda: TEvDBNumEdit;
    EvDBNumEdit1: TEvDBNumEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    SQLTemplatePRODA3CSTIPIENTRADA: TStringField;
    SQLTemplatePRODA3CSTCOFINSENTRADA: TStringField;
    SQLTemplatePRODA3CSTPISENTRADA: TStringField;
    SQLTemplatePRODN2PERCIPIENTRADA: TFloatField;
    TabSheet6: TTabSheet;
    CkImpVale: TDBCheckBox;
    CkImpCozinha: TDBCheckBox;
    RxDBComboCozinha: TRxDBComboBox;
    GroupBoxLocaliz: TGroupBox;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    GroupBoxImpostos: TGroupBox;
    Label15: TLabel;
    Label28: TLabel;
    RxDBComboBox4: TRxDBComboBox;
    DBEdit9: TDBEdit;
    GroupBox3: TGroupBox;
    Label70: TLabel;
    DBEdit34: TDBEdit;
    ComboTipoBalanca: TRxDBComboBox;
    Label71: TLabel;
    BtnGerCodBal: TSpeedButton;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label112: TLabel;
    ComboImpEtqBarras: TRxDBComboBox;
    Label55: TLabel;
    ComboTroca: TRxDBComboBox;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    Label69: TLabel;
    DBEdit11: TDBEdit;
    Label40: TLabel;
    DBEdit25: TDBEdit;
    EvDBNumEdit6: TEvDBNumEdit;
    Label135: TLabel;
    GroupBoxComissoes: TGroupBox;
    Label12: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    RxComboComissao: TRxDBComboBox;
    DBEditVista: TEvDBNumEdit;
    DBEditPrazo: TEvDBNumEdit;
    GroupBoxPesos: TGroupBox;
    Label35: TLabel;
    Label37: TLabel;
    DBEdit17: TEvDBNumEdit;
    DBEdit36: TEvDBNumEdit;
    GroupBox7: TGroupBox;
    DBEdit19: TDBEdit;
    DBEdit23: TDBEdit;
    SQLNotasCompraNOCIN3VLRUNIT: TFloatField;
    SQLNotaCompraNOCIN3QTDEMBAL: TFloatField;
    SQLNotasCompraNOCIN3QTDEMBAL: TFloatField;
    TabSheet7: TTabSheet;
    Label42: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    SQLTemplatePRODA1CSTSERVICO: TStringField;
    SQLTemplatePRODICODLISTASERVICO: TIntegerField;
    Panel9: TPanel;
    Label22: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label27: TLabel;
    RxDBComboBox15: TRxDBComboBox;
    Label43: TLabel;
    DBEdit6: TDBEdit;
    MnVerificaProdutossemNCM: TMenuItem;
    MnVerificaProdutossemST: TMenuItem;
    DBIPICompra: TEvDBNumEdit;
    Label139: TLabel;
    ComboUnidade2: TRxDBLookupCombo;
    Label141: TLabel;
    AcessaUnidade2: TSpeedButton;
    SQLTemplateUNIDICOD2: TIntegerField;
    dsSQLUnidade2: TDataSource;
    SQLUnidade2: TRxQuery;
    SQLTemplateUnidade2: TStringField;
    SQLUnidade2UNIDICOD: TIntegerField;
    SQLUnidade2UNIDA5DESCR: TStringField;
    SQLUnidade2UNIDA15DESCR: TStringField;
    SQLNotasCompraEMPRICODDESTCOMPRA: TIntegerField;
    SQLTemplatePRODA255DESCRTEC: TMemoField;
    DBEdit37: TEvDBNumEdit;
    SQLTemplatePRODCRAPIDO: TStringField;
    MnCorrigeGradessemNCMs: TMenuItem;
    SQLTemplatePRODN3QTDVENDA2835D: TFloatField;
    SQLTemplatePRODN3QTDVENDA283542D: TFloatField;
    SQLTemplatePRODCMIX: TStringField;
    DBEditPRODN2VLRVENDA2835D: TEvDBNumEdit;
    dbEditPRODN2VLRVENDA283542D: TEvDBNumEdit;
    SQLTemplatePRODN2VLRVENDA2835D: TFloatField;
    SQLTemplatePRODN2VLRVENDA283542D: TFloatField;
    Label142: TLabel;
    Label143: TLabel;
    Label120: TLabel;
    ComboNCM1: TRxDBLookupCombo;
    ComboNCM2: TRxDBLookupCombo;
    AcessaNCM: TSpeedButton;
    SQLTemplatePRODIORDEMREST: TIntegerField;
    Label145: TLabel;
    DBEdit31: TDBEdit;
    ckIsentoCofins: TDBCheckBox;
    MnCorrigirProdutospelatabeladoSuperTributario: TMenuItem;
    N1: TMenuItem;
    Panel12: TPanel;
    btReplicarCad: TSpeedButton;
    N4: TMenuItem;
    RecalcularCustospelaComposicao: TMenuItem;
    SQLComposicao: TRxQuery;
    SQLProdutoPdvs: TRxQuery;
    MnCargadeProdutosemMassaparaPDVs: TMenuItem;
    SQLGradeProdutoPRODN2VLRVENDA2835D: TFloatField;
    SQLGradeProdutoPRODN2VLRVENDA283542D: TFloatField;
    SQLTemplatePRODN2MGVENDA283542D: TFloatField;
    SQLTemplatePRODN2MGVENDA2835D: TFloatField;
    DBMgFixa2835: TEvDBNumEdit;
    DBMgFixa283542: TEvDBNumEdit;
    lbValorVenda2835: TLabel;
    lbValorVenda283542: TLabel;
    SQLTemplatePRODCKIT: TStringField;
    DBCheckBox1: TDBCheckBox;
    ckBloqVendPrazo: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    Label144: TLabel;
    ComboMix: TRxDBComboBox;
    DBCheckBox4: TDBCheckBox;
    SQLTemplateLISTARMOBILE: TStringField;
    DBCheckBox6: TDBCheckBox;
    SQLTemplateSABORES: TStringField;
    CorrigeDescrioPrincipaleReduzida1: TMenuItem;
    SQLTemplateTABCEST: TStringField;
    Label18: TLabel;
    ComboCEST1: TRxDBLookupCombo;
    ComboCEST2: TRxDBLookupCombo;
    sqlCEST: TRxQuery;
    dsCEST: TDataSource;
    sqlCESTCEST: TStringField;
    sqlCESTNCM: TStringField;
    sqlCESTDESCRICAO: TStringField;
    Label117: TLabel;
    RxDBComboBox9: TRxDBComboBox;
    Label119: TLabel;
    DBEdit60: TDBEdit;
    Label140: TLabel;
    EvDBNumEdit13: TEvDBNumEdit;
    Label133: TLabel;
    RxDBComboBox14: TRxDBComboBox;
    btCorrigeProdutossemoCodigoCEST: TMenuItem;
    AcessaCEST: TSpeedButton;
    SQLSaldoEmpresaAtualEmpresaLookup: TStringField;
    Report: TCrpe;
    procedure FormCreate(Sender: TObject);
    procedure RxComboComissaoChange(Sender: TObject);
    procedure AcessaMarcaClick(Sender: TObject);
    procedure AcessaGrupoClick(Sender: TObject);
    procedure AcessaGradeClick(Sender: TObject);
    procedure AcessaCorClick(Sender: TObject);
    procedure AcessaTamanhoClick(Sender: TObject);
    procedure AcessaUnidadeClick(Sender: TObject);
    procedure AcessaICMSClick(Sender: TObject);
    procedure AcessaSubgrupoClick(Sender: TObject);
    procedure AcessaVariacaoClick(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure GeraodaGrade1Click(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplatePostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure SQLProdutoSaldoNovoBeforePost(DataSet: TDataSet);
    procedure SQLTemplatePRODA60DESCRChange(Sender: TField);
    procedure SQLTemplatePRODN3VLRVENDAChange(Sender: TField);
    procedure SQLMovimentoEstoqueBeforeOpen(DataSet: TDataSet);
    procedure BtnGerCodBalClick(Sender: TObject);
    procedure SQLProdutoSaldoBeforeInsert(DataSet: TDataSet);
    procedure SQLProdutoSaldoBeforePost(DataSet: TDataSet);
    procedure SQLProdutoSaldoBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplatePRODN3VLRCUSTOMEDChange(Sender: TField);
    procedure ComboMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboSubGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboVariacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboGradeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboTamanhoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboCorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboUnidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboICMSKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure TabSheetSaldosExit(Sender: TObject);
    procedure SQLTemplateAfterScroll(DataSet: TDataSet);
    procedure TblSaldoEmpresaBeforeOpen(DataSet: TDataSet);
    procedure MEMGradeComprasBeforeOpen(DataSet: TDataSet);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure PageControlValoresChange(Sender: TObject);
    procedure SQLGradeProdutoBeforePost(DataSet: TDataSet);
    procedure SQLGradeProdutoBeforeEdit(DataSet: TDataSet);
    procedure DBGridGradeProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridGradeProdutoEnter(Sender: TObject);
    procedure SQLGradeProdutoNewRecord(DataSet: TDataSet);
    procedure SQLGradeProdutoBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplatePRODN3DOLARCUSTOChange(Sender: TField);
    procedure BtnCapturaFotoClick(Sender: TObject);
    procedure BtnRemoveFotoClick(Sender: TObject);
    procedure BtnCalculaClick(Sender: TObject);
    procedure SQLProdutoReajusteBeforeEdit(DataSet: TDataSet);
    procedure SQLProdutoReajusteBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplatePRODN3DOLARCOMPRAChange(Sender: TField);
    procedure abeladePreco1Click(Sender: TObject);
    procedure SQLGradeProdutoAfterScroll(DataSet: TDataSet);
    procedure AcessaColecaoClick(Sender: TObject);
    procedure ComboColecaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplatePRODN3VLRCOMPRAChange(Sender: TField);
    procedure SQLTemplatePRODN3PERCMARGLUCRChange(Sender: TField);
    procedure BTNLocalizarClick(Sender: TObject);
    procedure SQLTemplatePRODN3PERCMARGLUC2Change(Sender: TField);
    procedure SQLTemplatePRODN3VLRVENDA2Change(Sender: TField);
    procedure MnEntradaRapidaEstoqueClick(Sender: TObject);
    procedure ImageProdutoClick(Sender: TObject);
    procedure BtSalvarImagemClick(Sender: TObject);
    procedure AcessaCdBarrasClick(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplatePRODN3PERCMGLVFIXAChange(Sender: TField);
    procedure SQLTemplatePRODN3PERCMGLAFIXAChange(Sender: TField);
    procedure RecalcularaMargemdeLucroRealdetodososprodutos1Click(
      Sender: TObject);
    procedure MnCriaCdBarrasClick(Sender: TObject);
    procedure SQLTemplateBeforeOpen(DataSet: TDataSet);
    procedure MnEnviarProdCadMatClick(Sender: TObject);
    procedure MnExportarProdutosparaContabilidadeAnalisarIncideCofinsClick(
      Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SQLSaldoEmpresaAtualCalcFields(DataSet: TDataSet);
    procedure MnVerificaProdutossemGrupoClick(Sender: TObject);
    procedure MnVerificaProdutossemGrupoSubGrupoClick(Sender: TObject);
    procedure MnVerificaProdutossemGrupoSubGrupoVariaoClick(
      Sender: TObject);
    procedure MnVerificaProdutossemMarcaClick(Sender: TObject);
    procedure SQLTemplateSUBGICODChange(Sender: TField);
    procedure BtnDetalhadoClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure MnSaidaRapidaEstoqueClick(Sender: TObject);
    procedure MnCorrigeProdutosFilhosqueestaodiferentesdosPaisClick(
      Sender: TObject);
    procedure AcessaNCMClick(Sender: TObject);
    procedure ComboNCM2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboBox5Exit(Sender: TObject);
    procedure SQLTemplateICMSICODChange(Sender: TField);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit54KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboNCM1Enter(Sender: TObject);
    procedure ComboNCM2Enter(Sender: TObject);
    procedure RxDBComboBox3Change(Sender: TObject);
    procedure SQLTemplatePRODCSERVICOChange(Sender: TField);
    procedure MnVerificaProdutossemNCMClick(Sender: TObject);
    procedure MnVerificaProdutossemSTClick(Sender: TObject);
    procedure AcessaUnidade2Click(Sender: TObject);
    procedure ComboUnidade2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSSQLGrupoDataChange(Sender: TObject; Field: TField);
    procedure DSSQLSubGrupoDataChange(Sender: TObject; Field: TField);
    procedure btReplicarCadClick(Sender: TObject);
    procedure MnCorrigeGradessemNCMsClick(Sender: TObject);
    procedure SQLTemplateNCMICODChange(Sender: TField);
    procedure MnCorrigirProdutospelatabeladoSuperTributarioClick(
      Sender: TObject);
    procedure RecalcularCustospelaComposicaoClick(Sender: TObject);
    procedure MnCargadeProdutosemMassaparaPDVsClick(Sender: TObject);
    procedure SQLTemplatePRODN2MGVENDA2835DChange(Sender: TField);
    procedure SQLTemplatePRODN2MGVENDA283542DChange(Sender: TField);
    procedure CorrigeDescrioPrincipaleReduzida1Click(Sender: TObject);
    procedure btCorrigeProdutossemoCodigoCESTClick(Sender: TObject);
    procedure AcessaCESTClick(Sender: TObject);
  private
    { Private declarations }
    ProdutoCodigo:Integer;
    AlterandoValores,IncluindoProduto:Boolean;
    ValorVenda, ValorVenda2, ValorCompra, MargemLucro,ICMS,Denominador,LucroBruto, ValorCusto,
    ValorCustoMedio: Double;
    DoNumeroCasasDec : Integer;
    Referencia,CodBarras,CodAntigo : String;
    function EnviaProdutoPDVs(Tipo : string) : boolean;
    procedure DesabilitarCampos ;
    procedure MontaGradeEstoque;
    procedure MontaGradeProduto;
    procedure MontaGradeCompras;
    procedure GeraHistoricoProduto;
  public
    { Public declarations }
  end;

var
  FormCadastroProduto: TFormCadastroProduto ;

implementation

uses CadastroVariacao, DataModulo, CadastroSubgrupo, CadastroMarca,
     CadastroGrupo, CadastroGrade, CadastroCor, CadastroTamanho,
     CadastroUnidade, CadastroICMS, CadastroClassificacaoFiscal,
     CadastroProdutoFornecedor, TelaCriacaoGrade, UnitLibrary, 
     CadastroProdutoComposicao, WaitWindow, WindowsLibrary, CadastroProdutoSerie, CadastroProdutoTabelaPreco,
     CadastroColecao, CadastroDecreto,
  TelaEntradaRapidaEstoque, TelaFotoExpandida, CadastroBarras,
  TelaSaidaRapidaEstoque, CadastroNCM, CadastroTabCest;

{$R *.DFM}

Procedure TFormCadastroProduto.FormCreate(Sender: TObject);
var TipoRegime: String;
begin
  inherited;
  Tabela := 'PRODUTO' ;
  PageControl1.ActivePageIndex := 0; // Posiciona a controlpage na primeira guia
  DoNumeroCasasDec := Dm.SQLConfigVenda.fieldbyname('CFVEINROCASASDEC').AsInteger;
  case Dm.SQLConfigVenda.fieldbyname('CFVEINROCASASDEC').AsInteger of
    2 : begin
          SQLTemplatePRODN3VLRVENDA.DisplayFormat     := '##0.00';
          SQLTemplatePRODN3VLRVENDA.EditFormat        := '##0.00';
          SQLTemplatePRODN3VLRVENDA2.DisplayFormat    := '##0.00';
          SQLTemplatePRODN3VLRVENDA2.EditFormat       := '##0.00';
          SQLTemplatePRODN3VLRVENDAPROM.DisplayFormat := '##0.00';
          SQLTemplatePRODN3VLRVENDAPROM.EditFormat    := '##0.00';
          DBEditVlrVenda.Decimals        := 2;
          DBEditVlrVendaAtacado.Decimals := 2;
          DBEditVlrPromocao.Decimals     := 2;
        end;
    3 : begin
          SQLTemplatePRODN3VLRVENDA.DisplayFormat     := '##0.000';
          SQLTemplatePRODN3VLRVENDA.EditFormat        := '##0.000';
          SQLTemplatePRODN3VLRVENDA2.DisplayFormat    := '##0.000';
          SQLTemplatePRODN3VLRVENDA2.EditFormat       := '##0.000';
          SQLTemplatePRODN3VLRVENDAPROM.DisplayFormat := '##0.000';
          SQLTemplatePRODN3VLRVENDAPROM.EditFormat    := '##0.000';
          DBEditVlrVenda.Decimals        := 3;
          DBEditVlrVendaAtacado.Decimals := 3;
          DBEditVlrPromocao.Decimals     := 3;
        end;
  end;

  SQLColecao.Open;
  Dm.SQLConfigVenda.Close;
  Dm.SQLConfigVenda.Open;

  DM.SQLConfigCompra.Close;
  DM.SQLConfigCompra.Open;

  SQLNcm.Open;
  sqlCEST.Open;

  if not SQLProdutoComposicao.Active then SQLProdutoComposicao.Open;
  if not SQLSaldoEmpresaAtual.Active then SQLSaldoEmpresaAtual.Open;
  PageControlValores.ActivePage := TabReais;
 { LBPis_Cofins_OutrasDesp.Caption := '  Pis :   '  + Dm.SQLConfigVenda.FieldByName('CFVEN2PERCPIS').AsString    +
                                     '  Confins :   '  + Dm.SQLConfigVenda.FieldByName('CFVEN2PERCCOFINS').AsString +
                                     '  Outras  :   '  + Dm.SQLConfigVenda.FieldByName('CFVEN2PERCENCARG').AsString ;
  LBPis_Cofins_OutrasDesp.Update;}
  RadioAtivo.TabStop := False;
  RadioInativo.TabStop := False;

  // Carrega opï¿½ï¿½es da Sit. Tributaria cfe. Regime Tributario da Empresa
  ComboSitTrib.Items.Clear;
  ComboSitTrib.Values.Clear;
  ComboSitTrib.Items.Add('00   - Tributada integralmente');
  ComboSitTrib.Items.Add('10   - Tributada e com cobrança do ICMS por substituiçãoo tributária');
  ComboSitTrib.Items.Add('20   - Com redução de base de cálculo');
  ComboSitTrib.Items.Add('30   - Isenta ou não tributada e com cobrança do ICMS por substituição tributária');
  ComboSitTrib.Items.Add('40   - Isenta');
  ComboSitTrib.Items.Add('41   - Não tributada');
  ComboSitTrib.Items.Add('50   - Suspensão');
  ComboSitTrib.Items.Add('51   - Diferimento');
  ComboSitTrib.Items.Add('60   - ICMS cobrado anteriormente por substituição tributária');
  ComboSitTrib.Items.Add('70   - Com redução de base de cálculo e cobrança do ICMS por substituição tributária');
  ComboSitTrib.Items.Add('90   - Outros');
  ComboSitTrib.Items.Add('101 - Tributada pelo Simples Nacional com permissão de crédito. (v.2.0)');
  ComboSitTrib.Items.Add('102 - Tributada pelo Simples Nacional sem permissão de crédito.');
  ComboSitTrib.Items.Add('103 - Isenção do ICMS no Simples Nacional para faixa de receita bruta.');
  ComboSitTrib.Items.Add('300 - Imune.');
  ComboSitTrib.Items.Add('400 - Não tributada pelo Simples Nacional (v.2.0)');
  ComboSitTrib.Items.Add('201 - Tributada pelo Simples Nacional com permissão de crédito e com cobrança do ICMS por Substituição Tributária');
  ComboSitTrib.Items.Add('202 - Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por Substituição Tributária');
  ComboSitTrib.Items.Add('203 - Isenção do ICMS nos Simples Nacional para faixa de receita bruta e com cobrança do ICMS por Substituição Tributária');
  ComboSitTrib.Items.Add('500 - ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação');
  ComboSitTrib.Items.Add('900 - Outros');

  ComboSitTrib.Values.Add('0');
  ComboSitTrib.Values.Add('10');
  ComboSitTrib.Values.Add('20');
  ComboSitTrib.Values.Add('30');
  ComboSitTrib.Values.Add('40');
  ComboSitTrib.Values.Add('41');
  ComboSitTrib.Values.Add('50');
  ComboSitTrib.Values.Add('51');
  ComboSitTrib.Values.Add('60');
  ComboSitTrib.Values.Add('70');
  ComboSitTrib.Values.Add('90');
  ComboSitTrib.Values.Add('101');
  ComboSitTrib.Values.Add('102');
  ComboSitTrib.Values.Add('103');
  ComboSitTrib.Values.Add('300');
  ComboSitTrib.Values.Add('400');
  ComboSitTrib.Values.Add('201');
  ComboSitTrib.Values.Add('202');
  ComboSitTrib.Values.Add('203');
  ComboSitTrib.Values.Add('500');
  ComboSitTrib.Values.Add('900');
end;

procedure TFormCadastroProduto.RxComboComissaoChange(Sender: TObject);
begin
  inherited;
  DBEditVista.Enabled := RxComboComissao.ItemIndex = 0;
  DBEditPrazo.Enabled := RxComboComissao.ItemIndex = 0;
end;

procedure TFormCadastroProduto.AcessaMarcaClick(Sender: TObject);
begin
  inherited;
  ComboMarca.SetFocus;
  FieldLookup := DsTemplate.DataSet.FieldByName('MARCICOD');
  FieldOrigem := 'MARCICOD' ;
  DataSetLookup := SQLMarca;
  CriaFormulario(TFormCadastroMarca,'FormCadastroMarca',False,True,True,'');
end;

procedure TFormCadastroProduto.AcessaGrupoClick(Sender: TObject);
begin
  inherited;
    ComboGrupo.SetFocus;
    FieldLookup := DsTemplate.DataSet.FieldByName('GRUPICOD');
    FieldOrigem := 'GRUPICOD' ;
    DataSetLookup := SQLGrupo;
    CriaFormulario(TFormCadastroGrupo,'FormCadastroGrupo',False,True,True,'Produto ' + IntToStr(SQLTemplatePRODICOD.Value));
end;

procedure TFormCadastroProduto.AcessaGradeClick(Sender: TObject);
begin
  inherited;
  ComboGrade.SetFocus;
  FieldLookup := DsTemplate.DataSet.FieldByName('GRADICOD');
  FieldOrigem := 'GRADICOD' ;
  DataSetLookup := SQLGrade;
  CriaFormulario(TFormCadastroGrade,'FormCadastroGrade',False,True,True,'Produto ' + IntToStr(SQLTemplatePRODICOD.Value));
end;

procedure TFormCadastroProduto.AcessaCorClick(Sender: TObject);
begin
  inherited;
  ComboCor.SetFocus;
  FieldLookup := DsTemplate.DataSet.FieldByName('CORICOD');
  FieldOrigem := 'CORICOD' ;
  DataSetLookup := SQLCor;
  CriaFormulario(TFormCadastroCor,'FormCadastroCor',False,True,True,'Produto ' + IntToStr(SQLTemplatePRODICOD.Value));
end;

procedure TFormCadastroProduto.AcessaTamanhoClick(Sender: TObject);
begin
  inherited;
  ComboTamanho.SetFocus;
  DSMasterSys  := DSTemplate;
  FieldLookup := DsTemplate.DataSet.FieldByName('GRTMICOD');
  FieldOrigem := 'GRTMICOD' ;
  DataSetLookup := SQLTamanho;
  CriaFormulario(TFormCadastroTamanho,'FormCadastroTamanho',False,True,True,SQLGrade.FieldByName('GRADA30DESCR').asString);
end;

procedure TFormCadastroProduto.AcessaUnidadeClick(Sender: TObject);
begin
  inherited;
  ComboUnidade.SetFocus;
  FieldLookup := DsTemplate.DataSet.FieldByName('UNIDICOD');
  FieldOrigem := 'UNIDICOD' ;
  DataSetLookup := SQLUnidade;
  CriaFormulario(TFormCadastroUnidade,'FormCadastroUnidade',False,True,True,'Produto ' + IntToStr(SQLTemplatePRODICOD.Value));
end;

procedure TFormCadastroProduto.AcessaICMSClick(Sender: TObject);
begin
  inherited;
  ComboICMS.SetFocus;
  FieldLookup := DsTemplate.DataSet.FieldByName('ICMSICOD');
  FieldOrigem := 'ICMSICOD' ;
  DataSetLookup := SQLIcms;
  CriaFormulario(TFormCadastroIcms,'FormCadastroIcms',False,True,True,'Produto ' + IntToStr(SQLTemplatePRODICOD.Value));
end;

procedure TFormCadastroProduto.AcessaSubgrupoClick(Sender: TObject);
begin
  inherited;
  ComboSubGrupo.SetFocus;
  DSMasterSys := DSTemplate;
  FieldLookup := DsTemplate.DataSet.FieldByName('SUBGICOD');
  FieldOrigem := 'SUBGICOD' ;
  DataSetLookup := SQLSubGrupo;
  CriaFormulario(TFormCadastroSubgrupo,'FormCadastroSubgrupo',False,True,True,SQLGrupo.FieldByName('GRUPA60DESCR').AsString);
End;

procedure TFormCadastroProduto.AcessaVariacaoClick(Sender: TObject);
begin
  inherited;
  ComboVariacao.SetFocus;
  DSMasterSys := DSTemplate;
  FieldLookup := DsTemplate.DataSet.FieldByName('VARIICOD');
  FieldOrigem := 'VARIICOD' ;
  DataSetLookup := SQLVariacao;
  CriaFormulario(TFormCadastroVariacao,'FormCadastroVariacao',False,True,True,SQLSubGrupo.FieldByName('SUBGA60DESCR').AsString);
end;

procedure TFormCadastroProduto.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplatePRODN3DOLARCOMPRA.AsFloat > 0 then
    SQLTemplateVlrCompraConvertido.AsFloat := SQLTemplatePRODN3DOLARCOMPRA.AsFloat * RetornaUltimaCotacaoMoeda(Date,'U$$');

  if SQLTemplatePRODN3DOLARCUSTO.AsFloat > 0 then
    SQLTemplateVlrCustoConvertido.AsFloat  := SQLTemplatePRODN3DOLARCUSTO.AsFloat * RetornaUltimaCotacaoMoeda(Date,'U$$');

  if SQLTemplatePRODN3DOLARVENDA.AsFloat > 0 then
    SQLTemplateVlrVendaConvertido.AsFloat  := SQLTemplatePRODN3DOLARVENDA.AsFloat * RetornaUltimaCotacaoMoeda(Date,'U$$');

{  if FileExists('GoldBrasil.txt') Then
    begin
      if DBGridLista.Columns[4].Title.caption <> 'R$ 28/35D' then
        begin
          DBGridLista.Columns[4].Title.caption := 'R$ 28/35D';
          DBGridLista.Columns[4].FieldName     := 'PRODN2VLRVENDA2835D';
          DBGridLista.Columns[5].Title.caption := 'R$ 28/35/42D';
          DBGridLista.Columns[5].FieldName     := 'PRODN2VLRVENDA283542D';
          DBGridLista.Columns[6].Visible       := False;
        end;
      SQLTemplatePRODN2VLRVENDA2835D.AsFloat   := SQLTemplatePRODN3VLRVENDA2.VALUE+(SQLTemplatePRODN3VLRVENDA2.VALUE *SQLTemplatePRODN3DOLARCOMPRA.Value / 100);
      SQLTemplatePRODN2VLRVENDA283542D.AsFloat := SQLTemplatePRODN3VLRVENDA2.VALUE+(SQLTemplatePRODN3VLRVENDA2.VALUE *SQLTemplatePRODN3DOLARCUSTO.VALUE / 100);
    end; }

    if FileExists('Mecanica.txt') Then
    begin
      if DBGridLista.Columns[4].Title.caption <> 'Posiï¿½ï¿½o' then
        begin
          DBGridLista.Columns[4].Title.caption := 'Posiï¿½ï¿½o';
          DBGridLista.Columns[4].FieldName     := 'PRODA15APAVIM';
          DBGridLista.Columns[5].FieldName     := 'PRODA60REFER';
          DBGridLista.Columns[5].Title.caption := 'referência';
          DBGridLista.Columns[6].Visible       := False;
        end;
    end;


end;

procedure TFormCadastroProduto.SQLTemplateBeforePost(DataSet: TDataSet);
var
  CodigoBarra, CodEAN : string;
  EanOK : Boolean;
  Faltas: String;
begin
 inherited;
 // consistencia de dados para emissï¿½o de NFe
 Faltas:= '';
 if SQLTemplateICMSICOD.IsNull then
    Faltas := Faltas + 'Código de ICMS Inválido'+#13#10;
 if SQLtemplatePRODIORIGEM.IsNull then
    Faltas := Faltas + 'Origem da Mercadoria Não Especificada'+#13#10;
 if SQLtemplatePRODISITTRIB.IsNull then
    Faltas := Faltas + 'Situação Tributária Não Especificada'+#13#10;
 if SQLtemplatePRODA1MODBC.IsNull then
    Faltas := Faltas + 'Determinação da Base de Cálculo Não Especificada'+#13#10;
 if SQLtemplatePRODA1MODBCST.IsNull then
    Faltas := Faltas + 'Determinação da Base de Cálculo do ICMS ST Não Especificada'+#13#10;
 if SQLtemplatePRODA2CSTIPI.IsNull then
    Faltas := Faltas + 'CST do IPI Não Especificada'+#13#10;
 if SQLtemplatePRODA2CSTCOFINS.IsNull then
    Faltas := Faltas + 'CST COFINS Não Especificada'+#13#10;
 if SQLtemplatePRODA2CSTPIS.IsNull then
    Faltas := Faltas + 'CST PIS Não Especificada'+#13#10;
 if SQLTemplatePRODA3CSTPISENTRADA.IsNull then
    Faltas := Faltas + 'CST PIS de ENTRADA Não Especificada'+#13#10;
 if SQLTemplatePRODA3CSTCOFINSENTRADA.IsNull then
    Faltas := Faltas + 'CST COFINS de ENTRADA Não Especificada'+#13#10;
 if SQLTemplatePRODA3CSTIPIENTRADA.IsNull then
    Faltas := Faltas + 'CST IPI de ENTRADA Não Especificada'+#13#10;
 if (SQLtemplatePRODN2ALIQPIS.IsNull) or (SQLtemplatePRODN2ALIQPIS.value < 0)  then
    Faltas := Faltas + 'Percentual PIS Inválido'+#13#10;
 if (SQLtemplatePRODN2ALIQCOFINS.IsNull) or (SQLtemplatePRODN2ALIQCOFINS.value < 0) then
    Faltas := Faltas + 'Percentual COFINS Inválido'+#13#10;
 if SQLtemplatePRODA1TIPO.IsNull then
    Faltas := Faltas + 'Tipo de Produto Não Especificado'+#13#10;
 if SQLtemplatePRODA2TIPOITEM.IsNull then
    Faltas := Faltas + 'Identificação do Produto (SPED PIS/COFINS) Não Especificado'+#13#10;

{ if SQLtemplateNCMICOD.IsNull then
    Faltas := Faltas + 'Codigo NCM Não Especificado'+#13#10; }

 if Faltas <> '' then
 begin
    Showmessage('Inconsistência de Dados Verificada:'+#13+#10+#13#10+Faltas);
    Abort;
 end;

  // GRAVAR DATA DA ULT. ATERACAO
  //  if DataSet.State in [DsEdit] then
  SQLTemplate.FieldByName('PRODDULTALTER').AsString := FormatDateTime('dd/mm/yyyy',Now);
  if DBDataPromoIni.Date > 0 then
    SQLTemplate.FieldByName('PRODDINIPROMO').AsString := FormatDateTime('dd/mm/yyyy',DBDataPromoIni.Date);
  if DBDataPromoFim.Date > 0 then
  SQLTemplate.FieldByName('PRODDFIMPROMO').AsString := FormatDateTime('dd/mm/yyyy',DBDataPromoFim.Date);
  // A limentar o Campo Cd.Principal para produtos com mesmo preco
  if SQLTemplatePRODIPRINCIPAL.AsString = '' then
    SQLTemplatePRODIPRINCIPAL.Value := SQLTemplatePRODICOD.Value;
  // ARRENDONDAR VALOR DE VENDA DO PRODUTO
  if (Dm.SQLConfigVenda.FieldByName('CFVECFARREDVLRVEND').AsString = 'S') and (Dm.SQLConfigVenda.FieldByName('CFVEINROCASASDEC').AsInteger > 1) then
    SQLTemplate.FieldByName('PRODN3VLRVENDA').AsFloat := RoundTo(ArredondaValor1(SQLTemplate.FieldByName('PRODN3VLRVENDA').AsFloat,
      Dm.SQLConfigVenda.FieldByName('CFVEINROCASASDEC').AsInteger), -DoNumeroCasasDec);;

  if (DsTemplate.DataSet.State = DsInsert) then
    begin
      SQLTemplatePRODIAGRUPGRADE.Value := SQLTemplatePRODICOD.Value;
      ProdutoCodigo    := DataSet.FindField('PRODICOD').asInteger;
      IncluindoProduto := True;
    end
  else
    IncluindoProduto := False;
  if (Trim(SQLTemplatePRODA60CODBAR.AsString)='') then
    begin
      CodEAN := SQLLocate('EMPRESA','EMPRICOD','EMPRA15CODEAN',IntToStr(EmpresaCorrente));
      if CodEAN <> '' then
        begin
          try
            StrToInt(CodEan);
            EanOK := True;
          except
            Informa('O Campo cód. EAN no cadastro de empresa estï¿½ incorreto, por favor verifique!');
            EanOK := False;
          end;
        end;
      if (CodEan <> '') and (EanOK) then
        CodigoBarra := GeraCodigoBarras(CodEan + Format('%.3d',[SQLTemplatePRODICOD.asInteger]))
      else
        CodigoBarra := GeraCodigoBarras(Format('%.3d',[SQLTemplatePRODICOD.asInteger]));

      SQLTemplatePRODA60CODBAR.asString := CodigoBarra + DigitVerifEAN(CodigoBarra);
    end;
{  Else
    If Length(SQLTemplatePRODA60CODBAR.AsString)=12 Then
      SQLTemplatePRODA60CODBAR.asString := SQLTemplatePRODA60CODBAR.asString + DigitVerifEAN(SQLTemplatePRODA60CODBAR.asString);}
  DM.SQLConfigGeral.Close;
  DM.SQLConfigGeral.Open;
  if (DM.SQLConfigGeralCFGECTESTEANPROD.AsString = 'S') and
     (SQLTemplate.FieldByName('PRODA60CODBAR').AsString <> '') and
     (CodBarras <> SQLTemplate.FieldByName('PRODA60CODBAR').AsString) then
    begin
       DM.SQLTemplate.Close;
       DM.SQLTemplate.SQL.Clear;
       DM.SQLTemplate.SQl.Add('SELECT PRODICOD, PRODA60CODBAR FROM PRODUTO WHERE PRODA60CODBAR = ' + QuotedStr(SQLTemplate.FieldByName('PRODA60CODBAR').AsString)
          + ' AND PRODICOD <> '+SQLTemplate.FieldByName('PRODICOD').asString);
       DM.SQLTemplate.Open;
       if DM.SQLTemplate.RecordCount > 0 then
         begin
          if not Pergunta('NAO','Atenção! Este código de barras já foi cadastrado para o produto '+DM.SQLTemplate.Fieldbyname('PRODICOD').AsString +chr(13)+
                          'Deseja Prosseguir?') then
            begin
              SQLTemplate.FieldByName('PRODA60CODBAR').FocusControl;
              Abort;
            end ;
         end
       else
         begin
           DM.SQLTemplate.Close;
           DM.SQLTemplate.SQL.Clear;
           DM.SQLTemplate.SQl.Add('SELECT PRODICOD, PRBAA15BARRAS FROM PRODUTOBARRAS WHERE PRBAA15BARRAS = '
             + QuotedStr(SQLTemplate.FieldByName('PRODA60CODBAR').AsString) + ' AND PRODICOD <>'+SQLTemplate.FieldByName('PRODICOD').asString);
           DM.SQLTemplate.Open;
           if DM.SQLTemplate.RecordCount > 0 then
             begin
               if not Pergunta('NAO','Atenção! Este código de barras já foi cadastrado para o produto '+DM.SQLTemplate.Fieldbyname('PRODICOD').AsString +chr(13)+
                               'Deseja Prosseguir?') then
                 begin
                   SQLTemplate.FieldByName('PRODA60CODBAR').FocusControl;
                   Abort;
                 end ;
             end;
         end;
    end;

  if (DM.SQLConfigGeralCFGECTESTREFPROD.AsString = 'S') and
     (SQLTemplate.FieldByName('PRODA60REFER').AsString <> '') and
     (Referencia <> SQLTemplate.FieldByName('PRODA60REFER').AsString) then
    begin
       DM.SQLTemplate.Close;
       DM.SQLTemplate.SQL.Clear;
       DM.SQLTemplate.SQl.Add('SELECT (PRODA60REFER) FROM PRODUTO WHERE PRODA60REFER = ' +
        QuotedStr(SQLTemplate.FieldByName('PRODA60REFER').AsString) + ' AND PRODICOD <>'+SQLTemplate.FieldByName('PRODICOD').asString);
       DM.SQLTemplate.Open;
       if DM.SQLTemplate.RecordCount > 0 then
         begin
          if not Pergunta('NAO','Esta referência já foi cadastrada para outro produto, deseja continuar ?') then
            begin
              SQLTemplate.FieldByName('PRODA60REFER').FocusControl;
              Abort;
            end;
         end;
    end;

  if (DM.SQLConfigGeralCFGECVALCODANTPRO.AsString = 'S') and
     (SQLTemplate.FieldByName('PRODA15CODANT').AsString <> '') and
     (CodAntigo <> SQLTemplate.FieldByName('PRODA15CODANT').AsString)then
    begin
       DM.SQLTemplate.Close;
       DM.SQLTemplate.SQL.Clear;
       DM.SQLTemplate.SQl.Add('SELECT (PRODA15CODANT) FROM PRODUTO WHERE PRODA15CODANT = ' +
         QuotedStr(SQLTemplate.FieldByName('PRODA15CODANT').AsString) + ' AND PRODICOD <>'+SQLTemplate.FieldByName('PRODICOD').asString);
       DM.SQLTemplate.Open;
       if DM.SQLTemplate.RecordCount > 0 then
         begin
          if not Pergunta('NAO','Este código Antigo já foi cadastrado para outro produto, deseja continuar ?') then
            begin
              SQLTemplate.FieldByName('PRODA15CODANT').FocusControl;
              Abort;
            end;
         end;
    end;
  if DataSet.State in [DsInsert] then
    begin
      SQLTemplatePRODN3VLRCUSTOMED.AsFloat := SQLTemplatePRODN3VLRCUSTO.AsFloat;
    end;
  // CONSISTENCIAS DE GRADE
  if (SQLTemplateGRADICOD.AsVariant <> Null)  and (SQLTemplateGRTMICOD.AsVariant = Null) then
    begin
      Informa('Vocï¿½ informou uma GRADE mas Não selecionou nenhum TAMANHO, por favor verifique!');
      ComboTamanho.SetFocus;
      Abort;
    end;
  if (SQLTemplateGRTMICOD.AsVariant <> Null) and (SQLTemplateGRADICOD.AsVariant = Null) then
    begin
      Informa('Vocï¿½ informou um TAMANHO mas Não selecionou nenhuma GRADE, por favor verifique!');
      ComboGrade.SetFocus;
      Abort;
    end;
  if (SQLTemplateGRTMICOD.AsVariant <> Null) and (SQLTemplateCORICOD.AsVariant = Null) then
    begin
      Informa('Vocï¿½ informou uma GRADE mas Não selecionou nenhuma COR, por favor verifique!');
      ComboGrade.SetFocus;
      Abort;
    end;
  if (SQLTemplateGRTMICOD.AsVariant <> Null) and (SQLTemplateGRADICOD.AsVariant <> Null) then
    begin
      if SQLTemplate.State in [DsInsert] then
        if Pergunta('SIM','Vocï¿½ selecionou GRADE e TAMANHO deseja gerar uma grade?') then
          CriaFormulario(TFormTelaCriacaoGrade,'FormTelaCriacaoGrade',False,True,True,'');
    end;
end;

procedure TFormCadastroProduto.Button1Click(Sender: TObject);
begin
  inherited;
  If (Sender as TRxSpeedButton).Name='Button3' Then
    PagePrincipal.ActivePage := TabSheetDadosAdicionais ;

  If (Sender as TRxSpeedButton).Name='ButtonFornecedores' Then
    Begin
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormCadastroProdutoFornecedor,
                     'FormCadastroProdutoFornecedor',
                     True,
                     False,True,SQLTemplatePRODA60DESCR.AsString);
    End;

  If (Sender as TRxSpeedButton).Name='ButtonSaldo' Then
    Begin
      if SQLTemplate.FieldByName('GRADICOD').AsVariant <> Null then
        begin
          MontaGradeEstoque;
          DBGridGradeSaldo.Visible := True;
          DBGridSaldo.Visible := False;
        end
      else
        begin
          if not SQLProdutoSaldo.Active then SQLProdutoSaldo.Open;
          DBGridSaldo.Visible := True;
          DBGridGradeSaldo.Visible := False;
        end;
      PagePrincipal.ActivePage := TabSheetSaldos ;
    End
  Else
    if SQLProdutoSaldo.Active then SQLProdutoSaldo.Close;

  If (Sender as TRxSpeedButton).Name='ButtonReajustes' Then
    Begin
      PagePrincipal.ActivePage := TabSheetReajustes ;
      SQLProdutoReajuste.Close;
      SQLProdutoReajuste.Open ;
      SQLSaldoMes.Close;
      SQLSaldoMes.Open;
    End
  Else
    SQLProdutoReajuste.Close;

  If (Sender as TRxSpeedButton).Name='ButtonComposicao' Then
    Begin
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormCadastroProdutoComposicao,
                     'FormCadastroProdutoComposicao',
                     True,
                     False,
                     True,
                     '');
    End;

  If (Sender as TRxSpeedButton).Name='ButtonTabela' Then
    Begin
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormCadastroProdutoTabelaPreco,
                     'FormCadastroProdutoTabelaPreco',
                     True,
                     False,
                     True,
                     '');
    End;

  if (Sender as TRxSpeedButton).Name='ButtonCompras' Then
    begin
      if SQLTemplate.FieldByName('GRADICOD').AsVariant <> Null then
        begin
          MontaGradeCompras;
          DBGridGradeCompras.Visible := True;
          DBGridCompras.Visible := False;
        end
      else
        begin
          if not SQLNotasCompra.Active then SQLNotasCompra.Open ;
          DBGridCompras.Visible := True;
          DBGridGradeCompras.Visible := False;
        end;
      PagePrincipal.ActivePage := TabSheetCompras;
    End
  else
    SQLGradeNotaCompra.Close;

  if (Sender as TRxSpeedButton).Name='ButtonGrade' Then
    begin
      MontaGradeProduto;
      PagePrincipal.ActivePage := TabSheetGrade;
    end;

  if (Sender as TRxSpeedButton).Name='ButtonProdutoSerie' Then
    begin
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormCadastroProdutoSerie,'FormCadastroProdutoSerie',True,False,True,SQLTemplatePRODA60DESCR.AsString);
    end;

  If (Sender as TRxSpeedButton).Name='ButtonMovimentoEstoque' Then
    PagePrincipal.ActivePage := TabSheetMovimentoEstoque ;
end;

procedure TFormCadastroProduto.GeraodaGrade1Click(Sender: TObject);
begin
  inherited;
  If (MatrizFilial = 'M') and (SQLTemplate.FindField('GRADICOD').asVariant<>Null) Then
    If SQLTemplate.FindField('GRTMICOD').asVariant<>Null Then
      CriaFormulario(TFormTelaCriacaoGrade,'FormTelaCriacaoGrade',False,True,True,'')
    Else
      Informa('Produto sem Tamanho')
  Else
    Informa('Produto sem Grade');
end;

procedure TFormCadastroProduto.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  sqltemplate.DisableControls;
  AlterandoValores                        := True;
  SQLTemplatePRODCATIVO.asString          := 'S';
  SQLTemplatePRODCGERACOMIS.asString      := 'S';
  SQLTemplatePRODCIMPETIQCDBAR.AsString   := 'S';
  SQLTemplatePRODCSERVICO.asString        := 'N';
  SQLTemplatePRODCTIPOBAIXA.asString      := 'P';
  SQLTemplatePRODCTEMNROSERIE.AsString    := 'N';
  SQLTemplatePRODA1TIPO.AsString          := '0';
  SQLTemplatePRODN3PESOBRUTO.asFloat      := 0;
  SQLTemplatePRODN3PESOLIQ.asFloat        := 0;
  SQLTemplatePRODN3CAPACEMBAL.asFloat     := 1;
  SQLTemplatePRODN3VLRCOMPRA.asFloat      := 0;
  SQLTemplatePRODN3VLRCOMPRAMED.asFloat   := 0;
  SQLTemplatePRODN3VLRCUSTO.asFloat       := 0;
  SQLTemplatePRODN3VLRCUSTOMED.asFloat    := 0;
  SQLTemplatePRODN3QTDEBAIXA.asFloat      := 0;
  SQLTemplatePRODN3PERCIPI.asFloat        := 0;
  SQLTemplatePRODN3VLRVENDA.asFloat       := 0;
  SQLTemplatePRODN3VLRVENDA2.asFloat      := 0;
  SQLTemplatePRODN2VLRVENDA2835D.asFloat  := 0;
  SQLTemplatePRODN2VLRVENDA283542D.asFloat:= 0;
  SQLTemplatePRODN3VLRVENDAPROM.asFloat   := 0;
  SQLTemplatePRODN3PERCMARGLUCR.asFloat   := 0;
  SQLTemplatePRODN3PERCMARGLUC2.asFloat   := 0;
  SQLTemplatePRODN3PERCMGLVFIXA.asFloat   := 0;
  SQLTemplatePRODN3PERCMGLAFIXA.asFloat   := 0;
  SQLTemplatePRODN2MGVENDA2835D.asFloat   := 0;
  SQLTemplatePRODN2MGVENDA283542D.asFloat := 0;
  SQLTemplatePRODN2COMISVISTA.asFloat     := 0;
  SQLTemplatePRODN2COMISPRAZO.asFloat     := 0;
  SQLTemplatePRODITIPOPRODBALAN.AsInteger := 0;
  SQLTemplatePRODN2PERCDESP.Value         := 0;
  SQLTemplatePRODN2PERCDIFICM.Value       := 0;
  SQLTemplatePRODN2PERCSUBST.Value        := 0;
  SQLTemplatePRODN2PERCFRETE.Value        := 0;
  SQLTemplatePRODN3QTDVOLUME.Value        := 1;
  SQLTemplatePRODDCAD.asDateTime          := Date;
  SQLTemplatePRODCMIX.Value               := 'D';
  SQLTemplatePRODCCOFINS.Value            := 'N';
  SQLTemplatePRODCVDESTNEG.Value          := 'S';
  SQLTemplatePRODA2TIPOITEM.AsString      := '00';
  sqltemplatePRODN3PERCIPI.value          := 0;
  sqltemplatePRODN2PERCIPIENTRADA.value   := 0;
  sqltemplatePRODN2ALIQPIS.value          := 0;
  sqltemplatePRODN2ALIQCOFINS.value       := 0;
  sqltemplatePRODIORIGEM.Value            := 0;

  ComboOrigem.ItemIndex                   := 0;
  AlterandoValores                        := False;
  if DM.SQLEmpresa.fieldbyname('EMPRA3CRT').value <> '3' then
    begin
      sqltemplatePRODISITTRIB.value                := 102;
      sqltemplatePRODA1MODBC.asstring              := '0';
      sqltemplatePRODA1MODBCST.asstring            := '4';
      sqltemplatePRODA2CSTIPI.asstring             := '52';
      sqltemplatePRODA3CSTIPIENTRADA.asstring      := '02';
      sqltemplatePRODA2CSTPIS.asstring             := '49';
      sqltemplatePRODA3CSTPISENTRADA.asstring      := '99';
      sqltemplatePRODA2CSTCOFINS.asstring          := '49';
      sqltemplatePRODA3CSTCOFINSENTRADA.asstring   := '99';
      sqltemplatePRODA1TIPO.asstring               := '0';
      sqltemplatePRODA2TIPOITEM.asstring           := '00';
    end;
  sqltemplate.EnableControls;
end;

procedure TFormCadastroProduto.SQLTemplateAfterPost(DataSet: TDataSet);
begin
  inherited;
  LbValorVenda.Caption  := FormatCurr('R$ #,##0.00',0);
  LbValorVenda2.Caption := FormatCurr('R$ #,##0.00',0);
  LbValorVenda.Update;
  LbValorVenda2.Update;
  lbValorVenda2835.Caption   := FormatCurr('R$ #,##0.00',0);
  lbValorVenda283542.Caption := FormatCurr('R$ #,##0.00',0);
  lbValorVenda2835.Update;
  lbValorVenda283542.Update;

  if IncluindoProduto Then
    Begin
      If Not SQLProdutoSaldoNovo.Active Then SQLProdutoSaldoNovo.Open;
      If Not SQLEmpresa.Active Then SQLEmpresa.Open;
      SQLEmpresa.First;
      While Not SQLEmpresa.Eof Do
        Begin
          SQLProdutoSaldoNovo.Append;
          SQLProdutoSaldoNovoEMPRICOD.asInteger   := SQLEmpresaEMPRICOD.asInteger;
          SQLProdutoSaldoNovoPRODICOD.asInteger   := ProdutoCodigo;
          SQLProdutoSaldoNovoPSLDN3QTDE.asFloat   := 0;
          SQLProdutoSaldoNovoPSLDN3QTDMAX.asFloat := 0;
          SQLProdutoSaldoNovoPSLDN3QTDMIN.asFloat := 0;
          SQLProdutoSaldoNovo.Post;
          SQLEmpresa.Next;
        End;
    End;

  if ValorVenda <>  SQLTemplatePRODN3VLRVENDA.AsFloat then
    begin
      LancaReajustePreco(ValorVenda,
                         ValorCompra,
                         0,//Valor de Compra Medio
                         ValorCusto,
                         0,//Valor de Custo Medio
                         0,//Margem de Lucro
                         SQLTemplatePRODICOD.AsInteger);
      CalculaMargemLucro(SQLTemplatePRODICOD.AsInteger,SQLTemplatePRODN3VLRCUSTO.AsFloat,SQLTemplatePRODN3VLRVENDA.AsFloat);
    end;

  if ValorCompra <>  SQLTemplatePRODN3VLRCOMPRA.AsFloat then
    begin
      LancaReajustePreco(ValorVenda,
                         ValorCompra,
                         0,//Valor de Compra Medio
                         ValorCusto,
                         0,//Valor de Custo Medio
                         0,//Margem de Lucro
                         SQLTemplatePRODICOD.AsInteger);
    end;
  if ValorCusto <>  SQLTemplatePRODN3VLRCUSTO.AsFloat then
    begin
      LancaReajustePreco(ValorVenda,
                         ValorCompra,
                         0,//Valor de Compra Medio
                         ValorCusto,
                         0,//Valor de Custo Medio
                         0,//Margem de Lucro
                         SQLTemplatePRODICOD.AsInteger);
      if (DM.SQLConfigGeralCFGECALCPRECOAUTOM.AsString <> 'N') and (DM.SQLConfigCompra.FieldByName('CFCOCTOTPRCVENPROD').AsString = 'U') then
        CalculaPrecoVenda(SQLTemplatePRODICOD.AsInteger,SQLTemplatePRODN3VLRCUSTO.AsFloat,SQLTemplatePRODN3PERCMARGLUCR.AsFloat);
    end;
  if ValorCustoMedio <> SQLTemplatePRODN3VLRCUSTOMED.AsFloat then
    begin
      LancaReajustePreco(ValorVenda,
                         ValorCompra,
                         0,//Valor de Compra Medio
                         ValorCusto,
                         ValorCustoMedio,//Valor de Custo Medio
                         MargemLucro,//Margem de Lucro
                         SQLTemplatePRODICOD.AsInteger);
    end;

  if not DBEditCustoMedio.ReadOnly then
    begin
      DBEditCustoMedio.ReadOnly := True;
      DBEditCustoMedio.Color    := $00EBEBEB;
    end;

  // Atualizar todos produtos que possuam o mesmo Cd.Principal para Reajuste de Preco.
  if SQLTemplate.FindField('PRODIPRINCIPAL').AsString <> '' then
    begin
      try
        dm.SQLTemplate.Close;
        dm.SQLTemplate.sql.Clear;
        dm.SQLTemplate.sql.Add('Update PRODUTO Set Pendente= ''S'', PRODN3PERCMARGLUCR = '+ ConvFloatToStr(SQLTemplate.FindField('PRODN3PERCMARGLUCR').Value));
        if (SQLTemplate.FindField('PRODN3VLRVENDA').Value > 0) and (not FileExists('NaoAlteraPrecoVendaNaGrade.txt')) then
          dm.SQLTemplate.sql.Add(', PRODN3VLRVENDA = '+ ConvFloatToStr(SQLTemplate.FindField('PRODN3VLRVENDA').Value));
        if (SQLTemplate.FindField('PRODN3PERCMARGLUC2').Value > 0) and (not FileExists('NaoAlteraPrecoVendaNaGrade.txt')) then
          dm.SQLTemplate.sql.Add(', PRODN3PERCMARGLUC2 = '+ ConvFloatToStr(SQLTemplate.FindField('PRODN3PERCMARGLUC2').Value));
        if (SQLTemplate.FindField('PRODN3VLRVENDA2').Value > 0) and (not FileExists('NaoAlteraPrecoVendaNaGrade.txt')) then
          dm.SQLTemplate.sql.Add(', PRODN3VLRVENDA2 = '+ ConvFloatToStr(SQLTemplate.FindField('PRODN3VLRVENDA2').Value));
        if ValorCompra > 0 then
          dm.SQLTemplate.sql.Add(', PRODN3VLRCOMPRA = '+ ConvFloatToStr(ValorCompra));
        if ValorCusto > 0 then
          dm.SQLTemplate.sql.Add(', PRODN3VLRCUSTO  = '+ ConvFloatToStr(ValorCusto));

        if SQLTemplate.FindField('PRODIORIGEM').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODIORIGEM = '+ SQLTemplate.FindField('PRODIORIGEM').AsString);
        if SQLTemplate.FindField('ICMSICOD').AsString <> '' then
          dm.SQLTemplate.sql.Add(', ICMSICOD = '+ SQLTemplate.FindField('ICMSICOD').AsString);
        if SQLTemplate.FindField('PRODISITTRIB').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODISITTRIB = '+ SQLTemplate.FindField('PRODISITTRIB').AsString);
        if SQLTemplate.FindField('PRODA1MODBC').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODA1MODBC = '+ QuotedStr(SQLTemplate.FindField('PRODA1MODBC').AsString));
        if SQLTemplate.FindField('PRODA1MODBCST').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODA1MODBCST = '+ QuotedStr(SQLTemplate.FindField('PRODA1MODBCST').AsString));
        if SQLTemplate.FindField('PRODA2CSTIPI').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODA2CSTIPI = '+ QuotedStr(SQLTemplate.FindField('PRODA2CSTIPI').AsString));
        if SQLTemplate.FindField('PRODA3CSTIPIENTRADA').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODA3CSTIPIENTRADA = '+ QuotedStr(SQLTemplate.FindField('PRODA3CSTIPIENTRADA').AsString));
        if SQLTemplate.FindField('PRODA2CSTPIS').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODA2CSTPIS = '+ QuotedStr(SQLTemplate.FindField('PRODA2CSTPIS').AsString));
        if SQLTemplate.FindField('PRODA3CSTPISENTRADA').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODA3CSTPISENTRADA = '''+ SQLTemplate.FindField('PRODA3CSTPISENTRADA').AsString+'''');
        if SQLTemplate.FindField('PRODA2CSTCOFINS').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODA2CSTCOFINS = '''+ SQLTemplate.FindField('PRODA2CSTCOFINS').AsString+''' ');
        if SQLTemplate.FindField('PRODA3CSTCOFINSENTRADA').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODA3CSTCOFINSENTRADA = '''+ SQLTemplate.FindField('PRODA3CSTCOFINSENTRADA').AsString+'''');
        if SQLTemplate.FindField('PRODA1TIPO').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODA1TIPO = '''+ SQLTemplate.FindField('PRODA1TIPO').AsString+'''');
        if SQLTemplate.FindField('PRODA2TIPOITEM').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODA2TIPOITEM = '''+ SQLTemplate.FindField('PRODA2TIPOITEM').AsString+'''');
        if SQLTemplate.FindField('NCMICOD').AsString <> '' then
          dm.SQLTemplate.sql.Add(', NCMICOD = '+ SQLTemplate.FindField('NCMICOD').AsString);

        dm.SQLTemplate.sql.Add(', PRODN3CAPACEMBAL = ' + ConvFloatToStr(SQLTemplate.FindField('PRODN3CAPACEMBAL').Value));
        dm.SQLTemplate.sql.Add(', PRODN2PERCIPIENTRADA = '+ ConvFloatToStr(SQLTemplate.FindField('PRODN2PERCIPIENTRADA').Value));
        dm.SQLTemplate.sql.Add(', PRODN3PERCIPI = '    + ConvFloatToStr(SQLTemplate.FindField('PRODN3PERCIPI').Value));
        dm.SQLTemplate.sql.Add(', PRODN2PERCSUBST = '  + ConvFloatToStr(SQLTemplate.FindField('PRODN2PERCSUBST').Value));
        dm.SQLTemplate.sql.Add(', PRODN2PERCFRETE = '  + ConvFloatToStr(SQLTemplate.FindField('PRODN2PERCFRETE').Value));
        dm.SQLTemplate.sql.Add(', PRODN2PERCDESP = '   + ConvFloatToStr(SQLTemplate.FindField('PRODN2PERCDESP').Value));
        dm.SQLTemplate.sql.Add(', PRODN2PERCDIFICM = ' + ConvFloatToStr(SQLTemplate.FindField('PRODN2PERCDIFICM').Value));
        dm.SQLTemplate.sql.Add(', PRODN2ALIQPIS = '    + ConvFloatToStr(SQLTemplate.FindField('PRODN2ALIQPIS').Value));
        dm.SQLTemplate.sql.Add(', PRODN2ALIQCOFINS = ' + ConvFloatToStr(SQLTemplate.FindField('PRODN2ALIQCOFINS').Value));

        dm.SQLTemplate.sql.Add('Where PRODICOD <> '    + SQLTemplate.FindField('PRODICOD').AsString +
                               ' and PRODIPRINCIPAL = '+ SQLTemplate.FindField('PRODIPRINCIPAL').AsString);
        dm.SQLTemplate.ExecSQL;
      except
        Application.ProcessMessages;
        ShowMessage('Erro ao Tentar Atualizar Produtos com mesmo Cd Principal');
      end;
    end;

  // Atualizar todos produtos Filhos
  if SQLTemplate.FindField('GRADICOD').AsString <> '' then
    begin
      try
        dm.SQLTemplate.Close;
        dm.SQLTemplate.sql.Clear;
        dm.SQLTemplate.sql.Add('Update PRODUTO Set');
        dm.SQLTemplate.sql.Add('  PRODA60DESCR  = '''+ SQLTemplatePRODA60DESCR.AsString+'''');
        dm.SQLTemplate.sql.Add(', PRODA30ADESCRREDUZ  = '''+ SQLTemplatePRODA30ADESCRREDUZ.AsString+'''');
        dm.SQLTemplate.sql.Add(', PRODA60REFER  = '''+ SQLTemplatePRODA60REFER.AsString+'''');
        dm.SQLTemplate.sql.Add(', PRODA15CODANT  = '''+ SQLTemplatePRODA15CODANT.AsString+'''');
        dm.SQLTemplate.sql.Add(', PRODCATIVO  = '''+ SQLTemplatePRODCATIVO.AsString+'''');
        if SQLTemplateMARCICOD.AsString <> '' then
          dm.SQLTemplate.sql.Add(', MARCICOD  = '+ SQLTemplateMARCICOD.AsString);
        if SQLTemplateGRUPICOD.AsString <> '' then
          dm.SQLTemplate.sql.Add(', GRUPICOD  = '+ SQLTemplateGRUPICOD.AsString);
        if SQLTemplateSUBGICOD.AsString <> '' then
          dm.SQLTemplate.sql.Add(', SUBGICOD  = '+ SQLTemplateSUBGICOD.AsString);
        if SQLTemplateVARIICOD.AsString <> '' then
          dm.SQLTemplate.sql.Add(', VARIICOD  = '+ SQLTemplateVARIICOD.AsString);
        if SQLTemplateCOLEICOD.AsString <> '' then
          dm.SQLTemplate.sql.Add(', COLEICOD  = '+ SQLTemplateCOLEICOD.AsString);
        if SQLTemplateUNIDICOD.AsString <> '' then
          dm.SQLTemplate.sql.Add(', UNIDICOD  = '+ SQLTemplateUNIDICOD.AsString);

        if (SQLTemplate.FindField('PRODN3VLRVENDA').Value > 0) and (not FileExists('NaoAlteraPrecoVendaNaGrade.txt')) then
          dm.SQLTemplate.sql.Add(', PRODN3VLRVENDA = '+ ConvFloatToStr(SQLTemplate.FindField('PRODN3VLRVENDA').Value));
        if (SQLTemplate.FindField('PRODN3PERCMARGLUC2').Value > 0) and (not FileExists('NaoAlteraPrecoVendaNaGrade.txt')) then
          dm.SQLTemplate.sql.Add(', PRODN3PERCMARGLUC2 = '+ ConvFloatToStr(SQLTemplate.FindField('PRODN3PERCMARGLUC2').Value));
        if (SQLTemplate.FindField('PRODN3VLRVENDA2').Value > 0) and (not FileExists('NaoAlteraPrecoVendaNaGrade.txt')) then
          dm.SQLTemplate.sql.Add(', PRODN3VLRVENDA2 = '+ ConvFloatToStr(SQLTemplate.FindField('PRODN3VLRVENDA2').Value));
        if ValorCompra > 0 then
          dm.SQLTemplate.sql.Add(', PRODN3VLRCOMPRA = '+ ConvFloatToStr(ValorCompra));
        if ValorCusto > 0 then
          dm.SQLTemplate.sql.Add(', PRODN3VLRCUSTO  = '+ ConvFloatToStr(ValorCusto));

        if SQLTemplatePRODDINIPROMO.AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODDINIPROMO  = '''+ FormatDateTime('mm/dd/yyyy',SQLTemplatePRODDINIPROMO.Value)+'''')
        else
          dm.SQLTemplate.sql.Add(', PRODDINIPROMO  = Null');
        if SQLTemplatePRODDFIMPROMO.AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODDFIMPROMO  = '''+ FormatDateTime('mm/dd/yyyy',SQLTemplatePRODDFIMPROMO.Value)+'''')
        else
          dm.SQLTemplate.sql.Add(', PRODDFIMPROMO  = Null');

        if SQLTemplatePRODN3VLRVENDAPROM.Value > 0 then
          dm.SQLTemplate.sql.Add(', PRODN3VLRVENDAPROM  = '+ ConvFloatToStr(SQLTemplatePRODN3VLRVENDAPROM.Value))
        else
          dm.SQLTemplate.sql.Add(', PRODN3VLRVENDAPROM  = 0');

        dm.SQLTemplate.sql.Add(', PRODA30INF01ETQBARRAS  = '''+ SQLTemplatePRODA30INF01ETQBARRAS.AsString+'''');
        dm.SQLTemplate.sql.Add(', PRODA30INF02ETQBARRAS  = '''+ SQLTemplatePRODA30INF02ETQBARRAS.AsString+'''');

        dm.SQLTemplate.sql.Add(', PRODDULTALTER  = '''+ FormatDateTime('mm/dd/yyyy',SQLTemplatePRODDULTALTER.Value)+'''');
        dm.SQLTemplate.sql.Add(', REGISTRO  = '''+ FormatDateTime('mm/dd/yyyy hh:mm:ss',Now)+'''');
        dm.SQLTemplate.sql.Add(', PENDENTE  = ''S''');

        if SQLTemplate.FindField('PRODIORIGEM').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODIORIGEM = '+ SQLTemplate.FindField('PRODIORIGEM').AsString);
        if SQLTemplate.FindField('ICMSICOD').AsString <> '' then
          dm.SQLTemplate.sql.Add(', ICMSICOD = '+ SQLTemplate.FindField('ICMSICOD').AsString);
        if SQLTemplate.FindField('PRODISITTRIB').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODISITTRIB = '+ SQLTemplate.FindField('PRODISITTRIB').AsString);
        if SQLTemplate.FindField('PRODA1MODBC').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODA1MODBC = '''+ SQLTemplate.FindField('PRODA1MODBC').AsString+'''');
        if SQLTemplate.FindField('PRODA1MODBCST').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODA1MODBCST = '''+ SQLTemplate.FindField('PRODA1MODBCST').AsString+'''');
        if SQLTemplate.FindField('PRODA2CSTIPI').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODA2CSTIPI = '''+ SQLTemplate.FindField('PRODA2CSTIPI').AsString+'''');
        if SQLTemplate.FindField('PRODA3CSTIPIENTRADA').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODA3CSTIPIENTRADA = '''+ SQLTemplate.FindField('PRODA3CSTIPIENTRADA').AsString+'''');
        if SQLTemplate.FindField('PRODA2CSTPIS').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODA2CSTPIS = '''+ SQLTemplate.FindField('PRODA2CSTPIS').AsString+'''');
        if SQLTemplate.FindField('PRODA3CSTPISENTRADA').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODA3CSTPISENTRADA = '''+ SQLTemplate.FindField('PRODA3CSTPISENTRADA').AsString+'''');
        if SQLTemplate.FindField('PRODA2CSTCOFINS').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODA2CSTCOFINS = '''+ SQLTemplate.FindField('PRODA2CSTCOFINS').AsString+'''');
        if SQLTemplate.FindField('PRODA3CSTCOFINSENTRADA').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODA3CSTCOFINSENTRADA = '''+ SQLTemplate.FindField('PRODA3CSTCOFINSENTRADA').AsString+'''');
        if SQLTemplate.FindField('PRODA1TIPO').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODA1TIPO = '''+ SQLTemplate.FindField('PRODA1TIPO').AsString+'''');
        if SQLTemplate.FindField('PRODA2TIPOITEM').AsString <> '' then
          dm.SQLTemplate.sql.Add(', PRODA2TIPOITEM = '''+ SQLTemplate.FindField('PRODA2TIPOITEM').AsString+'''');
        if SQLTemplate.FindField('NCMICOD').AsString <> '' then
          dm.SQLTemplate.sql.Add(', NCMICOD = '+ SQLTemplate.FindField('NCMICOD').AsString);

        dm.SQLTemplate.sql.Add(', PRODN3CAPACEMBAL = ' + ConvFloatToStr(SQLTemplate.FindField('PRODN3CAPACEMBAL').Value));
        dm.SQLTemplate.sql.Add(', PRODN2PERCIPIENTRADA = '+ ConvFloatToStr(SQLTemplate.FindField('PRODN2PERCIPIENTRADA').Value));
        dm.SQLTemplate.sql.Add(', PRODN3PERCIPI = '    + ConvFloatToStr(SQLTemplate.FindField('PRODN3PERCIPI').Value));
        dm.SQLTemplate.sql.Add(', PRODN2PERCSUBST = '  + ConvFloatToStr(SQLTemplate.FindField('PRODN2PERCSUBST').Value));
        dm.SQLTemplate.sql.Add(', PRODN2PERCFRETE = '  + ConvFloatToStr(SQLTemplate.FindField('PRODN2PERCFRETE').Value));
        dm.SQLTemplate.sql.Add(', PRODN2PERCDESP = '   + ConvFloatToStr(SQLTemplate.FindField('PRODN2PERCDESP').Value));
        dm.SQLTemplate.sql.Add(', PRODN2PERCDIFICM = ' + ConvFloatToStr(SQLTemplate.FindField('PRODN2PERCDIFICM').Value));
        dm.SQLTemplate.sql.Add(', PRODN2ALIQPIS = '    + ConvFloatToStr(SQLTemplate.FindField('PRODN2ALIQPIS').Value));
        dm.SQLTemplate.sql.Add(', PRODN2ALIQCOFINS = ' + ConvFloatToStr(SQLTemplate.FindField('PRODN2ALIQCOFINS').Value));

        dm.SQLTemplate.sql.Add('Where PRODICOD <> '+ SQLTemplatePRODICOD.AsString +
                               ' and PRODIAGRUPGRADE = '+ SQLTemplatePRODIAGRUPGRADE.AsString);

        dm.SQLTemplate.ExecSQL;
      except
        Application.ProcessMessages;
        ShowMessage('Erro ao Tentar Atualizar Produtos Filhos da Grade');
      end;
    end;

  EnviaProdutoPDVs('N');
end;

procedure TFormCadastroProduto.SQLTemplatePostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
Var
  CodigoBarra:String;
begin
  inherited;
  CodigoBarra := GeraCodigoBarras(Format('%.3d',[SQLTemplatePRODICOD.asInteger]));;
  SQLTemplatePRODA60CODBAR.asString := CodigoBarra + DigitVerifEAN(CodigoBarra);
  ProdutoCodigo := DataSet.FindField('PRODICOD').asInteger;
end;

procedure TFormCadastroProduto.SQLProdutoSaldoNovoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
end;

procedure TFormCadastroProduto.SQLTemplatePRODA60DESCRChange(
  Sender: TField);
begin
  inherited;
  if Sender.DataSet.FindField('PRODA30ADESCRREDUZ').asString = '' then
    Sender.DataSet.FindField('PRODA30ADESCRREDUZ').asString := Sender.asString;
end;

procedure TFormCadastroProduto.SQLTemplatePRODN3VLRVENDAChange(
  Sender: TField);
begin
  inherited;
  if Dm.SQLConfigGeralCFGECALCPRECOAUTOM.AsString = 'N' then Exit;
  If AlterandoValores Then Exit;
  AlterandoValores := True;
  If (DM.SQLConfigCompra.FieldByName('CFCOCTOTPRCVENPROD').Value='M') AND (SQLTemplate.FindField('PRODN3VLRCUSTOMEDIO').asFloat>0) Then
    begin
      SQLTemplate.FindField('PRODN3PERCMARGLUCR').asFloat := ((Sender.AsFloat / SQLTemplate.FieldByName('PRODN3VLRCUSTOMEDIO').asFloat) - 1) * 100;
    end;
  If (DM.SQLConfigCompra.FieldByName('CFCOCTOTPRCVENPROD').Value='U') AND (Sender.DataSet.FindField('PRODN3VLRCUSTO').asFloat>0) Then
    begin
      SQLTemplate.FindField('PRODN3PERCMARGLUCR').asFloat := ((Sender.AsFloat / SQLTemplate.FieldByName('PRODN3VLRCUSTO').asFloat) - 1) * 100;
    end;

  AlterandoValores := False;
end;

procedure TFormCadastroProduto.SQLMovimentoEstoqueBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
{  If DM.SQLConfigGeralEmpresaMatrizFilialLookUp.asString='F' Then
    SQLMovimentoEstoque.MacroByName('MEmpresa').AsString := 'EMPRICOD='+IntToStr(EmpresaCorrente)
  Else
    SQLMovimentoEstoque.MacroByName('MEmpresa').AsString := '0=0';}
end;

procedure TFormCadastroProduto.DesabilitarCampos ;
begin
  ComboSubGrupo.Enabled       := (SQLTemplateGRUPICOD.Value > 0) ;
  AcessaGrupo.Enabled         := SQLTemplateGRUPICOD.AsString <> '' ;
  LabelSubGrupo.Enabled       := SQLTemplateGRUPICOD.AsString <> '' ;
  ComboVariacao.Enabled       := SQLTemplateSUBGICOD.Text <> '' ;
  AcessaVariacao.Enabled      := SQLTemplateSUBGICOD.AsString <> '' ;
  LabelVariacao.Enabled       := SQLTemplateSUBGICOD.AsString <> '' ;
end ;

procedure TFormCadastroProduto.BtnGerCodBalClick(Sender: TObject);
begin
  inherited;
  if not (SQLTemplate.State in dsEditModes) then
  begin
    Informa('Clique em Alterar antes !') ;
    exit ;
  end ;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('Select Max(PRODICODBALANCA) as ProxCod from PRODUTO') ;
  DM.SQLTemplate.Open ;
  if DM.SQLTemplate.FieldByName('ProxCod').Value > 0 then
    SQLTemplatePRODICODBALANCA.Value := DM.SQLTemplate.FieldByName('ProxCod').Value + 1
  else
    SQLTemplatePRODICODBALANCA.Value := 1 ;
end ;

procedure TFormCadastroProduto.SQLProdutoSaldoBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  Abort;
end;

procedure TFormCadastroProduto.SQLProdutoSaldoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;
end;

procedure TFormCadastroProduto.SQLProdutoSaldoBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  Abort;
end;

procedure TFormCadastroProduto.SQLTemplateBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  ValorVenda  := SQLTemplatePRODN3VLRVENDA.AsFloat;
  ValorVenda2 := SQLTemplatePRODN3VLRVENDA2.AsFloat;
  ValorCompra := SQLTemplatePRODN3VLRCOMPRA.AsFloat;
  ValorCusto  := SQLTemplatePRODN3VLRCUSTO.AsFloat;
  ValorCustoMedio := SQLTemplatePRODN3VLRCUSTOMED.AsFloat;
  MargemLucro := SQLTemplatePRODN3PERCMARGLUCR.AsFloat;
  Referencia  := SQLTemplatePRODA60REFER.AsString;
  CodBarras   := SQLTemplatePRODA60CODBAR.AsString;
  CodAntigo   := SQLTemplatePRODA15CODANT.AsString;
  if ValorVenda > 0 then
    begin
      if dm.SQLConfigVenda.FieldByName('CFVEINROCASASDEC').Value = 2 then LbValorVenda.Caption := FormatCurr('R$ ##0.00',ValorVenda);
      if dm.SQLConfigVenda.FieldByName('CFVEINROCASASDEC').Value = 3 then LbValorVenda.Caption := FormatCurr('R$ ##0.000',ValorVenda);
    end;
  if ValorVenda2 > 0 then
    begin
      if dm.SQLConfigVenda.FieldByName('CFVEINROCASASDEC').Value = 2 then LbValorVenda2.Caption := FormatCurr('R$ ##0.00',ValorVenda2);
      if dm.SQLConfigVenda.FieldByName('CFVEINROCASASDEC').Value = 3 then LbValorVenda2.Caption := FormatCurr('R$ ##0.000',ValorVenda2);
    end;

  lbValorVenda2835.Caption := FormatCurr('R$ ##0.00',SQLTemplatePRODN2VLRVENDA2835D.Value);
  lbValorVenda283542.Caption := FormatCurr('R$ ##0.00',SQLTemplatePRODN2VLRVENDA283542D.Value);
end;

procedure TFormCadastroProduto.SQLTemplateBeforeDelete(DataSet: TDataSet);
var
 I : Integer;
begin
  SQLMovimentoEstoqueGrade.Close;
  SQLMovimentoEstoqueGrade.Open;
  if not SQLMovimentoEstoqueGrade.IsEmpty then
    begin
      Informa('A grade deste produto possui movimento de estoque, Não poderá ser excluido !');
      Abort;
    end;
  if (MatrizFilial='F') and (not FileExists('AlteraProdutoFilial.txt')) then
    begin
      Application.MessageBox('Uma filial Não pode excluir estas informações !','Advanced Control Informa...',MB_OK + MB_ICONEXCLAMATION + MB_SETFOREGROUND + MB_SYSTEMMODAL) ;
      Abort ;
    end ;

  if (SQLTemplate.FieldByName('GRADICOD').AsInteger > 0) and (SQLTemplate.FieldByName('GRTMICOD').AsInteger > 0) then
    begin
      if Pergunta('NAO','Este produto possui grade, deseja excluir toda a grade?') then
        begin
          MakeWindowMessage('Excluindo Grade do Produto...');
          SQLExclusaoGrade.Close;
          SQLExclusaoGrade.ParamByName('PRODIAGRUPGRADE').AsInteger := SQLTemplate.FieldByName('PRODIAGRUPGRADE').AsInteger;
          SQLExclusaoGrade.Open;
          SQLExclusaoGrade.First;
          if not SQLExclusaoGrade.IsEmpty then
            begin
              DM.DB.StartTransaction;
              while not SQLExclusaoGrade.Eof do
                begin
                  For I:=0 To MemoDetalhes.Lines.Count-1 Do
                    If Trim(MemoDetalhes.Lines[I])<>'' Then
                      Begin
                        SQLExcluiDetalhes.MacroByName('MTabela').AsString   := MemoDetalhes.Lines[I];
                        SQLExcluiDetalhes.MacroByName('MFiltro').asString   := 'PRODICOD = ' + SQLExclusaoGrade.FieldByName('PRODICOD').AsString;
                        SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Select *';
                        SQLExcluiDetalhes.Open;
                        SQLExcluiDetalhes.First;
                        while not SQLExcluiDetalhes.Eof do
                          begin
                            DM.RegistraExclusao(MemoDetalhes.Lines[I],SQLExcluiDetalhes);
                            SQLExcluiDetalhes.Next;
                          end;
                        SQLExcluiDetalhes.Close;
                        SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Delete';
                        SQLExcluiDetalhes.ExecSQL;
                      end;
                  DM.RegistraExclusao('PRODUTO',SQLExclusaoGrade);
                  SQLExclusaoGrade.Delete;
                  SQLExclusaoGrade.ApplyUpdates;
                end;
              //Aplicar Updates
              try
                SQLExclusaoGrade.CommitUpdates;
              except
                on E:Exception do
                  begin
                    Informa('Problemas ao excluir grade, ANOTE O ERRO: ' + #13 + E.Message);
                    SQLExclusaoGrade.CancelUpdates;
                  end;
              end;
              if DM.DB.InTransaction then
                DM.DB.Commit;
              DestroyWindow;
              Abort;
            end;
        end
      else
        begin
          Informa('Exclusï¿½o cancelada pelo usuï¿½rio!');
          DestroyWindow;
          Abort;
        end;
    end;

  EnviaProdutoPDVs('S');

  inherited;
end;

procedure TFormCadastroProduto.SQLTemplatePRODN3VLRCUSTOMEDChange(
  Sender: TField);
begin
  inherited;
  if Dm.SQLConfigGeralCFGECALCPRECOAUTOM.AsString = 'N' then Exit;
  If AlterandoValores Then Exit;
  AlterandoValores := True;

  {Usar Margem Liquida}
  if (DM.SQLConfigCompra.FieldByName('CFCOCTOTPRCVENPROD').Value='M') then
    begin
      Denominador := Sender.DataSet.FindField('PRODN2PERCIPIENTRADA').asFloat   +
                     Sender.DataSet.FindField('PRODN2PERCSUBST').asFloat        +
                     Sender.DataSet.FindField('PRODN2PERCFRETE').asFloat        +
                     Sender.DataSet.FindField('PRODN2PERCDESP').asFloat         +
                     Sender.DataSet.FindField('PRODN2PERCDIFICM').asFloat       +
                     Dm.SQLConfigVenda.FieldByName('CFVEN2PERCCOFINS').AsFloat  +
                     Dm.SQLConfigVenda.FieldByName('CFVEN2PERCPIS').AsFloat     +
                     Dm.SQLConfigVenda.FieldByName('CFVEN2PERCENCARG').AsFloat  +
                     Sender.DataSet.FindField('PRODN3PERCMARGLUCR').asFloat     ;
      if Denominador > 100 then
        Informa( 'Base de cï¿½lculo incorreta, verifique: !'+ #13 +
                 'IPI          : ' + Sender.DataSet.FindField('PRODN2PERCIPIENTRADA').AsString     + #13 +
                 'Subst.Tribut : ' + Sender.DataSet.FindField('PRODN2PERCSUBST').AsString          + #13 +
                 'Frete        : ' + Sender.DataSet.FindField('PRODN2PERCFRETE').AsString          + #13 +

                 'Despesas     : ' + Sender.DataSet.FindField('PRODN2PERCDESP').AsString           + #13 +
                 'Dif Icms     : ' + Sender.DataSet.FindField('PRODN2PERCDIFICM').AsString         + #13 +
                 'Cofins : ' + Dm.SQLConfigVenda.FieldByName('CFVEN2PERCCOFINS').AsString          + #13 +
                 'Pis    : ' + Dm.SQLConfigVenda.FieldByName('CFVEN2PERCPIS').AsString             + #13 +
                 'Outr Encargos: ' + Dm.SQLConfigVenda.FieldByName('CFVEN2PERCENCARG').AsString    + #13 +
                 'Margem Lucro : ' + Sender.DataSet.FindField('PRODN3PERCMARGLUCR').AsString);

      Sender.DataSet.FindField('PRODN3VLRVENDA').asFloat := RoundTo(Sender.AsFloat /
                                                            (1 - (Denominador /100)),-DoNumeroCasasDec);
    end;
  AlterandoValores := False;
end;

procedure TFormCadastroProduto.ComboMarcaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
        or ((sender as trxdblookupcombo).Value <>
            (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    AcessaMarca.Click;
end;

procedure TFormCadastroProduto.ComboGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
        or ((sender as trxdblookupcombo).Value <>
            (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    AcessaGrupo.Click;
end;

procedure TFormCadastroProduto.ComboSubGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
        or ((sender as trxdblookupcombo).Value <>
            (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    AcessaSubgrupo.Click;

end;

procedure TFormCadastroProduto.ComboVariacaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
        or ((sender as trxdblookupcombo).Value <>
            (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    AcessaVariacao.Click;

end;

procedure TFormCadastroProduto.ComboGradeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
        or ((sender as trxdblookupcombo).Value <>
            (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    AcessaGrade.Click;

end;

procedure TFormCadastroProduto.ComboTamanhoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
        or ((sender as trxdblookupcombo).Value <>
            (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    AcessaTamanho.Click;

end;

procedure TFormCadastroProduto.ComboCorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
        or ((sender as trxdblookupcombo).Value <>
            (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    AcessaCor.Click;

end;

procedure TFormCadastroProduto.ComboUnidadeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
        or ((sender as trxdblookupcombo).Value <>
            (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    AcessaUnidade.Click;

end;

procedure TFormCadastroProduto.ComboICMSKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
        or ((sender as trxdblookupcombo).Value <>
            (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    AcessaICMS.Click;

end;

procedure TFormCadastroProduto.FormActivate(Sender: TObject);
begin
  inherited;
  DataSetLookup := Nil;
  SQLProdutoSerie.Open;
end;

procedure TFormCadastroProduto.MontaGradeEstoque;
Var
  Empresa,Cor:String;
  Posicao,I:Integer;
  Soma, SomaE: Double;
  Qtd : array [1..15] of Double;
  QtdE: array [1..15] of Double;
begin
  if EncontrouProduto(SQLTemplatePRODICOD.AsString,SQLProdutoGrade) then
    begin
      if not TblSaldoEmpresa.Active then TblSaldoEmpresa.Open;
      while TblSaldoEmpresa.RecordCount>0 do
        TblSaldoEmpresa.Delete;
      SQLGradeTamanho.Close;
      SQLGradeTamanho.ParamByName('GRADICOD').asInteger := SQLProdutoGradeGRADICOD.asInteger;
      SQLGradeTamanho.Open;
      SQLGradeTamanho.First;
      I:=0;
      if not SQLGradeTamanho.IsEmpty then
        begin
          if SQLGradeTamanho.RecordCount > 15 then
            begin
              Informa('Problemas no cadastro da grade... ' + #13 +
                      'Nï¿½mero de tamanhos excedeu o limite de 15, verifique seu cadastro!' + #13 +
                      'A operaï¿½ï¿½o serï¿½ cancelada!');
              Exit;
            end;
          while not SQLGradeTamanho.Eof do
            begin
              Inc(I);
              TblSaldoEmpresa.FindField('Qtd'+IntToStr(I)).DisplayLabel := SQLGradeTamanhoGRTMA5DESCR.asString;
              SQLGradeTamanho.Next;
            end;
        end
      else
        begin
          for I:=0 to TblSaldoEmpresa.FieldCount - 1 do
            begin
              if Pos('Qtd',TblSaldoEmpresa.Fields[I].FieldName) > 0 then
                TblSaldoEmpresa.Fields[I].DisplayLabel := ' ';
            end;
          I := 0;
        end;
      inc(I);
      if (I<15) and (I>0) then
        for I:=I to 15 do
          TblSaldoEmpresa.FindField('Qtd'+IntToStr(I)).DisplayLabel := ' ';
      SQLGradeTamanho.Close;
      SQLProduto.Close;
      SQLProduto.ParamByName('PRODIAGRUPGRADE').asInteger := SQLProdutoGradePRODIAGRUPGRADE.asInteger;
      SQLProduto.Open;
      SQLProduto.First;
      Empresa := '';
      Cor := '';
      Soma  := 0;
      for I:=1 to 15 do
        Qtd[I]  := 0;
      if SQLProduto.IsEmpty then
        begin
          Informa('A grade para este produto Não foi gerada!');
          Exit;
        end;
      while not SQLProduto.Eof do
        begin
          if (Empresa<>SQLProdutoEMPRICOD.AsString) or (Cor<>SQLProdutoCORICOD.AsString) then
            begin
              TblSaldoEmpresa.Append;
              if (Empresa<>SQLProdutoEMPRICOD.AsString) then
                begin
                  TblSaldoEmpresaEmpresa.asString := SQLLocate('EMPRESA','EMPRICOD','EMPRA60RAZAOSOC',SQLProdutoEMPRICOD.AsString);
                  SomaE := 0;
                  for I:=1 to 15 do
                    QtdE[I] := 0;
                end;
              TblSaldoEmpresaCor.asString := SQLProdutoCORA30DESCR.AsString;
              Empresa := SQLProdutoEMPRICOD.AsString;
              Cor     := SQLProdutoCORICOD.AsString;
            end
          else
            TblSaldoEmpresa.Edit;
          TblSaldoEmpresaTotal.asFloat := TblSaldoEmpresaTotal.asFloat + SQLProdutoPSLDN3QTDE.asFloat;
          Posicao:=PosicaoGrade(SQLProdutoGRADICOD.asInteger,SQLProdutoGRTMICOD.asInteger);
          TblSaldoEmpresa.FindField('Qtd' + IntToStr(Posicao)).asFloat := SQLProdutoPSLDN3QTDE.asFloat;
          TblSaldoEmpresa.Post;

          Soma  := Soma  + SQLProdutoPSLDN3QTDE.asFloat;
          SomaE := SomaE + SQLProdutoPSLDN3QTDE.asFloat;

          Qtd[Posicao]  := Qtd[Posicao]  + SQLProdutoPSLDN3QTDE.asFloat;
          QtdE[Posicao] := QtdE[Posicao] + SQLProdutoPSLDN3QTDE.asFloat;

          SQLProduto.Next;
          
          if (Empresa<>SQLProdutoEMPRICOD.AsString) or SQLProduto.Eof then
            begin
              TblSaldoEmpresa.Append;
              TblSaldoEmpresaEmpresa.asString := '------------------------------------------------------------';
              TblSaldoEmpresaCor.asString := 'SubTotal';
              TblSaldoEmpresaTotal.asFloat := SomaE;
              for I:=1 to 15 do
                TblSaldoEmpresa.FindField('Qtd'+IntToStr(I)).asFloat:=QtdE[I];
              TblSaldoEmpresa.Post;
              // LINHA EM BRANCO
              TblSaldoEmpresa.Append;
              TblSaldoEmpresaEmpresa.asString := '============================================================';
              TblSaldoEmpresaCor.asString     := '============================================================';
              TblSaldoEmpresa.Post;
            end;
        end;
      SQLProduto.Close;
      if TblSaldoEmpresa.RecordCount>0 then
        begin
          TblSaldoEmpresa.Append;
          TblSaldoEmpresaEmpresa.asString := '____________________________________________________________';
          TblSaldoEmpresaCor.asString := 'Total Geral';
          TblSaldoEmpresaTotal.asFloat := Soma;
          for I:=1 to 15 do
            TblSaldoEmpresa.FindField('Qtd'+IntToStr(I)).asFloat:=Qtd[I];
          TblSaldoEmpresa.Post;
        end;
    end;
  TblSaldoEmpresa.First;
end;
procedure TFormCadastroProduto.MontaGradeProduto;
Var
  Posicao,I,Cor:Integer;
begin
  if EncontrouProduto(SQLTemplatePRODICOD.AsString,SQLProdutoGrade) then
    begin
      if not MEMGradeProduto.Active then MEMGradeProduto.Open;
      while MEMGradeProduto.RecordCount>0 do
        MEMGradeProduto.Delete;
      SQLGradeTamanho.Close;
      SQLGradeTamanho.ParamByName('GRADICOD').asInteger := SQLProdutoGradeGRADICOD.asInteger;
      SQLGradeTamanho.Open;
      SQLGradeTamanho.First;
      I:=0;
      if not SQLGradeTamanho.IsEmpty then
        begin
          if SQLGradeTamanho.RecordCount > 15 then
            begin
              Informa('Problemas no cadastro da grade... ' + #13 +
                      'Nï¿½mero de tamanhos excedeu o limite de 15, verifique seu cadastro!' + #13+
                      'A operaï¿½ï¿½o serï¿½ cancelada!');
              Exit;
            end;
          while not SQLGradeTamanho.Eof do
            begin
              Inc(I);
              MEMGradeProduto.FindField('Tam'+IntToStr(I)).DisplayLabel := SQLGradeTamanhoGRTMA5DESCR.asString;
              SQLGradeTamanho.Next;
            end;
        end
      else
        begin
          for I:=0 to MEMGradeProduto.FieldCount - 1 do
            begin
              if Pos('Tam',TblSaldoEmpresa.Fields[I].FieldName) > 0 then
                TblSaldoEmpresa.Fields[I].DisplayLabel := ' ';
            end;
          I := 0;
        end;
      inc(I);
      if (I<15) and (I>0) then
        for I:=I to 15 do
          MEMGradeProduto.FindField('Tam'+IntToStr(I)).DisplayLabel := ' ';
      SQLGradeTamanho.Close;
      SQLGradeProduto.Close;
      SQLGradeProduto.ParamByName('PRODIAGRUPGRADE').asInteger := SQLProdutoGradePRODIAGRUPGRADE.asInteger;
//      SQLGradeProduto.ParamByName('PRODICOD').AsInteger        := SQLTemplatePRODICOD.AsInteger;
//      SQLGradeProduto.MacroByName('Empresa').AsString          := 'PRODUTOSALDO.EMPRICOD = ' + IntToStr(EmpresaCorrente);
      SQLGradeProduto.Open;
      SQLGradeProduto.First;
      if SQLGradeProduto.IsEmpty then
        begin
          Informa('A grade para este produto Não foi gerada!');
          Exit;
        end;
      while not SQLGradeProduto.Eof do
        begin
          if Cor <> SQLGradeProdutoCORICOD.AsInteger then
            begin
              MEMGradeProduto.Append;
            end
          else
            MEMGradeProduto.edit;
//          MEMGradeProdutoGrade.asString := SQLGradeGRADA30DESCR.AsString;
          MEMGradeProdutoCor.asString   := SQLGradeProdutoCORA30DESCR.AsString;
          Cor     := SQLGradeProdutoCORICOD.AsInteger;
          Posicao:=PosicaoGrade(SQLGradeProdutoGRADICOD.asInteger,SQLGradeProdutoGRTMICOD.asInteger);
          MEMGradeProduto.FindField('Tam'+IntToStr(Posicao)).AsString := 'X';
          MEMGradeProdutoValorVenda.Value := SQLGradeProdutoPRODN3VLRVENDA.Value;
          MEMGradeProduto.Post;
          SQLGradeProduto.Next;
        end;
      SQLGradeProduto.First;
    end;
end;
procedure TFormCadastroProduto.MontaGradeCompras;
Var
  NroNota,Cor:String;
  Posicao,I:Integer;
  Soma, SomaE: Double;
  Qtd : array [1..15] of Double;
  QtdE: array [1..15] of Double;
begin
  if EncontrouProduto(SQLTemplatePRODICOD.AsString,SQLProdutoGrade) then
    begin
      if not MEMGradeCompras.Active then MEMGradeCompras.Open;
      while MEMGradeCompras.RecordCount>0 do
        MEMGradeCompras.Delete;
      SQLGradeTamanho.Close;
      SQLGradeTamanho.ParamByName('GRADICOD').asInteger := SQLProdutoGradeGRADICOD.asInteger;
      SQLGradeTamanho.Open;
      SQLGradeTamanho.First;
      I:=0;
      if not SQLGradeTamanho.IsEmpty then
        begin
          if SQLGradeTamanho.RecordCount > 15 then
            begin
              Informa('Problemas no cadastro da grade... ' + #13 +
                      'Nï¿½mero de tamanhos excedeu o limite de 15, verifique seu cadastro!' + #13+
                      'A operaï¿½ï¿½o serï¿½ cancelada!');
              Exit;
            end;
          while not SQLGradeTamanho.Eof do
            begin
              Inc(I);
              MEMGradeCompras.FindField('Qtd'+IntToStr(I)).DisplayLabel := SQLGradeTamanhoGRTMA5DESCR.asString;
              SQLGradeTamanho.Next;
            end;
        end
      else
        begin
          for I:=0 to MEMGradeCompras.FieldCount - 1 do
            begin
              if Pos('Qtd',MEMGradeCompras.Fields[I].FieldName) > 0 then
                MEMGradeCompras.Fields[I].DisplayLabel := ' ';
            end;
          I := 0;
        end;
      inc(I);
      if (I<15) and (I>0) then
        for I:=I to 15 do
          MEMGradeCompras.FindField('Qtd'+IntToStr(I)).DisplayLabel := ' ';
      SQLGradeTamanho.Close;
      SQLGradeNotaCompra.Close;
      SQLGradeNotaCompra.ParamByName('PRODIAGRUPGRADE').asInteger := SQLProdutoGradePRODIAGRUPGRADE.asInteger;
      SQLGradeNotaCompra.Open;
      SQLGradeNotaCompra.First;
      NroNota:='';
      Cor:='';
      Soma  := 0;
      for I:=1 to 15 do
        Qtd[I]  := 0;
      while not SQLGradeNotaCompra.Eof do
        begin
          if (NroNota<>SQLGradeNotaCompraNOCPA30NRO.AsString) or (Cor<>SQLGradeNotaCompraCORICOD.AsString) then
            begin
              MEMGradeCompras.Append;
              if (NroNota<>SQLGradeNotaCompraNOCPA30NRO.AsString) then
                begin
                  MEMGradeComprasNota.asString := SQLGradeNotaCompraNOCPA30NRO.AsString;
                  SomaE := 0;
                  for I:=1 to 15 do
                    QtdE[I] := 0;
                end;
              MEMGradeComprasCor.asString := SQLGradeNotaCompraCORA30DESCR.AsString;
              NroNota := SQLGradeNotaCompraNOCPA30NRO.AsString;
              Cor     := SQLGradeNotaCompraCORICOD.AsString;
            end
          else
            MEMGradeCompras.Edit;
          MEMGradeComprasTotal.asFloat := MEMGradeComprasTotal.asFloat + SQLGradeNotaCompraNOCIN3QTDEMBAL.asFloat;
          Posicao:=PosicaoGrade(SQLGradeNotaCompraGRADICOD.asInteger,SQLGradeNotaCompraGRTMICOD.asInteger);
          MEMGradeCompras.FindField('Qtd'+IntToStr(Posicao)).asFloat := SQLGradeNotaCompraNOCIN3QTDEMBAL.asFloat;
          MEMGradeCompras.Post;
          Soma  := Soma  + SQLGradeNotaCompraNOCIN3QTDEMBAL.asFloat;
          SomaE := SomaE + SQLGradeNotaCompraNOCIN3QTDEMBAL.asFloat;
          Qtd[Posicao] := Qtd[Posicao]  + SQLGradeNotaCompraNOCIN3QTDEMBAL.asFloat;
          QtdE[Posicao]:= QtdE[Posicao] + SQLGradeNotaCompraNOCIN3QTDEMBAL.asFloat;
          SQLGradeNotaCompra.Next;
          if (NroNota<>SQLGradeNotaCompraNOCPA30NRO.AsString) or SQLGradeNotaCompra.Eof then
            begin
              MEMGradeCompras.Append;
              MEMGradeComprasNota.asString := '------------------------------------------------------------';
              MEMGradeComprasCor.asString := 'SubTotal';
              MEMGradeComprasTotal.asFloat := SomaE;
              for I:=1 to 15 do
                MEMGradeCompras.FindField('Qtd'+IntToStr(I)).asFloat:=QtdE[I];
              MEMGradeCompras.Post;
              // LINHA EM BRANCO
              MEMGradeCompras.Append;
              MEMGradeComprasNota.asString := '============================================================';
              MEMGradeComprasCor.asString     := '============================================================';
              MEMGradeCompras.Post;
            end;
        end;
      SQLGradeNotaCompra.Close;
      if MEMGradeCompras.RecordCount>0 then
        begin
          MEMGradeCompras.Append;
          MEMGradeComprasNota.asString := '____________________________________________________________';
          MEMGradeComprasCor.asString := 'Total Geral';
          MEMGradeComprasTotal.asFloat := Soma;
          for I:=1 to 15 do
            MEMGradeCompras.FindField('Qtd'+IntToStr(I)).asFloat:=Qtd[I];
          MEMGradeCompras.Post;
        end;
    end;
  MEMGradeCompras.First;
end;
procedure TFormCadastroProduto.TabSheetSaldosExit(Sender: TObject);
begin
  inherited;
  SQLProdutoSaldo.Close;
  TblSaldoEmpresa.Close;
end;

procedure TFormCadastroProduto.SQLTemplateAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if PagePrincipal.ActivePage = TabSheetSaldos then
    MontaGradeEstoque;
  if PagePrincipal.ActivePage = TabSheetGrade then
    MontaGradeProduto;
  if PagePrincipal.ActivePage = TabSheetCompras then
    MontaGradeCompras;

// ALTERADO PELO JUDI
  if SQLTemplate.FieldByName('GRADICOD').AsVariant = Null then
    if not SQLProdutoSaldo.Active then
      SQLProdutoSaldo.Open;
end;

procedure TFormCadastroProduto.TblSaldoEmpresaBeforeOpen(
  DataSet: TDataSet);
var
 I : Integer;
begin
  inherited;
  For I := 0 to TblSaldoEmpresa.FieldCount -1 do
    begin
      if TblSaldoEmpresa.Fields[I].DataType = FtFloat then
        (TblSaldoEmpresa.Fields[I] as TFloatField).DisplayFormat := '#';
    end;
end;

procedure TFormCadastroProduto.MEMGradeComprasBeforeOpen(
  DataSet: TDataSet);
var
 I : Integer;
begin
  inherited;
  For I := 0 to MEMGradeCompras.FieldCount -1 do
    begin
      if MEMGradeCompras.Fields[I].DataType = FtFloat then
        (MEMGradeCompras.Fields[I] as TFloatField).DisplayFormat := '#';
    end;
end;

procedure TFormCadastroProduto.GeraHistoricoProduto;
begin
  TblTemporaria.Close;
  try
    TblTemporaria.DeleteTable;
    TblTemporaria.CreateTable;
  except
    TblTemporaria.CreateTable;
  end;
  TblTemporaria.Open;
  if not SQLEmpresa.Active then
    SQLEmpresa.Open;

//  SQLCupom.Close;
//  SQLNotaFiscal.Close;
//  SQLNotaCompra.Close;
//  SQLMovimentoDiverso.Close;
  SQLMovimentoEstoque.Close;

{  SQLCupom.ParamByName('Empresa').AsString      := EmpresaPadrao;
  SQLCupom.MacroByName('Produto').AsString      := 'PRODUTO.PRODIAGRUPGRADE = '  + SQLTemplatePRODIAGRUPGRADE.AsString;
  SQLCupom.MacroByName('Data').AsString         := 'CUPOM.CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyyy',De.Date) + ''' AND ' +
                                                   'CUPOM.CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';

  SQLNotaFiscal.ParamByName('Empresa').AsString := EmpresaPadrao;
  SQLNotaFiscal.MacroByName('Produto').AsString := 'PRODUTO.PRODIAGRUPGRADE = '  + SQLTemplatePRODIAGRUPGRADE.AsString;
  SQLNotaFiscal.MacroByName('Data').AsString    := 'NOTAFISCAL.NOFIDEMIS >= ''' + FormatDateTime('mm/dd/yyyy',De.Date) + ''' AND ' +
                                                   'NOTAFISCAL.NOFIDEMIS <= ''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';

  SQLNotaCompra.ParamByName('Empresa').AsString := EmpresaPadrao;
  SQLNotaCompra.MacroByName('Produto').AsString := 'PRODUTO.PRODIAGRUPGRADE = '  + SQLTemplatePRODIAGRUPGRADE.AsString;
  SQLNotaCompra.MacroByName('Data').AsString    := 'NOTACOMPRA.NOCPDRECEBIMENTO >= ''' + FormatDateTime('mm/dd/yyyy',De.Date) + ''' AND ' +
                                                   'NOTACOMPRA.NOCPDRECEBIMENTO <= ''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';

  SQLMovimentoDiverso.ParamByName('Empresa').AsString := EmpresaPadrao;
  SQLMovimentoDiverso.MacroByName('Produto').AsString := 'PRODUTO.PRODIAGRUPGRADE = '  + SQLTemplatePRODIAGRUPGRADE.AsString;
  SQLMovimentoDiverso.MacroByName('Data').AsString    := 'MOVIMENTODIVERSO.MOVDDMOVIMENTO >= ''' + FormatDateTime('mm/dd/yyyy',De.Date) + ''' AND ' +
                                                         'MOVIMENTODIVERSO.MOVDDMOVIMENTO <= ''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + ''''; }

  if ComboEmpresa.Value <> '' then
    SQLMovimentoEstoque.ParamByName('Empresa').AsString := ComboEmpresa.Value
  else
    SQLMovimentoEstoque.ParamByName('Empresa').AsString := EmpresaPadrao;

  SQLMovimentoEstoque.MacroByName('Produto').AsString := 'PRODUTO.PRODIAGRUPGRADE = '  + SQLTemplatePRODIAGRUPGRADE.AsString;

  if (De.Text = '  /  /    ') and (Ate.Text = '  /  /    ') then
    SQLMovimentoEstoque.MacroByName('Data').AsString    := '0=0'
  else
    SQLMovimentoEstoque.MacroByName('Data').AsString    := 'MOVIMENTOESTOQUE.MVESDMOV >= ''' + FormatDateTime('mm/dd/yyyy',De.Date) + ''' AND ' +
                                                           'MOVIMENTOESTOQUE.MVESDMOV <= ''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';

  SQLMovimentoEstoque.Open;
  SQLMovimentoEstoque.First;
  // RETORNA SALDO DE ESTOQUE;
  SQLSaldo.Close;
  if (De.Text = '  /  /    ') and (Ate.Text = '  /  /    ') then
    SQLSaldo.MacroByName('DataInicial').Value   := 'MVESDMOV < ''01/01/2000'''
  else
    SQLSaldo.MacroByName('DataInicial').AsString := 'MVESDMOV < ''' + FormatDateTime('mm/dd/yyyy',De.Date) + '''';
  SQLSaldo.ParamByName('PRODUTO').AsString := SQLTemplatePRODIAGRUPGRADE.AsString;
  if ComboEmpresa.Value <> '' then
    SQLSaldo.ParamByName('EMPRESA').AsString := ComboEmpresa.Value
  else
    SQLSaldo.ParamByName('EMPRESA').AsString := EmpresaPadrao;

  SQLSaldo.Open;
  if not SQLSaldo.IsEmpty then
    begin
      TblTemporaria.Append;
      if ComboEmpresa.Value <> '' then
        TblTemporariaEMPRICOD.AsString     := ComboEmpresa.Value
      else
        TblTemporariaEMPRICOD.AsString     := EmpresaPadrao;

      TblTemporariaPRODA60DESCR.AsString := SQLProdutoPRODA60DESCR.AsString;
      TblTemporariaPRODA60REFER.AsString := SQLProdutoPRODA60REFER.AsString;
      TblTemporariaEntradaSaida.AsString := 'I';
      TblTemporariaCORA30DESCR.AsString  := 'SALDO INICIAL';
      TblTemporariaGRTMA5DESCR.AsString  := '>>>>';
      TblTemporariaOPESA60DESCR.AsString := 'SALDO ANTERIOR AO DIA ' + FormatDateTime('dd/mm/yyyy',De.Date);
      TblTemporariaQtde.AsFloat          := SQLSaldo.FieldByName('SALDO').AsFloat;
      TblTemporariaSALDOINICIAL.AsFloat  := 0;
      TblTemporaria.Post;
    end;

  LabelInfo.Caption := 'Verificando Movimentos de Estoque...';
  LabelInfo.Update;
  Progresso.Min := 0;
  Progresso.Max := SQLMovimentoEstoque.RecordCount;
  Progresso.Position := 0;
  while not SQLMovimentoEstoque.Eof do
    begin
      TblTemporaria.Append;
      TblTemporariaEMPRICOD.AsInteger    := SQLMovimentoEstoqueEMPRICOD.AsInteger;
      TblTemporariaPRODICOD.AsInteger    := SQLMovimentoEstoquePRODICOD.AsInteger;
      TblTemporariaDataMov.AsDateTime    := SQLMovimentoEstoqueMVESDMOV.AsDateTime;
      if SQLMovimentoEstoqueMVESN3QTDENTRADA.Value > 0 then
        begin
          TblTemporariaQtde.AsFloat          := SQLMovimentoEstoqueMVESN3QTDENTRADA.Value;
          TblTemporariaEntradaSaida.AsString := 'E';
        end
      else
        begin
          TblTemporariaQtde.AsFloat          := - SQLMovimentoEstoqueMVESN3QTDSAIDA.Value;
          TblTemporariaEntradaSaida.AsString := 'S';
        end;

      if SQLMovimentoEstoqueCUPOA13ID.AsString <> '' then TblTemporariaDOCUMENTO.AsString := 'CP.' + SQLMovimentoEstoqueCUPOA13ID.AsString;
      if SQLMovimentoEstoqueNOFIA13ID.AsString <> '' then TblTemporariaDOCUMENTO.AsString := 'NF.' + SQLMovimentoEstoqueNOFIA13ID.AsString;
      if SQLMovimentoEstoqueNOCPA13ID.AsString <> '' then TblTemporariaDOCUMENTO.AsString := 'NC.' + SQLMovimentoEstoqueNOCPA13ID.AsString;
      if SQLMovimentoEstoqueMOVDA13ID.AsString <> '' then TblTemporariaDOCUMENTO.AsString := 'MD.' + SQLMovimentoEstoqueMOVDA13ID.AsString;
      if (SQLMovimentoEstoqueCUPOA13ID.AsString = '') and
         (SQLMovimentoEstoqueNOFIA13ID.AsString = '') and
         (SQLMovimentoEstoqueNOCPA13ID.AsString = '') and
         (SQLMovimentoEstoqueMOVDA13ID.AsString = '') then TblTemporariaDOCUMENTO.AsString := 'IV.' + FormatDateTime('ddmmyy',SQLMovimentoEstoqueMVESDMOV.AsDateTime);

      TblTemporariaPRODA60DESCR.AsString := SQLMovimentoEstoquePRODA60DESCR.AsString;
      TblTemporariaPRODA60REFER.AsString := SQLMovimentoEstoquePRODA60REFER.AsString;
      TblTemporariaCORA30DESCR.AsString  := SQLMovimentoEstoqueCORA30DESCR.AsString;
      TblTemporariaGRTMA5DESCR.AsString  := SQLMovimentoEstoqueGRTMA5DESCR.AsString;
      TblTemporariaOPESA60DESCR.AsString := SQLMovimentoEstoqueOPESA60DESCR.AsString;
      TblTemporaria.Post;
      SQLMovimentoEstoque.Next;
      Progresso.Position := Progresso.Position + 1;
      Progresso.Update;
    end;

  LabelInfo.Caption  := '';
  LabelInfo.Update;
  Progresso.Position := 0;
  Progresso.Update;
  TblTemporaria.Close;
  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Historico por Produto.rpt';
  Report.ReportTitle       := 'Relatório de Histórico por Produto';
  Report.WindowStyle.Title := 'Relatório de Histórico por Produto';
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '''' + ComboEmpresa.Text + '''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Produto' ;
  Report.Formulas.Formula.Text := ''''+ SQLTemplatePRODA60DESCR.AsString + '''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Referencia' ;
  Report.Formulas.Formula.Text := ''''+ SQLTemplatePRODA60REFER.AsString + '''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Send;
  Report.Execute;
end;
procedure TFormCadastroProduto.BtnVisualizarClick(Sender: TObject);
begin
  inherited;
  GeraHistoricoProduto;
end;

procedure TFormCadastroProduto.DSTemplateDataChange(Sender: TObject;
  Field: TField);
var
  BlobStream : TStream;
  JPEGImage  : TJPEGImage;
begin
  inherited;

  if sqltemplategradicod.asstring <> '' then
    begin
      SQLTamanho.Close;
      SQLTamanho.Open;
    end;

  SQLProdutoComposicao.Close;
  SQLProdutoComposicao.Open;

  SQLSaldoEmpresaAtual.Close;
  SQLSaldoEmpresaAtual.MacroByName('EmpresaAtual').Value := 'EMPRICOD = '+ IntToStr(EmpresaCorrente);
  SQLSaldoEmpresaAtual.Open;

  // Mostra Imagem Associada ao Produto
  if SQLTemplatePRODBIMAGEM.BlobSize <> 0 then
  begin
    BlobStream:= SQLTemplate.CreateBlobStream(SQLTemplatePRODBIMAGEM,bmRead);
    JPEGImage := TJPEGImage.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      ImageProduto.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
    ImageProduto.Picture:=nil;
end;

procedure TFormCadastroProduto.PageControlValoresChange(Sender: TObject);
begin
  inherited;
  if PageControlValores.ActivePage = TabReais then
    DBEditVlrCompra.SetFocus;
  if PageControlValores.ActivePage = TabDolar then
    EditDolarCompra.SetFocus;
end;

procedure TFormCadastroProduto.SQLGradeProdutoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if (MatrizFilial='F') and (not FileExists('AlteraProdutoFilial.txt')) then
  begin
    Application.MessageBox('Uma filial Não pode alterar estas informações !','Advanced Control Informa...',MB_OK + MB_ICONINFORMATION + MB_SETFOREGROUND + MB_SYSTEMMODAL) ;
    Abort ;
  end ;
  inherited;
  if ValorVenda <>  SQLGradeProdutoPRODN3VLRVENDA.AsFloat then
    begin
      LancaReajustePreco(SQLGradeProdutoPRODN3VLRVENDA.AsFloat,
                         SQLGradeProdutoPRODN3VLRCOMPRA.AsFloat,
                         0,//Valor de Compra Medio
                         SQLGradeProdutoPRODN3VLRCUSTO.AsFloat,
                         0,//Valor de Custo Medio
                         0,//Margem de Lucro
                         SQLGradeProdutoPRODICOD.AsInteger);
      if DM.SQLConfigGeralCFGECALCPRECOAUTOM.AsString <> 'N' then
        SQLGradeProdutoPRODN3PERCMARGLUCR.AsFloat := CalculaMargemLucro(SQLGradeProdutoPRODICOD.AsInteger,SQLGradeProdutoPRODN3VLRCUSTO.AsFloat,SQLGradeProdutoPRODN3VLRVENDA.AsFloat);
    end;
    if ValorCompra <>  SQLGradeProdutoPRODN3VLRCOMPRA.AsFloat then
      begin
        LancaReajustePreco(SQLGradeProdutoPRODN3VLRVENDA.AsFloat,
                           SQLGradeProdutoPRODN3VLRCOMPRA.AsFloat,
                           0,//Valor de Compra Medio
                           SQLGradeProdutoPRODN3VLRCUSTO.AsFloat,
                           0,//Valor de Custo Medio
                           0,//Margem de Lucro
                           SQLGradeProdutoPRODICOD.AsInteger);
      end;
    if ValorCusto <>  SQLGradeProdutoPRODN3VLRCUSTO.AsFloat then
      begin
        LancaReajustePreco(SQLGradeProdutoPRODN3VLRVENDA.AsFloat,
                           SQLGradeProdutoPRODN3VLRCOMPRA.AsFloat,
                           0,//Valor de Compra Medio
                           SQLGradeProdutoPRODN3VLRCUSTO.AsFloat,
                           0,//Valor de Custo Medio
                           SQLGradeProdutoPRODN3PERCMARGLUCR.AsFloat,//Margem de Lucro
                           SQLGradeProdutoPRODICOD.AsInteger);
        if (DM.SQLConfigGeralCFGECALCPRECOAUTOM.AsString <> 'N') and (DM.SQLConfigCompra.fieldbyname('CFCOCTOTPRCVENPROD').Value='U') then
          SQLGradeProdutoPRODN3VLRVENDA.AsFloat := CalculaPrecoVenda(SQLGradeProdutoPRODICOD.AsInteger,SQLGradeProdutoPRODN3VLRCUSTO.AsFloat,
            SQLGradeProdutoPRODN3PERCMARGLUCR.AsFloat);
      end;
    if MargemLucro <> SQLGradeProdutoPRODN3PERCMARGLUCR.AsFloat then
      begin
        LancaReajustePreco(SQLGradeProdutoPRODN3VLRVENDA.AsFloat,
                           SQLGradeProdutoPRODN3VLRCOMPRA.AsFloat,
                           0,//Valor de Compra Medio
                           SQLGradeProdutoPRODN3VLRCUSTO.AsFloat,
                           0,//Valor de Custo Medio
                           SQLGradeProdutoPRODN3PERCMARGLUCR.AsFloat,//Margem de Lucro
                           SQLGradeProdutoPRODICOD.AsInteger);
       end;
    if (DM.SQLConfigGeralCFGECALCPRECOAUTOM.AsString <> 'N') and (DM.SQLConfigCompra.fieldbyname('CFCOCTOTPRCVENPROD').Value='U') and (SQLGradeProdutoPRODN3PERCMARGLUCR.AsFloat>0) then
      SQLGradeProdutoPRODN3VLRVENDA.AsFloat := RoundTo(CalculaPrecoVenda(SQLGradeProdutoPRODICOD.AsInteger,SQLGradeProdutoPRODN3VLRCUSTO.AsFloat,SQLGradeProdutoPRODN3PERCMARGLUCR.AsFloat),-DoNumeroCasasDec);
  SQLGradeProdutoPENDENTE.AsString   := 'S';
  SQLGradeProdutoREGISTRO.AsDateTime := Now;
end;

procedure TFormCadastroProduto.SQLGradeProdutoBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  ValorVenda  := SQLGradeProdutoPRODN3VLRVENDA.AsFloat;
  ValorVenda2 := SQLGradeProdutoPRODN3VLRVENDA2.AsFloat;
  ValorCompra := SQLGradeProdutoPRODN3VLRCOMPRA.AsFloat;
  ValorCusto  := SQLGradeProdutoPRODN3VLRCUSTO.AsFloat;
  MargemLucro := SQLGradeProdutoPRODN3PERCMARGLUCR.AsFloat;
end;

procedure TFormCadastroProduto.DBGridGradeProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) and (SQLGradeProduto.State in [DSEdit]) then
    SQLGradeProduto.Post;
end;

procedure TFormCadastroProduto.DBGridGradeProdutoEnter(Sender: TObject);
begin
  inherited;
  DBGridGradeProduto.SelectedIndex := 0;
end;

procedure TFormCadastroProduto.SQLGradeProdutoNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLGradeProduto.Cancel;
  Abort;
  Exit;
end;

procedure TFormCadastroProduto.SQLGradeProdutoBeforeDelete(
  DataSet: TDataSet);
var
 I : Integer;
 Cod : string;
begin
  inherited;

  if Pergunta('NAO','Voce apagarï¿½ essa Cor e Tamanho! Continuar') then
    begin
      DM.DB.StartTransaction;

      Cod := SQLGradeProduto.FieldByName('PRODICOD').AsString;

      DM.RegistraExclusao('PRODUTO',SQLGradeProduto);

      For I:=0 To MemoDetalhes.Lines.Count-1 Do
        If Trim(MemoDetalhes.Lines[I])<>'' Then
          Begin
            SQLExcluiDetalhes.Close;
            SQLExcluiDetalhes.MacroByName('MTabela').AsString   := MemoDetalhes.Lines[I];
            SQLExcluiDetalhes.MacroByName('MFiltro').asString   := 'PRODICOD = ' + Cod;
            SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Select *';
            SQLExcluiDetalhes.Open;
            SQLExcluiDetalhes.First;
            while not SQLExcluiDetalhes.Eof do
              begin
                DM.RegistraExclusao(MemoDetalhes.Lines[I],SQLExcluiDetalhes);
                SQLExcluiDetalhes.Next;
              end;
            SQLExcluiDetalhes.Close;
            SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Delete';
            SQLExcluiDetalhes.ExecSQL;
          end;

      if DM.DB.InTransaction then
        DM.DB.Commit;
    end;
end;

procedure TFormCadastroProduto.SQLTemplatePRODN3DOLARCUSTOChange(
  Sender: TField);
begin
  inherited;
  if SQLTemplate.State in DSEditModes then
    begin
     if SQLTemplateVlrCustoConvertido.AsFloat > 0 then
       begin
         SQLTemplatePRODN3VLRCUSTO.AsFloat := SQLTemplateVlrCustoConvertido.AsFloat;
       end;
    end;
end;

procedure TFormCadastroProduto.BtnCapturaFotoClick(Sender: TObject);
var
  FileStream : TFileStream;
  BlobStream : TStream;
begin
  inherited;
  if not (SQLTemplate.State in ([dsEdit, dsInsert])) then
    SQLTemplate.Edit;
  if PictureDialog.Execute then
  begin
    FileStream:=TFileStream.Create(PictureDialog.FileName,
      fmOpenRead or fmShareDenyWrite);
    BlobStream:=SQLTemplate.CreateBlobStream(SQLTemplatePRODBIMAGEM,bmWrite);
    try
      BlobStream.CopyFrom(FileStream,FileStream.Size);
    finally
      FileStream.Free;
      BlobStream.Free;
    end;
  end;
end;

procedure TFormCadastroProduto.BtnRemoveFotoClick(Sender: TObject);
begin
  inherited;
  if Pergunta('NAO','Tem certeza que deseja remover esta imagem?') then
    begin
      SQLTemplate.DisableControls;
      if not (SQLTemplate.State in ([dsEdit, dsInsert])) then
        begin
          SQLTemplate.Edit;
          SQLTemplatePRODBIMAGEM.AsVariant := Null;
          SQLTemplate.Post;
        end;
      SQLTemplate.EnableControls;  
    end;
end;

procedure TFormCadastroProduto.BtnCalculaClick(Sender: TObject);
var
  Retorno : TInfoRetornoUser;
begin
  inherited;
  if AutenticaUsuario(UsuarioAtualNome,'USUACUSERMASTER',Retorno) = 'S' then
    begin
      if not (SQLTemplate.State in [DsEdit]) then
        SQLTemplate.Edit;
      DBEditCustoMedio.ReadOnly  := False;
      DBEditCustoMedio.SetFocus;
      DBEditCustoMedio.Color := clWhite;
    end
  else
    begin
      Informa('Este alteraï¿½ï¿½o sï¿½ poder ser feita por um usuï¿½rio Master do sistema!');
      Abort;
    end;
end;

procedure TFormCadastroProduto.SQLProdutoReajusteBeforeEdit(
  DataSet: TDataSet);
var
  Retorno : TInfoRetornoUser;
begin
  inherited;
  if AutenticaUsuario(UsuarioAtualNome,'USUACUSERMASTER',Retorno) <> 'S' then
    begin
      Informa('Este alteraï¿½ï¿½o sï¿½ poder ser feita por um usuï¿½rio Master do sistema!');
      SQLProdutoReajuste.Cancel;
      Abort;
    end;
end;

procedure TFormCadastroProduto.SQLProdutoReajusteBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.Cancel;
end;

procedure TFormCadastroProduto.SQLTemplatePRODN3DOLARCOMPRAChange(
  Sender: TField);
begin
  inherited;
  if SQLTemplate.State in DSEditModes then
    begin
     if SQLTemplateVlrCompraConvertido.AsFloat > 0 then
       SQLTemplatePRODN3VLRCOMPRA.AsFloat := SQLTemplateVlrCompraConvertido.AsFloat;
    end;
end;

procedure TFormCadastroProduto.abeladePreco1Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  CriaFormulario(TFormCadastroProdutoTabelaPreco,'FormCadastroProdutoTabelaPreco',True,False,True,'');
end;

procedure TFormCadastroProduto.SQLGradeProdutoAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  // Redesenha o Grid por causa do Zebrado
  DBGridGradeProduto.Repaint;
end;

procedure TFormCadastroProduto.AcessaColecaoClick(Sender: TObject);
begin
  inherited;
  ComboColecao.SetFocus;
  DSMasterSys := DSTemplate;
  FieldLookup := DsTemplate.DataSet.FieldByName('COLEICOD');
  FieldOrigem := 'COLEICOD' ;
  DataSetLookup := SQLColecao;
  CriaFormulario(TFormCadastroColecao,'FormCadastroColecao',False,True,True,SQLTemplate.FieldByName('PRODA60DESCR').AsString);
end;

procedure TFormCadastroProduto.ComboColecaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
        or ((sender as trxdblookupcombo).Value <>
            (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    AcessaColecao.Click;
end;

procedure TFormCadastroProduto.SQLTemplatePRODN3VLRCOMPRAChange(
  Sender: TField);
var somanocusto, CustoIPI, CustoST, CustoFrete, CustoDespesas, CustoDifIcms, CustoEncargos : Extended;
begin
  inherited;
  if Dm.SQLConfigGeralCFGECALCPRECOAUTOM.AsString = 'N' then Exit;
  If AlterandoValores Then Exit;
  AlterandoValores := True;
  If (DM.SQLConfigCompra.fieldbyname('CFCOCTOTPRCVENPROD').Value='U') Then
    begin
      if Dm.SQLConfigGeralCFGECTIPOMARGLUCRO.AsString = 'L' then
        begin
         { SomaNoCusto := 0;
          Denominador := SQLTemplate.FindField('PRODN3VLRCOMPRA').AsFloat
                                     * (1+(SQLTemplate.FindField('PRODN3PERCIPI').asFloat/100));
          SomaNoCusto := SomaNoCusto + (Denominador  * ((SQLTemplate.FindField('PRODN2PERCSUBST').asFloat/100)));
          SomaNoCusto := SomaNoCusto + (Denominador  * ((SQLTemplate.FindField('PRODN2PERCFRETE').asFloat/100)));
          SomaNoCusto := SomaNoCusto + (Denominador  * ((SQLTemplate.FindField('PRODN2PERCDESP').asFloat/100)));
          SomaNoCusto := SomaNoCusto + (Denominador  * ((SQLTemplate.FindField('PRODN2PERCDIFICM').asFloat/100)));
          SomaNoCusto := SomaNoCusto + (Denominador  * ((Dm.SQLConfigVenda.FieldByName('CFVEN2PERCCOFINS').AsFloat/100)));
          SomaNoCusto := SomaNoCusto + (Denominador  * ((Dm.SQLConfigVenda.FieldByName('CFVEN2PERCPIS').AsFloat/100)));
          SomaNoCusto := SomaNoCusto + (Denominador  * ((Dm.SQLConfigVenda.FieldByName('CFVEN2PERCENCARG').AsFloat/100)));
          SQLTemplate.FindField('PRODN3VLRCUSTO').asFloat := Denominador + somanocusto;
          SQLTemplate.FindField('PRODN3VLRVENDA').asFloat := SQLTemplate.FindField('PRODN3VLRCUSTO').asFloat *
                                                             (1+(SQLTemplate.FindField('PRODN3PERCMGLVFIXA').asFloat/100)); }

          if Dm.SQLConfigVenda.FieldByName('CFVEN2PERCENCARG').AsFloat > 0 then
            CustoEncargos := SQLTemplate.FindField('PRODN3VLRCOMPRA').AsFloat * (Dm.SQLConfigVenda.FieldByName('CFVEN2PERCENCARG').AsFloat/100)
          else
            CustoEncargos := 0;

          if SQLTemplate.FindField('PRODN2PERCSUBST').asFloat > 0 then
            CustoST       := SQLTemplate.FindField('PRODN3VLRCOMPRA').AsFloat * (SQLTemplate.FindField('PRODN2PERCSUBST').asFloat/100)
          else
            CustoST       := 0;

          if SQLTemplate.FindField('PRODN2PERCIPIENTRADA').asFloat > 0 then
            CustoIPI      := SQLTemplate.FindField('PRODN3VLRCOMPRA').AsFloat * (SQLTemplate.FindField('PRODN2PERCIPIENTRADA').asFloat/100)
          else
            CustoIPI      := 0;

          if SQLTemplate.FindField('PRODN2PERCFRETE').asFloat > 0 then
            CustoFrete    := SQLTemplate.FindField('PRODN3VLRCOMPRA').AsFloat * (SQLTemplate.FindField('PRODN2PERCFRETE').asFloat/100)
          else
            CustoFrete    := 0;

          if SQLTemplate.FindField('PRODN2PERCDESP').asFloat > 0 then
            CustoDespesas := SQLTemplate.FindField('PRODN3VLRCOMPRA').AsFloat * (SQLTemplate.FindField('PRODN2PERCDESP').asFloat/100)
          else
            CustoDespesas := 0;

          if SQLTemplate.FindField('PRODN2PERCDIFICM').asFloat > 0 then
            CustoDifIcms  := SQLTemplate.FindField('PRODN3VLRCOMPRA').AsFloat * (SQLTemplate.FindField('PRODN2PERCDIFICM').asFloat/100)
          else
           CustoDifIcms  := 0;

          SQLTemplate.FindField('PRODN3VLRCUSTO').asFloat := SQLTemplate.FindField('PRODN3VLRCOMPRA').AsFloat +
                                                             CustoST + CustoIPI + CustoFrete + CustoDespesas + CustoDifIcms + CustoEncargos;
         {NAO Entra no calculo do Custo do Produto nem o PIS nem o Cofins}

          SQLTemplate.FindField('PRODN3VLRVENDA').asFloat := SQLTemplate.FindField('PRODN3VLRCUSTO').asFloat *
                                                             (1+(SQLTemplate.FindField('PRODN3PERCMGLVFIXA').asFloat/100));
        end
      else
        begin
          SQLTemplate.FieldByName('PRODN3VLRVENDA').asFloat := RoundTo(SQLTemplate.FindField('PRODN3VLRCUSTO').AsFloat * (1+(SQLTemplate.FindField('PRODN3PERCMGLVFIXA').asFloat/100)), -DoNumeroCasasDec);
        end;
    end;
  AlterandoValores := False;
end;

procedure TFormCadastroProduto.SQLTemplatePRODN3PERCMARGLUCRChange(
  Sender: TField);
begin
  inherited;
  if Dm.SQLConfigGeralCFGECALCPRECOAUTOM.AsString = 'N' then Exit;
  If AlterandoValores Then Exit;
  AlterandoValores := True;
  SQLTemplate.FindField('PRODN3VLRVENDA').asFloat := SQLTemplate.FindField('PRODN3VLRCUSTO').asFloat *
                                                             (1+(SQLTemplate.FindField('PRODN3PERCMGLVFIXA').asFloat/100));
  AlterandoValores := False;
end;

procedure TFormCadastroProduto.BTNLocalizarClick(Sender: TObject);
var
Clausula : String;
CampoOrdem : TField;
begin
  inherited;
  Clausula := '';
  if ComboConsultaMarca.Value <> '' then
    Clausula := 'MARCICOD = ' + ComboConsultaMarca.KeyValue;
  if ComboConsultaGrupo.Value <> '' then
    if ComboConsultaMarca.Value <> '' then
      Clausula := Clausula +' and GRUPICOD = ' + ComboConsultaGrupo.keyValue
    else
      Clausula := 'GRUPICOD = ' + ComboConsultaGrupo.keyValue;

  EditProcura.Text := '';
  EditEntre.Text   := '';
  EditE.Text       := '';
  CampoOrdem := SQLTemplate.FindField(DM.LocateByDisplayLabel(SQLTemplate,ComboOrder.Text));

  if RadioAtivo.Checked then
    sqltemplate.MacroByName('MSituacao').Value := 'PRODCATIVO = ''S'''
  else
    sqltemplate.MacroByName('MSituacao').Value := 'PRODCATIVO = ''N''';

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

procedure TFormCadastroProduto.SQLTemplatePRODN3PERCMARGLUC2Change(
  Sender: TField);
begin
  inherited;
  if Dm.SQLConfigGeralCFGECALCPRECOAUTOM.AsString = 'N' then Exit;
  If AlterandoValores Then Exit;
  AlterandoValores := True;
  SQLTemplate.FindField('PRODN3VLRVENDA2').asFloat := SQLTemplate.FindField('PRODN3VLRCUSTO').asFloat *
                                                             (1+(SQLTemplate.FindField('PRODN3PERCMGLAFIXA').asFloat/100));
  AlterandoValores := False;
end;

procedure TFormCadastroProduto.SQLTemplatePRODN3VLRVENDA2Change(
  Sender: TField);
begin
  inherited;
  if Dm.SQLConfigGeralCFGECALCPRECOAUTOM.AsString = 'N' then Exit;
  If AlterandoValores Then Exit;
  AlterandoValores := True;

  If (DM.SQLConfigCompra.fieldbyname('CFCOCTOTPRCVENPROD').Value='M') AND (SQLTemplate.FindField('PRODN3VLRCUSTOMEDIO').asFloat>0) Then
    begin
      SQLTemplate.FindField('PRODN3PERCMARGLUC2').asFloat := ((Sender.AsFloat / SQLTemplate.FieldByName('PRODN3VLRCUSTOMEDIO').asFloat) - 1) * 100;
    end;
  If (DM.SQLConfigCompra.fieldbyname('CFCOCTOTPRCVENPROD').Value='U') AND (Sender.DataSet.FindField('PRODN3VLRCUSTO').asFloat>0) Then
    begin
      SQLTemplate.FindField('PRODN3PERCMARGLUC2').asFloat := ((Sender.AsFloat / SQLTemplate.FieldByName('PRODN3VLRCUSTO').asFloat) - 1) * 100;
    end;

  AlterandoValores := False;
end;

procedure TFormCadastroProduto.MnEntradaRapidaEstoqueClick(
  Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormTelaEntradaRapidaEstoque,FormTelaEntradaRapidaEstoque);
  FormTelaEntradaRapidaEstoque.LabelTitulo.Caption     := SQLTemplatePRODICOD.AsString+'-'+SQLTemplatePRODA30ADESCRREDUZ.Value;
  FormTelaEntradaRapidaEstoque.EditUltCompra.Value     := SQLTemplatePRODN3VLRCOMPRA.Value;
  FormTelaEntradaRapidaEstoque.EditCusto.Value         := SQLTemplatePRODN3VLRCUSTO.Value;
  FormTelaEntradaRapidaEstoque.EditCustoMedio.Value    := SQLTemplatePRODN3VLRCUSTOMED.Value;
  FormTelaEntradaRapidaEstoque.EditIPI.Value           := SQLTemplatePRODN3PERCIPI.Value;
  FormTelaEntradaRapidaEstoque.EditFrete.Value         := SQLTemplatePRODN2PERCFRETE.Value;
  FormTelaEntradaRapidaEstoque.EditDespesa.Value       := SQLTemplatePRODN2PERCDESP.Value;
  FormTelaEntradaRapidaEstoque.editCST.Value           := SQLTemplatePRODN2PERCSUBST.Value;
  FormTelaEntradaRapidaEstoque.editDifIcms.Value       := SQLTemplatePRODN2PERCDIFICM.Value;
  FormTelaEntradaRapidaEstoque.EditMargemVarejo.Value  := SQLTemplatePRODN3PERCMARGLUCR.Value;
  FormTelaEntradaRapidaEstoque.EditValorVendaVarejo.Value := SQLTemplatePRODN3VLRVENDA.Value;
  FormTelaEntradaRapidaEstoque.EditMargemAtacado.Value    := SQLTemplatePRODN3PERCMARGLUC2.Value;
  FormTelaEntradaRapidaEstoque.EditValorVendaAtacado.Value  := SQLTemplatePRODN3VLRVENDA2.Value;
  FormTelaentradaRapidaEstoque.EditNovoIPI.value       := SQLTemplatePRODN3PERCIPI.Value;
  FormTelaentradaRapidaEstoque.EditNovoFrete.value     := SQLTemplatePRODN2PERCFRETE.Value;
  FormTelaentradaRapidaEstoque.EditNovoDespesa.value   := SQLTemplatePRODN2PERCDESP.Value;
  FormTelaEntradaRapidaEstoque.editNovoCST.Value       := SQLTemplatePRODN2PERCSUBST.Value;
  FormTelaEntradaRapidaEstoque.editNovoDifIcms.Value   := SQLTemplatePRODN2PERCDIFICM.Value;
  FormTelaEntradaRapidaEstoque.EditCustoMedioCalculado.Value         := SQLTemplatePRODN3VLRCUSTO.Value;
  FormTelaEntradaRapidaEstoque.EditNovoCustoMedio.Value    := SQLTemplatePRODN3VLRCUSTOMED.Value;
  FormTelaEntradaRapidaEstoque.EditNovoValorVendaVarejo.Value := SQLTemplatePRODN3VLRVENDA.Value;
  FormTelaEntradaRapidaEstoque.EditNovoValorVendaAtacado.Value  := SQLTemplatePRODN3VLRVENDA2.Value;

  try
    FormTelaEntradaRapidaEstoque.EditSaldoEstoqueatual.Value  := SQLSaldoEmpresaAtual.FieldByName('PSLDN3QTDE').AsVariant;
  except
    FormTelaEntradaRapidaEstoque.EditSaldoEstoqueatual.Value  := 0;
  end;
  FormTelaEntradaRapidaEstoque.EditNovaMargemVarejo.Value    := FormTelaEntradaRapidaEstoque.EditMargemVarejo.Value;
  FormTelaEntradaRapidaEstoque.EditNovaMargemAtacado.Value   := FormTelaEntradaRapidaEstoque.EditMargemAtacado.Value;
  FormTelaEntradaRapidaEstoque.ShowModal;
  if FormTelaEntradaRapidaEstoque.ModalResult = MrOk then
    begin
      SQLTemplate.Edit;
      if FormTelaEntradaRapidaEstoque.EditNovoValorCompra.Value > 0 then
        SQLTemplatePRODN3VLRCOMPRA.Value      := FormTelaEntradaRapidaEstoque.EditNovoValorCompra.Value;
      if FormTelaEntradaRapidaEstoque.EditNovoCustoMedio.Value > 0 then
        SQLTemplatePRODN3VLRCUSTO.Value       := FormTelaEntradaRapidaEstoque.EditNovoCustoMedio.Value;
      if FormTelaEntradaRapidaEstoque.EditCustoMedioCalculado.Value > 0 then
        SQLTemplatePRODN3VLRCUSTOMED.Value    := FormTelaEntradaRapidaEstoque.EditCustoMedioCalculado.Value;
      if FormTelaEntradaRapidaEstoque.EditNovoIPI.Value > 0 then
        SQLTemplatePRODN3PERCIPI.Value        := FormTelaEntradaRapidaEstoque.EditNovoIPI.Value;
      if FormTelaEntradaRapidaEstoque.EditNovoFrete.Value > 0 then
        SQLTemplatePRODN2PERCFRETE.Value      := FormTelaEntradaRapidaEstoque.EditNovoFrete.Value;
      if FormTelaEntradaRapidaEstoque.EditNovoDespesa.Value > 0 then
        SQLTemplatePRODN2PERCDESP.Value       := FormTelaEntradaRapidaEstoque.EditNovoDespesa.Value;
      if FormTelaEntradaRapidaEstoque.EditNovoCST.Value > 0 then
        SQLTemplatePRODN2PERCSUBST.Value      := FormTelaEntradaRapidaEstoque.editNovoCST.Value;
      if FormTelaEntradaRapidaEstoque.editNovoDifIcms.Value > 0 then
        SQLTemplatePRODN2PERCDIFICM.Value     := FormTelaEntradaRapidaEstoque.editNovoDifIcms.Value;

      if FormTelaEntradaRapidaEstoque.EditNovaMargemVarejo.Value > 0 then
        SQLTemplatePRODN3PERCMARGLUCR.Value   := FormTelaEntradaRapidaEstoque.EditNovaMargemVarejo.Value;
      if FormTelaEntradaRapidaEstoque.EditNovoValorVendaVarejo.Value > 0 then
        SQLTemplatePRODN3VLRVENDA.Value       := FormTelaEntradaRapidaEstoque.EditNovoValorVendaVarejo.Value;
      if FormTelaEntradaRapidaEstoque.EditNovaMargemAtacado.Value > 0 then
        SQLTemplatePRODN3PERCMARGLUC2.Value   := FormTelaEntradaRapidaEstoque.EditNovaMargemAtacado.Value;
      if FormTelaEntradaRapidaEstoque.EditNovoValorVendaAtacado.Value > 0 then
        SQLTemplatePRODN3VLRVENDA2.Value      := FormTelaEntradaRapidaEstoque.EditNovoValorVendaAtacado.Value;
      SQLTemplate.Post;


      if FormTelaEntradaRapidaEstoque.EditQtdeComprada.Value > 0 then
        GravaMovimentoEstoque(TRxQuery.Create(nil),
                              TRxQuery.Create(nil),
                              TRxQuery.Create(nil),
                              EmpresaCorrente,//Empresa
                              SQLTemplate.FindField('PRODICOD').asInteger, //Produto
                              DM.SQLConfigCompra.fieldbyname('CFCOITIPMOVNFE').Value,
                              //Operacao
                              FormTelaEntradaRapidaEstoque.EditQtdeComprada.Value, //Quantidade
                              'E', //ENTRADA/SAIDA
                              FormatDateTime('mm/dd/yyyy', Now),
                              FormTelaEntradaRapidaEstoque.EditNovoValorCompra.Text,
                              'MOVIMENTOSDIVERSOS',
                              'Entr-'+FormatDateTime('ddmmyyyy', Now),
                              '');

      {Atualiza tabela produto saldo}
      //SQLProdutoSaldo.close;
      //SQLProdutoSaldo.Open;
    end;

end;

procedure TFormCadastroProduto.ImageProdutoClick(Sender: TObject);
begin
  inherited;
  // Abrir Tela Cheia com a Foto Grande
  Application.CreateForm(TFormTelaFotoExpandida,FormTelaFotoExpandida);
  FormTelaFotoExpandida.Foto.Picture.Assign(ImageProduto.Picture);
  FormTelaFotoExpandida.ShowModal;
end;

procedure TFormCadastroProduto.BtSalvarImagemClick(Sender: TObject);
begin
  inherited;
  ImageProduto.Picture.SaveToFile('..\Foto_Produto_'+SQLTemplatePRODICOD.AsString+'.jpg');
end;

procedure TFormCadastroProduto.AcessaCdBarrasClick(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  CriaFormulario(TFormCadastroBarras,'FormCadastroBarras',False,True,True,'Produto ' + IntToStr(SQLTemplatePRODICOD.Value)+'-'+SQLTemplatePRODA30ADESCRREDUZ.AsString);
end;

procedure TFormCadastroProduto.DBEdit4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    AcessaCdBarras.Click;
end;

procedure TFormCadastroProduto.SQLTemplatePRODN3PERCMGLVFIXAChange(
  Sender: TField);
begin
  inherited;
  if Dm.SQLConfigGeralCFGECALCPRECOAUTOM.AsString = 'N' then Exit;
  If AlterandoValores Then Exit;
  AlterandoValores := True;

  SQLTemplate.FindField('PRODN3VLRVENDA').asFloat := SQLTemplate.FindField('PRODN3VLRCUSTO').asFloat *
                                                             (1+(SQLTemplate.FindField('PRODN3PERCMGLVFIXA').asFloat/100));

  If (DM.SQLConfigCompra.fieldbyname('CFCOCTOTPRCVENPROD').Value='M') AND (SQLTemplate.FindField('PRODN3VLRCUSTOMEDIO').asFloat>0) Then
    begin
      SQLTemplate.FindField('PRODN3PERCMARGLUCR').asFloat := ((SQLTemplate.FindField('PRODN3VLRVENDA').asFloat / SQLTemplate.FieldByName('PRODN3VLRCUSTOMEDIO').asFloat) - 1) * 100;
    end;
  If (DM.SQLConfigCompra.fieldbyname('CFCOCTOTPRCVENPROD').Value='U') AND (Sender.DataSet.FindField('PRODN3VLRCUSTO').asFloat>0) Then
    begin
      SQLTemplate.FindField('PRODN3PERCMARGLUCR').asFloat := ((SQLTemplate.FindField('PRODN3VLRVENDA').asFloat / SQLTemplate.FieldByName('PRODN3VLRCUSTO').asFloat) - 1) * 100;
    end;

  AlterandoValores := False;
end;

procedure TFormCadastroProduto.SQLTemplatePRODN3PERCMGLAFIXAChange(
  Sender: TField);
begin
  inherited;
  if Dm.SQLConfigGeralCFGECALCPRECOAUTOM.AsString = 'N' then Exit;
  If AlterandoValores Then Exit;
  AlterandoValores := True;

  SQLTemplate.FindField('PRODN3VLRVENDA2').asFloat := SQLTemplate.FindField('PRODN3VLRCUSTO').asFloat *
                                                             (1+(SQLTemplate.FindField('PRODN3PERCMGLAFIXA').asFloat/100));

  If (DM.SQLConfigCompra.fieldbyname('CFCOCTOTPRCVENPROD').Value='M') AND (SQLTemplate.FindField('PRODN3VLRCUSTOMEDIO').asFloat>0) Then
    SQLTemplate.FindField('PRODN3PERCMARGLUC2').asFloat := ((SQLTemplate.FindField('PRODN3VLRVENDA2').asFloat / SQLTemplate.FieldByName('PRODN3VLRCUSTOMEDIO').asFloat) - 1) * 100;

  If (DM.SQLConfigCompra.fieldbyname('CFCOCTOTPRCVENPROD').Value='U') AND (Sender.DataSet.FindField('PRODN3VLRCUSTO').asFloat>0) Then
    SQLTemplate.FindField('PRODN3PERCMARGLUC2').asFloat := ((SQLTemplate.FindField('PRODN3VLRVENDA2').asFloat / SQLTemplate.FieldByName('PRODN3VLRCUSTO').asFloat) - 1) * 100;

  AlterandoValores := False;
end;

procedure TFormCadastroProduto.RecalcularaMargemdeLucroRealdetodososprodutos1Click(
  Sender: TObject);
begin
  Inherited;
  if Pergunta('Sim','Deseja Recalcular as margens de todos os produtos!') then
    begin
      dm.SQLTemplate.Close;
      dm.SQLTemplate.RequestLive := True;
      dm.SQLTemplate.SQL.Clear;
      dm.SQLTemplate.SQL.Add('Select * From Produto');
      dm.SQLTemplate.Open;
      While not dm.SQLTemplate.Eof do
        begin
          dm.SQLTemplate.Edit;
          If (DM.SQLConfigCompra.fieldbyname('CFCOCTOTPRCVENPROD').Value='M') AND (dm.SQLTemplate.FindField('PRODN3VLRCUSTOMED').asFloat>0) Then
            dm.SQLTemplate.FindField('PRODN3PERCMARGLUCR').asFloat := ((dm.SQLTemplate.FindField('PRODN3VLRVENDA').asFloat / dm.SQLTemplate.FindField('PRODN3VLRCUSTOMED').asFloat)-1) * 100;
          If (DM.SQLConfigCompra.fieldbyname('CFCOCTOTPRCVENPROD').Value='U') AND (dm.SQLTemplate.FindField('PRODN3VLRCUSTO').asFloat>0) Then
            dm.SQLTemplate.FindField('PRODN3PERCMARGLUCR').asFloat := ((dm.SQLTemplate.FindField('PRODN3VLRVENDA').asFloat / dm.SQLTemplate.FindField('PRODN3VLRCUSTO').asFloat)-1) * 100;
          if dm.SQLTemplate.FindField('PRODN3PERCMARGLUCR').asFloat = 0 then
            dm.SQLTemplate.FindField('PRODN3PERCMARGLUCR').asFloat := 100;
          if dm.SQLTemplate.FindField('PRODN3PERCMGLVFIXA').asFloat < 0.1 then
            dm.SQLTemplate.FindField('PRODN3PERCMGLVFIXA').asFloat := dm.SQLTemplate.FindField('PRODN3PERCMARGLUCR').asFloat;
          dm.SQLTemplate.Post;
          dm.SQLTemplate.Next;
          Application.ProcessMessages;
        end;
      ShowMessage('Atualização das Margens de Lucro com Sucesso!');
      dm.SQLTemplate.Close;
      dm.SQLTemplate.RequestLive := False;
   end;
end;

procedure TFormCadastroProduto.MnCriaCdBarrasClick(Sender: TObject);
begin
  inherited;
  SQLTemplate.First;
  while not SQLTemplate.eof do
    begin
      if SQLTemplatePRODA60CODBAR.AsString = '' then
        begin
          SQLTemplate.edit;
          Application.ProcessMessages;
          SQLTemplate.post;
        end;
      SQLTemplate.next;
    end;
  SQLTemplate.First;
  ShowMessage('Correção Concluida com Sucesso!');
end;

procedure TFormCadastroProduto.SQLTemplateBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  if RadioAtivo.Checked then
    sqltemplate.MacroByName('MSituacao').Value := 'PRODCATIVO = ''S'''
  else
    sqltemplate.MacroByName('MSituacao').Value := 'PRODCATIVO = ''N''';
end;

procedure TFormCadastroProduto.MnEnviarProdCadMatClick(Sender: TObject);
begin
  inherited;
  if not sqltemplate.IsEmpty then
    begin
      SQLTemplate.Edit;
      SQLTemplatePRODCSERVICO.AsString := 'M';
      SQLTemplate.Post;
      ShowMessage('Produto enviado para o Cadastro de Materias com sucesso!');
    end;
end;

procedure TFormCadastroProduto.MnExportarProdutosparaContabilidadeAnalisarIncideCofinsClick(
  Sender: TObject);
var CaminhoNomeArquivo, Linha : String;
    Arquivo : TextFile;
begin
  inherited;
  if not SQLTemplate.Active then
    begin
      ShowMessage('É necessário primeiro realizar o filtro nos produtos...');
      Exit;
    end;
  if SQLTemplate.IsEmpty then
    begin
      ShowMessage('Nenhum produto foi encontrado...');
      Exit;
    end;

  CaminhoNomeArquivo := '..\Produto.txt';
  AssignFile(Arquivo,CaminhoNomeArquivo);
  Rewrite(Arquivo);
  Reset(Arquivo);
  Append(Arquivo);
  // Criar Proximas Linhas
  SQLTemplate.First;
  Linha := '';
  While not SQLTemplate.Eof Do
    begin
      Linha := FormatFloat('######000000',sqltemplateprodicod.Value) +' '+
               SQLTemplatePRODCCOFINS.AsString +' '+
               SQLTemplatePRODA30ADESCRREDUZ.AsString ;
      Writeln(Arquivo,Linha);
      SQLTemplate.Next;
    end;
  // Fechar Arquivo
  CloseFile(Arquivo);
end;

procedure TFormCadastroProduto.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
{  if key = #10 then // ctrl+enter
    MnEntradaRapidaEstoque.Click; }
end;

procedure TFormCadastroProduto.SQLSaldoEmpresaAtualCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if (SQLSaldoEmpresaAtual.fieldbyname('PSLDN3QTDE').Value > 0) and (SQLTemplatePRODN3VLRCUSTO.Value > 0) then
    SQLSaldoEmpresaAtual.FieldByName('VlrCustoEstoqueEmpresaAtual').Value := SQLSaldoEmpresaAtual.fieldbyname('PSLDN3QTDE').Value *
                                                                             SQLTemplatePRODN3VLRCUSTO.Value;
end;

procedure TFormCadastroProduto.MnVerificaProdutossemGrupoClick(
  Sender: TObject);
begin
  inherited;
  SQLTemplate.Close;
  SQLTemplate.MacroByName('MFiltro').Value := 'GRUPICOD is Null';
  SQLTemplate.Open;
end;

procedure TFormCadastroProduto.MnVerificaProdutossemGrupoSubGrupoClick(
  Sender: TObject);
begin
  inherited;
  SQLTemplate.Close;
  SQLTemplate.MacroByName('MFiltro').Value := 'GRUPICOD is Null and SUBGICOD is Null';
  SQLTemplate.Open;
end;

procedure TFormCadastroProduto.MnVerificaProdutossemGrupoSubGrupoVariaoClick(
  Sender: TObject);
begin
  inherited;
  SQLTemplate.Close;
  SQLTemplate.MacroByName('MFiltro').Value := 'GRUPICOD is Null and SUBGICOD is Null and VARIICOD is Null';
  SQLTemplate.Open;
end;

procedure TFormCadastroProduto.MnVerificaProdutossemMarcaClick(
  Sender: TObject);
begin
  inherited;
  SQLTemplate.Close;
  SQLTemplate.MacroByName('MFiltro').Value := 'MARCICOD is Null';
  SQLTemplate.Open;
end;

procedure TFormCadastroProduto.SQLTemplateSUBGICODChange(Sender: TField);
begin
  inherited;
  if ComboSubGrupo.Value <> '' then
    begin
      if SQLSubGrupoSUBGN3MARGEM.Value > 0 then
        SQLTemplatePRODN3PERCMGLVFIXA.Value := SQLSubGrupoSUBGN3MARGEM.Value;
    end;
end;

procedure TFormCadastroProduto.BtnDetalhadoClick(Sender: TObject);
var buscar: String;
begin
  inherited;
  TblTemporaria2.Close;
  try
    TblTemporaria2.DeleteTable;
    TblTemporaria2.CreateTable;
  except
    TblTemporaria2.CreateTable;
  end;
  TblTemporaria2.Open;
  if not SQLEmpresa.Active then
    SQLEmpresa.Open;

  SQLMovimentoEstoque.Close;


  if ComboEmpresa.Value <> '' then
    SQLMovimentoEstoque.ParamByName('Empresa').AsString := ComboEmpresa.Value
  else
    SQLMovimentoEstoque.ParamByName('Empresa').AsString := EmpresaPadrao;

  SQLMovimentoEstoque.MacroByName('Produto').AsString := 'PRODUTO.PRODIAGRUPGRADE = '  + SQLTemplatePRODIAGRUPGRADE.AsString;

  if (De.Text = '  /  /    ') and (Ate.Text = '  /  /    ') then
    SQLMovimentoEstoque.MacroByName('Data').AsString    := '0=0'
  else
    SQLMovimentoEstoque.MacroByName('Data').AsString    := 'MOVIMENTOESTOQUE.MVESDMOV >= ''' + FormatDateTime('mm/dd/yyyy',De.Date) + ''' AND ' +
                                                           'MOVIMENTOESTOQUE.MVESDMOV <= ''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';

  SQLMovimentoEstoque.Open;
  SQLMovimentoEstoque.First;
  // RETORNA SALDO DE ESTOQUE;
  SQLSaldo.Close;
  if (De.Text = '  /  /    ') and (Ate.Text = '  /  /    ') then
    SQLSaldo.MacroByName('DataInicial').Value   := 'MVESDMOV < ''01/01/2000'''
  else
    SQLSaldo.MacroByName('DataInicial').AsString := 'MVESDMOV < ''' + FormatDateTime('mm/dd/yyyy',De.Date) + '''';
  SQLSaldo.ParamByName('PRODUTO').AsString := SQLTemplatePRODIAGRUPGRADE.AsString;
  if ComboEmpresa.Value <> '' then
    SQLSaldo.ParamByName('EMPRESA').AsString := ComboEmpresa.Value
  else
    SQLSaldo.ParamByName('EMPRESA').AsString := EmpresaPadrao;

  SQLSaldo.Open;
  if not SQLSaldo.IsEmpty then
    begin
      TblTemporaria2.Append;
      TblTemporaria2EMPRICOD.AsString     := EmpresaPadrao;
      TblTemporaria2PRODA60DESCR.AsString := SQLProdutoPRODA60DESCR.AsString;
      TblTemporaria2PRODA60REFER.AsString := SQLProdutoPRODA60REFER.AsString;
      TblTemporaria2EntradaSaida.AsString := 'I';
      TblTemporaria2CLIENTE.AsString  := 'SALDO INICIAL >>>>>>>>';
      TblTemporaria2OPESA60DESCR.AsString := 'SALDO ANTERIOR AO DIA ' + FormatDateTime('dd/mm/yyyy',De.Date);
      TblTemporaria2Qtde.AsFloat          := SQLSaldo.FieldByName('SALDO').AsFloat;
      TblTemporaria2SALDOINICIAL.AsFloat  := 0;
      TblTemporaria2.Post;
    end;

  LabelInfo.Caption := 'Verificando Movimentos de Estoque...';
  LabelInfo.Update;
  Progresso.Min := 0;
  Progresso.Max := SQLMovimentoEstoque.RecordCount;
  Progresso.Position := 0;
  while not SQLMovimentoEstoque.Eof do
    begin
      TblTemporaria2.Append;
      TblTemporaria2EMPRICOD.AsInteger    := SQLMovimentoEstoqueEMPRICOD.AsInteger;
      TblTemporaria2PRODICOD.AsInteger    := SQLMovimentoEstoquePRODICOD.AsInteger;
      TblTemporaria2DataMov.AsDateTime    := SQLMovimentoEstoqueMVESDMOV.AsDateTime;
      if SQLMovimentoEstoqueMVESN3QTDENTRADA.Value > 0 then
        begin
          TblTemporaria2Qtde.AsFloat          := SQLMovimentoEstoqueMVESN3QTDENTRADA.Value;
          TblTemporaria2EntradaSaida.AsString := 'E';
        end
      else
        begin
          TblTemporaria2Qtde.AsFloat          := -SQLMovimentoEstoqueMVESN3QTDSAIDA.Value;
          TblTemporaria2EntradaSaida.AsString := 'S';
        end;

      if SQLMovimentoEstoqueCUPOA13ID.AsString <> '' then
        begin
          TblTemporaria2DOCUMENTO.AsString := 'CP.' + SQLLocate('CUPOM','CUPOA13ID','CUPOINRO',''''+SQLMovimentoEstoqueCUPOA13ID.AsString+'''');
          TblTemporaria2CLIENTE.AsString   := SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC',''''+SQLLocate('CUPOM','CUPOA13ID','CLIEA13ID',''''+SQLMovimentoEstoqueCUPOA13ID.AsString+'''')+'''');
          TblTemporaria2MUNICIPIO.AsString := SQLLocate('CLIENTE','CLIEA13ID','CLIEA60CIDRES',''''+SQLLocate('CUPOM','CUPOA13ID','CLIEA13ID',''''+SQLMovimentoEstoqueCUPOA13ID.AsString+'''')+'''');
          TblTemporaria2UF.AsString        := SQLLocate('CLIENTE','CLIEA13ID','CLIEA2UFRES',''''+SQLLocate('CUPOM','CUPOA13ID','CLIEA13ID',''''+SQLMovimentoEstoqueCUPOA13ID.AsString+'''')+'''');
          // alterado pelo judi
          TblTemporaria2VALORUNITARIO.asstring:=SQLLocate('CUPOMITEM','0','CPITN3VLRUNIT','0 AND CUPOA13ID = '''+ SQLMovimentoEstoqueCUPOA13ID.AsString +''' AND PRODICOD = '''+ SQLMovimentoEstoquePRODICOD.AsString+'''');
        end;
      if SQLMovimentoEstoqueNOFIA13ID.AsString <> '' then
        begin
          TblTemporaria2DOCUMENTO.AsString   := 'NF.' + SQLLocate('NOTAFISCAL','NOFIA13ID','NOFIINUMERO',''''+SQLMovimentoEstoqueNOFIA13ID.AsString+'''');
          // se o retorno for diferente de '' ï¿½ cliente caso contrario ï¿½ fornecedor
          Try
          
          if SQLLocate('NOTAFISCAL','NOFIA13ID','CLIEA13ID',''''+SQLMovimentoEstoqueNOFIA13ID.AsString+'''') <> '' Then
            begin
              TblTemporaria2CLIENTE.AsString   := SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC',''''+SQLLocate('NOTAFISCAL','NOFIA13ID','CLIEA13ID',''''+SQLMovimentoEstoqueNOFIA13ID.AsString+'''')+'''');
              TblTemporaria2MUNICIPIO.AsString := SQLLocate('CLIENTE','CLIEA13ID','CLIEA60CIDRES',''''+SQLLocate('NOTAFISCAL','NOFIA13ID','CLIEA13ID',''''+SQLMovimentoEstoqueNOFIA13ID.AsString+'''')+'''');
              TblTemporaria2UF.AsString        := SQLLocate('CLIENTE','CLIEA13ID','CLIEA2UFRES',''''+SQLLocate('NOTAFISCAL','NOFIA13ID','CLIEA13ID',''''+SQLMovimentoEstoqueNOFIA13ID.AsString+'''')+'''');
            end
          else
            begin
              TblTemporaria2CLIENTE.AsString   := SQLLocate('FORNECEDOR','FORNICOD','FORNA60RAZAOSOC',''''+SQLLocate('NOTAFISCAL','NOFIA13ID','FORNICOD',''''+SQLMovimentoEstoqueNOFIA13ID.AsString+'''')+'''');
              TblTemporaria2MUNICIPIO.AsString := SQLLocate('FORNECEDOR','FORNICOD','FORNA60CID',''''+SQLLocate('NOTAFISCAL','NOFIA13ID','FORNICOD',''''+SQLMovimentoEstoqueNOFIA13ID.AsString+'''')+'''');
              TblTemporaria2UF.AsString        := SQLLocate('FORNECEDOR','FORNICOD','FORNA2UF',''''+SQLLocate('NOTAFISCAL','NOFIA13ID','FORNICOD',''''+SQLMovimentoEstoqueNOFIA13ID.AsString+'''')+'''');
            end;
          TblTemporaria2VALORUNITARIO.asstring := SQLLocate('NOTAFISCALITEM','''0''','NFITN2VLRUNIT','''0'' AND NOFIA13ID = '''+ SQLMovimentoEstoqueNOFIA13ID.AsString +''' AND PRODICOD = '''+ SQLMovimentoEstoquePRODICOD.AsString+'''');

            TblTemporaria2VENCIMENTO.asstring    := SQLLocate('CONTASRECEBER','''0''','CTRCDVENC','''0'' AND NOFIA13ID = '''+ SQLMovimentoEstoqueNOFIA13ID.AsString +''' AND CLIEA13ID = '''+
                                                  SQLLocate('NOTAFISCAL','NOFIA13ID','CLIEA13ID',''''+SQLMovimentoEstoqueNOFIA13ID.AsString+'''') +'''');
          except on e:exception do
          begin
            Showmessage('Falha ao gerar informações: '+e.message);
          end;end;
        end;

      if SQLMovimentoEstoqueNOCPA13ID.AsString <> '' then
        begin
          TblTemporaria2DOCUMENTO.AsString := 'NC.' + SQLLocate('NOTACOMPRA','NOCPA13ID','NOCPA30NRO',''''+SQLMovimentoEstoqueNOCPA13ID.AsString+'''');
          // se o retorno for diferente de '' ï¿½ cliente caso contrario ï¿½ fornecedor
          TblTemporaria2CLIENTE.AsString   := SQLLocate('FORNECEDOR','FORNICOD','FORNA60RAZAOSOC',''''+SQLLocate('NOTACOMPRA','NOCPA13ID','FORNICOD',''''+SQLMovimentoEstoqueNOCPA13ID.AsString+'''')+'''');
          TblTemporaria2MUNICIPIO.AsString := SQLLocate('FORNECEDOR','FORNICOD','FORNA60CID',''''+SQLLocate('NOTACOMPRA','NOCPA13ID','FORNICOD',''''+SQLMovimentoEstoqueNOCPA13ID.AsString+'''')+'''');
          TblTemporaria2UF.AsString        := SQLLocate('FORNECEDOR','FORNICOD','FORNA2UF',''''+SQLLocate('NOTACOMPRA','NOCPA13ID','FORNICOD',''''+SQLMovimentoEstoqueNOCPA13ID.AsString+'''')+'''');
          TblTemporaria2VALORUNITARIO.asstring := SQLLocate('NOTACOMPRAITEM','0','NOCIN3VLRUNIT','0 AND NOCPA13ID = '''+ SQLMovimentoEstoqueNOCPA13ID.AsString +''' AND PRODICOD = '''+ SQLMovimentoEstoquePRODICOD.AsString+'''');
        end;

      if SQLMovimentoEstoqueMOVDA13ID.AsString <> '' then
        // se tiver OS- no campo MOVDA13ID ï¿½ porque o sistema registrou uma ordem de serviï¿½o de mecanica.
        If POS('OS-',SQLMovimentoEstoqueMOVDA13ID.AsString) > 0 Then
        begin
           TblTemporaria2DOCUMENTO.AsString   := 'OS.' + Copy(SQLMovimentoEstoqueMOVDA13ID.AsString,4,10);
          // Prcura pelo cliente
          if SQLLocate('ORD_MECANICA','ORDID','CLIEA13ID',''''+Trim(Copy(SQLMovimentoEstoqueMOVDA13ID.AsString,4,10))+'''') <> '' Then
            begin
              TblTemporaria2CLIENTE.AsString   := SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC',''''+SQLLocate('ORD_MECANICA','ORDID','CLIEA13ID',''''+Trim(Copy(SQLMovimentoEstoqueMOVDA13ID.AsString,4,10))+'''')+'''');
              TblTemporaria2MUNICIPIO.AsString := SQLLocate('CLIENTE','CLIEA13ID','CLIEA60CIDRES',''''+SQLLocate('ORD_MECANICA','ORDID','CLIEA13ID',''''+Trim(Copy(SQLMovimentoEstoqueMOVDA13ID.AsString,4,10))+'''')+'''');
              TblTemporaria2UF.AsString        := SQLLocate('CLIENTE','CLIEA13ID','CLIEA2UFRES',''''+SQLLocate('ORD_MECANICA','ORDID','CLIEA13ID',''''+Trim(Copy(SQLMovimentoEstoqueMOVDA13ID.AsString,4,10))+'''')+'''');
            end
        end Else
          TblTemporaria2DOCUMENTO.AsString := 'MD.' + SQLMovimentoEstoqueMOVDA13ID.AsString;

      if (SQLMovimentoEstoqueCUPOA13ID.AsString = '') and
         (SQLMovimentoEstoqueNOFIA13ID.AsString = '') and
         (SQLMovimentoEstoqueNOCPA13ID.AsString = '') and
         (SQLMovimentoEstoqueMOVDA13ID.AsString = '') then TblTemporaria2DOCUMENTO.AsString := 'IV.' + FormatDateTime('ddmmyy',SQLMovimentoEstoqueMVESDMOV.AsDateTime);

      TblTemporaria2PRODA60DESCR.AsString := SQLMovimentoEstoquePRODA60DESCR.AsString;
      TblTemporaria2PRODA60REFER.AsString := SQLMovimentoEstoquePRODA60REFER.AsString;
      TblTemporaria2CORA30DESCR.AsString  := SQLMovimentoEstoqueCORA30DESCR.AsString;
      TblTemporaria2GRTMA5DESCR.AsString  := SQLMovimentoEstoqueGRTMA5DESCR.AsString;
      TblTemporaria2OPESA60DESCR.AsString := SQLMovimentoEstoqueOPESA60DESCR.AsString;
      TblTemporaria2.Post;
      SQLMovimentoEstoque.Next;
      Progresso.Position := Progresso.Position + 1;
      Progresso.Update;
    end;

  LabelInfo.Caption  := '';
  LabelInfo.Update;
  Progresso.Position := 0;
  Progresso.Update;
  TblTemporaria2.Close;
  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Movimentacao Produto.rpt';
  Report.ReportTitle       := 'Relatório de Movimentacão de Produto';
  Report.WindowStyle.Title := 'Relatório de Movimentacão de Produto';
  Report.Formulas.Retrieve ;

//--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '''' + ComboEmpresa.Text + '''' ;

//--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '''' ;

//--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy',De.Date) + ' atï¿½ ' + FormatDateTime('dd/mm/yyyy', Ate.Date) + '''' ;

//--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Produto' ;
  Report.Formulas.Formula.Text := ''''+ SQLTemplatePRODA60DESCR.AsString + '''' ;

//--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Referencia' ;
  Report.Formulas.Formula.Text := ''''+ SQLTemplatePRODA60REFER.AsString + '''' ;

//--------------------------------------------------------------------------\\
  Report.Formulas.Send;
  Report.Execute;
end;

procedure TFormCadastroProduto.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  try
    if FileExists('TrocaDescricao.txt') then
      SQLTemplatePRODA30ADESCRREDUZ.Value := SQLTemplatePRODA60DESCR.Value;
  except
    Application.ProcessMessages;
  end;
end;

procedure TFormCadastroProduto.MnSaidaRapidaEstoqueClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormTelaSaidaRapidaEstoque,FormTelaSaidaRapidaEstoque);
  FormTelaSaidaRapidaEstoque.LabelTitulo.Caption          := SQLTemplatePRODICOD.AsString+'-'+SQLTemplatePRODA30ADESCRREDUZ.Value;
  FormTelaSaidaRapidaEstoque.EditUltCompra.Value          := SQLTemplatePRODN3VLRCOMPRA.Value;
  FormTelaSaidaRapidaEstoque.EditCusto.Value              := SQLTemplatePRODN3VLRCUSTO.Value;
  FormTelaSaidaRapidaEstoque.EditCustoMedio.Value         := SQLTemplatePRODN3VLRCUSTOMED.Value;
  FormTelaSaidaRapidaEstoque.EditIPI.Value                := SQLTemplatePRODN3PERCIPI.Value;
  FormTelaSaidaRapidaEstoque.EditFrete.Value              := SQLTemplatePRODN2PERCFRETE.Value;
  FormTelaSaidaRapidaEstoque.EditDespesa.Value            := SQLTemplatePRODN2PERCDESP.Value;
  FormTelaSaidaRapidaEstoque.EditMargemVarejo.Value       := SQLTemplatePRODN3PERCMARGLUCR.Value;
  FormTelaSaidaRapidaEstoque.EditValorVendaVarejo.Value   := SQLTemplatePRODN3VLRVENDA.Value;
  FormTelaSaidaRapidaEstoque.EditMargemAtacado.Value      := SQLTemplatePRODN3PERCMARGLUC2.Value;
  FormTelaSaidaRapidaEstoque.EditValorVendaAtacado.Value  := SQLTemplatePRODN3VLRVENDA2.Value;

  try
    FormTelaSaidaRapidaEstoque.EditSaldoEstoqueatual.Value  := SQLSaldoEmpresaAtual.FieldByName('PSLDN3QTDE').AsVariant;
  except
    FormTelaSaidaRapidaEstoque.EditSaldoEstoqueatual.Value  := 0;
  end;
  FormTelaSaidaRapidaEstoque.ShowModal;
  if FormTelaSaidaRapidaEstoque.ModalResult = MrOk then
    begin
      if FormTelaSaidaRapidaEstoque.EditQtdeSaida.Value > 0 then
        GravaMovimentoEstoque(TRxQuery.Create(nil),
                              TRxQuery.Create(nil),
                              TRxQuery.Create(nil),
                              EmpresaCorrente,//Empresa
                              SQLTemplate.FindField('PRODICOD').asInteger, //Produto
                              DM.SQLConfigInventarioOPESICODSAIDA.Value,   //Operacao
                              FormTelaSaidaRapidaEstoque.EditQtdeSaida.Value, //Quantidade
                              'S', //ENTRADA/SAIDA
                              FormatDateTime('mm/dd/yyyy', Now),
                              FormTelaSaidaRapidaEstoque.editCusto.Text,
                              'MOVIMENTOSDIVERSOS',
                              'Said-'+FormatDateTime('ddmmyyyy', Now),
                              '');
      {Atualiza tabela produto saldo}
      //SQLProdutoSaldo.close;
      //SQLProdutoSaldo.Open;
    end;
end;

procedure TFormCadastroProduto.MnCorrigeProdutosFilhosqueestaodiferentesdosPaisClick(
  Sender: TObject);
begin
  inherited;
  SQLTemplate.First;
  while not SQLTemplate.eof do
    begin
      if SQLTemplatePRODCATIVO.AsString = 'N' then
        begin
          SQLTemplate.edit;
          Application.ProcessMessages;
          SQLTemplate.post;
        end;
      SQLTemplate.next;
    end;
  SQLTemplate.First;
  ShowMessage('Correção Concluida com Sucesso!');
end;

procedure TFormCadastroProduto.AcessaNCMClick(Sender: TObject);
begin
  inherited;
  ComboNCM1.SetFocus;
  FieldLookup := DsTemplate.DataSet.FieldByName('NCMICOD');
  FieldOrigem := 'NCMICOD' ;
  DataSetLookup := SQLNcm;
  CriaFormulario(TFormCadastroNCM,'FormCadastroNCM',False,True,True,'');
end;

procedure TFormCadastroProduto.ComboNCM2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
      or ((sender as trxdblookupcombo).Value <>
      (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    AcessaNCM.Click;

end;

procedure TFormCadastroProduto.RxDBComboBox5Exit(Sender: TObject);
begin
  inherited;
  if (RxDBComboBox5.ItemIndex <> 0) and (RxDBComboBox5.ItemIndex <> 4) then // produtos e combustiveis
  begin
    ShowMessage('Desculpe... Este programa não está preparado para vender este tipo de produto via NF-e');
    RxDBComboBox5.ItemIndex := 0;
    RxDBComboBox5.SetFocus;
  end;
end;

procedure TFormCadastroProduto.SQLTemplateICMSICODChange(Sender: TField);
begin
  inherited;
  SQLTemplatePRODISITTRIB.Value := SQLIcmsICMSICODSITTRIB.VALUE;
end;

procedure TFormCadastroProduto.DBEdit4Exit(Sender: TObject);
begin
  inherited;

  if (Length(trim(SQLTemplatePRODA60CODBAR.AsString)) > 14) then
    Showmessage('Atenção... codigo de barras tem mais que 14 digitos');

  if (SQLTemplate.State in ([dsInsert, dsEdit])) and (SQLTemplatePRODA20BARRAUNIDADE.AsString = '') then
    SQLTemplatePRODA20BARRAUNIDADE.AsString := SQLTemplatePRODA60CODBAR.AsString;
end;

procedure TFormCadastroProduto.DBEdit54KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
      AcessaNCM.Click;
end;

procedure TFormCadastroProduto.ComboNCM1Enter(Sender: TObject);
begin
  inherited;
  SQLNcm.Close;
  SQLNcm.SQL.Text := 'SELECT NCMICOD, NCMA30CODIGO, NCMA100DESCR FROM NCM ORDER BY NCMA30CODIGO';
  SQLNcm.Open;
end;

procedure TFormCadastroProduto.ComboNCM2Enter(Sender: TObject);
begin
  inherited;
  SQLNcm.Close;
  SQLNcm.SQL.Text := 'SELECT NCMICOD, NCMA30CODIGO, NCMA100DESCR FROM NCM ORDER BY NCMA100DESCR';
  SQLNcm.Open;
end;

procedure TFormCadastroProduto.RxDBComboBox3Change(Sender: TObject);
begin
  inherited;
  Panel9.Enabled := RxDBComboBox3.ItemIndex = 0 ;
end;

procedure TFormCadastroProduto.SQLTemplatePRODCSERVICOChange(
  Sender: TField);
begin
  inherited;
  if SQLTemplatePRODCSERVICO.asstring = 'S' then
    SQLTemplatePRODA2TIPOITEM.AsString := '09' // serviï¿½o
  Else
    SQLTemplatePRODA2TIPOITEM.AsString := '00' // produto
end;

procedure TFormCadastroProduto.MnVerificaProdutossemNCMClick(
  Sender: TObject);
var xAtivo : string;
begin
  inherited;
  if RadioAtivo.Checked then
    xAtivo := 'S'
  else
    xAtivo := 'N';

  SQLTemplate.Close;
  SQLTemplate.MacroByName('MFiltro').Value := 'NCMICOD is Null';
  SQLTemplate.Open;

  //COUNT
  DM.SQLTemplate.Close;
  DM.SQLTemplate.sql.Text := 'Select count(prodicod) from produto where NCMICOD is Null and PRODCATIVO = '''+xAtivo+'''';
  DM.SQLTemplate.Open;
  LabelRegistros.Caption := 'Total de Registros Encontrados: '+ IntToSTR(DM.SQLTemplate.fieldbyname('COUNT').asInteger);
  LabelRegistros.Update;
end;

procedure TFormCadastroProduto.MnVerificaProdutossemSTClick(
  Sender: TObject);
var xAtivo : string;
begin
  inherited;
  if RadioAtivo.Checked then
    xAtivo := 'S'
  else
    xAtivo := 'N';

  SQLTemplate.Close;
  SQLTemplate.MacroByName('MFiltro').Value := 'PRODISITTRIB is Null';
  SQLTemplate.Open;

  //COUNT
  DM.SQLTemplate.Close;
  DM.SQLTemplate.sql.Text := 'Select count(prodicod) from produto where PRODISITTRIB is Null and PRODCATIVO = '''+xAtivo+'''';
  DM.SQLTemplate.Open;
  LabelRegistros.Caption := 'Total de Registros Encontrados: '+ IntToSTR(DM.SQLTemplate.fieldbyname('COUNT').asInteger);
  LabelRegistros.Update;
end;

procedure TFormCadastroProduto.AcessaUnidade2Click(Sender: TObject);
begin
  inherited;
  ComboUnidade2.SetFocus;
  FieldLookup := DsTemplate.DataSet.FieldByName('UNIDICOD2');
  FieldOrigem := 'UNIDICOD' ;
  DataSetLookup := SQLUnidade2;
  CriaFormulario(TFormCadastroUnidade,'FormCadastroUnidade',False,True,True,'Produto ' + IntToStr(SQLTemplatePRODICOD.Value));
end;

procedure TFormCadastroProduto.ComboUnidade2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
        or ((sender as trxdblookupcombo).Value <>
            (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    AcessaUnidade2.Click;
end;

procedure TFormCadastroProduto.DSSQLGrupoDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  SQLSubGrupo.close;
  SQLSubGrupo.open;
end;

procedure TFormCadastroProduto.DSSQLSubGrupoDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  SQLVariacao.Close;
  SQLVariacao.Open;
end;

procedure TFormCadastroProduto.btReplicarCadClick(Sender: TObject);
var i : integer;  
begin
  inherited;
{  dm.ZConsulta.Close;
  dm.ZConsulta.sql.Text := 'Select * from produto where prodicod = ' + SQLTemplatePRODICOD.AsString ;
  dm.ZConsulta.open;}

  SQLEspelhoNovoLanc.Close ;
  SQLEspelhoNovoLanc.MacroByName('MFiltro').Value := 'PRODICOD = ' + SQLTemplatePRODICOD.AsString ;
  SQLEspelhoNovoLanc.Open ;

  sqltemplate.DisableControls;
  SQLTemplate.Append ;
  for i := 0 to SQLEspelhoNovoLanc.FieldCount-1 do
    if (SQLEspelhoNovoLanc.Fields[i].FieldName <> 'PRODICOD') then
      begin
        try
          SQLTemplate.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).Value := SQLEspelhoNovoLanc.Fields[i].AsVariant ;
        except
          Application.ProcessMessages;
        end;
      end;
  SQLTemplatePRODA30ADESCRREDUZ.Value := '';
  SQLTemplatePRODA60CODBAR.Value := '';
  SQLTemplatePRODA20BARRAUNIDADE.Value := '';
  SQLTemplatePRODIPRINCIPAL.AsString := '';
  SQLTemplatePRODICODBALANCA.AsString := '';
  SQLTemplatePRODBIMAGEM.Value := '';
  sqltemplatePRODDINIPROMO.AsString := '';
  SQLTemplatePRODDFIMPROMO.AsString := '';
  sqltemplatePRODN3VLRVENDAPROM.Value := 0;

  sqltemplate.EnableControls;
  SQLTemplatePRODA60DESCR.FocusControl ;
end;

procedure TFormCadastroProduto.MnCorrigeGradessemNCMsClick(
  Sender: TObject);
var NcmCod : string;
begin
  inherited;
  SQLTemplate.First;
  while not SQLTemplate.eof do
    begin
      if (SQLTemplateGRADICOD.AsString <> '') and (SQLTemplateNCMICOD.AsString <> '') then
        begin
          SQLTemplate.edit;
          Application.ProcessMessages;
          SQLTemplate.post;
        end;
      SQLTemplate.next;
    end;
  SQLTemplate.First;

  ShowMessage('Correção Concluida com Sucesso!');

  { Baino ncm corrigido, pois larguei o ncm na coluna errada!
  SQLTemplate.First;
  while not SQLTemplate.eof do
    begin
      if (SQLTemplateNCMICOD.AsString <> '') then
        begin
          NcmCod := SQLLocate('NCM','NCMA30CODIGO','NCMICOD',''''+SQLTemplateNCMICOD.AsString+'''');
          if NcmCod <> '' then
            begin
              SQLTemplate.edit;
              SQLTemplateNCMICOD.AsString := NcmCod;
              if SQLTemplatePRODN2PERCIPIENTRADA.IsNull then
                SQLTemplatePRODN2PERCIPIENTRADA.value := 0;
              if SQLTemplatePRODN3PERCIPI.IsNull then
                SQLTemplatePRODN3PERCIPI.value := 0;
              if SQLTemplatePRODN2PERCDIFICM.IsNull then
                SQLTemplatePRODN2PERCDIFICM.value := 0;
              if SQLTemplatePRODN2ALIQPIS.IsNull then
                SQLTemplatePRODN2ALIQPIS.value := 0;
              if SQLTemplatePRODN2ALIQCOFINS.IsNull then
                SQLTemplatePRODN2ALIQCOFINS.value := 0;

              SQLTemplate.post;
              Application.ProcessMessages;
            end;
        end;
      SQLTemplate.next;
    end;
  SQLTemplate.First;                                         }

end;

procedure TFormCadastroProduto.SQLTemplateNCMICODChange(Sender: TField);
var AliqIcms, CSTIcms : string;
begin
  inherited;
  if SQLTemplateNCMICOD.IsNull then
    exit;

  {Tenta Pegar Codigo Cest}
  dm.SQLTemplate.Close;
  dm.SQLTemplate.sql.clear;
  dm.SQLTemplate.sql.Text := 'Select CEST From CESTNCM Where NCM = ' + QuotedStr(ComboNCM1.DisplayValue);
  dm.SQLTemplate.Open;
  if not dm.SQLTemplate.IsEmpty then
    SQLTemplateTABCEST.Value := dm.sqltemplate.fieldbyname('CEST').AsString;
  dm.SQLTemplate.Close;

  if DM.SQLEmpresa.fieldbyname('EMPRA3CRT').value <> '3' then
    exit;

  if Pergunta('NAO','Atenção! Buscar as informações de ICMS, PIS/COFINS na tabela de NCMs Automaticamente?') then
    begin
      SQLTemplateICMSICOD.OnChange := nil;
      dm.SQLTemplate.Close;
      dm.SQLTemplate.sql.clear;
      dm.SQLTemplate.sql.Text := 'Select * From NCM Where NCMICOD = ' + SQLTemplateNCMICOD.AsString ;
      dm.SQLTemplate.Open;
      if not dm.SQLTemplate.IsEmpty then
        begin
          CSTIcms  := dm.sqltemplate.fieldbyname('CSTICMS').AsString ;
          AliqIcms := dm.sqltemplate.fieldbyname('ALIQ_ICMS').AsString ;

          if DM.SQLEmpresa.fieldbyname('EMPRA3CRT').value <> '3' then
            begin {Lucro Presumido}
              if CSTIcms <> '' then
                SQLTemplatePRODISITTRIB.AsString := CSTIcms ;
              if dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsString <> '' then
                SQLTemplatePRODA2CSTPIS.Value           := FormatFloat('##00',dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsInteger);
              if dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').AsString <> '' then
                SQLTemplatePRODA3CSTPISENTRADA.Value    := dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').Value;
              if dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsString <> '' then
                SQLTemplatePRODA2CSTCOFINS.Value        := FormatFloat('##00',dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsInteger);
              if dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').AsString <> '' then
                SQLTemplatePRODA3CSTCOFINSENTRADA.Value := dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').Value;
              if dm.sqltemplate.fieldbyname('ALIQ_PIS_PRESUMIDO').Value > 0 then
                SQLTemplatePRODN2ALIQPIS.Value    := dm.sqltemplate.fieldbyname('ALIQ_PIS_PRESUMIDO').Value;
              if dm.sqltemplate.fieldbyname('ALIQ_COFINS_PRESUMIDO').Value > 0 then
                SQLTemplatePRODN2ALIQCOFINS.Value := dm.sqltemplate.fieldbyname('ALIQ_COFINS_PRESUMIDO').Value;
              {Filtra a tabela de Icms}
              if (AliqIcms <> '') and (CSTIcms <> '') then
                begin
                  dm.SQLTemplate.Close;
                  dm.SQLTemplate.sql.clear;
                  dm.SQLTemplate.sql.Text := 'select * from ICMS where ICMSN2ALIQUOTA = ' + AliqIcms + ' and ICMSICODSITTRIB = ' + CSTIcms ;
                  dm.SQLTemplate.Open;
                  if not dm.SQLTemplate.IsEmpty then
                    SQLTemplateICMSICOD.Value := dm.sqltemplate.fieldbyname('ICMSICOD').Value ;
                end;
            end
          else
            begin {Lucro Real}
              if CSTIcms <> '' then
                SQLTemplatePRODISITTRIB.AsString := CSTIcms ;
              if dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsString <> '' then
                SQLTemplatePRODA2CSTPIS.Value           := FormatFloat('##00',dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsInteger);
              if dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').AsString <> '' then
                SQLTemplatePRODA3CSTPISENTRADA.Value    := dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').Value;
              if dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsString <> '' then
                SQLTemplatePRODA2CSTCOFINS.Value        := FormatFloat('##00',dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsInteger);
              if dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').AsString <> '' then
                SQLTemplatePRODA3CSTCOFINSENTRADA.Value := dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').Value;
              if dm.sqltemplate.fieldbyname('ALIQ_PIS_REAL').Value > 0 then
                SQLTemplatePRODN2ALIQPIS.Value          := dm.sqltemplate.fieldbyname('ALIQ_PIS_REAL').Value;
              if dm.sqltemplate.fieldbyname('ALIQ_COFINS_REAL').Value > 0 then
                SQLTemplatePRODN2ALIQCOFINS.Value       := dm.sqltemplate.fieldbyname('ALIQ_COFINS_REAL').Value;
              {Filtra a tabela de Icms}
              if (AliqIcms <> '') and (CSTIcms <> '') then
                begin
                  dm.SQLTemplate.Close;
                  dm.SQLTemplate.sql.clear;
                  dm.SQLTemplate.sql.Text := 'select * from ICMS where ICMSN2ALIQUOTA = ' + AliqIcms + ' and ICMSICODSITTRIB = ' + CSTIcms ;
                  dm.SQLTemplate.Open;
                  if not dm.SQLTemplate.IsEmpty then
                    SQLTemplateICMSICOD.Value := dm.sqltemplate.fieldbyname('ICMSICOD').Value ;
                end;
            end;
        end;
      {Realimentar Metodo}
      SQLTemplateICMSICOD.OnChange := SQLTemplateICMSICODChange;
    end ;
end;

procedure TFormCadastroProduto.MnCorrigirProdutospelatabeladoSuperTributarioClick(
  Sender: TObject);
var AliqIcms, CSTIcms : string;
begin
  inherited;
  if not Pergunta('NAO','Atenção! Buscar as informações de ICMS, PIS/COFINS na tabela de NCMs Automaticamente?') then
    Exit;

  {Limpar Metodo para nao ficar chamando enquanto o loop esta executando!}
  SQLTemplateICMSICOD.OnChange := nil;

  while not SQLTemplate.Eof do
    begin
      if SQLTemplateNCMICOD.AsString <> '' then
        begin
          dm.SQLTemplate.Close;
          dm.SQLTemplate.sql.clear;
          dm.SQLTemplate.sql.Text := 'Select * From NCM Where NCMICOD = ' + SQLTemplateNCMICOD.AsString ;
          dm.SQLTemplate.Open;
          if not dm.SQLTemplate.IsEmpty then
            begin
              CSTIcms  := dm.sqltemplate.fieldbyname('CSTICMS').AsString ;
              AliqIcms := dm.sqltemplate.fieldbyname('ALIQ_ICMS').AsString ;
              SQLTemplate.Edit;
              if DM.SQLEmpresa.fieldbyname('EMPRA3CRT').value <> '3' then
                begin {Lucro Presumido}
                  if CSTIcms <> '' then
                    SQLTemplatePRODISITTRIB.AsString        := CSTIcms ;
                  if dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsString <> '' then
                    SQLTemplatePRODA2CSTPIS.Value           := FormatFloat('##00',dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsInteger);
                  if dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').AsString <> '' then
                    SQLTemplatePRODA3CSTPISENTRADA.Value    := dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').Value;
                  if dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsString <> '' then
                    SQLTemplatePRODA2CSTCOFINS.Value        := FormatFloat('##00',dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsInteger);
                  if dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').AsString <> '' then
                    SQLTemplatePRODA3CSTCOFINSENTRADA.Value := dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').Value;
                  if dm.sqltemplate.fieldbyname('ALIQ_PIS_PRESUMIDO').Value > 0 then
                    SQLTemplatePRODN2ALIQPIS.Value    := dm.sqltemplate.fieldbyname('ALIQ_PIS_PRESUMIDO').Value;
                  if dm.sqltemplate.fieldbyname('ALIQ_COFINS_PRESUMIDO').Value > 0 then
                    SQLTemplatePRODN2ALIQCOFINS.Value := dm.sqltemplate.fieldbyname('ALIQ_COFINS_PRESUMIDO').Value;
                  {Filtra a tabela de Icms}
                  if (AliqIcms <> '') and (CSTIcms <> '') then
                    begin
                      dm.SQLTemplate.Close;
                      dm.SQLTemplate.sql.clear;
                      dm.SQLTemplate.sql.Text := 'select * from ICMS where ICMSN2ALIQUOTA = ' + AliqIcms + ' and ICMSICODSITTRIB = ' + CSTIcms ;
                      dm.SQLTemplate.Open;
                      if not dm.SQLTemplate.IsEmpty then
                        SQLTemplateICMSICOD.Value := dm.sqltemplate.fieldbyname('ICMSICOD').Value ;
                    end;
                end
              else
                begin {Lucro Real}
                  if CSTIcms <> '' then
                    SQLTemplatePRODISITTRIB.AsString        := CSTIcms ;
                  if dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsString <> '' then
                    SQLTemplatePRODA2CSTPIS.Value           := FormatFloat('##00',dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsInteger);
                  if dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').AsString <> '' then
                    SQLTemplatePRODA3CSTPISENTRADA.Value    := dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').Value;
                  if dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsString <> '' then
                    SQLTemplatePRODA2CSTCOFINS.Value        := FormatFloat('##00',dm.sqltemplate.fieldbyname('CSTPIS_COFINS').AsInteger);
                  if dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').AsString <> '' then
                    SQLTemplatePRODA3CSTCOFINSENTRADA.Value := dm.sqltemplate.fieldbyname('CSTPIS_COFINS_ENT').Value;
                  if dm.sqltemplate.fieldbyname('ALIQ_PIS_REAL').Value > 0 then
                    SQLTemplatePRODN2ALIQPIS.Value          := dm.sqltemplate.fieldbyname('ALIQ_PIS_REAL').Value;
                  if dm.sqltemplate.fieldbyname('ALIQ_COFINS_REAL').Value > 0 then
                    SQLTemplatePRODN2ALIQCOFINS.Value       := dm.sqltemplate.fieldbyname('ALIQ_COFINS_REAL').Value;
                  {Filtra a tabela de Icms}
                  if (AliqIcms <> '') and (CSTIcms <> '') then
                    begin
                      dm.SQLTemplate.Close;
                      dm.SQLTemplate.sql.clear;
                      dm.SQLTemplate.sql.Text := 'select * from ICMS where ICMSN2ALIQUOTA = ' + AliqIcms + ' and ICMSICODSITTRIB = ' + CSTIcms ;
                      dm.SQLTemplate.Open;
                      if not dm.SQLTemplate.IsEmpty then
                        SQLTemplateICMSICOD.Value := dm.sqltemplate.fieldbyname('ICMSICOD').Value ;
                    end;
                end;

              if sqltemplatePRODN2PERCIPIENTRADA.IsNull  then sqltemplatePRODN2PERCIPIENTRADA.value  := 0;
              if SQLTemplatePRODN3PERCIPI.IsNull    then sqltemplatePRODN3PERCIPI.value    := 0;
              if sqltemplatePRODN2PERCSUBST.IsNull  then sqltemplatePRODN2PERCSUBST.value  := 0;
              if sqltemplatePRODN2PERCFRETE.IsNull  then sqltemplatePRODN2PERCFRETE.value  := 0;
              if sqltemplatePRODN2PERCDESP.IsNull   then sqltemplatePRODN2PERCDESP.value   := 0;
              if sqltemplatePRODN2PERCDIFICM.IsNull then sqltemplatePRODN2PERCDIFICM.value := 0;
              if sqltemplatePRODA1TIPO.value = ''     then sqltemplatePRODA1TIPO.value       := '0';
              if sqltemplatePRODA1MODBC.Value = ''    then sqltemplatePRODA1MODBC.Value      := '0';
              if sqltemplatePRODA1MODBCST.Value = ''  then sqltemplatePRODA1MODBCST.Value    := '4';

              SQLTemplate.Post;
            end;
        end;
      SQLTemplate.Next;
    end ;

    {Realimentar Metodo}
    SQLTemplateICMSICOD.OnChange := SQLTemplateICMSICODChange;

    ShowMessage('Concluido com Sucesso!');
end;

procedure TFormCadastroProduto.RecalcularCustospelaComposicaoClick(
  Sender: TObject);
var xNovoCusto, xCustoIndividual, xValorVendaAnterior : Double;
begin
  inherited;
  if not Pergunta('NAO','Recalcular os Custos pela Composiï¿½ï¿½o dos produtos que estï¿½o sendo visualizados?') then
    Exit;

  sqltemplate.DisableControls;
  sqltemplate.first;
  while not sqltemplate.eof do
    begin
      sqlcomposicao.Close;
      sqlcomposicao.macrobyname('MFiltro').Value := 'PRODICOD = ' + sqltemplateprodicod.asstring ;
      sqlcomposicao.open;
      if not sqlcomposicao.isempty then {Se tiver composicao, faz loop pra recalcular o custo}
        begin
          xNovoCusto := 0;
          while not SQLComposicao.Eof do
            begin
              xCustoIndividual := 0;
              dm.SQLTemplate.Close;
              dm.SQLTemplate.sql.Clear;
              dm.SQLTemplate.sql.text := 'Select PRODN3VLRCUSTO from produto where prodicod = ' + sqlcomposicao.fieldbyname('PRODICODFILHO').AsString;
              dm.SQLTemplate.open;
              if not dm.SQLTemplate.IsEmpty then
                xCustoIndividual := dm.SQLTemplate.fieldbyname('PRODN3VLRCUSTO').AsVariant;
              xNovoCusto := xNovoCusto + (sqlcomposicao.fieldbyname('PRODN3QTDE').AsVariant*xCustoIndividual);
              SQLComposicao.Next;
            end;
          xValorVendaAnterior := sqltemplatePRODN3VLRVENDA.Value;
          sqltemplate.edit;
          sqltemplatePRODN3VLRCOMPRA.Value := xNovoCusto;
          sqltemplatePRODN3VLRCUSTO.Value  := xNovoCusto;
          if sqltemplatePRODN3PERCMGLVFIXA.Value = 0 then
            sqltemplatePRODN3VLRVENDA.Value := xValorVendaAnterior;
          sqltemplate.post;
        end;
      sqltemplate.next;
    end;
  sqltemplate.EnableControls;
  ShowMessage('Custos Recalculados com Sucesso!');
end;

function TFormCadastroProduto.EnviaProdutoPDVs(Tipo : string) : boolean ;
var i : integer;
begin
  {Atualiza a tabela ProdutoPDVs}

  {Filtra Terminais que devem receber carga}
  dm.sqlconsulta.Close;
  dm.sqlconsulta.sql.clear;
  dm.sqlconsulta.sql.Text := 'Select Termicod from Terminal where TERMCTIPO = ''C''';
  dm.sqlconsulta.Open;
  if not dm.sqlconsulta.IsEmpty then
    begin
      while not dm.sqlconsulta.eof do
        begin
          SQLProdutoPdvs.close;
          SQLProdutoPdvs.MacroByName('MFiltro').Value := 'PRODICOD='+SQLTemplatePRODICOD.AsString+' and TERMICOD='+dm.sqlconsulta.fieldbyname('TERMICOD').AsString;
          SQLProdutoPdvs.Open;
          if SQLProdutoPdvs.IsEmpty then
            SQLProdutoPdvs.append
          else
            SQLProdutoPdvs.edit;

          {Alimenta Campos}
          SQLProdutoPdvs.FieldByName('TERMICOD').AsString := dm.SQLConsulta.fieldbyname('TERMICOD').AsString;
          SQLProdutoPdvs.FieldByName('PRODICOD').AsString := SQLTemplatePRODICOD.AsString;
          SQLProdutoPdvs.FieldByName('EXCLUIR').AsString  := Tipo;

          SQLProdutoPdvs.Post;

          {PULA Terminal}
          dm.sqlconsulta.next;
        end;
    end;

  {testa se tem grade}
  if SQLTemplate.FindField('GRADICOD').AsString <> '' then
    begin
      dm.SQLTemplate.close;
      dm.SQLTemplate.sql.clear;
      dm.SQLTemplate.sql.Add('select * from produto');
      dm.SQLTemplate.sql.Add('where PRODICOD<>'+SQLTemplatePRODICOD.AsString+' and PRODIAGRUPGRADE='+SQLTemplatePRODIAGRUPGRADE.AsString);
      dm.SQLTemplate.open;
      if not dm.SQLTemplate.IsEmpty then
        begin
          while not dm.SQLTemplate.eof do
            begin
              dm.sqlconsulta.First; {pula terminal pro inicio}
              while not dm.sqlconsulta.eof do
                begin
                  SQLProdutoPdvs.close;
                  SQLProdutoPdvs.MacroByName('MFiltro').Value := 'PRODICOD='+dm.SQLTemplate.fieldbyname('PRODICOD').AsString+' and TERMICOD='+dm.sqlconsulta.fieldbyname('TERMICOD').AsString;
                  SQLProdutoPdvs.Open;
                  if SQLProdutoPdvs.IsEmpty then
                    SQLProdutoPdvs.append
                  else
                    SQLProdutoPdvs.edit;

                  {Campo Fixo}
                  SQLProdutoPdvs.FieldByName('TERMICOD').AsString := dm.SQLConsulta.fieldbyname('TERMICOD').AsString;
                  SQLProdutoPdvs.FieldByName('PRODICOD').AsString := dm.SQLTemplate.fieldbyname('PRODICOD').AsString;
                  SQLProdutoPdvs.FieldByName('EXCLUIR').AsString  := Tipo;

                  SQLProdutoPdvs.Post;

                  dm.sqlconsulta.next; {PULA Terminal}
                end;
              dm.SQLTemplate.next; {pula produto da grade}
            end;
        end;
    end;
  {fecha terminal}
  dm.sqlconsulta.Close;
end;

procedure TFormCadastroProduto.MnCargadeProdutosemMassaparaPDVsClick(
  Sender: TObject);
begin
  inherited;
  sqltemplate.DisableControls;
  sqltemplate.Close;
  sqltemplate.macrobyname('MFiltro').value   := 'pendente=''S''' ;
  sqltemplate.macrobyname('MSituacao').value := '0=0';
  sqltemplate.Open;
  while not sqltemplate.eof do
    begin
      labelstatus.Caption := 'Produto: '+ sqltemplateprodicod.AsString;
      labelstatus.Update;
      Application.ProcessMessages;

      EnviaProdutoPDVs('N');
      sqltemplate.Next;
    end;
  sqltemplate.Close;
  sqltemplate.EnableControls;

end;

procedure TFormCadastroProduto.SQLTemplatePRODN2MGVENDA2835DChange(
  Sender: TField);
begin
  inherited;
  if Dm.SQLConfigGeralCFGECALCPRECOAUTOM.AsString = 'N' then Exit;
  If AlterandoValores Then Exit;
  AlterandoValores := True;

  SQLTemplate.FindField('PRODN2VLRVENDA2835D').asFloat := SQLTemplate.FindField('PRODN3VLRCUSTO').asFloat *
                                                             (1+(SQLTemplate.FindField('PRODN2MGVENDA2835D').asFloat/100));
  AlterandoValores := False;
end;

procedure TFormCadastroProduto.SQLTemplatePRODN2MGVENDA283542DChange(
  Sender: TField);
begin
  inherited;
  if Dm.SQLConfigGeralCFGECALCPRECOAUTOM.AsString = 'N' then Exit;
  If AlterandoValores Then Exit;
  AlterandoValores := True;

  SQLTemplate.FindField('PRODN2VLRVENDA283542D').asFloat := SQLTemplate.FindField('PRODN3VLRCUSTO').asFloat *
                                                             (1+(SQLTemplate.FindField('PRODN2MGVENDA283542D').asFloat/100));
  AlterandoValores := False;
end;

procedure TFormCadastroProduto.CorrigeDescrioPrincipaleReduzida1Click(
  Sender: TObject);
begin
  inherited;
  SQLTemplate.First;
  while not SQLTemplate.eof do
    begin
      SQLTemplate.edit;
      SQLTemplatePRODA60DESCR.Value       := UpperCase(SQLTemplatePRODA60DESCR.Value);
      SQLTemplatePRODA30ADESCRREDUZ.Value := UpperCase(SQLTemplatePRODA30ADESCRREDUZ.Value);
      Application.ProcessMessages;
      SQLTemplate.post;
      SQLTemplate.next;
    end;
  SQLTemplate.First;

  ShowMessage('Correção Concluida com Sucesso!');
end;

procedure TFormCadastroProduto.btCorrigeProdutossemoCodigoCESTClick(
  Sender: TObject);
begin
  inherited;
  SQLTemplate.First;
  if not SQLTemplate.IsEmpty then
    begin
      while not SQLTemplate.eof do
        begin
          LabelRegistros.Caption := 'Corrigindo Codigo CEST do Produto: '+SQLTemplatePRODA60DESCR.Value;
          LabelRegistros.update;

          if (SQLTemplateNCMICOD.Value>0) and ((SQLTemplatePRODISITTRIB.Value=60) or (SQLTemplatePRODISITTRIB.Value=500)) then
            begin
              dm.SQLConsulta.close;
              dm.SQLConsulta.sql.Text := 'select cest from cestncm where ncm='''+dm.SQLLocate('ncm','ncmicod','NCMA30CODIGO',SQLTemplateNCMICOD.AsString)+'''';
              dm.SQLConsulta.open;
              if not dm.SQLConsulta.IsEmpty then
                begin
                  SQLTemplate.edit;
                 SQLTemplateTABCEST.Value := dm.SQLConsulta.findfield('cest').AsVariant;
                 Application.ProcessMessages;
                 SQLTemplate.post;
               end;
            end;
          SQLTemplate.next;
        end;
    end;
  ShowMessage('Correção Concluida com Sucesso!');
end;

procedure TFormCadastroProduto.AcessaCESTClick(Sender: TObject);
begin
  inherited;
  ComboNCM1.SetFocus;
  FieldLookup := DsTemplate.DataSet.FieldByName('TABCEST');
  FieldOrigem := 'CEST' ;
  DataSetLookup := sqlCEST;
  CriaFormulario(TFormCadastroTabCEST,'FormCadastroTabCEST',False,True,True,'');
end;

end.
										
