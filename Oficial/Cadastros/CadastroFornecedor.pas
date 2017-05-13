unit CadastroFornecedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, RxDBComb,
  FormResources, VarSys, DBActns, ActnList, ImgList, ToolEdit, CurrEdit,
  RxLookup, RXDBCtrl, UCrpe32, ExtDlgs, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroFornecedor = class(TFormCadastroTEMPLATE)
    SQLTemplateFORNICOD: TIntegerField;
    SQLTemplateFORNCFISJURID: TStringField;
    SQLTemplateFORNA14CGC: TStringField;
    SQLTemplateFORNA20IE: TStringField;
    SQLTemplateFORNA11CPF: TStringField;
    SQLTemplateFORNA10RG: TStringField;
    SQLTemplateFORNA60END: TStringField;
    SQLTemplateFORNA60BAI: TStringField;
    SQLTemplateFORNA60CID: TStringField;
    SQLTemplateFORNA2UF: TStringField;
    SQLTemplateFORNA8CEP: TStringField;
    SQLTemplateFORNA15FONE1: TStringField;
    SQLTemplateFORNA15FONE2: TStringField;
    SQLTemplateFORNA15FAX: TStringField;
    SQLTemplateFORNA60EMAIL: TStringField;
    SQLTemplateFORNTOBS: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEditRzSocial: TDBEdit;
    Label4: TLabel;
    RxComboFisJur: TRxDBComboBox;
    LabelRg: TLabel;
    DBEditRg: TDBEdit;
    LabelCgc: TLabel;
    DBEditCgc: TDBEdit;
    LabelCpf: TLabel;
    DBEditCpf: TDBEdit;
    LabelIe: TLabel;
    DBEditIe: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    SQLTemplateFORNA60CONTATO: TStringField;
    SQLTemplateFORNA60RAZAOSOC: TStringField;
    SQLTemplateFORNA60NOMEFANT: TStringField;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    TabFinanceiro: TTabSheet;
    Panel4: TPanel;
    SQLContasPagar: TRxQuery;
    SQLSoma: TRxQuery;
    DSSQLContasPagar: TDataSource;
    SQLContasPagarEMPRICOD: TIntegerField;
    SQLContasPagarCTPGICOD: TIntegerField;
    SQLContasPagarCTPGA20DOCORIG: TStringField;
    SQLContasPagarCTPGINROPARC: TIntegerField;
    SQLContasPagarCTPGDTEMIS: TDateTimeField;
    SQLContasPagarCTPGDVENC: TDateTimeField;
    SQLContasPagarCTPGN3VLR: TFloatField;
    SQLContasPagarCTPGDULTPAGTO: TDateTimeField;
    SQLContasPagarCTPGN2TOTPAG: TFloatField;
    SQLContasPagarCTPGN3JUROPAGTO: TFloatField;
    SQLContasPagarCTPGN3MULTAPAGTO: TFloatField;
    SQLContasPagarCTPGN3DESCPAGTO: TFloatField;
    SQLContasPagarCTPGN2DESCPROMO: TFloatField;
    GroupBox1: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    EditTotalPago: TCurrencyEdit;
    EditTotalJuro: TCurrencyEdit;
    EditTotalMulta: TCurrencyEdit;
    EditTotalDesc: TCurrencyEdit;
    GroupBox2: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    EditAPagar: TCurrencyEdit;
    EditVencidas: TCurrencyEdit;
    EditPagarVencida: TCurrencyEdit;
    DBEdit12: TDBMemo;
    ButtonCEP: TSpeedButton;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    MNADMListagemPersonalizada: TMenuItem;
    SQLTemplateFORNA30CODCONTABIL: TStringField;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    ComboUF: TRxDBComboBox;
    SQLTemplateFORNA60URL: TStringField;
    SQLConta: TRxQuery;
    DSSQLConta: TDataSource;
    ComboConta: TRxDBLookupCombo;
    DBEdit6: TDBEdit;
    ButtonCFOP: TSpeedButton;
    Label25: TLabel;
    SQLTemplateTPFRICOD: TIntegerField;
    SQLTemplatePLCTA15CODDEBITO: TStringField;
    SQLTipoFornec: TRxQuery;
    DBLookupTipofornec: TRxDBLookupCombo;
    Label69: TLabel;
    SQLTemplateTipoFornec: TStringField;
    SQLRamo: TRxQuery;
    DSSQLRamo: TDataSource;
    SQLRamoRAMOICOD: TIntegerField;
    SQLRamoRAMOA30DESCR: TStringField;
    Label26: TLabel;
    ComboRamo: TRxDBLookupCombo;
    Label27: TLabel;
    ComboSubRamo: TRxDBLookupCombo;
    SQLTemplateRAMOICOD: TIntegerField;
    SQLTemplateSRAMICOD: TIntegerField;
    DSSQLSubRamo: TDataSource;
    SQLSubRamo: TRxQuery;
    SQLSubRamoRAMOICOD: TIntegerField;
    SQLSubRamoSRAMICOD: TIntegerField;
    SQLSubRamoSRAMA30DESCR: TStringField;
    Button4: TRxSpeedButton;
    SQLTemplateFORNCTEMCATALOG: TStringField;
    RxDBComboBox1: TRxDBComboBox;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit15: TDBEdit;
    SQLTemplateFORNA30LOCCATALOG: TStringField;
    Label30: TLabel;
    DBEdit16: TDBEdit;
    SQLTemplateFORNA15CODNOFORN: TStringField;
    SQLTemplateFORNCPERMITETROCA: TStringField;
    SQLTemplateFORNDCAD: TDateTimeField;
    Label31: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    DBDateEdit8: TDBDateEdit;
    Label77: TLabel;
    SQLTemplateREPRICOD: TIntegerField;
    SQLRepresentante: TRxQuery;
    SQLRepresentanteREPRICOD: TIntegerField;
    SQLRepresentanteREPRA60RAZAOSOC: TStringField;
    SQLRepresentanteREPRA15FONE1: TStringField;
    SQLRepresentanteREPRA15FONECEL: TStringField;
    TabRepresentante: TTabSheet;
    Button5: TRxSpeedButton;
    Label32: TLabel;
    DBEdit17: TDBEdit;
    ComboRepresentanteNome: TRxDBLookupCombo;
    SQLTemplateRepreNome: TStringField;
    Label33: TLabel;
    Label34: TLabel;
    SQLTemplateRepreFone1: TStringField;
    Label35: TLabel;
    SQLTemplateRepreFone2: TStringField;
    SQLRepresentanteREPRA15FONE2: TStringField;
    SQLRepresentanteREPRA60EMAIL: TStringField;
    SQLTemplateRepreFoneCel: TStringField;
    SQLTemplateRepreEmail: TStringField;
    Label37: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    SQLTemplateFORNCSIMPLES: TStringField;
    Button6: TRxSpeedButton;
    ItensComprados: TTabSheet;
    Panel6: TPanel;
    SQLNotasCompra: TRxQuery;
    SQLNotasCompraNOCPA13ID: TStringField;
    SQLNotasCompraEMPRICOD: TIntegerField;
    SQLNotasCompraFORNICOD: TIntegerField;
    SQLNotasCompraNOCPA30NRO: TStringField;
    SQLNotasCompraNOCPCSTATUS: TStringField;
    SQLNotasCompraOPESICOD: TIntegerField;
    SQLNotasCompraNOCPDEMISSAO: TDateTimeField;
    SQLNotasCompraNOCPDRECEBIMENTO: TDateTimeField;
    SQLNotasCompraPRODICOD: TIntegerField;
    SQLNotasCompraNOCIN3PERCDESC: TFloatField;
    SQLNotasCompraNOCIN3VLRDESC: TFloatField;
    SQLNotasCompraNOCIN3VLRICMS: TFloatField;
    SQLNotasCompraNOCIN3PERCICMS: TFloatField;
    SQLNotasCompraNOCIN3VLRSUBST: TFloatField;
    SQLNotasCompraNOCIN3VLRIPI: TFloatField;
    SQLNotasCompraNOCIN3PERCIPI: TFloatField;
    SQLNotasCompraNOCIN3VLRCUSTOMED: TFloatField;
    SQLNotasCompraNOCIN3VLRFRETE: TFloatField;
    SQLNotasCompraNOCIN3QTDBONIF: TFloatField;
    SQLNotasCompraFORNA60RAZAOSOC: TStringField;
    SQLNotasCompraLOTEA30NRO: TStringField;
    SQLNotasCompraNOCIN3CAPEMBAL: TFloatField;
    SQLNotasCompraNOCIN3QTDEMBAL: TFloatField;
    DSSQLNotasCompra: TDataSource;
    DBGridCompras: TDBGrid;
    SQLNotasCompraPRODA60DESCR: TStringField;
    SQLNotasCompraPRODA60REFER: TStringField;
    DBGridResumoFin: TDBGrid;
    GroupLegenda: TGroupBox;
    Shape1: TShape;
    Label81: TLabel;
    Label82: TLabel;
    Shape2: TShape;
    Label113: TLabel;
    Shape3: TShape;
    Shape6: TShape;
    Label116: TLabel;
    SQLTemplateFORNA15CXPOSTAL: TStringField;
    DBEdit22: TDBEdit;
    Label36: TLabel;
    TabTrocas: TTabSheet;
    Panel7: TPanel;
    DBGrid1: TDBGrid;
    SQLTrocas: TRxQuery;
    dsSQLTrocas: TDataSource;
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
    SQLTrocasPRODN3MULTIPLIC: TFloatField;
    SQLTrocasPRODN2DOSAGEM: TFloatField;
    SQLTrocasPRODTEXTENDIDO: TStringField;
    SQLTrocasPRODTOBSCOMPLEM: TStringField;
    SQLTrocasPRODCIMPETIQCDBAR: TStringField;
    Button7: TRxSpeedButton;
    TblImpressao: TTable;
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
    TblImpressaoCepEmissor: TStringField;
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
    TblImpressaoVlrEmbalProduto: TFloatField;
    TblImpressaoVlrEncargos: TFloatField;
    TblImpressaoVlrFrete: TFloatField;
    TblImpressaoVlrDescPromo: TFloatField;
    TblImpressaoTipoFrete: TStringField;
    TblImpressaoNomeCompradorEmissor: TStringField;
    TblImpressaoNomeVendedorFornecedor: TStringField;
    TblImpressaoNomeTransportadora: TStringField;
    TblImpressaoVencimentos: TMemoField;
    TblImpressaoPlanoPgtoDescricao: TStringField;
    TblImpressaoUnidade: TStringField;
    TblImpressaoEmailFornecedor: TStringField;
    ImpTroca: TCrpe;
    SQLTrocasMOVDCTROCASTAT: TStringField;
    MnGerarListaEmail: TMenuItem;
    Label120: TLabel;
    DBEdit49: TDBEdit;
    SQLTemplateFORNIMUNICODFED: TIntegerField;
    GroupBoxFOTO: TGroupBox;
    Image: TImage;
    BtnCapturaFoto: TSpeedButton;
    BtnRemoveFoto: TSpeedButton;
    BtSalvarImagem: TSpeedButton;
    PictureDialog: TOpenPictureDialog;
    SQLTemplateFORNBIMAGEM: TBlobField;
    SQLTemplateFORNBDIGITAL1: TBlobField;
    SQLTemplateFORNBDIGITAL2: TBlobField;
    SQLTemplateFORNBDIGITAL3: TBlobField;
    TabDigital: TTabSheet;
    Label38: TLabel;
    SQLTemplateFORNA13IDCRACHA: TStringField;
    DBEdit23: TDBEdit;
    Label39: TLabel;
    Button8: TRxSpeedButton;
    BtDigital1: TButton;
    BtDigital2: TButton;
    BtDigital3: TButton;
    Panel8: TPanel;
    DigitalImage1: TImage;
    Panel9: TPanel;
    Image1: TImage;
    Panel10: TPanel;
    Image2: TImage;
    SQLTemplateHORAICOD: TIntegerField;
    ComboHorario: TRxDBLookupCombo;
    Label40: TLabel;
    dsSQLHorario: TDataSource;
    SQLHorario: TRxQuery;
    SQLHorarioHORAICOD: TIntegerField;
    SQLHorarioHORAA60DESCR: TStringField;
    Label41: TLabel;
    rxComboPais: TRxDBComboBox;
    DBComboBox1: TDBComboBox;
    SQLCidades: TRxQuery;
    SQLTemplateFORNICODPAIS: TIntegerField;
    Label75: TLabel;
    DBEdit5: TDBEdit;
    SQLTemplateFORNA5NROEND: TStringField;
    LabelRegime: TLabel;
    ComboRegime: TRxDBComboBox;
    LabelFant: TLabel;
    DBEditNomeFantasia: TDBEdit;
    SQLNotasCompraNOCIN3VLREMBAL: TFloatField;
    SQLNotasCompraNOCIN3VLRUNIT: TFloatField;
    FornecedoressemCdNFeCidade1: TMenuItem;
    FornecedoressemBairro1: TMenuItem;
    FornecedoressemCidade1: TMenuItem;
    FornecedoressemRegimeTributario1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure RxComboFisJurChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure AcessaTipoFornecedorClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ButtonCEPClick(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateFORNA60RAZAOSOCChange(Sender: TField);
    procedure SQLTemplateAfterInsert(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateFORNA11CPFChange(Sender: TField);
    procedure SQLTemplateFORNA14CGCChange(Sender: TField);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure ButtonCFOPClick(Sender: TObject);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboContaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridResumoFinDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormCadastroTrocasMnTrocasPendentesdoFornecedorAtualClick(
      Sender: TObject);
    procedure MnGerarListaEmailClick(Sender: TObject);
    procedure BtnCapturaFotoClick(Sender: TObject);
    procedure BtnRemoveFotoClick(Sender: TObject);
    procedure BtSalvarImagemClick(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBEdit49Enter(Sender: TObject);
    procedure rxComboPaisExit(Sender: TObject);
    procedure DBEditRzSocialExit(Sender: TObject);
    procedure FornecedoressemCdNFeCidade1Click(Sender: TObject);
    procedure FornecedoressemBairro1Click(Sender: TObject);
    procedure FornecedoressemCidade1Click(Sender: TObject);
    procedure FornecedoressemRegimeTributario1Click(Sender: TObject);

  private
    { Private declarations }
    CPFAlterado,
    CGCAlterado : Boolean;
    procedure MontaDadosFinanceiro;
  public
    { Public declarations }
    Arquivo : TextFile;
  end;

var
  FormCadastroFornecedor: TFormCadastroFornecedor;

implementation

uses CadastroBanco, DataModulo, CadastroTipoFornecedor, UnitLibrary,
  CadastroCep, TelaConsultaPlanoContas, CadastroFornecedorContato;

{$R *.DFM}

procedure TFormCadastroFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'FORNECEDOR';
  SQLTipoFornec.Open;
  SQLConta.Open;
  SQLRamo.Open;
  SQLSubRamo.Open;
  SQLHorario.Open;

end;

procedure TFormCadastroFornecedor.RxComboFisJurChange(Sender: TObject);
begin
  inherited;
  LabelRg.Visible   := RxComboFisJur.ItemIndex = 0;
  LabelCpf.Visible  := RxComboFisJur.ItemIndex = 0;
  DbEditRg.Visible  := RxComboFisJur.ItemIndex = 0;
  DBEditCpf.Visible := RxComboFisJur.ItemIndex = 0;
  LabelCgc.Visible  := RxComboFisJur.ItemIndex = 1;
 // LabelIe.Visible   := RxComboFisJur.ItemIndex = 1;
  DbEditCgc.Visible := RxComboFisJur.ItemIndex = 1;
//  DbEditIe.Visible  := RxComboFisJur.ItemIndex = 1;

  LabelFant.Visible := RxComboFisJur.ItemIndex = 1;
  LabelRegime.Visible := RxComboFisJur.ItemIndex = 1;
  ComboRegime.Visible := RxComboFisJur.ItemIndex = 1;
  DBEditNomeFantasia.Visible := RxComboFisJur.ItemIndex = 1;
  if (SQLTemplate.State in ([dsInsert,dsEdit])) and (RxComboFisJur.ItemIndex = 0) then
    SQLTemplateFORNCSIMPLES.Clear;


end;

procedure TFormCadastroFornecedor.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('BANCICOD');
  FieldOrigem := 'BANCICOD' ;
  //CriaFormulario(TFormCadastroBanco,'FormCadastroBanco',True,True,'Fornecedor ' + SQLTemplateFORNA60RAZAOSOCIAL.Value);
end;

procedure TFormCadastroFornecedor.DBEdit13KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key = Vk_F2 then
    begin
      FieldLookup := DsTemplate.DataSet.FieldByName('BANCICOD');
      FieldOrigem := 'BANCICOD' ;
      //CriaFormulario(TFormCadastroBanco,'FormCadastroBanco',True,True,'Fornecedor ' + SQLTemplateFORNA60RAZAOSOCIAL.Value);
    end;
end;

procedure TFormCadastroFornecedor.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SqlTemplate.FieldByName('FORNCFISJURID').AsString = 'F' then
    if SqlTemplate.FieldByName('FORNA11CPF').AsString <> '' then
      if Length(SqlTemplate.FieldByName('FORNA11CPF').AsString) = 11 then
        begin
          if not ValidaCPF(SqlTemplate.FieldByName('FORNA11CPF').AsString) then
            begin
              Informa('O CPF digitado � inv�lido !');
              Abort;
            end
          else
            begin
              if (SQLTemplate.State in [DSInsert]) or (CPFAlterado) then
                if SQLLocate('FORNECEDOR','FORNA11CPF','FORNA11CPF','"' + SqlTemplate.FieldByName('FORNA11CPF').AsString + '"') <> '' then
                  begin
                    if SQLLocate('FORNECEDOR','FORNA11CPF','FORNA20IE','"' + SqlTemplate.FieldByName('FORNA11CPF').AsString + '"') = SQLTemplateFORNA20IE.AsString then
                    Begin
                        Informa('Este CPF j� foi cadastrado!');
                        Abort;
                    end else
                        Informa('Aten��o... Este CPF j� consta no cadastro com outra Inscri��o Estadual');
                  end;
            end;
        end
      else
        begin
          Informa('O CPF digitado est� incompleto !');
          Abort;
        end;
  if SqlTemplate.FieldByName('FORNCFISJURID').AsString = 'J' then
  Begin
    if SqlTemplate.FieldByName('FORNA14CGC').AsString <> '' then
      if Length(SqlTemplate.FieldByName('FORNA14CGC').AsString) = 14  then
        begin
          if not ValidaCGC(SqlTemplate.FieldByName('FORNA14CGC').AsString) then
            begin
              Informa('O CNPJ digitado � inv�lido !');
              Abort;
            end
          else
            begin
              if (SQLTemplate.State in [DSInsert]) or (CGCAlterado) then
                if SQLLocate('FORNECEDOR','FORNA14CGC','FORNA14CGC','"' + SqlTemplate.FieldByName('FORNA14CGC').AsString + '"') <> '' then
                  begin
                    Informa('Este CNPJ j� foi cadastrado!');
                    Abort;
                  end;
            end;
        end
      else
        begin
          Informa('O CNPJ digitado est� incompleto !');
          Abort;
        end;

      if SQLTemplateFORNCSIMPLES.Value = '' Then
      begin
        Beep ;
        Informa('O campo Regime Tribut�rio deve ser preenchido!');
        SQLTemplateFORNCSIMPLES.FocusControl;
        Abort;
      end;

  end;
  if SQLTemplateFORNA60RAZAOSOC.Value = '' Then
    begin
      Beep;
      Informa('O campo Raz�o Social deve ser preenchido!');
      SQLTemplateFORNA60RAZAOSOC.FocusControl;
      Abort;
    end;
  if SQLTemplateFORNA60NOMEFANT.Value = '' Then
    begin
      Beep;
      Informa('O campo Nome Fantasia deve ser preenchido!');
      SQLTemplateFORNA60NOMEFANT.FocusControl;
      Abort;
    end;
  if SQLTemplateFORNA2UF.Value = '' Then
    begin
      Beep ;
      Informa('O campo Estado deve ser preenchido!');
      SQLTemplateFORNA2UF.FocusControl;
      Abort;
    end;
  if (SQLTemplateFORNICODPAIS.value = 0) or (SQLTemplateFORNICODPAIS.IsNull) then
    SQLTemplateFORNICODPAIS.Value := 1058;
end;

procedure TFormCadastroFornecedor.DSTemplateDataChange(Sender: TObject;
  Field: TField);
var
  BlobStream : TStream;
  JPEGImage  : TJPEGImage;
begin
  inherited;
  LabelRg.Visible   := RxComboFisJur.ItemIndex = 0;
  LabelCpf.Visible  := RxComboFisJur.ItemIndex = 0;
  DbEditRg.Visible  := RxComboFisJur.ItemIndex = 0;
  DBEditCpf.Visible := RxComboFisJur.ItemIndex = 0;
  LabelCgc.Visible  := RxComboFisJur.ItemIndex = 1;
//  LabelIe.Visible   := RxComboFisJur.ItemIndex = 1;
  DbEditCgc.Visible := RxComboFisJur.ItemIndex = 1;
//  DbEditIe.Visible  := RxComboFisJur.ItemIndex = 1;
  if ((Sender as TDataSource).DataSet <> Nil) and
     ((Sender as TDataSource).DataSet.Active) and
     (PagePrincipal.ActivePage.Name = 'TabFinanceiro') then
    begin
      MontaDadosFinanceiro;
    end;

  // Mostra Imagem Associada
  if SQLTemplateFORNBIMAGEM.BlobSize <> 0 then
  begin
    BlobStream:= SQLTemplate.CreateBlobStream(SQLTemplateFORNBIMAGEM,bmRead);
    JPEGImage := TJPEGImage.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      Image.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
    Image.Picture:=nil;

end;

procedure TFormCadastroFornecedor.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateFORNCFISJURID.Value := 'J';
  SQLTemplateFORNDCAD.AsString  := FormatDateTime('dd/mm/yyyy',now);
  SQLTemplateFORNICODPAIS.Value := 1058;
end;

procedure TFormCadastroFornecedor.AcessaTipoFornecedorClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('TPFRICOD');
  FieldOrigem := 'TPFRICOD' ;
  CriaFormulario(TFormCadastroTipoFornecedor,'FormCadastroTipoFornecedor',False,True,True,'');
end;

procedure TFormCadastroFornecedor.Button3Click(Sender: TObject);
begin
  inherited;
  if TRxSpeedButton(Sender).Name = 'Button3' then
    begin
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormCadastroFornecedorContato,
                     'FormCadastroFornecedorContato',
                     True,
                     False,True,'Fornecedor ' + SQLTemplateFORNA60NOMEFANT.asString);
    end ;

  if TRxSpeedButton(Sender).Name = 'Button4' then
    begin
      if dm.SQLUsuario.FieldByName('USUACVRESFINFORN').Value = 'S' then
        begin
          PagePrincipal.ActivePage := TabFinanceiro;
          MontaDadosFinanceiro;
        end
      else
        begin
          ShowMessage('Aten��o! Usu�rio sem permiss�o para ver o resumo financeiro!');
          Exit;
        end;
    end;
  if TRxSpeedButton(Sender).Name = 'Button5' then
    PagePrincipal.ActivePage := TabRepresentante;

  if TRxSpeedButton(Sender).Name = 'Button6' then
    begin
      PagePrincipal.ActivePage := ItensComprados;
      SQLNotasCompra.Close;
      SQLNotasCompra.MacroByName('MFornecedor').Value := 'NotaCompra.Fornicod = '+ SQLTemplateFORNICOD.AsString;
      SQLNotasCompra.Open;
    end;

  if TRxSpeedButton(Sender).Name = 'Button7' then
    begin
      PagePrincipal.ActivePage := TabTrocas;
      SQLTrocas.Close;
      SQLTrocas.MacroByName('MFornecedor').Value := 'MovimentoDiverso.Fornicod = '+ SQLTemplateFORNICOD.AsString;
      SQLTrocas.Open;
    end;

  if TRxSpeedButton(Sender).Name = 'Button8' then
    PagePrincipal.ActivePage := TabDigital;

end;

procedure TFormCadastroFornecedor.ButtonCEPClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('FORNA8CEP');
  FieldOrigem := 'CEPA8CEP' ;
  Application.CreateForm(TFormCadastroCep,FormCadastroCep);
  FormCadastroCep.EditProcura.Text := '*' + SQLTemplateFORNA60END.AsString;
  FormCadastroCep.ShowModal;
  if FormCadastroCep.ModalResult = MrOK then
    begin
      SQLTemplateFORNA60END.AsString  := FormCadastroCep.SQLTemplateCEPA60LOGRADOURO.AsString;
      SQLTemplateFORNA60BAI.AsString  := FormCadastroCep.SQLTemplateCEPA60BAIRRO1.AsString;
      SQLTemplateFORNA60CID.AsString  := FormCadastroCep.SQLTemplateCEPA60CIDADE.AsString;
      SQLTemplateFORNA2UF.AsString    := FormCadastroCep.SQLTemplateCEPA2ESTADO.AsString;
    end;
end;

procedure TFormCadastroFornecedor.DBEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCEP.Click;
end;

procedure TFormCadastroFornecedor.SQLTemplateFORNA60RAZAOSOCChange(
  Sender: TField);
begin
  inherited;
  if SQLTemplate.State in DSEditModes then
    SQLTemplate.FieldByName('FORNA60NOMEFANT').AsString := SQLTemplate.FieldByName('FORNA60RAZAOSOC').AsString;
end;

procedure TFormCadastroFornecedor.SQLTemplateAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  CPFAlterado := false ;
  CGCAlterado := False;

end;

procedure TFormCadastroFornecedor.SQLTemplateBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  CPFAlterado := false ;
  CGCAlterado := False;

end;

procedure TFormCadastroFornecedor.SQLTemplateFORNA11CPFChange(
  Sender: TField);
begin
  inherited;
  CPFAlterado := true ;
end;

procedure TFormCadastroFornecedor.SQLTemplateFORNA14CGCChange(
  Sender: TField);
begin
  inherited;
  CGCAlterado := True;
end;

procedure TFormCadastroFornecedor.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  if SQLLocate('CONTASPAGAR','FORNICOD','CTPGA13ID',SQLTemplateFORNICOD.AsString) <> '' then
    begin
      Informa('Este fornecedor possui hist�rico financeiro, n�o poder� ser exclu�do!');
      Abort;
      Exit;
    end;
  inherited;
end;
procedure TFormCadastroFornecedor.MontaDadosFinanceiro;
begin
  PanelCodigoDescricao.Visible := True;
  SQLContasPagar.Close;
  SQLContasPagar.MacroByName('MFiltro').Value := 'FORNICOD = ' + SQLTemplate.FieldByName('FORNICOD').AsString;
  SQLContasPagar.Open;
  with SQLSoma do
    begin
      Close;
      SQl.Clear;
      SQL.Add('SELECT sum(CTPGN2TOTPAG) as TotalPago , ' + 'sum(CTPGN3JUROPAGTO) as TotalJuro , ' + 'sum(CTPGN3MULTAPAGTO) as TotalMulta , ');
      SQL.Add('sum(CTPGN3DESCPAGTO + CTPGN2DESCPROMO) as TotalDesc ' + 'FROM CONTASPAGAR WHERE FORNICOD = ' + SQLTemplate.FieldByName('FORNICOD').AsString + 'AND CTPGN3VLR >= CTPGN2TOTPAG ');
      Open;
    end;

  EditTotalPago.Text  := SQLSoma.FieldByName('TotalPago').AsString;
  EditTotalJuro.Text  := SQLSoma.FieldByName('TotalJuro').AsString;
  EditTotalMulta.Text := SQLSoma.FieldByName('TotalMulta').AsString;
  EditTotalDesc.Text  := SQLSoma.FieldByName('TotalDesc').AsString;

  with SQLSoma do
    begin
      Close;
      SQl.Clear;
      SQL.Add('SELECT sum(CTPGN3VLR - CTPGN2TOTPAG) as TotalPagar ' + 'FROM CONTASPAGAR WHERE FORNICOD = ' + SQLTemplate.FieldByName('FORNICOD').AsString);
      SQL.Add('AND CTPGDVENC >= ' + '"' + FormatDateTime('mm/dd/yyy',Now) + '"' + 'AND CTPGN3VLR >= CTPGN2TOTPAG');
      Open;
    end;

  EditAPagar.Text := SQLSoma.FieldByName('TotalPagar').AsString;

  with SQLSoma do
    begin
      Close;
      SQl.Clear;
      SQL.Add('SELECT sum(CTPGN3VLR - CTPGN2TOTPAG) as TotalVencidas ' + 'FROM CONTASPAGAR WHERE FORNICOD = ' + SQLTemplate.FieldByName('FORNICOD').AsString);
      SQL.Add('AND CTPGDVENC < ' + '"' + FormatDateTime('mm/dd/yyy',Now) + '"' + 'AND CTPGN3VLR >= CTPGN2TOTPAG');
      Open;
    end;

  EditVencidas.Text := SQLSoma.FieldByName('TotalVencidas').AsString;

  with SQLSoma do
    begin
      Close;
      SQl.Clear;
      SQL.Add('SELECT sum(CTPGN3VLR - CTPGN2TOTPAG) as TotalPagarVenc ' + 'FROM CONTASPAGAR WHERE FORNICOD = ' + SQLTemplate.FieldByName('FORNICOD').AsString);
      SQL.Add('AND CTPGN3VLR >= CTPGN2TOTPAG');
      Open;
    end;

  EditPagarVencida.Text := SQLSoma.FieldByName('TotalPagarVenc').AsString;

end;
procedure TFormCadastroFornecedor.ButtonCFOPClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15CODDEBITO');
  FieldOrigem := 'PLCTA15COD';
  TipoPlanoContas := 'D';
  CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas', False, True,True,'Cadastro de Fornecedor');
end;

procedure TFormCadastroFornecedor.DBEdit6KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCFOP.Click;
end;

procedure TFormCadastroFornecedor.ComboContaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCFOP.Click;
end;

procedure TFormCadastroFornecedor.DBGridResumoFinDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var DataBase : Tdate;
begin
  inherited;
 DataBase := StrToDate(FormatDateTime('dd/mm/yyyy',Now));
 if (SQLContasPagarCTPGDVENC.AsDateTime > DataBase) and (SQLContasPagarCTPGN3VLR.Value > SQLContasPagarCTPGN2TOTPAG.Value) then
    DBGridResumoFin.Canvas.Font.Color := clGreen;
  if (SQLContasPagarCTPGDVENC.AsDateTime < DataBase) and (SQLContasPagarCTPGN3VLR.Value > SQLContasPagarCTPGN2TOTPAG.Value) then
    DBGridResumoFin.Canvas.Font.Color := clRed;
  if (SQLContasPagarCTPGDVENC.AsDateTime = DataBase) and (SQLContasPagarCTPGN3VLR.Value > SQLContasPagarCTPGN2TOTPAG.Value) then
    DBGridResumoFin.Canvas.Font.Color := clBlack;
 if (SQLContasPagarCTPGN2TOTPAG.Value >= SQLContasPagarCTPGN3VLR.Value) then
    DBGridResumoFin.Canvas.Font.Color := clNavy;
  TDBGrid(Sender).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormCadastroFornecedor.FormCadastroTrocasMnTrocasPendentesdoFornecedorAtualClick(
  Sender: TObject);
begin
  inherited;
  if SQLTrocas.IsEmpty then
    begin
      ShowMessage('N�o existem trocas a ser impressas!');
      Abort;
      Exit;
    end;

  TblImpressao.Close ;
  if TblImpressao.Exists then
    TblImpressao.DeleteTable ;
  TblImpressao.CreateTable ;
  TblImpressao.Open ;

  SQLTrocas.First ;
  while not SQLTrocas.EOF do
    begin
      TblImpressao.Append ;
      TblImpressaoNumeroPedido.Value          := 'Todos Pendentes' ;
      TblImpressaoDataEmissaoPedido.Value     := SQLTrocasMOVDDMOVIMENTO.Value ;
      TblImpressaoNomeEmissor.Value           := dm.SQLEmpresaEMPRA60RAZAOSOC.Value ;
      TblImpressaoCodigoFornecedor.Value      := SQLTrocasFORNICOD.Value ;
      TblImpressaoNomeFornecedor.Value        := SQLTemplateFORNA60RAZAOSOC.Value ;
      TblImpressaoObservacaoPedido.Value      := SQLTrocasMOVDA255OBS.Value ;
      TblImpressaoCodigoProduto.Value         := SQLTrocasPRODICOD.Value ;
      TblImpressaoReferenciaProduto.Value     := '' ;
      TblImpressaoDescricaoProduto.Value      := SQLTrocasPRODA60DESCR.AsString ;
      TblImpressaoUnidade.Value               := dm.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',
                                                 dm.SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLTrocasPRODICOD.AsString)) ;

      TblImpressaoQuantidadeProduto.Value     := SQLTrocasMVDIN3QTD.Value;
      TblImpressaoVlrEmbalProduto.Value       := SQLTrocasMVDIN3VLRCUSTO.Value ;

      TblImpressao.Post ;
      SQLTrocas.Next ;
    end ;
  ImpTroca.ReportName := DM.PathAplicacao + '\Troca\Troca.rpt' ;
  ImpTroca.Execute;
end;

procedure TFormCadastroFornecedor.MnGerarListaEmailClick(Sender: TObject);
var CaminhoNomeArquivo, Linha : String;
begin
  inherited;
  if not SQLTemplate.Active then
    begin
      ShowMessage('� necess�rio primeiro realizar o filtro nos Fornecedores...');
      Exit;
    end;
  if SQLTemplate.IsEmpty then
    begin
      ShowMessage('Nenhum Fornecedor foi encontrado...');
      Exit;
    end;

  CaminhoNomeArquivo := '..\Email_Fornecedor.txt';
  AssignFile(Arquivo,CaminhoNomeArquivo);
  Rewrite(Arquivo);
  Reset(Arquivo);
  Append(Arquivo);
  // Criar Proximas Linhas
  SQLTemplate.First;
  Linha := '';
  While not SQLTemplate.Eof Do
    begin
      if SQLTemplateFORNA60EMAIL.AsString <> '' then
        Linha := Linha + LowerCase(SQLTemplateFORNA60EMAIL.AsString) + ';' ;
      SQLTemplate.Next;
    end;
  // Gravar uma vez todos os email
  Writeln(Arquivo,Linha);

  // Fechar Arquivo
  CloseFile(Arquivo);
end;

procedure TFormCadastroFornecedor.BtnCapturaFotoClick(Sender: TObject);
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
    BlobStream:=SQLTemplate.CreateBlobStream(SQLTemplateFORNBIMAGEM,bmWrite);
    try
      BlobStream.CopyFrom(FileStream,FileStream.Size);
    finally
      FileStream.Free;
      BlobStream.Free;
    end;
  end;
end;

procedure TFormCadastroFornecedor.BtnRemoveFotoClick(Sender: TObject);
begin
  inherited;
  if Pergunta('NAO','Tem certeza que deseja remover esta imagem?') then
    begin
      SQLTemplate.DisableControls;
      if not (SQLTemplate.State in ([dsEdit, dsInsert])) then
        begin
          SQLTemplate.Edit;
          SQLTemplateFORNBIMAGEM.AsString := '';
          SQLTemplate.Post;
        end;
      SQLTemplate.EnableControls;
    end;
end;

procedure TFormCadastroFornecedor.BtSalvarImagemClick(Sender: TObject);
begin
  inherited;
  Image.Picture.SaveToFile('..\Foto_Fornec_'+SQLTemplateFORNICOD.AsString+'.jpg');
end;

procedure TFormCadastroFornecedor.DBComboBox1Enter(Sender: TObject);
begin
  inherited;
  SQLCidades.SQL.Text := 'Select Distinct  FORNA60CID from FORNECEDOR order by FORNA60CID';
  SQLCidades.Prepare;
  SQLCidades.Open;
  DBComboBox1.Items.Clear;
  While Not SQLCidades.Eof do
  begin
    DBComboBox1.Items.Add(SQLCidades.Fieldbyname('FORNA60CID').AsString);
    SQLCidades.Next;
  end;
  SQLCidades.Close;

end;

procedure TFormCadastroFornecedor.DBEdit49Enter(Sender: TObject);
begin
  inherited;
  if (DBComboBox1.Text <> '') and (SQLTemplateFORNIMUNICODFED.asstring = '') then
  begin
    SQLCidades.SQL.Text := 'Select DISTINCT FORNIMUNICODFED from FORNECEDOR where (FORNA60CID = :xCidade) AND (FORNIMUNICODFED IS NOT NULL)';
    SQLCidades.Prepare;
    SQLCidades.ParamByName('xCidade').asstring := DBComboBox1.Text;
    SQLCidades.Open;
    If SQLCidades.FieldByName('FORNIMUNICODFED').AsString <> '' then
      SQLTemplateFORNIMUNICODFED.asstring := SQLCidades.FieldByName('FORNIMUNICODFED').AsString;
    SQLCidades.Close;
  end;

end;

procedure TFormCadastroFornecedor.rxComboPaisExit(Sender: TObject);
begin
  inherited;
  if rxComboPais.Text <> 'BRASIL' then
  begin
    SQLTemplateFORNA60CID.asstring   := 'EXTERIOR';
    SQLTemplateFORNIMUNICODFED.AsInteger:= 9999999;
  end;
end;

procedure TFormCadastroFornecedor.DBEditRzSocialExit(Sender: TObject);
begin
  inherited;
  if SQLTemplateFORNA60NOMEFANT.Value = '' then
    SQLTemplateFORNA60NOMEFANT.Value := SQLTemplateFORNA60RAZAOSOC.Value;
end;

procedure TFormCadastroFornecedor.FornecedoressemCdNFeCidade1Click(
  Sender: TObject);
begin
  inherited;
  sqltemplate.close;
  sqltemplate.macrobyname('MFiltro').Value := 'FORNIMUNICODFED is null  and Registro > "01/01/2012 01:01:01"';
  sqltemplate.open;
end;

procedure TFormCadastroFornecedor.FornecedoressemBairro1Click(
  Sender: TObject);
begin
  inherited;
  sqltemplate.close;
  sqltemplate.macrobyname('MFiltro').Value := 'FORNA60BAI is null or FORNA60BAI=""  and Registro > "01/01/2012 01:01:01"';
  sqltemplate.open;
end;

procedure TFormCadastroFornecedor.FornecedoressemCidade1Click(
  Sender: TObject);
begin
  inherited;
  sqltemplate.close;
  sqltemplate.macrobyname('MFiltro').Value := 'FORNA60CID is null or FORNA60CID=""  and Registro > "01/01/2012 01:01:01"';
  sqltemplate.open;
end;

procedure TFormCadastroFornecedor.FornecedoressemRegimeTributario1Click(
  Sender: TObject);
begin
  inherited;
  sqltemplate.close;
  sqltemplate.macrobyname('MFiltro').Value := 'FORNCSIMPLES is null or FORNCSIMPLES="" and Registro > "01/01/2012 01:01:01"';
  sqltemplate.open;
end;

end.
