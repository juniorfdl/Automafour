unit CadastroCupom;

interface

uses
  VarSYS, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, ToolEdit, RXDBCtrl, DBCtrls, EDBNum, RxRichEd,
  DBRichEd, RxDBComb, RxLookup, ppDB, ppDBPipe, ppDBBDE, ppCtrls, ppStrtch,
  ppMemo, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppSubRpt, Serial, AdvOfficeStatusBar, AdvPanel, AdvOfficeStatusBarStylers,
  pcnConversao, pcnConversaoNFe ;

type
  TFormCadastroCupom = class(TFormCadastroTEMPLATE)
    SQLTemplateCUPOA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateCUPOICOD: TIntegerField;
    SQLTemplateCUPODEMIS: TDateTimeField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplateCONVICOD: TIntegerField;
    SQLTemplateCUPOCSTATUS: TStringField;
    SQLTemplateCUPON2TOTITENS: TFloatField;
    SQLTemplateCUPON2DESC: TFloatField;
    SQLTemplateCUPON2ACRESC: TFloatField;
    SQLTemplateCUPON2TOTITENSRET: TFloatField;
    SQLTemplateCUPOINRO: TIntegerField;
    SQLTemplateCUPOCTIPOPADRAO: TStringField;
    SQLTemplateCUPON2CONVTAXA: TFloatField;
    SQLTemplateCUPOINROORDCOMPRA: TIntegerField;
    SQLTemplateCUPOA13IDTROCA: TStringField;
    SQLTemplateCUPON2VLRCOMISSAO: TFloatField;
    SQLTemplateCUPOA20CODANT: TStringField;
    SQLTemplateCUPODCANC: TDateTimeField;
    SQLTemplateCUPON2JUROATRAS: TFloatField;
    SQLTemplateCUPON2MULTAATRAS: TFloatField;
    SQLTemplateCUPODPAGTOCONSIG: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLCliente: TRxQuery;
    SQLTemplateClienteLookup: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBDateEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    SQLTemplateTipoPadraoCalcField: TStringField;
    DBLookupComboBox1: TDBEdit;
    SQLPlano: TRxQuery;
    SQLTemplatePlanoLookup: TStringField;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    SQLVendedor: TRxQuery;
    SQLConvenio: TRxQuery;
    SQLTemplateVendedorLookup: TStringField;
    SQLTemplateConvenioLookup: TStringField;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    TabSheetDadosFinanceiros: TTabSheet;
    GroupBox1: TGroupBox;
    SQLCupomNumerario: TRxQuery;
    DSSQLCupomNumerario: TDataSource;
    SQLCupomNumerarioCUPOA13ID: TStringField;
    SQLCupomNumerarioNUMEICOD: TIntegerField;
    SQLCupomNumerarioCPNMN2VLR: TFloatField;
    SQLCupomNumerarioPENDENTE: TStringField;
    SQLCupomNumerarioREGISTRO: TDateTimeField;
    SQLNumerario: TRxQuery;
    SQLCupomNumerarioNumerarioLookup: TStringField;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox4: TGroupBox;
    DBGrid3: TDBGrid;
    SQLContasReceber: TRxQuery;
    DSSQLContasReceber: TDataSource;
    SQLRecebimento: TRxQuery;
    DSSQLRecebimento: TDataSource;
    SQLRecebimentoCTRCA13ID: TStringField;
    SQLRecebimentoRECEDRECTO: TDateTimeField;
    SQLRecebimentoRECEN2VLRRECTO: TFloatField;
    SQLRecebimentoRECEN2VLRJURO: TFloatField;
    SQLRecebimentoRECEN2VLRMULTA: TFloatField;
    SQLRecebimentoRECEN2DESC: TFloatField;
    SQLRecebimentoEMPRICODREC: TIntegerField;
    CarneAvulso1: TMenuItem;
    CancelarCupom: TMenuItem;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    SQLTemplateStatusCalcField: TStringField;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TFloatField;
    SQLContasReceberNUMEICOD: TIntegerField;
    SQLContasReceberNumerarioLookup: TStringField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberCTRCN2TOTREC: TFloatField;
    SQLContasReceberCTRCN2TOTJUROREC: TFloatField;
    SQLContasReceberCTRCN2TOTMULTAREC: TFloatField;
    SQLContasReceberCTRCN2TOTDESCREC: TFloatField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberCTRCN2TXMULTA: TFloatField;
    SQLContasReceberCTRCN2TXJURO: TFloatField;
    SQLContasReceberSALDO: TFloatField;
    SQLCupomItem: TRxQuery;
    SQLCupomItemCUPOA13ID: TStringField;
    SQLCupomItemPRODICOD: TIntegerField;
    SQLCupomItemVLRTOTALITEM: TFloatField;
    SQLCupomItemCPITN3QTD: TFloatField;
    SQLCupomItemVENDICOD: TIntegerField;
    SQLCupomItemPRODA60DESCR: TStringField;
    DSSQLCupomItem: TDataSource;
    SQLCupomItemCPITN3VLRUNIT: TFloatField;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    SQLTemplateCUPON3BONUSTROCA: TFloatField;
    SQLTemplateTotalGeral: TFloatField;
    SQLTemplateUSUAICODCANC: TIntegerField;
    SQLUsuario: TRxQuery;
    SQLTemplateUsuarioCancLookup: TStringField;
    Label14: TLabel;
    DBEdit15: TDBEdit;
    SQLTemplateCUPON3CREDTAXA: TFloatField;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    SQLTemplateCUPOCCONSIG: TStringField;
    Tipo: TStringField;
    SQLRecebimentoRECEA30HIST: TStringField;
    SQLRecebimentoRECEICOD: TIntegerField;
    SQLTemplateCUPOV254OBS: TStringField;
    Label17: TLabel;
    RxDBRichEdit1: TDBMemo;
    Button4: TRxSpeedButton;
    TabSheetCheques: TTabSheet;
    DBGrid5: TDBGrid;
    SQLCheques: TRxQuery;
    DSSQLCheques: TDataSource;
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
    SQLTemplateCUPON2DESCITENS: TFloatField;
    SQLTemplateTotalBruto: TFloatField;
    Label11: TLabel;
    Label18: TLabel;
    Label4: TLabel;
    Label19: TLabel;
    DBEdit10: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit3: TEvDBNumEdit;
    EvDBNumEdit1: TEvDBNumEdit;
    Label20: TLabel;
    EvDBNumEdit2: TEvDBNumEdit;
    SQLTemplateCUPODENTREGA: TDateTimeField;
    SQLTemplateTPVDICOD: TIntegerField;
    SQLTemplateCUPOA30DATACARTAO: TStringField;
    SQLTemplateCUPOA30HORACARTAO: TStringField;
    SQLTemplateCUPOA30NSUPROVEDOR: TStringField;
    SQLTemplateCUPOA30NSUINSTITUICAO: TStringField;
    GroupDadosCartao: TGroupBox;
    Label21: TLabel;
    DBEdit17: TDBEdit;
    Label22: TLabel;
    DBEdit18: TDBEdit;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    Label24: TLabel;
    DBEdit20: TDBEdit;
    Label25: TLabel;
    DBEdit21: TDBEdit;
    SQLTemplateCATCA13ID: TStringField;
    SQLTerminal: TRxQuery;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalTERMA60DESCR: TStringField;
    SQLDependente: TRxQuery;
    SQLDependenteCLIEA13ID: TStringField;
    SQLDependenteCLDPICOD: TIntegerField;
    SQLDependenteCLDPA60NOME: TStringField;
    SQLDadosVenda: TRxQuery;
    SQLDadosVendaTELEA13ID: TStringField;
    SQLDadosVendaEMPRICOD: TIntegerField;
    SQLDadosVendaTERMICOD: TIntegerField;
    SQLDadosVendaTELEICOD: TIntegerField;
    SQLDadosVendaCUPOA13ID: TStringField;
    SQLDadosVendaNOFIA13ID: TStringField;
    SQLDadosVendaPDVDA13ID: TStringField;
    SQLDadosVendaTELEDENTRPREV: TDateTimeField;
    SQLDadosVendaTELEDENTRPREV1: TDateTimeField;
    SQLDadosVendaTELEDENTRPREV2: TDateTimeField;
    SQLDadosVendaTELEDENTRREAL: TDateTimeField;
    SQLDadosVendaTELEA60SOLICITANTE: TStringField;
    SQLDadosVendaTELEA60ENTRPARANOME: TStringField;
    SQLDadosVendaTELEA60ENTRPARAEND: TStringField;
    SQLDadosVendaTELEA60ENTRPARABAI: TStringField;
    SQLDadosVendaTELEA60ENTRPARACID: TStringField;
    SQLDadosVendaTELEA2ENTRPARAUF: TStringField;
    SQLDadosVendaTELEA15ENTRPARAFONE: TStringField;
    SQLDadosVendaTELEA60RECPORNOME: TStringField;
    SQLDadosVendaTELEADREC: TDateTimeField;
    SQLDadosVendaTELEA1016MENSG: TMemoField;
    SQLDadosVendaPENDENTE: TStringField;
    SQLDadosVendaREGISTRO: TDateTimeField;
    SQLDadosVendaTPVDICOD: TIntegerField;
    SQLCupomItemCPITN2DESC: TFloatField;
    GroupBox5: TGroupBox;
    SQLTemplateCUPON2BASEICMS: TFloatField;
    SQLTemplateCUPON2VLRICMS: TFloatField;
    Label36: TLabel;
    DBEdit27: TDBEdit;
    Label37: TLabel;
    DBEdit28: TDBEdit;
    SQLCupomItemCPITN2BASEICMS: TFloatField;
    SQLCupomItemCPITN2VLRICMS: TFloatField;
    SQLTemplateAVALA13ID: TStringField;
    SQLTemplateCUPODQUITACAO: TDateTimeField;
    DBDateEdit2: TDBDateEdit;
    Label13: TLabel;
    SQLTemplateCLIENTENOME: TStringField;
    SQLTemplateCLIENTECNPJ: TStringField;
    SQLTemplateCLIENTEENDE: TStringField;
    SQLTemplateCLIENTECIDA: TStringField;
    GroupBox6: TGroupBox;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    SQLCupomItemCPITN3QTDTROCA: TFloatField;
    DBEdit36: TDBEdit;
    SQLTemplateCLIENTEFONE: TStringField;
    SQLTemplateUSUAICODVENDA: TIntegerField;
    SQLTemplateUsuarioNome: TStringField;
    Label16: TLabel;
    DBEdit37: TDBEdit;
    SQLTemplateCLDPICOD: TIntegerField;
    Label39: TLabel;
    DBEdit38: TDBEdit;
    SQLTemplateCFOPA5COD: TStringField;
    SQLTemplateCUPOA13IDCUPNEG: TStringField;
    SQLTemplateOPESICOD: TIntegerField;
    SQLTemplatePLCTA15CODCRED: TStringField;
    SQLTemplatePLCTA15CODDEB: TStringField;
    SQLTemplateCUPOA8PLACAVEIC: TStringField;
    SQLTemplateORIGEMVENDA: TStringField;
    Label40: TLabel;
    ComboOrigemVenda: TRxDBComboBox;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText5: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel17: TppLabel;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppLBEmpresa: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText4: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel12: TppLabel;
    ppDBText13: TppDBText;
    ppLabel13: TppLabel;
    BDEPipeCab: TppBDEPipeline;
    ppBDEPipeNumerario: TppBDEPipeline;
    ppBDEPipeCReceber: TppBDEPipeline;
    MnReimprimirvendaatual: TMenuItem;
    ppDBText14: TppDBText;
    ppDBText11: TppDBText;
    ppSubNumerario: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText12: TppDBText;
    ppSubPrazo: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    SQLTemplateTROCO: TFloatField;
    SQLTemplateDISPICOD: TIntegerField;
    SQLTemplateCUPOCLEVAR: TStringField;
    SQLCupomItemCPITTOBS: TStringField;
    DBEdit41: TDBEdit;
    Label44: TLabel;
    SQLImpressaoCupom: TRxQuery;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TFloatField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    SQLParcelasPrazoVendaTempTIPOPADR: TStringField;
    DSSQLParcelasPrazoVendaTemp: TDataSource;
    DSSQLParcelasVistaVendaTemp: TDataSource;
    SQLParcelasVistaVendaTemp: TRxQuery;
    SQLParcelasVistaVendaTempTERMICOD: TIntegerField;
    SQLParcelasVistaVendaTempNROITEM: TIntegerField;
    SQLParcelasVistaVendaTempNUMEICOD: TIntegerField;
    SQLParcelasVistaVendaTempVALORPARC: TFloatField;
    SQLParcelasVistaVendaTempTIPOPADR: TStringField;
    Label45: TLabel;
    DBEdit42: TDBEdit;
    Label46: TLabel;
    DBEdit43: TDBEdit;
    SQLTemplateCUPON2VLRPIS: TFloatField;
    SQLTemplateCUPON2VLRCOFINS: TFloatField;
    SQLItensTemp: TRxQuery;
    SQLItensTempCUPOA13ID: TStringField;
    SQLItensTempCPITN2VLRPIS: TFloatField;
    SQLItensTempCPITN2VLRCOFINS: TFloatField;
    SQLCupomItemCPITIPOS: TIntegerField;
    SQLCupomItemCPITCSTATUS: TStringField;
    Label48: TLabel;
    DBEdit44: TDBEdit;
    SQLTemplateCONTAICOD: TIntegerField;
    SQLTemplateMESAICOD: TIntegerField;
    SQLTemplateCLIENTEBAIRRO: TStringField;
    DBEdit45: TDBEdit;
    ppEtiq: TppReport;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppLinha: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
    ppLabel14: TppLabel;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppDBText18: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLabel18: TppLabel;
    ppDBText24: TppDBText;
    ppBDEPipeItem: TppBDEPipeline;
    ppDBText26: TppDBText;
    ppLabel19: TppLabel;
    MnEtiquetaAdesivaFabricacao: TMenuItem;
    ppLBEmpresa1: TppLabel;
    ppDBText27: TppDBText;
    ppLBTamanho: TppLabel;
    ppDBMemo1: TppDBMemo;
    DBGrid4: TDBGrid;
    GroupBox7: TGroupBox;
    DBEdit22: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit29: TDBEdit;
    SQLTemplateCHAVEACESSO: TStringField;
    SQLTemplatePROTOCOLO: TStringField;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    SQLTemplateSTNFE: TStringField;
    CupomEletronicoNFCe1: TMenuItem;
    MnadmRetransmitirNFCe: TMenuItem;
    SQLCupomItemCOITN2ICMSALIQ: TFloatField;
    SQLCupomItemM3_LARGURA: TFloatField;
    SQLCupomItemM3_COMPRI: TFloatField;
    SQLCupomItemM3_ESPESSURA: TFloatField;
    CorrigeProblemaCadterm603para661: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure CancelarCupomClick(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure MnReimprimirvendaatualClick(Sender: TObject);
    procedure MnEtiquetaAdesivaFabricacaoClick(Sender: TObject);
    procedure ppLinhaBeforePrint(Sender: TObject);
    procedure CupomEletronicoNFCe1Click(Sender: TObject);
    procedure MnadmRetransmitirNFCeClick(Sender: TObject);
    procedure CorrigeProblemaCadterm603para661Click(Sender: TObject);
  private
    { Private declarations }
    chave, PathPastaMensal, sXML : string;
    function Montar_NFCe(idCupom : string): string;
  public
    { Public declarations }
  end;

var
  FormCadastroCupom: TFormCadastroCupom;

implementation

uses UnitLibrary, DataModulo, DataModuloTemplate, TelaImpressaoDadosVenda, WaitWindow;

{$R *.dfm}

procedure TFormCadastroCupom.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CUPOM' ;
end;

procedure TFormCadastroCupom.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateCUPOCTIPOPADRAO.Value = 'VISTA' then
    SQLTemplateTipoPadraoCalcField.Value := 'À Vista' ;
  if SQLTemplateCUPOCTIPOPADRAO.Value = 'DIN' then
    SQLTemplateTipoPadraoCalcField.Value := 'Dinheiro' ;
  if SQLTemplateCUPOCTIPOPADRAO.Value = 'CHQ' then
    SQLTemplateTipoPadraoCalcField.Value := 'Cheque' ;
  if SQLTemplateCUPOCTIPOPADRAO.Value = 'CHQV' then
    SQLTemplateTipoPadraoCalcField.Value := 'Cheque À Vista' ;
  if SQLTemplateCUPOCTIPOPADRAO.Value = 'CHQP' then
    SQLTemplateTipoPadraoCalcField.Value := 'Cheque À Prazo' ;
  if SQLTemplateCUPOCTIPOPADRAO.Value = 'CRD' then
    SQLTemplateTipoPadraoCalcField.Value := 'Crediário' ;
  if SQLTemplateCUPOCTIPOPADRAO.Value = 'CNV' then
    SQLTemplateTipoPadraoCalcField.Value := 'Convênio' ;
  if SQLTemplateCUPOCTIPOPADRAO.Value = 'CRT' then
    SQLTemplateTipoPadraoCalcField.Value := 'Cartão' ;
  if SQLTemplateCUPOCTIPOPADRAO.Value = 'CRTF' then
    SQLTemplateTipoPadraoCalcField.Value := 'Cartão Fidelização' ;
  if SQLTemplateCUPOCTIPOPADRAO.Value = 'RTC' then
    SQLTemplateTipoPadraoCalcField.Value := 'Consignando' ;

  if SQLTemplateCUPOCSTATUS.Value = 'A' then
    SQLTemplateStatusCalcField.Value := 'Ativo' ;

  if SQLTemplateCUPOCSTATUS.Value = 'C' then
    SQLTemplateStatusCalcField.Value := 'Cancelado' ;

  if SQLTemplateCUPOCSTATUS.Value = 'E' then
    SQLTemplateStatusCalcField.Value := 'Encerrado' ;

  if SQLTemplateCUPOCSTATUS.Value = 'N' then
    SQLTemplateStatusCalcField.Value := 'Negociado' ;


  SQLTemplateTotalGeral.Value := SQLTemplateCUPON2TOTITENS.Value +
                                 SQLTemplateCUPON3CREDTAXA.Value +
                                 SQLTemplateCUPON2ACRESC.Value -
                                 SQLTemplateCUPON2DESC.Value -
                                 SQLTemplateCUPON3BONUSTROCA.Value ;

  SQLTemplateTotalBruto.Value := SQLTemplateCUPON2TOTITENS.Value +
                                 SQLTemplateCUPON3CREDTAXA.Value +
                                 SQLTemplateCUPON2ACRESC.Value ;

  if DataSet.FieldByName('CLIEA13ID').AsVariant <> null then
    if DM.ProcuraRegistro('CLIENTE',['CLIEA13ID'],[DataSet.FieldByName('CLIEA13ID').AsString],1) then
      DataSet.FieldByName('ClienteLookup').AsVariant    := DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').AsVariant
    else
      DataSet.FieldByName('ClienteLookup').asString := MensagemLookUp
  else
    DataSet.FieldByName('ClienteLookup').AsVariant  := Null;
end;

procedure TFormCadastroCupom.Button1Click(Sender: TObject);
begin
  inherited;
  if TRxSpeedButton(Sender).Name = 'Button3' then
    begin
      PagePrincipal.ActivePage := TabSheetDadosFinanceiros ;
      if not SQLCupomNumerario.Active then
        SQLCupomNumerario.Open ;
      if not SQLContasReceber.Active then
        SQLContasReceber.Open ;
      if not SQLRecebimento.Active then
        SQLRecebimento.Open ;
    end ;
  if TRxSpeedButton(Sender).Name = 'Button4' then
    begin
      PagePrincipal.ActivePage := TabSheetCheques ;
      SQLCheques.Open ;
    end ;
end;

procedure TFormCadastroCupom.CancelarCupomClick(Sender: TObject);
begin
  inherited;
  if SQLLocate('USUARIO', 'USUAICOD', 'USUACCANCVENDA', IntToStr(DM.UsuarioAtual)) <> 'S' then
    begin
      Informa('Você não tem permissão para cancelar esta venda!') ;
      exit ;
    end ;

  if SQLTemplateCUPODEMIS.Value = Date then
  begin
    Informa('Este cupom foi emitido hoje deve ser cancelado no terminal onde foi feito.') ;
    exit ;
  end ;

  if SQLTemplateCUPOCSTATUS.AsString <> 'C' then
    begin
      if Pergunta('NAO','Confirma o cancelamento do cupom ' + SQLTemplateCUPOA13ID.Value + ' ?') then
        begin
          if CancelamentoCupom(SQLTemplateCUPOA13ID.Value, IntToStr(DM.UsuarioAtual)) then
            begin
              if (SQLTemplateCHAVEACESSO.AsString <>'') and (SQLTemplatePROTOCOLO.Value <> '') then
                begin
                  dm.ACBrNFe.NotasFiscais.Clear;
                  dm.ACBrNFe.Consultar(SQLTemplateCHAVEACESSO.AsString);
                  if (dm.ACBrNFe.WebServices.Consulta.cStat = 100) then
                    begin
                      dm.ACBrNFe.EventoNFe.Evento.Clear;
                      with dm.ACBrNFe.EventoNFe.Evento.Add do
                        begin
                          InfEvento.chNFe      := SQLTemplateCHAVEACESSO.AsString ;
                          InfEvento.CNPJ       := dm.SQLEmpresaEMPRA14CGC.Value;
                          InfEvento.dhEvento   := Now;
                          InfEvento.tpEvento   := teCancelamento;
                          InfEvento.detEvento.xJust := 'Cancelamento por erro no preenchimento dos dados da nfe.'; // Justificativa;
                          InfEvento.detEvento.nProt := SQLTemplatePROTOCOLO.Value;
                        end;

                      // Envia o Cancelamento
                      dm.ACBrNFe.EnviarEvento(1);    {trunk2}

                      // Refaz Consulta pra ver se NFCe foi Cancelado se sim
                      dm.ACBrNFe.NotasFiscais.Clear;
                      dm.ACBrNFe.Consultar(SQLTemplateCHAVEACESSO.AsString);
                      if (dm.ACBrNFe.WebServices.Consulta.cStat = 101) then  {101 = Cancelamento Homologado}
                        begin
                          dm.SQLConsulta.Close;
                          dm.SQLConsulta.RequestLive := False;
                          dm.SQLConsulta.SQL.Text    := 'Update CUPOM Set STNFE='+IntToStr(dm.ACBrNFe.WebServices.consulta.cStat)+
                                                        ' Where CUPOA13ID ='''+SQLTemplateCUPOA13ID.AsString+'''';
                          dm.SQLConsulta.ExecSQL;
                        end;
                    end;
                end;

              Informa('Cupom cancelado com sucesso !');
            end
          else
            Informa('Problemas ao cancelar cupom!') ;
        end;
    end
  else
    begin
      Informa('Este cupom já foi cancelado!');
      Abort;
    end;
end;

procedure TFormCadastroCupom.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  SQLCupomItem.Close;
  SQLCupomItem.Open ;
end;

procedure TFormCadastroCupom.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  DesabilitarBotoes(True,True,True,True,True);
end;

procedure TFormCadastroCupom.DBGridListaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  If (SQLCupomItemCPITN3QTDTROCA.Value > 0) Then
    begin
       DBGrid4.Canvas.Font.Color:=clRed;
       DBGrid4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
end;

procedure TFormCadastroCupom.ppTitleBand1BeforePrint(Sender: TObject);
begin
  inherited;
  ppLBEmpresa.Caption := DM.SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', SQLTemplateEMPRICOD.AsString);
end;

procedure TFormCadastroCupom.MnReimprimirvendaatualClick(Sender: TObject);
begin
  inherited;
  // CHAMAR EXEC DE IMPRESSAO PASSANDO PARAMETRO CUPOM PARA MONTAGEM SEM USAR TAB TEMPORARIA, VERTEBRALLE
  try
    if FileExists(DM.PathAplicacao + '\ImpressaoViaParametro.EXE') then
      begin
        WinExec(Pchar(DM.PathAplicacao + '\ImpressaoViaParametro.EXE ' + SQLTemplateCUPOA13ID.AsString),sw_Show);
        exit;  {Caso consiga imprimir nem perde tempo carregando tab temp}
      end;
  except
    Application.ProcessMessages;
  end;

  DM.TblTicketPreVendaCab.Close ;
  try
    DM.TblTicketPreVendaCab.DeleteTable ;
  except
  end ;
  DM.TblTicketPreVendaCab.CreateTable ;
  DM.TblTicketPreVendaCab.Open ;

  DM.TblTicketPreVendaItem.Close ;
  try
    DM.TblTicketPreVendaItem.DeleteTable ;
  except
  end ;
  DM.TblTicketPreVendaItem.CreateTable ;
  DM.TblTicketPreVendaItem.Open ;

  DM.TblTicketPreVendaFin.Close ;
  try
    DM.TblTicketPreVendaFin.DeleteTable ;
  except
  end ;
  DM.TblTicketPreVendaFin.CreateTable ;
  DM.TblTicketPreVendaFin.Open ;

  //GRAVAR CABECALHO TICKET
  DM.TblTicketPreVendaCab.Append ;
  DM.TblTicketPreVendaCabUsuarioVendaSTR.Value  := UsuarioAtualNome;
  DM.TblTicketPreVendaCabDataEmissao.AsString   := SQLTemplateCUPODEMIS.AsString;
  DM.TblTicketPreVendaCabTicketNumero.AsString  := SQLTemplateCUPOA13ID.AsString ;
  DM.TblTicketPreVendaCabDisplayNumero.AsString := SQLTemplateDISPICOD.AsString ;
  DM.TblTicketPreVendaCabVendedor.AsString      := SQLTemplateVendedorLookup.Value ;
  DM.TblTicketPreVendaCabPlano.AsString         := SQLTemplatePlanoLookup.Value ;
  DM.TblTicketPreVendaCabCliente.AsString       := SQLTemplateCLIEA13ID.Value + ' ' + SQLTemplateCLIENTENOME.Value;
  DM.TblTicketPreVendaCabClienteDependente.AsString  := SQLTemplateCLDPICOD.AssTring ;

  DM.TblTicketPreVendaCabTotalNominal.Value     := SQLTemplateCUPON2TOTITENS.Value + SQLTemplateCUPON2DESCITENS.Value ;
  DM.TblTicketPreVendaCabTaxaCrediario.Value    := 0 ;
  DM.TblTicketPreVendaCabAcrescimo.AsString     := SQLTemplateCUPON2ACRESC.AsString ;
  DM.TblTicketPreVendaCabDesconto.AsString      := SQLTemplateCUPON2DESC.AsString ;
  DM.TblTicketPreVendaCabTotalGeral.Value       := SQLTemplateCUPON2TOTITENS.Value -
                                                   SQLTemplateCUPON2DESC.Value -
                                                   SQLTemplateCUPON3BONUSTROCA.Value;

  DM.TblTicketPreVendaCabTroco.AsString         := SQLTemplateTROCO.AsString ;
  DM.TblTicketPreVendaCabDisplayNumero.AsString := SQLTemplateDISPICOD.AsString ;
  DM.TblTicketPreVendaCabTipoVenda.Value        := SQLTemplateORIGEMVENDA.AsString ;
  DM.TblTicketPreVendaCabLevarCasa.value        := SQLTemplateCUPOCLEVAR.AsString ;
  DM.TblTicketPreVendaCabMesaCodigo.AsString    := SQLTemplateMESAICOD.AsString ;
  DM.TblTicketPreVendaCabContaCodigo.AsString   := SQLTemplateCONTAICOD.AsString ;

  DM.TblTicketPreVendaCabNomeClienteVenda.AsString      := SQLTemplateCLIENTENOME.AsString ;
  DM.TblTicketPreVendaCabDocumentoClienteVenda.AsString := SQLTemplateCLIENTECNPJ.AsString ;
  DM.TblTicketPreVendaCabEnderecoClienteVenda.AsString  := SQLTemplateCLIENTEENDE.AsString ;
  DM.TblTicketPreVendaCabCidadeClienteVenda.AsString    := SQLTemplateCLIENTECIDA.AsString ;
  DM.TblTicketPreVendaCabFoneClienteVenda.AsString      := SQLTemplateCLIENTEFONE.AsString ;
  DM.TblTicketPreVendaCabOBSImpressaoCupom.AsString     := SQLTemplateCUPOV254OBS.AsString ;
  DM.TblTicketPreVendaCabPlacaVeiculo.AsString          := SQLTemplateCUPOA8PLACAVEIC.AsString ;
  DM.TblTicketPreVendaCabTipoVenda.AsString             := SQLTemplateCUPOCTIPOPADRAO.AsString ;

  DM.TblTicketPreVendaCab.Post ;

  if not SQLCupomItem.Active then
    SQLCupomItem.Open ;

  SQLCupomItem.First;
  while not SQLCupomItem.EOF do
  begin
    if SQLCupomItemCPITCSTATUS.Value = 'A' then
      begin
        DM.TblTicketPreVendaItem.Append ;
        DM.TblTicketPreVendaItemCodigo.Value        := SQLCupomItemPRODICOD.Value ;
        DM.TblTicketPreVendaItemDescricao.Value     := SQLCupomItemPRODA60DESCR.AsString ;
        DM.TblTicketPreVendaItemComplemento.Value   := SQLCupomItemCPITTOBS.Value ;
        DM.TblTicketPreVendaItemImpCozinha.Value    := SQLLocate('PRODUTO', 'PRODICOD', 'PRODCIMPCOZINHA', SQLCupomItemPRODICOD.AsString) ;
        DM.TblTicketPreVendaItemImpVale.Value       := SQLLocate('PRODUTO', 'PRODICOD', 'PRODCIMPVALE', SQLCupomItemPRODICOD.AsString) ;

        if SQLCupomItemCPITN3QTD.Value > 0 then
          begin
            DM.TblTicketPreVendaItemQuantidade.Value := SQLCupomItemCPITN3QTD.Value ;
            DM.TblTicketPreVendaItemTroca.Value      := 'N';
          end;
        if SQLCupomItemCPITN3QTDTROCA.Value > 0 then
          begin
            DM.TblTicketPreVendaItemQuantidade.Value := SQLCupomItemCPITN3QTDTROCA.Value ;
            DM.TblTicketPreVendaItemTroca.Value      := 'S';
          end;

        DM.TblTicketPreVendaItemValorUnitario.Value := SQLCupomItemCPITN3VLRUNIT.Value ;
        DM.TblTicketPreVendaItemValorTotal.Value    := (SQLCupomItemCPITN3VLRUNIT.Value*SQLCupomItemCPITN3QTD.Value)-SQLCupomItemCPITN2DESC.Value;
        DM.TblTicketPreVendaItemDesconto.Value      := SQLCupomItemCPITN2DESC.Value ;
        DM.TblTicketPreVendaItem.Post ;
      end;
    SQLCupomItem.Next;
  end;
  SQLCupomItem.Close;

  // Parcelas a vista
  if not SQLCupomNumerario.Active then SQLCupomNumerario.open;
  SQLCupomNumerario.First ;
  while not SQLCupomNumerario.EOF do
    begin
      DM.TblTicketPreVendaFin.Append;
      DM.TblTicketPreVendaFinPedICod.Value         := SQLTemplateCUPOA13ID.Value;
      DM.TblTicketPreVendaFinValor.AsVariant       := SQLCupomNumerarioCPNMN2VLR.AsVariant;
      DM.TblTicketPreVendaFinNumerario.AsVariant   := SQLCupomNumerarioNumerarioLookup.AsVariant;
      DM.TblTicketPreVendaFinVencimento.Value      := SQLTemplateCUPODEMIS.Value;
      DM.TblTicketPreVendaFin.Post;
      SQLCupomNumerario.Next ;
    end;
  SQLCupomNumerario.Close;
  // Parcelas a Prazo
  if not SQLContasReceber.Active then SQLContasReceber.open;
  SQLContasReceber.First ;
  while not SQLContasReceber.EOF do
    begin
      DM.TblTicketPreVendaFin.Append;
      DM.TblTicketPreVendaFinPedICod.Value         := SQLTemplateCUPOA13ID.Value;
      DM.TblTicketPreVendaFinValor.AsVariant       := SQLContasReceberCTRCN2VLR.AsVariant;
      DM.TblTicketPreVendaFinNumerario.AsVariant   := SQLContasReceberNumerarioLookup.AsVariant;
      DM.TblTicketPreVendaFinVencimento.Value      := SQLContasReceberCTRCDVENC.Value;
      DM.TblTicketPreVendaFin.Post;
      SQLContasReceber.Next ;
    end;
  SQLContasReceber.Close;

  if (DM.SQLTerminalAtivo.FieldByName('TERMCIMPPREVENDA').AsString = 'S') then
    if FileExists('IMPRESSAOPREVENDA.EXE') then
      WinExec(Pchar('IMPRESSAOPREVENDA.EXE'),sw_Show)
    else
      ppReport1.Print;
end;

procedure TFormCadastroCupom.MnEtiquetaAdesivaFabricacaoClick(
  Sender: TObject);
begin
  inherited;
  ppEtiq.Print;
end;

procedure TFormCadastroCupom.ppLinhaBeforePrint(Sender: TObject);
begin
  inherited;
  ppLBEmpresa1.Caption := DM.SQLLocate('EMPRESA', 'EMPRICOD', 'EMPRA60NOMEFANT', SQLTemplateEMPRICOD.AsString);
  pplbtamanho.caption  := RetornaTamanhoProduto(DM.SQLLocate('produto', 'prodicod', 'gradicod', SQLCupomItemPRODICOD.AsString),
                                                DM.SQLLocate('produto', 'prodicod', 'grtmicod', SQLCupomItemPRODICOD.AsString));
end;

procedure TFormCadastroCupom.CupomEletronicoNFCe1Click(Sender: TObject);
begin
  inherited;
  chave := SQLTemplateCHAVEACESSO.AsString;
  PathPastaMensal := FormatDateTime('yyyymm',SQLTemplateCUPODEMIS.Value);

  dm.ACBrNFe.NotasFiscais.Clear;
  dm.ACBrNFe.NotasFiscais.LoadFromFile('c:\easy2solutions\nfce\'+PathPastaMensal+'\'+chave+'-NFe.xml');
  dm.ACBrNFe.NotasFiscais.Imprimir;
  dm.ACBrNFe.NotasFiscais.Clear;
end;

procedure TFormCadastroCupom.MnadmRetransmitirNFCeClick(Sender: TObject);
var nfce_tentativa : integer;
begin
  inherited;
  {$IFDEF ACBrNFeOpenSSL}
    dm.ACBrNFe.Configuracoes.Certificados.ArquivoPFX  := SQLLocate('EMPRESA','EMPRICOD','EMPRA100CERTIFSERIE',SQLTemplateEMPRICOD.AsString);
    dm.ACBrNFe.Configuracoes.Certificados.Certificado := SQLLocate('EMPRESA','EMPRICOD','EMPRA100CERTIFSERIE',SQLTemplateEMPRICOD.AsString);
    dm.ACBrNFe.Configuracoes.Certificados.Senha       := SQLLocate('EMPRESA','EMPRICOD','EMPRA35CERTIFSENHA',SQLTemplateEMPRICOD.AsString);
  {$ELSE}
    dm.ACBrNFe.Configuracoes.Certificados.NumeroSerie := SQLLocate('EMPRESA','EMPRICOD','EMPRA100CERTIFSERIE',SQLTemplateEMPRICOD.AsString);
    dm.ACBrNFe.Configuracoes.Certificados.Senha       := SQLLocate('EMPRESA','EMPRICOD','EMPRA35CERTIFSENHA',SQLTemplateEMPRICOD.AsString);
  {$ENDIF}

  dm.ACBrNFe.Configuracoes.Geral.IdCSC := SQLLocate('EMPRESA','EMPRICOD','idTOKEN',SQLTemplateEMPRICOD.AsString);
  dm.ACBrNFe.Configuracoes.Geral.CSC   := SQLLocate('EMPRESA','EMPRICOD','TOKEN',SQLTemplateEMPRICOD.AsString);

  dm.ACBrNFe.DANFE.ViaConsumidor := True;
  dm.ACBrNFe.DANFE.ImprimirItens := True;


  nfce_tentativa := 0 ;
  if sqltemplatestnfe.Value = '100' then
    begin
      ShowMessage('NFCe ja Autorizado na Sefaz!!!');
      Exit;
    end;
  if (sqltemplatestnfe.Value <> '100') and (SQLTemplateCHAVEACESSO.Value <> '') then
    begin
      while (nfce_tentativa<=5) do
        begin
          nfce_tentativa := nfce_tentativa + 1;
          LabelRegistros.Caption := 'Consultando Retorno Sefaz RS NFCe: '+sqltemplateCUPOINRO.AsString+' - Tentativa N.'+intToStr(nfce_tentativa) ;
          LabelRegistros.Update;
          dm.ACBrNFe.NotasFiscais.Clear;
          dm.ACBrNFe.Consultar(SQLTemplateCHAVEACESSO.Value);
          if (dm.ACBrNFe.WebServices.Consulta.cStat = 217) then
            begin
              LabelRegistros.Caption := 'Enviando ao Sefaz RS NFCe: ' + sqltemplateCUPOINRO.AsString ;
              LabelRegistros.Update ;
              { Cria o arquivo XML }
              sXML := Montar_NFCe(SQLTemplateCUPOA13ID.Value);
              dm.ACBrNFe.NotasFiscais.Assinar;
              dm.ACBrNFe.NotasFiscais.Validar;
              dm.ACBrNFe.Enviar('1', False, False);
              {refaz a consulta}
              dm.ACBrNFe.NotasFiscais.Clear;
              dm.ACBrNFe.Consultar(SQLTemplateCHAVEACESSO.Value);
            end;
          if (dm.ACBrNFe.WebServices.Consulta.cStat = 100) then
            begin
              LabelRegistros.Caption := 'Envio ao Sefaz RS NFCe: '+sqltemplateCUPOINRO.AsString +' Autorizado com sucesso!';
              LabelRegistros.Update;
              SQLImpressaoCupom.Close;
              SQLImpressaoCupom.RequestLive := False;
              SQLImpressaoCupom.SQL.Text := 'Update CUPOM Set STNFE='+IntToStr(dm.ACBrNFe.WebServices.consulta.cStat)+
                                            ', PROTOCOLO='''+dm.ACBrNFe.WebServices.consulta.Protocolo +''''+
                                            ' Where CUPOA13ID ='''+SQLTemplateCUPOA13ID.Value+'''';
              SQLImpressaoCupom.ExecSQL;

              nfce_tentativa := 9;
            end;
        end;
    end;
end;

function TFormCadastroCupom.Montar_NFCe(idCupom : string): string;
var VlrDescNoTotal, VlrTroca, VlrTotalItens, PercDesc : double;
var iCRT : integer;
begin
  VlrTotalItens  := 0;
  VlrDescNoTotal := 0;
  VlrTroca       := 0;
  if SQLTemplateCUPON2TOTITENS.Value > 0 then
    VlrTotalItens := SQLTemplateCUPON2TOTITENS.Value;
  if SQLTemplateCUPON2DESC.Value > 0 then
    VlrDescNoTotal := SQLTemplateCUPON2DESC.Value;
  if SQLTemplateCUPON3BONUSTROCA.Value > 0 then
    VlrTroca := SQLTemplateCUPON3BONUSTROCA.Value;

  dm.ACBrNFe.NotasFiscais.Clear;
  with dm.ACBrNFe.NotasFiscais.Add.NFe do
     begin
       Ide.cNF       := SQLTemplateCUPOINRO.Value;
       Ide.natOp     := 'VENDA CONSUMIDOR';
       Ide.modelo    := 65;
       Ide.serie     := SQLTemplateTERMICOD.Value;
       Ide.nNF       := SQLTemplateCUPOINRO.Value;
       Ide.dEmi      := SQLTemplateCUPODEMIS.Value;
       Ide.dSaiEnt   := SQLTemplateREGISTRO.Value;
       Ide.tpNF      := tnSaida;
       Ide.tpEmis    := teOffLine; // teNormal;
       Ide.cUF       := StrToInt(SQLLocate('EMPRESA','EMPRICOD','EMPRIUFCODFED', SQLTemplateEMPRICOD.AsString));
       Ide.cMunFG    := StrToInt(SQLLocate('EMPRESA','EMPRICOD','EMPRIMUNICODFED', SQLTemplateEMPRICOD.AsString));
       Ide.finNFe    := fnNormal;
       Ide.tpImp     := tiNFCe;
       Ide.indFinal  := cfConsumidorFinal;
       Ide.indPres   := pcPresencial;

       ide.dhCont    := SQLTemplateREGISTRO.Value;
       ide.xJust     := 'Entrada em contingencia por falhas na conexao com o web service.'; 

       Emit.CNPJCPF           := SQLLocate('EMPRESA','EMPRICOD','EMPRA14CGC',SQLTemplateEMPRICOD.AsString);
       Emit.IE                := SQLLocate('EMPRESA','EMPRICOD','EMPRA20IE',SQLTemplateEMPRICOD.AsString);
       Emit.xNome             := SQLLocate('EMPRESA','EMPRICOD','EMPRA60RAZAOSOC',SQLTemplateEMPRICOD.AsString);
       Emit.xFant             := SQLLocate('EMPRESA','EMPRICOD','EMPRA60NOMEFANT',SQLTemplateEMPRICOD.AsString);
       Emit.EnderEmit.fone    := SQLLocate('EMPRESA','EMPRICOD','EMPRA20FONE',SQLTemplateEMPRICOD.AsString);
       Emit.EnderEmit.CEP     := StrToInt(SQLLocate('EMPRESA','EMPRICOD','EMPRA8CEP',SQLTemplateEMPRICOD.AsString));
       Emit.EnderEmit.xLgr    := SQLLocate('EMPRESA','EMPRICOD','EMPRA60END',SQLTemplateEMPRICOD.AsString);
       Emit.EnderEmit.nro     := SQLLocate('EMPRESA','EMPRICOD','EMPRIENDNRO',SQLTemplateEMPRICOD.AsString);
       Emit.EnderEmit.xCpl    := ''; // Complemento
       Emit.EnderEmit.xBairro := SQLLocate('EMPRESA','EMPRICOD','EMPRA60BAI',SQLTemplateEMPRICOD.AsString);
       Emit.EnderEmit.cMun    := StrToInt(SQLLocate('EMPRESA','EMPRICOD','EMPRIMUNICODFED',SQLTemplateEMPRICOD.AsString));
       Emit.EnderEmit.xMun    := SQLLocate('EMPRESA','EMPRICOD','EMPRA60CID',SQLTemplateEMPRICOD.AsString);
       Emit.EnderEmit.UF      := SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF',SQLTemplateEMPRICOD.AsString);
       Emit.enderEmit.cPais   := 1058;
       Emit.enderEmit.xPais   := 'BRASIL';
       Emit.IEST              := '';

       iCRT := StrToInt(SQLLocate('EMPRESA','EMPRICOD','EMPRA3CRT',SQLTemplateEMPRICOD.AsString));
       IF iCRT = 1 Then
         Emit.CRT      := crtSimplesNacional  else
       IF iCRT = 2 Then
         Emit.CRT      := crtSimplesExcessoReceita  else
       IF iCRT = 3 Then
         Emit.CRT      := crtRegimeNormal;

       Dest.CNPJCPF           := sqltemplateCLIENTECNPJ.Value;
       Dest.xNome             := SQLTemplateCLIENTENOME.Value;
       Dest.indIEDest         := inNaoContribuinte; {Pq NFCe nao informa Destinatario}

       SQLCupomItem.Close;
       SQLCupomItem.Open;
       SQLCupomItem.First;

       Total.ICMSTot.vBC   := 0;
       Total.ICMSTot.vICMS := 0;
       While not SQLCupomItem.Eof do
         begin
           {Carrega Produtos temporarios}
           dm.sqlconsulta.close;
           dm.sqlconsulta.sql.Clear;
           dm.sqlconsulta.sql.Text := 'select PRODA30ADESCRREDUZ,PRODA60CODBAR,PRODA60REFER,PRODIORIGEM, PRODISITTRIB, PRODA1TIPO, PRODA1MODBC,PRODA1MODBCST,PRODA1MODBCST,TABCEST from produto where prodicod='+ SQLCupomItemPRODICOD.AsString;
           dm.sqlconsulta.open;

           with Det.Add do
             begin
               Prod.nItem    := SQLCupomItemCPITIPOS.AsInteger;
               Prod.cProd    := SQLCupomItemPRODICOD.AsString;
               if length(dm.sqlConsulta.fieldbyname('PRODA60CODBAR').AsString) > 9 then
                 Prod.cEAN   := dm.sqlConsulta.fieldbyname('PRODA60CODBAR').AsString;
               if length(dm.sqlConsulta.fieldbyname('PRODA60CODBAR').AsString) > 7 then
                 Prod.cEANTrib := dm.sqlConsulta.fieldbyname('PRODA60CODBAR').AsString;
               Prod.xProd    := dm.sqlConsulta.fieldbyname('PRODA30ADESCRREDUZ').AsString;

               Prod.NCM      := SQLLocate('NCM','NCMICOD','NCMA30CODIGO',SQLLocate('PRODUTO','PRODICOD','NCMICOD',SQLCupomItemPRODICOD.AsString));
               Prod.EXTIPI   := '';
               if (dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '60') or (dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '500') then
                 begin
                   Prod.CFOP     := '5405';
                   Prod.CEST := dm.sqlConsulta.fieldbyname('TABCEST').AsString;
                 end
               else
                 Prod.CFOP     := '5102';

               Prod.uCom     := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLCupomItemPRODICOD.AsString));
               Prod.qCom     := SQLCupomItemCPITN3QTD.AsFloat ;
               Prod.vUnCom   := SQLCupomItemCPITN3VLRUNIT.AsFloat;
               Prod.vProd    := SQLCupomItemCPITN3VLRUNIT.AsFloat * SQLCupomItemCPITN3QTD.AsFloat ;

               Prod.uTrib     := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLCupomItemPRODICOD.AsString));
               Prod.qTrib     := SQLCupomItemCPITN3QTD.AsFloat;
               Prod.vUnTrib   := SQLCupomItemCPITN3VLRUNIT.AsFloat;

               Prod.vOutro    := 0;
               Prod.vFrete    := 0;
               Prod.vSeg      := 0;
               Prod.vDesc     := 0;

               if SQLCupomItemCPITN2DESC.AsFloat>0 then
                 Prod.vDesc := SQLCupomItemCPITN2DESC.AsFloat ;

               if (PercDesc>0) then
                 Prod.vDesc := ((Prod.vProd*PercDesc)/100) + SQLCupomItemCPITN2DESC.AsFloat;

               with Imposto do
                 begin
                   // lei da transparencia nos impostos
                   vTotTrib := 0;

                   if dm.sqlConsulta.fieldbyname('PRODIORIGEM').AsString = '0' then
                     ICMS.orig  := oeNacional else
                   if dm.sqlConsulta.fieldbyname('PRODIORIGEM').AsString = '1' then
                     ICMS.orig  := oeEstrangeiraImportacaoDireta else
                   if dm.sqlConsulta.fieldbyname('PRODIORIGEM').AsString = '2' then
                     ICMS.orig  := oeEstrangeiraAdquiridaBrasil;

                   case iCRT of
                      1:begin  // Linhas para o simples nacional
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').AsString = '101' then ICMS.CSOSN :=  csosn101;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '102' then ICMS.CSOSN :=  csosn102;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '103' then ICMS.CSOSN :=  csosn103;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '300' then ICMS.CSOSN :=  csosn300;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '400' then ICMS.CSOSN :=  csosn400;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '201' then ICMS.CSOSN :=  csosn201;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '202' then ICMS.CSOSN :=  csosn202;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '500' then ICMS.CSOSN :=  csosn500;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '900' then ICMS.CSOSN :=  csosn900;

                          case ICMS.CSOSN of
                            csosn101 : begin
                                         ICMS.pCredSN     := 0.0; // Colocar o percentual do Crédito
                                         ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                                       end;
                            csosn102 : begin
                                       end;
                            csosn103 : begin
                                       end;
                            csosn300 : begin
                                       end;
                            csosn400 : begin
                                       end;
                            csosn201 : begin
                                         ICMS.modBCST     := dbisMargemValorAgregado;
                                         ICMS.pMVAST      := 0; // Adilson, verificar melhor
                                         ICMS.pRedBCST    := 0;
                                         ICMS.vBCST       := 0; // Adilson, verificar melhor
                                         ICMS.pICMSST     := 0;
                                         ICMS.vICMSST     := 0; // Adilson, verificar melhor
                                         ICMS.pCredSN     := 0; // Colocar o percentual do Crédito
                                         ICMS.vCredICMSSN := 0; // Colocar o valor do Crédito
                                       end;
                            csosn202 : begin
                                         ICMS.modBCST  := dbisMargemValorAgregado;
                                         ICMS.pMVAST   := 0; // Adilson, verificar melhor
                                         ICMS.pRedBCST := 0;
                                         ICMS.vBCST    := 0; // Adilson, verificar melhor
                                         ICMS.pICMSST  := 0; // Adilson, verificar melhor
                                         ICMS.vICMSST  := 0; // Adilson, verificar melhor
                                       end;
                            csosn500 : begin
                                         ICMS.vBCSTRet   := 0; // Adilson, verificar melhor
                                         ICMS.vICMSSTRet := 0; // Adilson, verificar melhor
                                       end;
                          end; // fim do case icms.csosn
                        end;

                      2:begin
                          //        (...)
                        end;

                      3:begin
                          // Cst ICMS
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring =  '0' then ICMS.CST := cst00;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '10' then ICMS.CST := cst10;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '20' then ICMS.CST := cst20;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '30' then ICMS.CST := cst30;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '40' then ICMS.CST := cst40;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '41' then ICMS.CST := cst41;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '50' then ICMS.CST := cst50;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '51' then ICMS.CST := cst51;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '60' then ICMS.CST := cst60;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '70' then ICMS.CST := cst70;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '80' then ICMS.CST := cst80;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '81' then ICMS.CST := cst81;
                          if dm.sqlConsulta.fieldbyname('PRODISITTRIB').asstring = '90' then ICMS.CST := cst90;

                          // Base Calculo
                          if dm.sqlConsulta.fieldbyname('PRODA1MODBC').AsString = '0' then
                            ICMS.modBC  := dbiMargemValorAgregado else
                          if dm.sqlConsulta.fieldbyname('PRODA1MODBC').AsString = '1' then
                            ICMS.modBC  := dbiPauta else
                          if dm.sqlConsulta.fieldbyname('PRODA1MODBC').AsString = '2' then
                            ICMS.modBC  := dbiPrecoTabelado else
                          if dm.sqlConsulta.fieldbyname('PRODA1MODBC').AsString = '3' then
                            ICMS.modBC  := dbiValorOperacao;

                          ICMS.vBC     := sqlcupomitemCPITN2BASEICMS.AsFloat;
                          ICMS.pICMS   := sqlcupomitemCOITN2ICMSALIQ.AsFloat;
                          ICMS.vICMS   := sqlcupomitemCPITN2VLRICMS.AsFloat;

                          Total.ICMSTot.vBC   := Total.ICMSTot.vBC   + ICMS.vBC;
                          Total.ICMSTot.vICMS := Total.ICMSTot.vICMS + ICMS.vICMS;

                          ICMS.vBCST   := 0;
                          ICMS.pICMSST := 0;
                          ICMS.vICMSST := 0;
                        end;
                   end;
                 end;
               Total.ICMSTot.vProd := Total.ICMSTot.vProd + Prod.vProd ;
               Total.ICMSTot.vDesc := Total.ICMSTot.vDesc + Prod.vDesc ;
             end;
           SQLCupomItem.next;
         end;

      {Totais da NFCe}
      Total.ICMSTot.vBCST   := 0;
      Total.ICMSTot.vST     := 0;
      Total.ICMSTot.vFrete  := 0;
      Total.ICMSTot.vSeg    := 0;
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := 0;
      Total.ICMSTot.vPIS    := 0;
      Total.ICMSTot.vCOFINS := 0;
      Total.ICMSTot.vOutro  := SQLTemplateCUPON2ACRESC.AsFloat;
      Total.ICMSTot.vNF     := Total.ICMSTot.vProd - Total.ICMSTot.vDesc;

      Total.ISSQNtot.vServ   := 0;
      Total.ISSQNTot.vBC     := 0;
      Total.ISSQNTot.vISS    := 0;
      Total.ISSQNTot.vPIS    := 0;
      Total.ISSQNTot.vCOFINS := 0;

      Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE

      //PAGAMENTOS apenas para NFC-e
      with pag.Add do
        begin
           if (sqltemplateCUPOCTIPOPADRAO.AsString = 'VISTA') or
             (sqltemplateCUPOCTIPOPADRAO.AsString = 'DIN') then
            begin
              Ide.indPag := ipVista;
              tPag       := fpDinheiro;
            end;
          if sqltemplateCUPOCTIPOPADRAO.AsString = 'CRT' then
            begin
              Ide.indPag := ipPrazo;
              tPag       := fpCartaoCredito;
            end;
          if (sqltemplateCUPOCTIPOPADRAO.AsString = 'CRTF') or
             (sqltemplateCUPOCTIPOPADRAO.AsString = 'CRD') then
            begin
              Ide.indPag := ipPrazo;
              tPag       := fpCreditoLoja;
            end;
          if (sqltemplateCUPOCTIPOPADRAO.AsString = 'CHQV') or
             (sqltemplateCUPOCTIPOPADRAO.AsString = 'CHQP') then
            begin
              Ide.indPag := ipPrazo;
              tPag       := fpCheque;
            end;
          vPag := Total.ICMSTot.vNF ;
        end;

      InfAdic.infCpl     :=  '';
      InfAdic.infAdFisco :=  '';
      {Dados do Cliente}
      if SQLTemplateCLIENTENOME.AsString <> '' then
        InfAdic.infCpl     := InfAdic.infCpl + SQLTemplateCLIENTENOME.AsString +', ' ;
      if SQLTemplateCLIENTECNPJ.AsString <> '' then
        InfAdic.infCpl     := InfAdic.infCpl + SQLTemplateCLIENTECNPJ.AsString +', ' ;
      if SQLTemplateCLIENTEFONE.AsString <> '' then
        InfAdic.infCpl     := InfAdic.infCpl + SQLTemplateCLIENTEFONE.AsString +', ' ;
      if SQLTemplateCLIENTECIDA.AsString <> '' then
        InfAdic.infCpl     := InfAdic.infCpl + SQLTemplateCLIENTECIDA.AsString +', ' ;
      if SQLTemplateCLIENTEENDE.AsString <> '' then
        InfAdic.infCpl     := InfAdic.infCpl + SQLTemplateCLIENTEENDE.AsString +', ' ;
      if SQLTemplateCLIENTEBAIRRO.AsString <> '' then
        InfAdic.infCpl     := InfAdic.infCpl + SQLTemplateCLIENTEBAIRRO.AsString ;

      // Gerar XML
      dm.ACBrNFe.NotasFiscais.GerarNFe;
   end;
end;

procedure TFormCadastroCupom.CorrigeProblemaCadterm603para661Click(
  Sender: TObject);
var DataCupom, DataCupomItem : String;
var TotalCupom : Double;
var i : integer;
begin
  inherited;

{  dm.SQLUpdate.close;
  dm.SQLUpdate.RequestLive := True ;
  dm.SQLUpdate.sql.Text := 'Select * from cupom where cupoa13id is null' ;
  dm.SQLUpdate.open;

  sqltemplate.First;
  while not sqltemplate.eof do
    begin
      LabelRegistros.Caption := 'Verificando Cupom ID: ' + sqltemplatecupoa13id.Value;
      LabelRegistros.Update;
      TotalCupom := 0;
      DataCupom := FormatDateTime('ddmmyyyy',SQLTemplateCUPODEMIS.Value);

      dm.SQLConsulta.Close;
      dm.SQLConsulta.RequestLive := true;
      dm.SQLConsulta.sql.text := 'select cupoa13id,termicod,registro,CPITN3QTD,CPITN3VLRUNIT,CPITN2DESC from cupomitem where cupoa13id='''+SQLTemplateCUPOA13ID.Value+'''';
      dm.SQLConsulta.Open;
      while not dm.SQLConsulta.eof do
        begin
          DataCupomItem := FormatDateTime('ddmmyyyy',dm.SQLConsulta.fieldbyname('registro').Value);
          if DataCupom <> DataCupomItem then
            begin
              LabelRegistros.Caption := 'Corrigindo Cupom ID: ' + sqltemplatecupoa13id.Value;
              LabelRegistros.Update;
              dm.SQLConsulta.edit;
              dm.SQLConsulta.fieldbyname('cupoa13id').Value := '006066' + copy(dm.SQLConsulta.fieldbyname('cupoa13id').Value,7,7);
              dm.SQLConsulta.fieldbyname('termicod').Value := 66;
              dm.SQLConsulta.post;
              if dm.SQLConsulta.fieldbyname('CPITN3QTD').Value > 0 then
                TotalCupom := TotalCupom + (dm.SQLConsulta.fieldbyname('CPITN3QTD').Value*(dm.SQLConsulta.fieldbyname('CPITN3VLRUNIT').Value-dm.SQLConsulta.fieldbyname('CPITN2DESC').Value)) ;
            end;
          dm.SQLConsulta.next;
        end;
      if TotalCupom > 0 then
        begin
          dm.SQLUpdate.append;
          for i := 0 to SQLTemplate.FieldCount-1 do
            begin
              try dm.SQLUpdate.FieldByName(SQLTemplate.Fields[i].FieldName).AsVariant := SQLTemplate.Fields[i].AsVariant; except Application.ProcessMessages end;
            end;
          dm.SQLUpdate.fieldbyname('termicod').Value := 66;
          dm.SQLUpdate.fieldbyname('CUPODEMIS').AsString   := Copy(DataCupomItem,1,2)+'/'+Copy(DataCupomItem,3,2)+'/'+Copy(DataCupomItem,5,4);
          dm.SQLUpdate.fieldbyname('CUPON2TOTITENS').Value := TotalCupom;
          dm.SQLUpdate.fieldbyname('cupoa13id').Value := '006066' + copy(dm.SQLUpdate.fieldbyname('cupoa13id').Value,7,7);
          dm.SQLUpdate.Post;
        end;
      sqltemplate.next;
      application.ProcessMessages;
    end;
  sqltemplate.First;
  dm.SQLConsulta.RequestLive := false;
  Showmessage('Concluido com sucesso!'); }

  // Corrigindo itens das vendas
  dm.SQLConsulta.Close;
  dm.SQLConsulta.RequestLive := true;
  dm.SQLConsulta.sql.text := 'select cupoa13id from cupomitem where termicod=66';
  dm.SQLConsulta.Open;
  while not dm.SQLConsulta.eof do
    begin
      LabelRegistros.Caption := 'Corrigindo Cupom ID: ' + dm.SQLConsulta.fieldbyname('cupoa13id').Value ;
      LabelRegistros.Update;
      dm.SQLConsulta.edit;
      dm.SQLConsulta.fieldbyname('cupoa13id').Value := '006066' + copy(dm.SQLConsulta.fieldbyname('cupoa13id').Value,7,7);
      dm.SQLConsulta.post;
      dm.SQLConsulta.next;
      application.ProcessMessages;
    end;
  dm.SQLConsulta.RequestLive := false;
  Showmessage('Concluido com sucesso!');
end;

end.

