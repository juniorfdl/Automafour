unit CadastroNotaCompraItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Forms, Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB,
  DBTables, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, JPeg, RxDBComb, DBCtrls, VarSys,
  FormResources, EDBNum, ToolEdit, CurrEdit, RxLookup, Placemnt, MemTable,
  RXDBCtrl, Serial, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroNotaCompraItem = class(TFormCadastroTEMPLATE)
    SQLTemplateNOCPA13ID: TStringField;
    SQLTemplateNOCIIITEM: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateNOCIN3QTDBONIF: TFloatField;
    SQLTemplateNOCIN3CAPEMBAL: TFloatField;
    SQLTemplateNOCIN3QTDEMBAL: TFloatField;
    SQLTemplateNOCIN3VLRDESC: TFloatField;
    SQLTemplateNOCIN3PERCDESC: TFloatField;
    SQLTemplateNOCIN3VLRICMS: TFloatField;
    SQLTemplateNOCIN3PERCICMS: TFloatField;
    SQLTemplateNOCIN3VLRSUBST: TFloatField;
    SQLTemplateNOCIN3VLRIPI: TFloatField;
    SQLTemplateNOCIN3PERCIPI: TFloatField;
    SQLTemplateNOCIN3VLRCUSTOMED: TFloatField;
    SQLTemplateNOCIN3VLRFRETE: TFloatField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    BtnProduto: TSpeedButton;
    Label9: TLabel;
    Label11: TLabel;
    SQLIcms: TRxQuery;
    SQLIcmsUF: TRxQuery;
    SQLTemplateProdutoLookUp: TStringField;
    SQLTemplateGradeCodLookUp: TIntegerField;
    SQLTemplateAgrupGradeLookUp: TIntegerField;
    SQLTemplateTotalItemCalc: TFloatField;
    DBEditQtde: TEvDBNumEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    EvDBNumEdit1: TEvDBNumEdit;
    Label28: TLabel;
    EvDBNumEdit2: TEvDBNumEdit;
    SQLTemplateReferenciaLookUp: TStringField;
    SQLTemplatePDCPA13ID: TStringField;
    SQLTemplatePCITIPOS: TIntegerField;
    SQLTemplateNOCIN3QTDEPED: TFloatField;
    SQLAtualizaItemPedido: TRxQuery;
    SQLTemplateNOCIN3TOTPED: TFloatField;
    SQLProdutoFornecedor: TRxQuery;
    SQLGeral: TRxQuery;
    LabelLote: TLabel;
    DBEditLote: TDBEdit;
    SQLTemplateLOTEA30NRO: TStringField;
    ButtonLote: TSpeedButton;
    SQLTotalQdte: TRxQuery;
    DSSQLTotalQdte: TDataSource;
    SQLOperacaoEstoque: TRxQuery;
    SQLOperacaoEstoqueOPESCORIGEMDESTINO: TStringField;
    SQLTemplateNOCIN2ITENSENVIADOS: TFloatField;
    SQLTemplateNOCIN2VLRCOMISSAO: TFloatField;
    FormStorage1: TFormStorage;
    SQLTemplateCodAntigoLookup: TStringField;
    Label31: TLabel;
    MnNumerosdeSerie: TMenuItem;
    RadioPesquisa: TRadioGroup;
    LabelFornEmpCli: TLabel;
    DBEdit27: TDBEdit;
    Label29: TLabel;
    EvDBNumEdit3: TEvDBNumEdit;
    DBEdit1: TDBEdit;
    SQLProdutoFornecedorPRODICOD: TIntegerField;
    SQLProdutoFornecedorFORNICOD: TIntegerField;
    SQLProdutoFornecedorPRFOA30REFERENCIA: TStringField;
    SQLProdutoFornecedorPENDENTE: TStringField;
    SQLProdutoFornecedorREGISTRO: TDateTimeField;
    SQLTemplateValorVendaAtual: TCurrencyField;
    SQLTemplateMargemLucro: TCurrencyField;
    SQLTemplateValorCustoAtual: TCurrencyField;
    Label24: TLabel;
    SQLTemplateNOCIN2MGVENDA: TFloatField;
    SQLTemplateNOCIN2VLRVENDA: TFloatField;
    SQLTemplateQdteFator: TFloatField;
    SQLTemplateNOCIN2QTDENF: TFloatField;
    Label33: TLabel;
    PercMedioCompra: TCurrencyEdit;
    Label27: TLabel;
    SaldoAtual: TCurrencyEdit;
    LSaldo: TLabel;
    SQLTemplateNOCIN2MGVENDA2: TFloatField;
    SQLTemplateNOCIN2VLRVENDA2: TFloatField;
    SQLTemplateMargemLucro2: TCurrencyField;
    SQLTemplateValorVendaAtual2: TCurrencyField;
    EvDBNumEdit5: TEvDBNumEdit;
    Label5: TLabel;
    Label39: TLabel;
    EvDBNumEdit10: TEvDBNumEdit;
    Label21: TLabel;
    DBEditTotalItem: TEvDBNumEdit;
    SQLTemplateUnidadeLookup: TStringField;
    Label41: TLabel;
    DBEdit21: TDBEdit;
    Label42: TLabel;
    EvDBNumEdit11: TEvDBNumEdit;
    SQLTotalQdteVLRTOTICMS: TFloatField;
    SQLTemplateEncargosCalc: TFloatField;
    SQLTemplateValorCustoMedAtual: TFloatField;
    DBEdit28: TDBEdit;
    SQLTemplateNOCIN2PERCDESP: TFloatField;
    SQLTemplateNOCIN2PERCDIFICM: TFloatField;
    Label8: TLabel;
    EvDBNumEdit4: TEvDBNumEdit;
    SQLTemplateNOCIN2PERCSUBST: TFloatField;
    SQLTemplateNOCICALTPRECO: TStringField;
    EditReferencia: TEdit;
    Label49: TLabel;
    Label50: TLabel;
    EditCdProduto: TEdit;
    SQLTotalQdteTOTALQTDEITEM: TFloatField;
    SQLTotalQdteVALORTOTALNF: TFloatField;
    SQLTotalQdteTOTALQTDEITEMMEDIA: TFloatField;
    VlrMedCompra: TEvDBNumEdit;
    SQLTotalQdteVALORTOTALNFMED: TFloatField;
    Label52: TLabel;
    EvDBNumEdit8: TEvDBNumEdit;
    ComboAltPreco: TRxDBComboBox;
    Label48: TLabel;
    Label51: TLabel;
    DBEdit7: TDBEdit;
    EvDBNumEdit9: TEvDBNumEdit;
    SQLTemplateICMVendaLookUp: TStringField;
    SpeedButton1: TSpeedButton;
    SQLTemplateMargemLucroReal: TFloatField;
    SQLTemplateMargemLucroReal2: TFloatField;
    SQLTemplateNOCIN3PERCFRETE: TFloatField;
    Label60: TLabel;
    DBEdit9: TDBEdit;
    SQLTemplateNCMLookUp: TStringField;
    SQLTemplateCFOPA5CODAUX: TStringField;
    Label6: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    SQLTemplateNOCIN2FATOR199: TFloatField;
    SQLTemplateNOCIN2PCREDSN: TFloatField;
    SQLTemplateNOCIN2PMVAST: TFloatField;
    SQLTemplateNOCIN2PREDBC: TFloatField;
    SQLTemplateNOCIN2PREDBCST: TFloatField;
    SQLTemplateNOCIN2VBC: TFloatField;
    SQLTemplateNOCIN2VBCIPI: TFloatField;
    SQLTemplateNOCIN2VBCST: TFloatField;
    SQLTemplateNOCIN2VBCSTRET: TFloatField;
    SQLTemplateNOCIN2VCREDICMSSN: TFloatField;
    SQLTemplateNOCIN2VICMSSTRET: TFloatField;
    SQLTemplateNOCA3CSTCOFINS: TStringField;
    SQLTemplateNOCIA3CSTICMS: TStringField;
    SQLTemplateNOCA3CSTIPI: TStringField;
    SQLTemplateNOCA3CSTPIS: TStringField;
    SQLTemplateNOCIN2PERCCOFINS: TFloatField;
    SQLTemplateNOCIN2PERCPIS: TFloatField;
    SQLTemplateNOCIN2VLRSEGURO: TFloatField;
    SQLTemplateNOCIN2PERCISS: TFloatField;
    SQLTemplateNOCIN2BASEISS: TFloatField;
    SQLTemplateNOCIN2VLRISS: TFloatField;
    SQLTemplateNOCIN2BASECOFINS: TFloatField;
    SQLTemplateNOCIN2VLRDESPESAS: TFloatField;
    SQLTemplateNOCN4QTDIPI: TFloatField;
    SQLTemplateNOCN4UNDIPI: TFloatField;
    SQLTemplateNOCN4PISQTD: TFloatField;
    SQLTemplateNOCN4PISREAL: TFloatField;
    SQLTemplateNOCN4COFINSQTD: TFloatField;
    SQLTemplateNOCN4COFINSREAL: TFloatField;
    SQLTemplateNOCIN2VLRCOFINS: TFloatField;
    SQLTemplateNOCIN2VLRPIS: TFloatField;
    SQLTemplateNOCIN2BASEPIS: TFloatField;
    SQLCSTConverte: TRxQuery;
    SQLCSTConverteTIPOEMPRESA: TIntegerField;
    SQLCSTConverteCSTSAIDA: TStringField;
    SQLCSTConverteCSTENTRADA: TStringField;
    SQLCFOP: TRxQuery;
    dsSQLCFOP: TDataSource;
    ComboCfop: TDBLookupComboBox;
    SQLCFOPCFOPA5COD: TStringField;
    SQLCFOPCFOPA60DESCR: TStringField;
    SQLCFOPCFOPCVENDA: TStringField;
    SQLCFOPPENDENTE: TStringField;
    SQLCFOPREGISTRO: TDateTimeField;
    SQLCFOPCFOPCDESTVLRNTRIB: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    SQLTemplateNOCIN3VLREMBAL: TFloatField;
    SQLTemplateNOCIN3VLRUNIT: TFloatField;
    Label83: TLabel;
    EvDBNumEdit6: TEvDBNumEdit;
    Label84: TLabel;
    EvDBNumEdit7: TEvDBNumEdit;
    DBEditVlrCompraEmbal: TRxDBCalcEdit;
    SQLUnidade: TRxQuery;
    dsSQLUnidade: TDataSource;
    SQLUnidadeUNIDICOD: TIntegerField;
    SQLUnidadeUNIDA5DESCR: TStringField;
    SQLUnidadePENDENTE: TStringField;
    SQLUnidadeREGISTRO: TDateTimeField;
    SQLUnidadeUNIDA15DESCR: TStringField;
    SQLUnidadeUNIDCFRAC: TStringField;
    SQLUnidadeUNIDN3FATORCONV: TFloatField;
    Label85: TLabel;
    SQLTemplateUNIDICOD: TIntegerField;
    ComboUnidade: TRxDBLookupCombo;
    Label86: TLabel;
    Label44: TLabel;
    EvDBNumEdit12: TEvDBNumEdit;
    SpeedButton2: TSpeedButton;
    SQLTotalQdteBASE_ICMS: TFloatField;
    SQLTotalQdteBASE_ICMSST: TFloatField;
    SQLTotalQdteTOTAL_ICMSST: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Button5: TButton;
    GroupBox1: TGroupBox;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label71: TLabel;
    Label43: TLabel;
    DBEdit14: TEvDBNumEdit;
    DBEdit15: TEvDBNumEdit;
    DBEdit16: TEvDBNumEdit;
    EvDBNumEdit16: TEvDBNumEdit;
    ComboSitTrib: TRxDBComboBox;
    GroupBox2: TGroupBox;
    Label67: TLabel;
    Label68: TLabel;
    Label47: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    edtPercIPI: TEvDBNumEdit;
    edtValorIPI: TEvDBNumEdit;
    cmbCSTIPI: TRxDBComboBox;
    edtBaseIPI: TEvDBNumEdit;
    edtQtdIPI: TEvDBNumEdit;
    edtIPIreal: TEvDBNumEdit;
    TabSheet5: TTabSheet;
    Label69: TLabel;
    Label70: TLabel;
    Label77: TLabel;
    EvDBNumEdit13: TEvDBNumEdit;
    EvDBNumEdit15: TEvDBNumEdit;
    EvDBNumEdit24: TEvDBNumEdit;
    Button8: TButton;
    TabSheet6: TTabSheet;
    Label14: TLabel;
    Label15: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    EvDBNumEdit25: TEvDBNumEdit;
    EvDBNumEdit26: TEvDBNumEdit;
    EvDBNumEdit31: TEvDBNumEdit;
    EvDBNumEdit32: TEvDBNumEdit;
    Button9: TButton;
    TabSheet2: TTabSheet;
    Label23: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label30: TLabel;
    Label2: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    DBEditMGVarejo: TEvDBNumEdit;
    DBEditVLRVarejo: TEvDBNumEdit;
    DBEditMGAtacado: TEvDBNumEdit;
    DBEditVlrAtacado: TEvDBNumEdit;
    Panel4: TPanel;
    Panel6: TPanel;
    DBEdit11: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Panel7: TPanel;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    edtMargemReal: TCurrencyEdit;
    edtMargemReal2: TCurrencyEdit;
    edtSimulaMargem: TCurrencyEdit;
    edtSimulaMargem2: TCurrencyEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label32: TLabel;
    Label40: TLabel;
    Label46: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label10: TLabel;
    edtMVA: TCurrencyEdit;
    Label65: TLabel;
    DBEdit18: TEvDBNumEdit;
    Label64: TLabel;
    DBEdtPercSubstTrib: TEvDBNumEdit;
    Label66: TLabel;
    DBEdit19: TEvDBNumEdit;
    SQLTemplateSaldoAtual: TFloatField;
    Label57: TLabel;
    dbeditfretePerc: TEvDBNumEdit;
    Label72: TLabel;
    dbeditFreteValor: TEvDBNumEdit;
    Label45: TLabel;
    DBEditPercDespesas: TEvDBNumEdit;
    Label74: TLabel;
    dbeditOutrasDesp: TEvDBNumEdit;
    dbeditValorSeguro: TEvDBNumEdit;
    Label73: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplatePRODICODChange(Sender: TField);
    procedure SQLTemplateNOCIN3CAPEMBALChange(Sender: TField);
    procedure SQLTemplateNOCIN3VLRUNITChange(Sender: TField);
    procedure SQLTemplateNOCIN3QTDEMBALChange(Sender: TField);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateAfterDelete(DataSet: TDataSet);
    procedure BtnProdutoClick(Sender: TObject);
    procedure SQLTemplateAfterScroll(DataSet: TDataSet);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure DBEditLoteExit(Sender: TObject);
    procedure ButtonLoteClick(Sender: TObject);
    procedure DBEditLoteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateAfterOpen(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure DBEditTarifaComissaoChane(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RadioPesquisaClick(Sender: TObject);
    procedure SQLTemplateNOCIN2VLRVENDA2Change(Sender: TField);
    procedure DBEditVlrAtacadoExit(Sender: TObject);
    procedure DBEditMGVarejoExit(Sender: TObject);
    procedure DBEditMGAtacadoExit(Sender: TObject);
    procedure DBEditVLRVarejoExit(Sender: TObject);
    procedure DBEditVLRVarejoEnter(Sender: TObject);
    procedure DBEditVlrAtacadoEnter(Sender: TObject);
    procedure EditReferenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCdProdutoEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtSimulaMargemExit(Sender: TObject);
    procedure edtSimulaMargem2Exit(Sender: TObject);
    procedure edtSimulaMargemEnter(Sender: TObject);
    procedure edtSimulaMargem2Enter(Sender: TObject);
    procedure SQLTemplateNOCIN2VLRVENDAChange(Sender: TField);
    procedure EditCdProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateNOCIN3VLRDESCChange(Sender: TField);
    procedure SQLTemplateNOCIN3PERCDESCChange(Sender: TField);
    procedure SQLTemplateNOCIN3VLRICMSChange(Sender: TField);
    procedure SQLTemplateNOCIN3PERCICMSChange(Sender: TField);
    procedure SQLTemplateNOCIN3VLRSUBSTChange(Sender: TField);
    procedure SQLTemplateNOCIN3VLRIPIChange(Sender: TField);
    procedure SQLTemplateNOCIN3VLRFRETEChange(Sender: TField);
    procedure SQLTemplateNOCIN3VLREMBALChange(Sender: TField);
    procedure SQLTemplateNOCIN2PERCDESPChange(Sender: TField);
    procedure SQLTemplateNOCIN2PERCDIFICMChange(Sender: TField);
    procedure SQLTemplateNOCIN2PERCSUBSTChange(Sender: TField);
    procedure SQLTemplateNOCIN3PERCFRETEChange(Sender: TField);
    procedure DBEditMGVarejoEnter(Sender: TObject);
    procedure DBEditMGAtacadoEnter(Sender: TObject);
    procedure DBEditIcmPercExit(Sender: TObject);
    procedure DBEditDesPercExit(Sender: TObject);
    procedure dbeditfretePercExit(Sender: TObject);
    procedure DBEditPercIcmSubstExit(Sender: TObject);
    procedure DBEditPercDespesasExit(Sender: TObject);
    procedure DBEditDifICMExit(Sender: TObject);
    procedure cmbCSTIPIChange(Sender: TObject);
    procedure edtQtdIPIExit(Sender: TObject);
    procedure cmbCSTCofinsChange(Sender: TObject);
    procedure RxDBComboBox9Change(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure SQLTemplateNOCIN2PERCCOFINSChange(Sender: TField);
    procedure SQLTemplateNOCN4COFINSREALChange(Sender: TField);
    procedure SQLTemplateNOCIN2PERCPISChange(Sender: TField);
    procedure edtBaseIPIEnter(Sender: TObject);
    procedure SQLTemplateNOCN4UNDIPIChange(Sender: TField);
    procedure edtPercPisExit(Sender: TObject);
    procedure edtPISQTDExit(Sender: TObject);
    procedure edtPercCofinsExit(Sender: TObject);
    procedure edtCofinsQTDExit(Sender: TObject);
    procedure edtPercIPIExit(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComboUnidadeExit(Sender: TObject);
    procedure DBEditQtdeExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ComboSitTribExit(Sender: TObject);
    procedure SQLTemplateNOCIN2PREDBCChange(Sender: TField);
    procedure DBEdit15Exit(Sender: TObject);
    procedure edtBaseIPIExit(Sender: TObject);
    procedure DBEdit18Enter(Sender: TObject);
    procedure DBEdtPercSubstTribExit(Sender: TObject);
  private
    Ocupado:Boolean;
    NovoTotalItem,
    NovoTotalDesc,
    FreteUnit : Double;
    TotalItem,
    TotalDesc, VlrVendaOld, VlrVenda2Old :Double;
    CodigoPedido : String;
    PosicaoItem  : Integer;
    QtdePed, NovaQtdePed : Double;
    AlterandoValores, IncluindoItem : Boolean;
    vEncargos, vCofins,vPis : Double;
    Procedure AtualizaPedidoCompra(CodigoPedidoCompra:String;PosicaoItemPedido:Integer;QtdePed,NovaQtdePed:Double);
    Procedure CalculaCustoMedio;
    { Private declarations }
  public
    VlrVendaVarejo, VlrVendaAtacado : Double;
    { Public declarations }
  end;

var
  FormCadastroNotaCompraItem: TFormCadastroNotaCompraItem;
  Rec_Pos: TBookmark;
implementation

uses TelaLancamentoGradeNota, DataModulo, CadastroProdutos, UnitLibrary,
  CadastroLote, SearchLibrary, TelaConsultaProdutoGeral, TelaProdutoNumeroSerie,
  TelaPedidoCompraHistoricoComprasVendasProduto, DataModuloTemplate,
  CadastroUnidade;

{$R *.dfm}
Procedure TFormCadastroNotaCompraItem.AtualizaPedidoCompra(CodigoPedidoCompra:String;PosicaoItemPedido:Integer;QtdePed,NovaQtdePed:Double);
Begin
  SQLAtualizaItemPedido.ParamByName('PDCPA13ID').AsString  := CodigoPedidoCompra;
  SQLAtualizaItemPedido.ParamByName('PCITIPOS').AsInteger  := PosicaoItemPedido;
  SQLAtualizaItemPedido.ParamByName('NovaQtdePed').AsFloat := NovaQtdePed;
  SQLAtualizaItemPedido.ParamByName('QtdePed').AsFloat     := QtdePed;
  SQLAtualizaItemPedido.ExecSQL;
End;

procedure TFormCadastroNotaCompraItem.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'NOTACOMPRAITEM';
  SQLCFOP.Open;
  SQLUnidade.Open;

  if not DM.SQLConfigCompra.Active then DM.SQLConfigCompra.Active := true;
  vEncargos := DM.SQLConfigVendaCFVEN2PERCENCARG.Value;
 { vPis      := DM.SQLConfigVendaCFVEN2PERCPIS.Value;
  vCofins   := DM.SQLConfigVendaCFVEN2PERCCOFINS.Value; }
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  If DM.GerandoNotaCompra Then Exit;
  If Ocupado Then Exit;
  DataSet.FieldByName('EncargosCalc').AsVariant := DM.SQLConfigVendaCFVEN2PERCENCARG.Value;
  If (DataSet.FieldByName('PRODICOD').AsVariant <> null) then
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

          DataSet.FieldByName('GradeCodLookup').AsVariant      := DM.SQLTemplate.FindField('GRADICOD').AsVariant;
          DataSet.FieldByName('AgrupGradeLookup').AsVariant    := DM.SQLTemplate.FindField('PRODIAGRUPGRADE').AsVariant;
          DataSet.FieldByName('ReferenciaLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60REFER').AsVariant;
          DataSet.FieldByName('UnidadeLookup').AsVariant       := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLTemplatePRODICOD.AsString));
          DataSet.FieldByName('ICMVendaLookup').AsVariant      := SQLLocate('ICMS','ICMSICOD','ICMSA60DESCR',SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLTemplatePRODICOD.AsString));
          DataSet.FieldByName('CodAntigoLookup').AsVariant     := DM.SQLTemplate.FindField('PRODA15CODANT').AsVariant;
          DataSet.FieldByName('ValorCustoAtual').AsVariant     := DM.SQLTemplate.FindField('PRODN3VLRCUSTO').AsVariant;
          DataSet.FieldByName('ValorCustoMedAtual').AsVariant  := DM.SQLTemplate.FindField('PRODN3VLRCUSTOMED').AsVariant;
          DataSet.FieldByName('MargemLucro').AsVariant         := DM.SQLTemplate.FindField('PRODN3PERCMGLVFIXA').AsVariant;
          DataSet.FieldByName('MargemLucroReal').AsVariant     := DM.SQLTemplate.FindField('PRODN3PERCMARGLUCR').AsVariant;
          DataSet.FieldByName('MargemLucroReal2').AsVariant    := DM.SQLTemplate.FindField('PRODN3PERCMARGLUC2').AsVariant;
          DataSet.FieldByName('ValorVendaAtual').AsVariant     := DM.SQLTemplate.FindField('PRODN3VLRVENDA').AsVariant;
          DataSet.FieldByName('MargemLucro2').AsVariant        := DM.SQLTemplate.FindField('PRODN3PERCMGLAFIXA').AsVariant;
//          DataSet.FieldByName('NOCIN3PERCFRETE').AsVariant     := DM.SQLTemplate.FindField('PRODN2PERCFRETE').AsVariant;
          DataSet.FieldByName('ValorVendaAtual2').AsVariant    := DM.SQLTemplate.FindField('PRODN3VLRVENDA2').AsVariant;
          DataSet.FieldByName('NCMLookup').AsVariant           := dm.SQLLocate('NCM','NCMICOD','NCMA30CODIGO',DM.SQLTemplate.FindField('NCMICOD').AsString);
          //if SQLTemplatePRODCINTEGRATOTALNF.AsString <> 'N' Then
            SQLTemplateTotalItemCalc.asFloat := (SQLTemplateNOCIN3VLREMBAL.AsFloat*SQLTemplateNOCIN3QTDEMBAL.asFloat)-SQLTemplateNOCIN3VLRDESC.AsFloat;

          SQLGeral.Close ;
          SQLGeral.SQL.Clear ;
          SQLGeral.SQL.Add('select PSLDN3QTDE from PRODUTOSALDO') ;
          SQLGeral.SQL.Add('where EMPRICOD = ' + EmpresaPadrao) ;
          SQLGeral.SQL.Add('and   PRODICOD = ' + SQLTemplate.FieldByName('PRODICOD').AsString) ;
          SQLGeral.Open ;
          if not SQLGeral.Eof then
            DataSet.FieldByName('SaldoAtual').AsVariant          := SQLGeral.FieldByName('PSLDN3QTDE').asFloat;
        End
      Else
        Begin
          DataSet.FieldByName('ProdutoLookup').asString        := MensagemLookUp;
          DataSet.FieldByName('GradeCodLookup').AsVariant      := NULL;
          DataSet.FieldByName('AgrupGradeLookup').AsVariant    := NULL;
          DataSet.FieldByName('ReferenciaLookup').AsVariant    := NULL;
          DataSet.FieldByName('UnidadeLookup').AsVariant       := NULL;
          DataSet.FieldByName('CodAntigoLookup').AsVariant     := NULL;
          DataSet.FieldByName('ValorCustoAtual').AsVariant     := NULL;
          DataSet.FieldByName('ValorCustoMedAtual').AsVariant  := NULL;
          DataSet.FieldByName('MargemLucro').AsVariant         := NULL;
          DataSet.FieldByName('MargemLucroReal').AsVariant     := NULL;
          DataSet.FieldByName('MargemLucroReal2').AsVariant    := NULL;
  //        DataSet.FieldByName('NOCIN3PERCFRETE').AsVariant     := NULL;
          DataSet.FieldByName('ValorVendaAtual').AsVariant     := NULL;
          DataSet.FieldByName('MargemLucro2').AsVariant        := NULL;
          DataSet.FieldByName('ValorVendaAtual2').AsVariant    := NULL;
          DataSet.FieldByName('NCMLookup').AsVariant           := NULL;
          DataSet.FieldByName('SaldoAtual').AsVariant          := NULL;
          SQLTemplateTotalItemCalc.asFloat                     := 0;
        End;
    End
  Else
    Begin
      DataSet.FieldByName('ProdutoLookup').AsVariant        := MensagemLookUp;
      DataSet.FieldByName('GradeCodLookup').AsVariant       := NULL;
      DataSet.FieldByName('NCMLookup').AsVariant            := NULL;
      DataSet.FieldByName('AgrupGradeLookup').AsVariant     := NULL;
      DataSet.FieldByName('ReferenciaLookup').AsVariant     := NULL;
      DataSet.FieldByName('UnidadeLookup').AsVariant        := NULL;
      DataSet.FieldByName('CodAntigoLookup').AsVariant      := NULL;
      DataSet.FieldByName('ValorCustoAtual').AsVariant      := NULL;
      DataSet.FieldByName('ValorCustoMedAtual').AsVariant   := NULL;
      DataSet.FieldByName('MargemLucro').AsVariant          := NULL;
      DataSet.FieldByName('MargemLucroReal').AsVariant      := NULL;
      DataSet.FieldByName('MargemLucroReal2').AsVariant     := NULL;
      DataSet.FieldByName('ValorVendaAtual').AsVariant      := NULL;
      DataSet.FieldByName('MargemLucro2').AsVariant         := NULL;
      DataSet.FieldByName('ValorVendaAtual2').AsVariant     := NULL;
      DataSet.FieldByName('SaldoAtual').AsVariant           := NULL;
      SQLTemplateTotalItemCalc.asFloat                      := 0;
    End;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplatePRODICODChange(Sender: TField);
begin
  inherited;
  EditCdProduto.Text := (Sender as TField).AsString;
  If (SQLTemplate.FieldByName('PRODICOD').AsVariant <> null) and (SQLTemplate.State = dsInsert) and (DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[SQLTemplate.FieldByName('PRODICOD').AsString],1)) Then
    Begin
       if DM.SQLConfigCompraCFCOCTESTPRODFORN.Value = 'S' then
         begin
           SQLProdutoFornecedor.Close;
           SQLProdutoFornecedor.MacroByName('PRODICOD').AsString := 'PRODICOD = ' + SQLTemplate.FieldByName('PRODICOD').AsString;
           SQLProdutoFornecedor.MacroByName('FORNICOD').AsString := 'FORNICOD = ' + SQLTemplate.DataSource.DataSet.FindField('FORNICOD').AsString;
           SQLProdutoFornecedor.MacroByName('Referencia').AsString := '0=0';
           SQLProdutoFornecedor.Open;
           if SQLProdutoFornecedor.IsEmpty then
             begin
               ShowMessage('Este Produto não é fornecido por ' + dm.SQLLocate('Fornecedor','Fornicod','FORNA60RAZAOSOC','"'+SQLTemplate.DataSource.DataSet.FindField('FORNICOD').AsString+'"'));
               SQLTemplate.FieldByName('PRODICOD').FocusControl ;
             end ;
         end ;

      If (SQLTemplate.State in DsEditModes) Then
        Begin
          Ocupado:=True;
          //if DM.SQLTemplate.FindField('PRODCSERVICO').AsString = 'S' Then
            //SQLTemplatePRODCINTEGRATOTALNF.AsString := 'N';
          {Se CapEmbal=1, sugere a Unidade que vem do Produto}
          If DM.SQLTemplate.FindField('PRODN3CAPACEMBAL').asFloat=1 Then
            SQLTemplateUNIDICOD.Value := DM.SQLTemplate.FindField('UNIDICOD').value;
          If DM.SQLTemplate.FindField('PRODN3CAPACEMBAL').asFloat<>0 Then
            SQLTemplateNOCIN3CAPEMBAL.asFloat := DM.SQLTemplate.FindField('PRODN3CAPACEMBAL').asFloat;
          If SQLTemplateNOCIN3CAPEMBAL.asFloat = 0 Then
            SQLTemplateNOCIN3CAPEMBAL.asFloat := 1;
          If DM.SQLTemplate.FindField('PRODN3VLRCOMPRA').asFloat <> 0 Then
            SQLTemplateNOCIN3VLRUNIT.asFloat := DM.SQLTemplate.FindField('PRODN3VLRCOMPRA').asFloat;
          If DM.SQLTemplate.FindField('PRODN2PERCDESP').asFloat <> 0 Then
            SQLTemplateNOCIN2PERCDESP.asFloat := DM.SQLTemplate.FindField('PRODN2PERCDESP').asFloat;
          If SQLTemplateNOCIN3VLRUNIT.asFloat <> 0 Then
            SQLTemplateNOCIN3VLREMBAL.asFloat := SQLTemplateNOCIN3VLRUNIT.asFloat*SQLTemplateNOCIN3CAPEMBAL.asFloat;
          If SQLTemplateNOCIN3PERCIPI.asFloat <> 0 Then
            SQLTemplateNOCIN3VLRIPI.asFloat := SQLTemplateTotalItemCalc.asFloat*(SQLTemplateNOCIN3PERCIPI.asFloat / 100);
          If DM.SQLTemplate.FindField('PRODN2PERCSUBST').asFloat <> 0 Then
            SQLTemplateNOCIN2PERCSUBST.AsFloat := DM.SQLTemplate.FindField('PRODN2PERCSUBST').asFloat;

          If DM.SQLTemplate.FindField('PRODN2PERCFRETE').asFloat <> 0 Then
            SQLTemplateNOCIN3PERCFRETE.AsFloat := DM.SQLTemplate.FindField('PRODN2PERCFRETE').asFloat;

          SQLTemplate.FindField('NOCIN2MGVENDA').asFloat := DM.SQLTemplate.FindField('PRODN3PERCMGLVFIXA').asFloat;
          SQLTemplate.FindField('NOCIN2MGVENDA2').asFloat := DM.SQLTemplate.FindField('PRODN3PERCMGLAFIXA').asFloat;

          SQLTemplate.FindField('NOCA3CSTIPI').asString   := DM.SQLTemplate.FindField('PRODA3CSTIPIENTRADA').AsString;
          If DM.SQLTemplate.FindField('PRODN2PERCIPIENTRADA').asFloat <> 0 Then
            SQLTemplateNOCIN3PERCIPI.asFloat := DM.SQLTemplate.FindField('PRODN2PERCIPIENTRADA').asFloat;

          SQLTemplate.FindField('NOCA3CSTPIS').asString      := DM.SQLTemplate.FindField('PRODA3CSTPISENTRADA').AsString;
          SQLTemplate.FindField('NOCA3CSTCOFINS').asString   := DM.SQLTemplate.FindField('PRODA3CSTCOFINSENTRADA').AsString;
         { SQLTemplateNOCIN2BASEPIS.Value                     := SQLTemplateTotalItemCalc.Value;
          SQLTemplateNOCIN2PERCPIS.Value                     := DM.SQLTemplate.FindField('PRODN2ALIQPIS').Value;
          SQLTemplateNOCIN2BASECOFINS.Value                  := SQLTemplateTotalItemCalc.Value;
          SQLTemplateNOCIN2PERCCOFINS.Value                  := DM.SQLTemplate.FindField('PRODN2ALIQCOFINS').Value;
          }

          If DM.SQLTemplate.FindField('PRODN3CAPACEMBAL').Value = 1 Then
            SQLTemplateUNIDICOD.Value := DM.SQLTemplate.FindField('unidicod').value;

          // VERIFICA A CONVERSAO DA CST - Adilson, removi essa rotina pois devo dar entrada como vem na nfe o CSTIcms e trocar apenas o Cfop
          {SQLCSTConverte.Close;
          SQLCSTConverte.MacroByName('MFiltro').AsString := 'TIPOEMPRESA = "'+dm.sqlempresaEMPRA3CRT.Value+'" AND CSTSAIDA = "'+DM.SQLTemplate.FindField('PRODISITTRIB').AsString+'"';
          SQLCSTConverte.Open;
          SQLTemplateNOCA1CSTORIGEM.AsString := DM.SQLTemplate.FindField('PRODIORIGEM').AsString;
          SQLTemplateNOCIA3CSTICMS.AsString  := SQLCSTConverteCSTENTRADA.AsString;
          SQLCSTConverte.Close; }


          If (SQLTemplateNOCIN3PERCICMS.asFloat = 0) and (DM.SQLTemplate.FindField('ICMSICOD').Value<>Null) Then
            Begin
              SQLICMS.ParamByName('ICMSICOD').asInteger := DM.SQLTemplate.FindField('ICMSICOD').asInteger;
              SQLICMS.Open;

              If SQLTemplate.DataSource.DataSet.FindField('EmpresaUFLookUp').asString<>SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString Then
                Begin
                  SQLICMSUF.Close;
                  SQLICMSUF.ParamByName('ICMUA2UF').asString  := SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString;
                  SQLICMSUF.Open;
                  if SQLICMSUF.IsEmpty then
                    ShowMessage('Este estado não consta no cadastro de ICMS por UF !')
                  else
                    begin
                      if SQLICMSUF.FindField('ICMUN2ALIQUOTA').AsString = '' then
                        begin
                          ShowMessage('Este estado não possui alíquota no cadastro de ICMS por UF !');
                        end
                      else
                        begin
                          if SQLTemplateNOCIA3CSTICMS.AsString <> '' then
                            begin
                              if not SQLTemplateNOCIA3CSTICMS.AsInteger in ([30, 40, 41, 50, 60]) then
                                SQLTemplateNOCIN3PERCICMS.asVariant := SQLICMSUF.FindField('ICMUN2ALIQUOTA').asVariant
                              else
                                SQLTemplateNOCIN3PERCICMS.asVariant := 0;
                            end
                          else
                            begin
                              SQLTemplateNOCIA3CSTICMS.AsString   := DM.SQLTemplate.FindField('PRODISITTRIB').AsString; 
                              SQLTemplateNOCIN3PERCICMS.asVariant := 0;
                            end;
                        end;
                    end;
                End
              Else
                SQLTemplateNOCIN3PERCICMS.asVariant := SQLICMS.FindField('ICMSN2ALIQUOTA').asVariant;
              SQLICMS.Close;
              SQLTemplateNOCIN3VLRICMS.asFloat := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCICMS.asFloat / 100);

              // Ajusta Dif.Icms quando o Campo Dif.Icms nao esta preenchido no Cad.Prod
              // e o Fornecedor é de fora do estado
              If SQLTemplate.DataSource.DataSet.FindField('EmpresaUFLookUp').asString<>SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString Then
                If DM.SQLTemplate.FindField('PRODN2PERCDIFICM').asFloat > 0 Then
                  SQLTemplateNOCIN2PERCDIFICM.asFloat := DM.SQLTemplate.FindField('PRODN2PERCDIFICM').asFloat
                Else
                  begin
                    if StrToFloat(SQLLocate('ICMS','ICMSICOD','ICMSN2ALIQUOTA',SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLTemplatePRODICOD.AsString))) > 0 then
                      if StrToFloat(SQLLocate('ICMS','ICMSICOD','ICMSN2ALIQUOTA',SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLTemplatePRODICOD.AsString)))-SQLTemplateNOCIN3PERCICMS.asVariant > 0 then
                        SQLTemplateNOCIN2PERCDIFICM.asFloat := StrToFloat(SQLLocate('ICMS','ICMSICOD','ICMSN2ALIQUOTA',SQLLocate('PRODUTO','PRODICOD','ICMSICOD',SQLTemplatePRODICOD.AsString)))-SQLTemplateNOCIN3PERCICMS.asVariant;
                  end;
            End;

          Ocupado:=False;
        End;
      SQLTemplateNOCIN3PERCICMS.OnChange(SQLTemplateNOCIN3PERCICMS);
      SQLTemplateNOCIN3PERCDESC.OnChange(SQLTemplateNOCIN3PERCDESC);
      SQLTemplateNOCIN3PERCFRETE.OnChange(SQLTemplateNOCIN3PERCFRETE);
      SQLTemplateNOCIN2PERCSUBST.OnChange(SQLTemplateNOCIN2PERCSUBST);
      SQLTemplateNOCIN2PERCDESP.OnChange(SQLTemplateNOCIN2PERCDESP);
      CalculaCustoMedio;

      SaldoAtual.Value := 0 ;
      if not FileExists('NaoMostraSaldoConsultaProduto.Arq') then
        begin
          SQLGeral.Close ;
          SQLGeral.SQL.Clear ;
          SQLGeral.SQL.Add('select PSLDN3QTDE, PSLDN3QTDMIN, PSLDN3QTDMAX from PRODUTOSALDO') ;
          SQLGeral.SQL.Add('where EMPRICOD = ' + EmpresaPadrao) ;
          SQLGeral.SQL.Add('and   PRODICOD = ' + SQLTemplate.FieldByName('PRODICOD').AsString) ;
          SQLGeral.Open ;
          if not SQLGeral.Eof then
            begin
              SaldoAtual.Font.Color := clBlack ;
              SaldoAtual.Value := SQLGeral.FieldByName('PSLDN3QTDE').asFloat;
              if SQLGeral.FieldByName('PSLDN3QTDMIN').Value > 0 then
                if SQLGeral.FieldByName('PSLDN3QTDMIN').Value > SQLGeral.FieldByName('PSLDN3QTDE').Value then
                  SaldoAtual.Font.Color := clRed ;
              if SQLGeral.FieldByName('PSLDN3QTDMAX').Value > 0 then
                if SQLGeral.FieldByName('PSLDN3QTDMAX').Value < SQLGeral.FieldByName('PSLDN3QTDE').Value then
                  SaldoAtual.Font.Color := clBlue ;
            end ;
          SQLGeral.Close ;
        end ;
      {Lancar Grade}  
      If (Not DM.GerandoPedidoCompra) and (Not DM.ImportandoPedidoCompra) then
        if (SQLTemplateGradeCodLookUp.AsString <> '') then
          begin
            DM.IncluindoGrade := True;
            CriaFormulario(TFormTelaLancamentoGradeNota,'FormTelaLancamentoGradeNota',False,False,True,'');
          end;
    End;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3CAPEMBALChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  SQLTemplateNOCIN3VLREMBAL.asFloat := (SQLTemplateNOCIN3VLRUNIT.asFloat  * SQLTemplateNOCIN3CAPEMBAL.asFloat);
  SQLTemplateNOCIN3VLRDESC.asFloat  := (SQLTemplateNOCIN3VLREMBAL.AsFloat * SQLTemplateNOCIN3QTDEMBAL.asFloat) * (SQLTemplateNOCIN3PERCDESC.asFloat / 100);
  SQLTemplateNOCIN3VLRIPI.asFloat   := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCIPI.asFloat / 100);
  SQLTemplateNOCIN3VLRICMS.asFloat  := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCICMS.asFloat / 100);
  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3VLRUNITChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  SQLTemplateNOCIN3VLREMBAL.asFloat := (SQLTemplateNOCIN3VLRUNIT.asFloat  * SQLTemplateNOCIN3CAPEMBAL.asFloat);
  SQLTemplateNOCIN3VLRDESC.asFloat  := (SQLTemplateNOCIN3VLREMBAL.AsFloat * SQLTemplateNOCIN3QTDEMBAL.asFloat) * (SQLTemplateNOCIN3PERCDESC.asFloat / 100);
  SQLTemplateNOCIN3VLRIPI.asFloat   := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCIPI.asFloat / 100);
  SQLTemplateNOCIN3VLRICMS.asFloat  := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCICMS.asFloat  / 100);
  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3QTDEMBALChange(
  Sender: TField);
begin
  inherited;
  if Frac(SQLTemplateNOCIN3QTDEMBAL.asFloat)>0 then
    begin
      if SQLLocate('UNIDADE','UNIDICOD','UNIDCFRAC',SQLLocate('PRODUTO','PRODICOD','UNIDICOD', sqltemplatePRODICOD.AsString)) = 'N' then
        begin
          ShowMessage('Este Produto não permite Compra Fracionada!') ;
          SQLTemplateNOCIN3QTDEMBAL.asFloat := 0;
          DBEditQtde.SetFocus;
          exit ;
        end;
    end ;

  If Ocupado Then Exit;
  Ocupado:=True;
  SQLTemplateNOCIN3VLRUNIT.asFloat    := SQLTemplateNOCIN3VLREMBAL.asFloat / SQLTemplateNOCIN3CAPEMBAL.asFloat;
  SQLTemplateNOCIN3VLRDESC.asFloat    := (SQLTemplateNOCIN3VLREMBAL.AsFloat * SQLTemplateNOCIN3QTDEMBAL.asFloat) * (SQLTemplateNOCIN3PERCDESC.asFloat / 100);
  SQLTemplateNOCIN3VLRIPI.asFloat     := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCIPI.asFloat / 100);
  SQLTemplateNOCIN3VLRICMS.asFloat    := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCICMS.asFloat / 100);
  SQLTemplateNOCIN3VLRFRETE.asFloat   := (SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCFRETE.asFloat / 100));
  SQLTemplateNOCIN3VLRSUBST.asFloat   := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN2PERCSUBST.asFloat / 100);
  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  Ocupado := True;
  DataSet.FindField('NOCPA13ID').Value := DataSet.DataSource.DataSet.FindField('NOCPA13ID').Value;
  EditCdProduto.Text := '';
  If SQLTemplate.DataSource.DataSet.FindField('EmpresaUFLookUp').asString<>SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString Then
    SQLTemplateCFOPA5CODAUX.AsString       := DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODFORAUF',DSMasterTemplate.DataSet.fieldbyName('OPESICOD').AsString)
  Else
    SQLTemplateCFOPA5CODAUX.AsString       := DM.SQLLocate('OPERACAOESTOQUE','OPESICOD','CFOPA5CODDENTROUF',DSMasterTemplate.DataSet.fieldbyName('OPESICOD').AsString);
//  SQLTemplatePRODCINTEGRATOTALNF.AsString:= 'S';
  SQLTemplateNOCIN3CAPEMBAL.asFloat      := 1  ;
  SQLTemplateNOCIN3QTDEMBAL.asFloat      := 1  ;
  SQLTemplateNOCIN3QTDBONIF.asFloat      := 0  ;
  SQLTemplateNOCIN3VLREMBAL.asFloat      := 0  ;
  SQLTemplateNOCIN3VLRUNIT.asFloat       := 0  ;
  SQLTemplateNOCIN3VLRDESC.asFloat       := 0  ;
  SQLTemplateNOCIN3PERCDESC.asFloat      := 0  ;
  SQLTemplateNOCIN3VLRICMS.asFloat       := 0  ;
  SQLTemplateNOCIN3PERCICMS.asFloat      := 0  ;
  SQLTemplateNOCIN3VLRSUBST.asFloat      := 0  ;
  SQLTemplateNOCIN2PERCSUBST.asFloat     := 0  ;
  SQLTemplateNOCIN3VLRIPI.asFloat        := 0  ;
  SQLTemplateNOCIN3PERCIPI.asFloat       := 0  ;
  SQLTemplateNOCIN3VLRCUSTOMED.asFloat   := 0  ;
  SQLTemplateNOCIN3QTDEPED.asFloat       := 0  ;
  SQLTemplateNOCIN3TOTPED.asFloat        := 0  ;
  SQLTemplateNOCIN2ITENSENVIADOS.AsFloat := 0  ;
  SQLTemplateNOCIN2VLRDESPESAS.asFloat   := 0  ;
  SQLTemplateNOCIN2PERCDESP.asFloat      := 0  ;
  SQLTemplateNOCIN2MGVENDA.asFloat       := 0  ;
  SQLTemplateNOCIN2VLRVENDA.asFloat      := 0  ;
  SQLTemplateNOCIN2MGVENDA2.asFloat      := 0  ;
  SQLTemplateNOCIN2VLRVENDA2.asFloat     := 0  ;
  SQLTemplateNOCIN2PMVAST.asFloat        := 0  ;
  SQLTemplateNOCIN2PREDBC.asFloat        := 0  ;
  SQLTemplateNOCIN2PREDBCST.asFloat      := 0  ;
  SQLTemplateNOCIN2VBC.asFloat           := 0  ;
  SQLTemplateNOCIN2VBCIPI.asFloat        := 0  ;
  SQLTemplateNOCIN2VBCST.asFloat         := 0  ;
  SQLTemplateNOCIN2VBCSTRET.asFloat      := 0  ;
  SQLTemplateNOCIN2VCREDICMSSN.asFloat   := 0  ;
  SQLTemplateNOCIN2VICMSSTRET.asFloat    := 0  ;
  SQLTemplateNOCA3CSTCOFINS.asString     := '' ;
  SQLTemplateNOCIA3CSTICMS.asString      := '' ;
  SQLTemplateNOCA3CSTIPI.AsString        := '' ;
  SQLTemplateNOCA3CSTPIS.AsString        := '' ;
  SQLTemplateNOCIN2PERCCOFINS.asFloat    := 0  ;
  SQLTemplateNOCIN2PERCPIS.asFloat       := 0  ;
  SQLTemplateNOCIN3PERCFRETE.AsFloat     := 0  ;
  SQLTemplateNOCIN3VLRFRETE.AsFloat      := 0  ;
  SQLTemplateNOCIN2VLRSEGURO.asFloat     := 0  ;
  SQLTemplateNOCIN2PERCISS.asFloat       := 0  ;
  SQLTemplateNOCIN2BASEISS.asFloat       := 0  ;
  SQLTemplateNOCIN2VLRISS.asFloat        := 0  ;
  SQLTemplateNOCIN2BASECOFINS.asFloat    := 0  ;
  SQLTemplateNOCIN2PERCDIFICM.asFloat    := 0  ;
  SQLTemplateNOCN4QTDIPI.asFloat         := 0  ;
  SQLTemplateNOCN4UNDIPI.asFloat         := 0  ;
  SQLTemplateNOCN4PISQTD.asFloat         := 0  ;
  SQLTemplateNOCN4PISREAL.asFloat        := 0  ;
  SQLTemplateNOCN4COFINSQTD.asFloat      := 0  ;
  SQLTemplateNOCN4COFINSREAL.asFloat     := 0  ;
  SQLTemplateNOCIN2VLRCOFINS.asFloat     := 0  ;
  SQLTemplateNOCIN2VLRPIS.asFloat        := 0  ;
  SQLTemplateNOCIN2BASEPIS.asFloat       := 0  ;
  SQLTemplateNOCICALTPRECO.Value         := 'I';
  EditcdProduto.Clear;
  IncluindoItem := True;
  Ocupado := False;
  PageControl1.ActivePageIndex := 0;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateBeforePost(
  DataSet: TDataSet);
var Next : Integer;
var Cd_Fornec, Fornec_Opt_Simples, xErros : String;
begin
  Rec_Pos := SQLTemplate.GetBookmark;
  xErros := '';
  If (SQLTemplatePRODICOD.AsInteger <= 0) Then
    Begin
      ShowMessage('O produto deve ser informado !');
      SQLTemplatePRODICOD.FocusControl;
      Abort;
    End;

  If (SQLTemplateUNIDICOD.AsInteger <= 0) Then
    Begin
      ShowMessage('A Unidade de Compra deve ser informada!');
      ComboUnidade.SetFocus;
      Abort;
    End;

   If (StrToInt(SQLTemplateCFOPA5CODAUX.Value) > 4999) then
    Begin
      ShowMessage('CFOP do Produto não é de Entrada/Aquisição! Verifique a Regra de Lançamento!');
      ComboCfop.SetFocus;
      Abort;
    End;

  if ((SQLTemplateNOCIA3CSTICMS.Value = '2') or (SQLTemplateNOCIA3CSTICMS.Value = '4') or (SQLTemplateNOCIA3CSTICMS.Value = '6'))  Then
    begin
      ShowMessage('Regra de Validação! CST Inválida!');
      Abort;
    end;

  Fornec_Opt_Simples := SQLLocate('FORNECEDOR','FORNICOD','FORNCSIMPLES',DSMasterTemplate.DataSet.FieldByName('FORNICOD').AsString);

  If (((SQLTemplateCFOPA5CODAUX.Value = '1102') or (SQLTemplateCFOPA5CODAUX.Value = '2102')) and
      ((SQLTemplateNOCIA3CSTICMS.Value = '10') or (SQLTemplateNOCIA3CSTICMS.Value = '60') or (SQLTemplateNOCIA3CSTICMS.Value = '70'))) or
     (((SQLTemplateCFOPA5CODAUX.Value = '1403') or (SQLTemplateCFOPA5CODAUX.Value = '2403')) and
      ((SQLTemplateNOCIA3CSTICMS.Value = '0') or (SQLTemplateNOCIA3CSTICMS.Value = '20') or (SQLTemplateNOCIA3CSTICMS.Value = '40'))) then
    Begin
      ShowMessage('CFOP Inválido para o CST de Icms do Produto! Verifique a Regra de Lançamento!');
      ComboCfop.SetFocus;
      Abort;
    End;

  If (SQLTemplateCFOPA5CODAUX.AsString = '') Then
      xErros := xErros + #13+#10+'Informe CFOP de Entrada !';

  If (SQLTemplateNOCIA3CSTICMS.AsString = '') Then
      xErros := xErros + #13+#10+'Informe CST do ICMS na guia ICMS!';

  If (SQLTemplateNOCA3CSTIPI.AsString = '') Then
      xErros := xErros + #13+#10+'Informe CST do IPI na guia IPI!';

 { If (SQLTemplateNOCA3CSTCOFINS.AsString = '') Then
      xErros := xErros + #13+#10+'Informe CST do COFINS na guia COFINS no Cadastro do Produto Clicando na Lupa ao lado do Campo Ref. Fabrica!';

  If (SQLTemplateNOCA3CSTPIS.AsString = '') Then
      xErros := xErros + #13+#10+'Informe CST do PIS na guia PIS no Cadastro do Produto Clicando na Lupa ao lado do Campo Ref. Fabrica!';
  }

  if (Fornec_Opt_Simples='N') and (SQLTemplateCFOPA5CODAUX.AsString<>'1152') and ((SQLTemplateNOCIA3CSTICMS.AsInteger=0) and (SQLTemplateNOCIN2VBC.Value=0)) then
    xErros := xErros + #13+#10+'Para CST de ICMS com final 0 os valores de Base Calc. ICMS, %ICMS e R$ ICMS devem ser MAIOR QUE ZERO!';

  if (Fornec_Opt_Simples='N') and  (SQLTemplateCFOPA5CODAUX.AsString<>'1152') and (SQLTemplateNOCIA3CSTICMS.AsInteger  in ([30, 40, 41, 50, 60])) then
    IF SQLTemplateNOCIN2VBC.Value > 0 then
      xErros := xErros + #13+#10+'Para CST de ICMS com final 30, 40, 41, 50 ou 60 os valores de Base Calc. ICMS, %Red. e R$ ICMS devem ser zero (0)!';

  If (SQLTemplateNOCIN3VLREMBAL.asFloat = 0) Then
      xErros := xErros + #13+#10+'O valor da Embalagem não pode ser zero!';

  If (SQLTemplateNOCIN3CAPEMBAL.asFloat = 0) Then
      xErros := xErros + #13+#10+'A capacidade de Embalagem não pode ser zero!';

  If (SQLTemplateNOCIN3VLRUNIT.asFloat = 0) Then
      xErros := xErros + #13+#10+'O valor unitário não pode ser zero!';

  If (SQLTemplateNOCIN3QTDEMBAL.asFloat = 0) Then
      xErros := xErros + #13+#10+'A quantidade de embalagens não pode ser zero!';

  // TESTAR NRO LOTE
  if SQLTemplateLOTEA30NRO.AsString <> '' then
    if SQLLocate('LOTE','LOTEA30NRO','LOTEA30NRO','"' + SQLTemplateLOTEA30NRO.AsString + '"') = '' then
        xErros := xErros + #13+#10+'O número de lote informado está incorreto ou não foi cadastrado. Tente novamente !';

  if (DM.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S') and (SQLTemplateLOTEA30NRO.AsString = '') then
    if Application.MessageBox('O número do lote não foi informado, Deseja continuar mesmo assim ?','Advanced Control',MB_YESNO + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONQUESTION + MB_DEFBUTTON1)= iDNo then
      begin
        SQLTemplateLOTEA30NRO.FocusControl;
        Abort;
      end;

  if xErros <> '' Then
    begin
      ShowMessage('Verifique as Inconcistências abaixo:'+xErros);
      Abort;
    end;

  inherited;
  If DataSet.FindField('NOCIN3QTDEMBAL').asFloat > DataSet.FindField('NOCIN3TOTPED').asFloat Then
    DataSet.FindField('NOCIN3QTDEPED').asFloat   := DataSet.FindField('NOCIN3TOTPED').asFloat
  Else
    DataSet.FindField('NOCIN3QTDEPED').asFloat   := DataSet.FindField('NOCIN3QTDEMBAL').asFloat;
  NovoTotalItem := SQLTemplateTotalItemCalc.asFloat;
  NovoTotalDesc := SQLTemplateNOCIN3VLRDESC.asFloat;
  NovaQtdePed   := SQLTemplateNOCIN3QTDEPED.asFloat;
  CodigoPedido  := DataSet.FindField('PDCPA13ID').asString;
  PosicaoItem   := DataSet.FindField('PCITIPOS').asInteger;

  if DM.SQLConfigCompraCFCOCINFDADOSFRETE.AsString = 'S' then
     if SQLTemplateNOCIN2VLRCOMISSAO.IsNull then
        if Application.MessageBox('O campo Valor da Tarifa Comissão não foi preenchido.'+
                                  char(#13)+'Caso o campo permaneça nulo não sera efetuado o cálculo de comissão para o funcionário.'+
                                  char(#13)+'Desja informar o valor da Tarifa?','Advanced Control',MB_YESNO + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONQUESTION + MB_DEFBUTTON1)= iDYES then
           begin
             Abort;
           end;

  // Colocar Cod do Fornecedor x Produto
  if not dm.IncluindoGrade then
    if (SQLTemplate.FieldByName('PRODICOD').AsString = dm.sqllocate('PRODUTO','PRODICOD','PRODIAGRUPGRADE',SQLTemplate.FieldByName('PRODICOD').AsString)) and (SQLTemplate.DataSource.DataSet.FindField('FORNICOD').AsString <> '') and
       (Application.FindComponent('FormCadastroNotaCompraItem') <> nil) then
      begin
        SQLProdutoFornecedor.Close;
        SQLProdutoFornecedor.MacroByName('PRODICOD').AsString := 'PRODICOD = ' + SQLTemplate.FieldByName('PRODICOD').AsString;
        SQLProdutoFornecedor.MacroByName('FORNICOD').AsString := 'FORNICOD = ' + SQLTemplate.DataSource.DataSet.FindField('FORNICOD').AsString;
        SQLProdutoFornecedor.MacroByName('Referencia').AsString := '0=0';
        SQLProdutoFornecedor.Open;
        if SQLProdutoFornecedor.IsEmpty then
          begin
            try
              Cd_Fornec:= Inputbox('Digite o Codigo no Fornecedor...','Codigo','');
              SQLProdutoFornecedor.Append;
              SQLProdutoFornecedorPRODICOD.AsString := SQLTemplate.FieldByName('PRODICOD').AsString;
              SQLProdutoFornecedorFORNICOD.AsString := DSMasterTemplate.DataSet.FieldByName('FORNICOD').AsString;
              SQLProdutoFornecedorPRFOA30REFERENCIA.AsString := Cd_Fornec;
              SQLProdutoFornecedor.Post;
            except
              Application.ProcessMessages;
            end;
          end;
      end;
  SQLTemplate.MacroByName('MFiltro').asString := '0 = 0';
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateAfterPost(
  DataSet: TDataSet);
  var Form: Tobject;
begin
  inherited;
  DM.InserindoItemNC := True;
  SQLTemplate.DataSource.DataSet.Edit;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := False;
  SQLTemplate.DataSource.DataSet.FindField('NOCPN3SOMAITENS').asFloat :=
  (SQLTemplate.DataSource.DataSet.FindField('NOCPN3SOMAITENS').asFloat - TotalItem) + NovoTotalItem;
  {SQLTemplate.DataSource.DataSet.FindField('NOCPN3TOTDESC').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOCPN3TOTDESC').asFloat - TotalDesc) + NovoTotalDesc; }
  SQLTemplate.DataSource.DataSet.Post;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := True;
  if (CodigoPedido<>'') and (NovaQtdePed <> QtdePed) then
    AtualizaPedidoCompra(CodigoPedido,PosicaoItem,QtdePed,NovaQtdePed);

  SQLTotalQdte.Close;
  SQLTotalQdte.MacroByName('NotaCompra').AsString := 'NOCPA13ID = "' + DSMasterTemplate.DataSet.FieldByName('NOCPA13ID').AsString + '"';
  SQLTotalQdte.Open;
  if VlrMedCompra.Value > 0 then
    PercMedioCompra.Value := ((2 / VlrMedCompra.Value) -1 ) * 100;

  DM.InserindoItemNC:=False;


  if (Application.FindComponent('FormTelaImportacaoPedidoCompra') <> nil) then
      SQLTemplate.Append
  else
    if (Application.FindComponent('FormCadastroNotaCompraItem') <> nil) then
      if IncluindoItem and not DM.IncluindoGrade then
       if Pergunta('SIM','Deseja Incluir outro Item?') then
         SQLtemplate.Append
       else
         Close;
  SQLTemplate.GotoBookmark(Rec_pos);
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  TotalItem := SQLTemplateTotalItemCalc.asFloat;
  TotalDesc := SQLTemplateNOCIN3VLRDESC.asFloat;
  QtdePed   := SQLTemplateNOCIN3QTDEPED.asFloat;
  IncluindoItem := False;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  TotalItem := 0;
  TotalDesc := 0;
  QtdePed   := 0;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  TotalItem    := SQLTemplateTotalItemCalc.asFloat;
  TotalDesc    := SQLTemplateNOCIN3VLRDESC.asFloat;
  QtdePed      := SQLTemplateNOCIN3QTDEPED.asFloat;
  CodigoPedido := DataSet.FindField('PDCPA13ID').asString;
  PosicaoItem  := DataSet.FindField('PCITIPOS').asInteger;
  inherited;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  DM.InserindoItemNC:=True;
  SQLTemplate.DataSource.DataSet.Edit;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := False;
  SQLTemplate.DataSource.DataSet.FindField('NOCPN3SOMAITENS').asFloat :=
  (SQLTemplate.DataSource.DataSet.FindField('NOCPN3SOMAITENS').asFloat - TotalItem);
 { SQLTemplate.DataSource.DataSet.FindField('NOCPN3TOTDESC').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('NOCPN3TOTDESC').asFloat - TotalDesc);}
  SQLTemplate.DataSource.DataSet.Post;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := True;
  If (CodigoPedido<>'') Then
    AtualizaPedidoCompra(CodigoPedido,PosicaoItem,QtdePed,0);
  SQLTotalQdte.Close;
  SQLTotalQdte.MacroByName('NotaCompra').AsString := 'NOCPA13ID = "' + DSMasterTemplate.DataSet.FieldByName('NOCPA13ID').AsString + '"';
  SQLTotalQdte.Open;
  try
    PercMedioCompra.Value := ((2 / VlrMedCompra.Value) -1 ) * 100;
  except
    Application.ProcessMessages;
  end;
  DM.InserindoItemNC:=False;
end;

procedure TFormCadastroNotaCompraItem.BtnProdutoClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,False,'');
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  SaldoAtual.Font.Color := clBlack ;
  SaldoAtual.Value      := 0 ;
end;

procedure TFormCadastroNotaCompraItem.DSTemplateStateChange(
  Sender: TObject);
begin
  inherited;
  Ocupado := True;
  If (Sender as TDataSource).State = dsBrowse Then
    Begin
      SaldoAtual.Enabled := False;
    End
  Else
    Begin
      SaldoAtual.Enabled := True;
    End;
  if DSMasterTemplate.DataSet.FieldByName('NOCPCSTATUS').AsString <> 'A' then
    DesabilitarBotoes(True,True,True,True,True);
  Ocupado := False;
end;

procedure TFormCadastroNotaCompraItem.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat > 0) and (SQLTemplate.FieldByName('NOCIN3VLRCUSTOMED').asFloat > 0) then
    edtMargemReal.Value := ((SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat/SQLTemplate.FieldByName('NOCIN3VLRCUSTOMED').asFloat)-1) * 100;
  LabelLote.Visible  := Dm.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S';
  DBEditLote.Visible := Dm.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S';
  ButtonLote.Visible := Dm.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S';

  if SQLOperacaoEstoqueOPESCORIGEMDESTINO.AsString = 'F' then
    Begin
      LabelFornEmpCli.Caption            := 'Fornecedor';
      LabelFornEmpCli.Update;
    End;
  if SQLOperacaoEstoqueOPESCORIGEMDESTINO.AsString = 'E' then
    Begin
      LabelFornEmpCli.Caption            := 'Empresa';
      LabelFornEmpCli.Update;
    End;
  if SQLOperacaoEstoqueOPESCORIGEMDESTINO.AsString = 'C' then
    Begin
      LabelFornEmpCli.Caption            := 'Cliente';
      LabelFornEmpCli.Update;
    End;
end;

procedure TFormCadastroNotaCompraItem.DBEditLoteExit(Sender: TObject);
begin
  inherited;
  if SQLTemplateLOTEA30NRO.AsString <> '' then
    if SQLLocate('LOTE','LOTEA30NRO','LOTEA30NRO','"' + SQLTemplateLOTEA30NRO.AsString + '"') = '' then
      begin
        Informa('O número de lote informado está incorreto ou não foi cadastrado. Tente novamente !');
        (Sender as TDBEdit).SetFocus;
      end;
  if SQLTemplate.FieldByName('PRODICOD').AsVariant <> Null then
    DBEditQtde.SetFocus;
end;

procedure TFormCadastroNotaCompraItem.ButtonLoteClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('LOTEA30NRO');
  FieldOrigem := 'LOTEA30NRO';
  CriaFormulario(TFormCadastroLote,'FormCadastroLote',False,True,True,'');
end;

procedure TFormCadastroNotaCompraItem.DBEditLoteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F2) and (Dm.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S') then
    ButtonLote.Click;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  if SQLTotalQdte.Active then SQLTotalQdte.Close;
  SQLTotalQdte.MacroByName('NotaCompra').AsString := 'NOCPA13ID = "' + DSMasterTemplate.DataSet.FieldByName('NOCPA13ID').AsString + '"';
  SQLTotalQdte.Open;
  if VlrMedCompra.Value > 0 then
    PercMedioCompra.Value := ((2 / VlrMedCompra.Value) -1 ) * 100;
end;

procedure TFormCadastroNotaCompraItem.FormActivate(Sender: TObject);
begin
  inherited;
   if not SQLOperacaoEstoque.Active then SQLOperacaoEstoque.Open;
   RadioPesquisa.TabStop := False;
end;

procedure TFormCadastroNotaCompraItem.DBEditTarifaComissaoChane(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in DSEditModes then
    begin
      if (SQLTemplate.DataSource.DataSet.FieldByName('NOCPN3VLRFRETE').AsFloat > 0) and
         (SQLTemplate.FindField('NOCIN3QTDEMBAL').asFloat > 0) and
         (SQLTemplate.FindField('TotalItemCalc').asFloat > 0) and
         (SQLTemplate.FindField('TotalItemCalc').asFloat > 0) and
         (SQLTemplate.DataSource.DataSet.FieldByName('NOCPN3TOTITENS').AsFloat > 0) then
        begin
          // Calculo oficial até 06112006
          //    FreteUnit :=  ((SQLTemplate.FindField('TotalItemCalc').asFloat / SQLTemplate.DataSource.DataSet.FieldByName('NOCPN3TOTITENS').AsFloat) *
          //                    SQLTemplate.DataSource.DataSet.FieldByName('NOCPN3VLRFRETE').AsFloat) / SQLTemplate.FindField('NOCIN3QTDEMBAL').asFloat;
          FreteUnit := SQLTemplate.DataSource.DataSet.FieldByName('NOCPN3VLRTOTNOTA').AsFloat/
                       (SQLTemplate.DataSource.DataSet.FieldByName('NOCPN3VLRTOTNOTA').AsFloat -
                        SQLTemplate.DataSource.DataSet.FieldByName('NOCPN3VLRFRETE').AsFloat);
          FreteUnit := (FreteUnit - 1) * 100;
          SQLTemplate.FindField('NOCIN3VLRFRETE').asFloat := SQLTemplate.FindField('NOCIN3VLREMBAL').asFloat *
                                                             (FreteUnit/100);
        end
      else
        FreteUnit := 0;

    end;
end;

procedure TFormCadastroNotaCompraItem.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (((Sender as TForm).ActiveControl <> EditCdProduto) and (RadioPesquisa.ItemIndex <> 0))
     or ((Application.FindComponent('FormTelaConsultaProduto') = nil)
         and ( Application.FindComponent('FormTelaLancamentoGradeNota') = nil)) then
  inherited;
end;

procedure TFormCadastroNotaCompraItem.RadioPesquisaClick(Sender: TObject);
begin
  inherited;
  EditCdProduto.SetFocus;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN2VLRVENDA2Change(
  Sender: TField);
begin
  inherited;
  Ocupado := True;
  If AlterandoValores Then Exit;
  AlterandoValores := True;
  if (SQLTemplate.FindField('NOCIN2VLRVENDA2').asFloat > 0) and (SQLTemplate.FieldByName('NOCIN3VLRCUSTOMED').asFloat > 0) then
    SQLTemplate.FindField('NOCIN2MGVENDA2').asFloat := ((SQLTemplate.FindField('NOCIN2VLRVENDA2').asFloat / SQLTemplate.FieldByName('NOCIN3VLRCUSTOMED').asFloat) - 1) * 100;
  AlterandoValores := False;
  Ocupado := False;
end;

procedure TFormCadastroNotaCompraItem.DBEditMGVarejoExit(Sender: TObject);
begin
  inherited;
  if (SQLTemplate.FindField('NOCIN3VLRCUSTOMED').asFloat > 0) and (SQLTemplate.FindField('NOCIN2MGVENDA').asFloat > 0) then
    begin
      SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat := SQLTemplateNOCIN3VLRCUSTOMED.asFloat ;
      SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat := SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat *
                                                         (1+((SQLTemplateNOCIN2MGVENDA.asFloat/100)));
    end;
end;

procedure TFormCadastroNotaCompraItem.DBEditMGAtacadoExit(Sender: TObject);
begin
  inherited;
  if (SQLTemplate.FindField('NOCIN3VLRCUSTOMED').asFloat > 0) and (SQLTemplate.FindField('NOCIN2MGVENDA2').asFloat > 0) then
    begin
      SQLTemplate.FindField('NOCIN2VLRVENDA2').asFloat := SQLTemplateNOCIN3VLRCUSTOMED.asFloat ;
      SQLTemplate.FindField('NOCIN2VLRVENDA2').asFloat := SQLTemplate.FindField('NOCIN2VLRVENDA2').asFloat *
                                                         (1+((SQLTemplateNOCIN2MGVENDA.asFloat/100)));
    end;
end;

procedure TFormCadastroNotaCompraItem.DBEditVLRVarejoEnter(
  Sender: TObject);
begin
  inherited;
  VlrVendaOld := SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat;
end;

procedure TFormCadastroNotaCompraItem.DBEditVLRVarejoExit(Sender: TObject);
begin
  inherited;
  if (VlrVendaOld <> SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat) and (SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat > 0) and (SQLTemplate.FieldByName('NOCIN3VLRCUSTOMED').asFloat > 0) then
    begin
      try
        edtMargemReal.Value := ((SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat / SQLTemplate.FieldByName('NOCIN3VLRCUSTOMED').asFloat) - 1) * 100;
      except
        Application.ProcessMessages;
      end;
    end;
  SQLTemplateNOCIN2QTDENF.Value   := SQLTemplateNOCIN3QTDEMBAL.Value;
end;

procedure TFormCadastroNotaCompraItem.DBEditVlrAtacadoEnter(
  Sender: TObject);
begin
  inherited;
  VlrVenda2Old := SQLTemplate.FindField('NOCIN2VLRVENDA2').asFloat;
end;

procedure TFormCadastroNotaCompraItem.DBEditVlrAtacadoExit(
  Sender: TObject);
begin
  inherited;
  if (VlrVenda2Old <> SQLTemplate.FindField('NOCIN2VLRVENDA2').asFloat) and (SQLTemplate.FindField('NOCIN2VLRVENDA2').asFloat > 0) and (SQLTemplate.FieldByName('NOCIN3VLRCUSTOMED').asFloat > 0) then
    begin
      try
        SQLTemplate.FindField('NOCIN2MGVENDA2').asFloat := ((SQLTemplate.FindField('NOCIN2VLRVENDA2').asFloat / SQLTemplate.FieldByName('NOCIN3VLRCUSTOMED').asFloat) - 1) * 100;
      except
        Application.ProcessMessages;
      end;
    end;

  if DSTemplate.State = dsInsert then
    begin
      try
        SQLtemplate.Post;
      except
        Application.ProcessMessages;
      end;
    end;
end;

procedure TFormCadastroNotaCompraItem.EditReferenciaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  ProdutoDescricao  := '';
  ProdutoReferencia := '';
  if Key = VK_F2 then
    BtnProduto.Click;
  if Key = VK_F3 then
    begin
      FieldLookup := SQLTemplate.FieldByName('PRODICOD');
      FieldOrigem := 'PRODICOD';
      CriaFormulario(TFormTelaConsultaProdutoGeral,'FormTelaConsultaProdutoGeral',False,True,True,'');
    end;
  if Key = VK_RETURN then
    begin
      if (SQLTemplate.State in DSEditModes) then
        begin
          ProdutoDescricao  := EditCdProduto.Text;
          ProdutoReferencia := EditReferencia.Text;
          DM.ProcurandoProduto := True;
          TabSheetDadosPrincipais.SetFocus; // Foco colocado para pular para o Campo Qtde Comprado
          case RadioPesquisa.ItemIndex of
            0 : try
                  if FindProduct(EditCdProduto,SQLTemplate.FieldByName('PRODICOD')) then
                    begin
                      // Testa se o Produto ja foi incluido e da Alerta
                      SQLGeral.Close ;
                      SQLGeral.SQL.Clear ;
                      SQLGeral.SQL.Add('Select PRODICOD from NOTACOMPRAITEM') ;
                      SQLGeral.SQL.Add('where NOCPA13ID = "' + SQLTemplateNOCPA13ID.AsString+'"') ;
                      SQLGeral.SQL.Add('and   PRODICOD = ' + SQLTemplatePRODICOD.AsString) ;
                      SQLGeral.Open ;
                      if not SQLGeral.IsEmpty then
                        ShowMessage('Este produto ja foi incluido nessa nota fiscal!');
                      SQLGeral.Close;
                    end;
                except
                  Application.ProcessMessages;
                end;
            1 : begin
                  SQLProdutoFornecedor.Close;
                  SQLProdutoFornecedor.MacroByName('PRODICOD').AsString := '0=0';
                  SQLProdutoFornecedor.MacroByName('FORNICOD').AsString := 'FORNICOD = ' + SQLTemplate.DataSource.DataSet.FindField('FORNICOD').AsString;
                  SQLProdutoFornecedor.MacroByName('Referencia').AsString := 'PRFOA30REFERENCIA = '+'"'+EditCDProduto.Text+'"';
                  SQLProdutoFornecedor.Open;
                  if not SQLProdutoFornecedor.IsEmpty then
                    begin
                      SQLTemplate.FieldByName('PRODICOD').AsInteger := SQLProdutoFornecedor.FieldByName('PRODICOD').asInteger;
                      // Testa se o Produto esta Ativo
                      SQLGeral.Close ;
                      SQLGeral.SQL.Clear ;
                      SQLGeral.SQL.Add('Select PRODICOD, PRODCATIVO from PRODUTO') ;
                      SQLGeral.SQL.Add('where PRODICOD = ' + SQLProdutoFornecedor.FieldByName('PRODICOD').AsString) ;
                      SQLGeral.SQL.Add('and PRODCATIVO = "S"') ;
                      SQLGeral.Open ;
                      if SQLGeral.IsEmpty then
                        begin
                          SQLTemplate.FieldByName('PRODICOD').AsString := '';
                          EditCdProduto.SetFocus;
                        end
                      else
                        begin
                          // Testa se o Produto ja foi incluido
                          SQLGeral.Close ;
                          SQLGeral.SQL.Clear ;
                          SQLGeral.SQL.Add('Select PRODICOD from NOTACOMPRAITEM') ;
                          SQLGeral.SQL.Add('where NOCPA13ID = "' + SQLTemplateNOCPA13ID.AsString+'"') ;
                          SQLGeral.SQL.Add('and   PRODICOD = ' + SQLTemplatePRODICOD.AsString) ;
                          SQLGeral.Open ;
                          if not SQLGeral.IsEmpty then
                            ShowMessage('Este produto ja foi incluido nessa nota fiscal!');
                          SQLGeral.Close;
                        end;
                    end;
                end;
          end;
          DM.ProcurandoProduto := True;
        end;
    end;
end;

procedure TFormCadastroNotaCompraItem.EditCdProdutoEnter(Sender: TObject);
begin
  inherited;
  EditCdProduto.SelectAll;
end;

procedure TFormCadastroNotaCompraItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
var   xErros: String;
begin
    xErros := '';
      if StrToFloat(FormatFloat('0.00',SQLTotalQdteVALORTOTALNF.AsFloat)) <> StrToFloat(FormatFloat('0.00', DSMasterTemplate.DataSet.FieldByName('NOCPN3TOTITENS').AsFloat-DSMasterTemplate.DataSet.FieldByName('NOCPN3TOTDESC').asFloat)) then
        xerros := xErros + #13+#10+'O sistema encontrou diferença!' + chr(13)+
                  'Total Dos Itens digitados ('+ FormatFloat('0.00',SQLTotalQdteVALORTOTALNF.AsFloat)+') <> Total Produtos Nota Fiscal ('+FormatFloat('0.00', DSMasterTemplate.DataSet.FieldByName('NOCPN3TOTITENS').AsFloat-DSMasterTemplate.DataSet.FieldByName('NOCPN3TOTDESC').asFloat)+')';

      // verifica os totais de icms
      if StrToFloat(FormatFloat('0.00',SQLTotalQdteVLRTOTICMS.AsFloat)) <> StrToFloat(FormatFloat('0.00', DSMasterTemplate.DataSet.FieldByName('NOCPN3VLRICMS').AsFloat)) then
        xerros := xErros + #13+#10+ 'O sistema encontrou diferença!' + chr(13)+
                  'Valor do ICMS ('+FormatFloat('#,##0.00',DSMasterTemplate.DataSet.FieldByName('NOCPN3VLRICMS').AsFloat)+') <> Total Calculado nos Itens Digitados ('+FormatFloat('#,##0.00',SQLTotalQdteVLRTOTICMS.AsFloat)+')' ;

      if StrToFloat(FormatFloat('0.00',SQLTotalQdteBASE_ICMS.AsFloat)) <> StrToFloat(FormatFloat('0.00', DSMasterTemplate.DataSet.FieldByName('NOCPN3VLRBASCALICM').AsFloat)) then
        xerros := xErros + #13+#10+'O sistema encontrou diferença!' + chr(13)+
                'Valor da Base de Cálculo do ICMS ('+FormatFloat('#,##0.00',DSMasterTemplate.DataSet.FieldByName('NOCPN3VLRBASCALICM').AsFloat)+') <> Total Base Calculado nos Itens Digitados ('+FormatFloat('#,##0.00',SQLTotalQdteBASE_ICMS.AsFloat)+')';

      if StrToFloat(FormatFloat('0.00',SQLTotalQdteBASE_ICMSST.AsFloat)) <> StrToFloat(FormatFloat('0.00', DSMasterTemplate.DataSet.FieldByName('NOCPN3VLRBCICMSSUB').AsFloat)) then
        xerros := xErros + #13+#10+'O sistema encontrou diferença!' + chr(13)+
                'Valor da Base de Cálculo do ICMS ST ('+FormatFloat('#,##0.00',DSMasterTemplate.DataSet.FieldByName('NOCPN3VLRBCICMSSUB').AsFloat)+') <> Total Base Calculado nos Itens Digitados ('+FormatFloat('#,##0.00',SQLTotalQdteBASE_ICMSST.AsFloat)+')';

      if StrToFloat(FormatFloat('0.00',SQLTotalQdteTOTAL_ICMSST.AsFloat)) <> StrToFloat(FormatFloat('0.00', DSMasterTemplate.DataSet.FieldByName('NOCPN3VLRICMSSUB').AsFloat)) then
        xerros := xErros + #13+#10+'O sistema encontrou diferença!' + chr(13)+
                'Valor do Cálculo do ICMS ST ('+FormatFloat('#,##0.00',DSMasterTemplate.DataSet.FieldByName('NOCPN3VLRICMSSUB').AsFloat)+') <> Total Base Calculado nos Itens Digitados ('+FormatFloat('#,##0.00',SQLTotalQdteTOTAL_ICMSST.AsFloat)+')';

     if xErros <> '' Then
     begin
        if NOT Pergunta('NAO',xErros + #13+#10+#13+#10+ 'Sair Mesmo Assim?') then
        Begin
          Abort;
          exit;
        End;
     end;
     inherited;
end;

procedure TFormCadastroNotaCompraItem.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormTelaPedidoCompraHistoricoComprasVendasProduto,FormTelaPedidoCompraHistoricoComprasVendasProduto);
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLNotasCompra.Close;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLNotasCompra.MacroByName('MProduto').Value := 'NotaCompraItem.PRODICOD = '+SQLTemplatePRODICOD.AsString;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLNotasCompra.Open;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLVendas.Close;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLVendas.MacroByName('MProduto').Value  := 'CUPOMITEM.PRODICOD = '+SQLTemplatePRODICOD.AsString;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLVendas.MacroByName('MProduto1').Value := 'NOTAFISCALITEM.PRODICOD = '+SQLTemplatePRODICOD.AsString;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLVendas.Open;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.LBProduto.Caption := 'Produto => '+SQLTemplateProdutoLookUp.Value;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.ShowModal;
end;

procedure TFormCadastroNotaCompraItem.edtSimulaMargemExit(Sender: TObject);
begin
  inherited;
  if edtSimulaMargem.Value > 0 then
  begin
    SQLTemplateNOCIN2VLRVENDA.value := SQLTemplateNOCIN3VLRCUSTOMED.Value + (SQLTemplateNOCIN3VLRCUSTOMED.Value * (edtSimulaMargem.value / 100));
    DBEditVLRVarejoExit(DBEditVLRVarejo);
  end;
end;

procedure TFormCadastroNotaCompraItem.edtSimulaMargem2Exit(
  Sender: TObject);
begin
  inherited;
  if edtSimulaMargem2.Value > 0 then
  begin
    SQLTemplateNOCIN2VLRVENDA2.value := SQLTemplateNOCIN3VLRCUSTOMED.Value + (SQLTemplateNOCIN3VLRCUSTOMED.Value * (edtSimulaMargem2.value / 100));
    DBEditVlrAtacadoExit(DBEditVlrAtacado);
  end;
end;

procedure TFormCadastroNotaCompraItem.edtSimulaMargemEnter(
  Sender: TObject);
begin
  inherited;
  edtSimulaMargem.Value := SQLTemplateNOCIN2MGVENDA.Value;
end;

procedure TFormCadastroNotaCompraItem.edtSimulaMargem2Enter(
  Sender: TObject);
begin
  inherited;
  edtSimulaMargem2.value := SQLTemplateNOCIN2MGVENDA2.Value;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN2VLRVENDAChange(
  Sender: TField);
begin
  inherited;
  if SQLTemplate.FindField('ValorVendaAtual').AsFloat > SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat then
    SQLTemplate.FindField('NOCICALTPRECO').Value := 'B';
  if SQLTemplate.FindField('ValorVendaAtual').AsFloat = SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat then
    SQLTemplate.FindField('NOCICALTPRECO').Value := 'I';
  if SQLTemplate.FindField('ValorVendaAtual').AsFloat < SQLTemplate.FindField('NOCIN2VLRVENDA').asFloat then
    SQLTemplate.FindField('NOCICALTPRECO').Value := 'A';
end;

procedure TFormCadastroNotaCompraItem.EditCdProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnProduto.Click;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3VLRDESCChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateNOCIN3VLRDESC.asFloat > 0) Then
    SQLTemplateNOCIN3PERCDESC.asFloat := (SQLTemplateNOCIN3VLRDESC.asFloat /(SQLTemplateNOCIN3VLREMBAL.AsFloat * SQLTemplateNOCIN3QTDEMBAL.asFloat)) * 100
  Else
    SQLTemplateNOCIN3PERCDESC.asFloat := 0;

  CalculaCustoMedio;

  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3PERCDESCChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateNOCIN3PERCDESC.asFloat > 0) Then
    SQLTemplateNOCIN3VLRDESC.asFloat := (SQLTemplateNOCIN3VLREMBAL.AsFloat * SQLTemplateNOCIN3QTDEMBAL.asFloat) * (SQLTemplateNOCIN3PERCDESC.asFloat / 100)
  Else
    SQLTemplateNOCIN3VLRDESC.asFloat := 0;

  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3VLRICMSChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;

  CalculaCustoMedio;

  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3PERCICMSChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateNOCIN3PERCICMS.asFloat > 0) and (DBEditTotalItem.Value > 0) Then
  Begin
    if SQLTemplateNOCIN2PREDBC.Value > 0 Then
      begin
      SQLTemplateNOCIN3VLRICMS.asFloat := (DBEditTotalItem.Value * (1 - SQLTemplateNOCIN2PREDBC.Value / 100) )  * (SQLTemplateNOCIN3PERCICMS.asFloat / 100)
      end
    Else
        SQLTemplateNOCIN3VLRICMS.asFloat := DBEditTotalItem.Value * (SQLTemplateNOCIN3PERCICMS.asFloat / 100);
  End Else
    SQLTemplateNOCIN3VLRICMS.asFloat  := 0;

  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3VLRSUBSTChange(
  Sender: TField);
begin
  inherited;
{  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateNOCIN3VLRSUBST.asFloat>0) and (DBEditTotalItem.Value>0) Then
    SQLTemplateNOCIN2PERCSUBST.asFloat := (SQLTemplateNOCIN3VLRSUBST.asFloat / DBEditTotalItem.Value) * 100
  Else
    Begin
      SQLTemplateNOCIN3VLRSUBST.asFloat  := 0;
      SQLTemplateNOCIN2PERCSUBST.asFloat := 0;
    End;
 }
  CalculaCustoMedio;

  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3VLRIPIChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;

  CalculaCustoMedio;

  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3VLRFRETEChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;

  CalculaCustoMedio;

  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3VLREMBALChange(
  Sender: TField);
begin
  inherited;
  If SQLTemplateNOCIN3CAPEMBAL.asFloat>0 Then
    Begin
      If Ocupado Then Exit;
      Ocupado:=True;
      SQLTemplateNOCIN3VLRUNIT.asFloat    := SQLTemplateNOCIN3VLREMBAL.asFloat / SQLTemplateNOCIN3CAPEMBAL.asFloat;
      SQLTemplateNOCIN3VLRDESC.asFloat    := (SQLTemplateNOCIN3VLREMBAL.AsFloat * SQLTemplateNOCIN3QTDEMBAL.asFloat) * (SQLTemplateNOCIN3PERCDESC.asFloat / 100);
      SQLTemplateNOCIN3VLRIPI.asFloat     := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCIPI.asFloat / 100);
      SQLTemplateNOCIN3VLRICMS.asFloat    := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCICMS.asFloat / 100);
      SQLTemplateNOCIN3VLRFRETE.asFloat   := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN3PERCFRETE.asFloat / 100);
      SQLTemplateNOCIN3VLRSUBST.asFloat   := SQLTemplateTotalItemCalc.asFloat * (SQLTemplateNOCIN2PERCSUBST.asFloat / 100);
      Ocupado:=False;
    End;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN2PERCDESPChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;

  CalculaCustoMedio;

  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN2PERCDIFICMChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;

  CalculaCustoMedio;

  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN2PERCSUBSTChange(
  Sender: TField);
begin
  inherited;
{  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateNOCIN2PERCSUBST.asFloat>0) and (DBEditTotalItem.Value>0) Then
  Begin
    If SQLTemplateNOCIN2PREDBCST.Value > 0 then
      SQLTemplateNOCIN3VLRSUBST.asFloat := (SQLTemplateNOCIN2VBCST.value * (SQLTemplateNOCIN2PREDBCST.Value / 100) ) * (SQLTemplateNOCIN2PERCSUBST.asFloat / 100)
    Else
      SQLTemplateNOCIN3VLRSUBST.asFloat := DBEditTotalItem.Value * (SQLTemplateNOCIN2PERCSUBST.asFloat / 100)
  End Else
    SQLTemplateNOCIN3VLRSUBST.asFloat  := 0;
  Ocupado:=False;}
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN3PERCFRETEChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateNOCIN3PERCFRETE.asFloat>0) and (DBEditTotalItem.Value>0) Then
    SQLTemplateNOCIN3VLRFRETE.asFloat := DBEditTotalItem.Value * (SQLTemplateNOCIN3PERCFRETE.asFloat / 100)
  Else
    SQLTemplateNOCIN3VLRFRETE.asFloat  := 0;
  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.CalculaCustoMedio;
var valorIpi, valorSubst, valorFrete, valorDespesa, valordifIcms, valorPIS, valorCofins, ValorEncargos : Extended;
begin
  // Calcula Custo Medio
  if SQLTemplatePRODICOD.AsString <> '' then
    begin
      try
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat :=  SQLTemplateNOCIN3VLRUNIT.AsFloat  -
                                                 (SQLTemplateNOCIN3VLRDESC.AsFloat/(SQLTemplateNOCIN3CAPEMBAL.asFloat *SQLTemplateNOCIN3QTDEMBAL.AsFloat));
        valorIpi     := (SQLTemplate.FindField('NOCIN3VLRCUSTOMED').AsFloat * SQLTemplate.FindField('NOCIN3PERCIPI').asFloat)/100;
        valorSubst   := (SQLTemplate.FindField('NOCIN3VLRCUSTOMED').AsFloat * SQLTemplate.FindField('NOCIN2PERCSUBST').asFloat)/100;
        valorFrete   := (SQLTemplate.FindField('NOCIN3VLRCUSTOMED').AsFloat * SQLTemplate.FindField('NOCIN3PERCFRETE').asFloat)/100;
        valorDespesa := (SQLTemplate.FindField('NOCIN3VLRCUSTOMED').AsFloat * SQLTemplate.FindField('NOCIN2PERCDESP').asFloat)/100;
        valordifIcms := (SQLTemplate.FindField('NOCIN3VLRCUSTOMED').AsFloat * SQLTemplate.FindField('NOCIN2PERCDIFICM').asFloat)/100;
        valorPIS     := (SQLTemplate.FindField('NOCIN3VLRCUSTOMED').AsFloat * SQLTemplate.FindField('NOCIN2PERCPIS').asFloat)/100;
        valorCofins  := (SQLTemplate.FindField('NOCIN3VLRCUSTOMED').AsFloat * SQLTemplate.FindField('NOCIN2PERCCOFINS').asFloat)/100;
        ValorEncargos:= (SQLTemplate.FindField('NOCIN3VLRCUSTOMED').AsFloat * vEncargos)/100;

        SQLTemplate.FindField('NOCIN3VLRCUSTOMED').asFloat := SQLTemplate.FindField('NOCIN3VLRCUSTOMED').AsFloat +
                                                              valorIpi + valorSubst  + valorFrete + valorDespesa + valordifIcms +
                                                              valorPIS + valorCofins + ValorEncargos;
      except
        SQLTemplateNOCIN3VLRCUSTOMED.asFloat := 0;
      end;
    end;
end;

procedure TFormCadastroNotaCompraItem.DBEditMGVarejoEnter(Sender: TObject);
begin
  inherited;
  if DSTemplate.State in DsEditModes then
    CalculaCustoMedio;
end;

procedure TFormCadastroNotaCompraItem.DBEditMGAtacadoEnter(
  Sender: TObject);
begin
  inherited;
  if DSTemplate.State in DsEditModes then
    CalculaCustoMedio;
end;

procedure TFormCadastroNotaCompraItem.DBEditIcmPercExit(Sender: TObject);
begin
  inherited;
  SQLTemplateNOCIN3PERCICMS.OnChange(SQLTemplateNOCIN3PERCICMS);
end;

procedure TFormCadastroNotaCompraItem.DBEditDesPercExit(Sender: TObject);
begin
  inherited;
  SQLTemplateNOCIN3PERCDESC.OnChange(SQLTemplateNOCIN3PERCDESC);
end;

procedure TFormCadastroNotaCompraItem.dbeditfretePercExit(Sender: TObject);
begin
  inherited;
  SQLTemplateNOCIN3PERCFRETE.OnChange(SQLTemplateNOCIN3PERCFRETE);
end;

procedure TFormCadastroNotaCompraItem.DBEditPercIcmSubstExit(
  Sender: TObject);
begin
  inherited;
  SQLTemplateNOCIN2PERCSUBST.OnChange(SQLTemplateNOCIN2PERCSUBST);
end;

procedure TFormCadastroNotaCompraItem.DBEditPercDespesasExit(
  Sender: TObject);
begin
  inherited;
  SQLTemplateNOCIN2PERCDESP.OnChange(SQLTemplateNOCIN2PERCDESP);
end;

procedure TFormCadastroNotaCompraItem.DBEditDifICMExit(Sender: TObject);
begin
  inherited;
  SQLTemplateNOCIN2PERCDIFICM.OnChange(SQLTemplateNOCIN2PERCDIFICM);
end;

procedure TFormCadastroNotaCompraItem.cmbCSTIPIChange(Sender: TObject);
begin
  inherited;
  if (cmbCSTIPI.ItemIndex = 0) or (cmbCSTIPI.ItemIndex = 6) or (cmbCSTIPI.ItemIndex = 7) or (cmbCSTIPI.ItemIndex = 13) then
  begin
    edtBaseIPI.Enabled := True;
    edtBaseIPI.Color   := clWindow;

    edtPercIPI.Enabled := True;
    edtPercIPI.Color   := clWindow;

    edtQtdIPI.Enabled := True;
    edtQtdIPI.Color   := clWindow;

    edtIPIreal.Enabled := True;
    edtIPIreal.Color   := clWindow;

    edtValorIPI.Enabled := True;
    edtValorIPI.Color   := clWindow;
    If SQLTemplate.State In ([dsInsert, dsEdit]) then
      SQLTemplateNOCIN2VBCIPI.Value := SQLTemplateTotalItemCalc.Value;
  end Else
  begin
    edtBaseIPI.Enabled := False;
    edtBaseIPI.Color   := clGray;

    edtPercIPI.Enabled := False;
    edtPercIPI.Color   := clGray;

    edtQtdIPI.Enabled := False;
    edtQtdIPI.Color   := clGray;

    edtIPIreal.Enabled := False;
    edtIPIreal.Color   := clGray;

    edtValorIPI.Enabled := False;
    edtValorIPI.Color   := clGray;
    If SQLTemplate.State In ([dsInsert, dsEdit]) then
      SQLTemplateNOCIN2VBCIPI.Value := 0;
  end;
end;

procedure TFormCadastroNotaCompraItem.edtQtdIPIExit(Sender: TObject);
begin
  inherited;
  if (edtQtdIPI.Value <> 0 ) or (edtIPIreal.value <> 0) then
    if SQLTemplate.State in ([dsInsert, dsEdit]) then
    begin
      SQLTemplateNOCIN3PERCIPI.Value := 0;
      SQLTemplateNOCIN3VLRIPI.Value := SQLTemplateNOCN4QTDIPI.value * SQLTemplateNOCN4UNDIPI.value;
    End;
end;

procedure TFormCadastroNotaCompraItem.cmbCSTCofinsChange(
  Sender: TObject);
begin
  inherited;
{  edtPISQTD.Enabled := True;
  edtPISQTD.Color   := clWindow;
  edtPISReal.Enabled:= True;
  edtPISReal.Color  := clWindow;
  edtPercPis.Enabled := True;
  edtBasePis.Enabled := True;
  edtPercPis.Color   := clWindow;
  edtBasePis.Color   := clWindow;

  if cmbCSTCofins.ItemIndex < 2 then // CST 01 e 02
  begin
    edtPISQTD.Enabled := False;
    edtPISQTD.Color   := clGray;
    edtPISReal.Enabled:= False;
    edtPISReal.Color  := clGray;
    if SQLTemplate.State in ([dsInsert, dsEdit]) then
    begin
      SQLTemplateNOCN4PISQTD.Value := 0;
      SQLTemplateNOCN4PISREAL.Value:= 0;
    end;
  end else if cmbCSTCofins.ItemIndex = 2 then // CST 03
  begin
    edtPercPis.Enabled := False;
    edtBasePis.Enabled := False;
    edtPercPis.Color   := clGray;
    edtBasePis.Color   := clGray;
    if SQLTemplate.State in ([dsInsert, dsEdit]) then
    begin
      SQLTemplateNOCIN2PERCPIS.Value := 0;
      SQLTemplateNOCIN2BASEPIS.Value:= 0;
    end;
  End else if (cmbCSTCofins.ItemIndex > 2) and (cmbCSTCofins.ItemIndex < 8) then // CST 04, 06, 07, 08 e 09
  begin
    edtPISQTD.Enabled := False;
    edtPISQTD.Color   := clGray;
    edtPISReal.Enabled:= False;
    edtPISReal.Color  := clGray;
    edtPercPis.Enabled := False;
    edtBasePis.Enabled := False;
    edtPercPis.Color   := clGray;
    edtBasePis.Color   := clGray;
    if SQLTemplate.State in ([dsInsert, dsEdit]) then
    begin
      SQLTemplateNOCN4PISQTD.Value := 0;
      SQLTemplateNOCN4PISREAL.Value:= 0;
      SQLTemplateNOCIN2PERCPIS.Value := 0;
      SQLTemplateNOCIN2BASEPIS.Value:= 0;
    end;
  end;
 }
end;

procedure TFormCadastroNotaCompraItem.RxDBComboBox9Change(Sender: TObject);
begin
  inherited;
{  edtCofinsQTD.Enabled := True;
  edtCofinsQTD.Color   := clWindow;
  edtCofinsReal.Enabled:= True;
  edtCofinsReal.Color  := clWindow;
  edtPercCofins.Enabled := True;
  edtBaseCofins.Enabled := True;
  edtPercCofins.Color   := clWindow;
  edtBaseCofins.Color   := clWindow;

  if cmbCSTCofins.ItemIndex < 2 then // CST 01 e 02
  begin
    edtCofinsQTD.Enabled := False;
    edtCofinsQTD.Color   := clGray;
    edtCofinsReal.Enabled:= False;
    edtCofinsReal.Color  := clGray;
    if SQLTemplate.State in ([dsInsert, dsEdit]) then
    begin
      SQLTemplateNOCN4COFINSQTD.Value   := 0;
      SQLTemplateNOCN4COFINSREAL.Value  := 0;
    End;
  end else if cmbCSTCofins.ItemIndex = 2 then // CST 03
  begin
    edtPercCofins.Enabled := False;
    edtBaseCofins.Enabled := False;
    edtPercCofins.Color   := clGray;
    edtBaseCofins.Color   := clGray;
    if SQLTemplate.State in ([dsInsert, dsEdit]) then
    begin
      SQLTemplateNOCIN2PERCCOFINS.Value := 0;
      SQLTemplateNOCIN2BASECOFINS.Value := 0;
    end;
  End else if (cmbCSTCofins.ItemIndex > 2) and (cmbCSTCofins.ItemIndex < 8) then // CST 04, 06, 07, 08 e 09
  begin
    edtCofinsQTD.Enabled := False;
    edtCofinsQTD.Color   := clGray;
    edtCofinsReal.Enabled:= False;
    edtCofinsReal.Color  := clGray;
    edtPercCofins.Enabled := False;
    edtBaseCofins.Enabled := False;
    edtPercCofins.Color   := clGray;
    edtBaseCofins.Color   := clGray;
    if SQLTemplate.State in ([dsInsert, dsEdit]) then
    begin
      SQLTemplateNOCN4COFINSQTD.Value   := 0;
      SQLTemplateNOCN4COFINSREAL.Value  := 0;
      SQLTemplateNOCIN2PERCCOFINS.Value := 0;
      SQLTemplateNOCIN2BASECOFINS.Value := 0;
    end;
  end;
 }
end;

procedure TFormCadastroNotaCompraItem.DBEdit15Enter(Sender: TObject);
begin
  inherited;
  if SQLTemplateNOCIN2VBC.Value = 0 then
    if (SQLTemplate.State in ([dsInsert, dsEdit])) and   ( not ( (SQLTemplateNOCIA3CSTICMS.AsString = '20') or (SQLTemplateNOCIA3CSTICMS.AsString = '30') or (SQLTemplateNOCIA3CSTICMS.AsString = '40') or (SQLTemplateNOCIA3CSTICMS.AsString = '41') or
    (SQLTemplateNOCIA3CSTICMS.AsString = '50') or (SQLTemplateNOCIA3CSTICMS.AsString = '60') )) then
    begin
      SQLTemplateNOCIN2VBC.Value := SQLTemplateTotalItemCalc.Value;
      DBEdit15.SelectAll;
    end;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN2PERCCOFINSChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateNOCIN2PERCCOFINS.asFloat>0) and (DBEditTotalItem.Value>0) Then
    SQLTemplateNOCIN2VLRCOFINS.asFloat := SQLTemplateNOCIN2BASECOFINS.Value * (SQLTemplateNOCIN2PERCCOFINS.asFloat / 100)
  Else
    SQLTemplateNOCIN2VLRCOFINS.asFloat  := 0;
  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCN4COFINSREALChange(
  Sender: TField);
begin
  inherited;
 If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateNOCN4COFINSREAL.asFloat>0) and (DBEditTotalItem.Value>0) Then
    SQLTemplateNOCIN2VLRCOFINS.asFloat := SQLTemplateNOCN4COFINSREAL.Value * SQLTemplateNOCN4COFINSQTD.Value
  Else
    SQLTemplateNOCIN2VLRCOFINS.asFloat  := 0;
  Ocupado:=False;

end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN2PERCPISChange(
  Sender: TField);
begin
  inherited;
 If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateNOCIN2PERCPIS.asFloat>0) and (DBEditTotalItem.Value>0) Then
    SQLTemplateNOCIN2VLRPIS.asFloat := SQLTemplateNOCIN2BASEPIS.Value * (SQLTemplateNOCIN2PERCPIS.asFloat / 100)
  Else
    SQLTemplateNOCIN2VLRPIS.asFloat  := 0;
  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.edtBaseIPIEnter(Sender: TObject);
begin
  inherited;
  If SQLTemplate.State in ([dsInsert, dsEdit]) then
  begin
    SQLTemplateNOCIN2VBCIPI.Value := SQLTemplateTotalItemCalc.Value;
    edtBaseIPI.SelectAll;
  end;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCN4UNDIPIChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateNOCN4UNDIPI.asFloat>0) and (DBEditTotalItem.Value>0) Then
    SQLTemplateNOCIN3VLRIPI.asFloat := SQLTemplateNOCN4UNDIPI.Value * SQLTemplateNOCN4QTDIPI.Value
  Else
    SQLTemplateNOCIN3VLRIPI.asFloat  := 0;
  Ocupado:=False;
end;

procedure TFormCadastroNotaCompraItem.edtPercPisExit(Sender: TObject);
begin
  inherited;
{  if edtPercPis.Value <> 0 then
  begin
    if SQLTemplate.State in ([dsInsert, dsEdit]) then
    begin
      SQLTemplateNOCN4PISQTD.Value := 0;
      SQLTemplateNOCN4PISREAL.Value := 0;
      SQLTemplateNOCIN2VLRPIS.Value:= SQLTemplateNOCIN2BASEPIS.Value * (SQLTemplateNOCIN2PERCPIS.Value / 100);
    End;
  end;
 }
end;

procedure TFormCadastroNotaCompraItem.edtPISQTDExit(Sender: TObject);
begin
  inherited;
{  if (edtPISQTD.Value <> 0 ) or (edtPISReal.value <> 0) then
    if SQLTemplate.State in ([dsInsert, dsEdit]) then
    Begin
      SQLTemplateNOCIN2PERCPIS.Value := 0;
      SQLTemplateNOCIN2VLRPIS.Value  := SQLTemplateNOCN4PISQTD.Value * SQLTemplateNOCN4PISREAL.Value;
    End;
    }
end;

procedure TFormCadastroNotaCompraItem.edtPercCofinsExit(Sender: TObject);
begin
  inherited;
{  if edtPercCofins.Value <> 0 then
  begin
    if SQLTemplate.State in ([dsInsert, dsEdit]) then
    begin
      SQLTemplateNOCN4COFINSQTD.Value  := 0;
      SQLTemplateNOCN4COFINSREAL.Value := 0;
      SQLTemplateNOCIN2VLRCOFINS.Value := SQLTemplateNOCIN2BASECOFINS.Value * (SQLTemplateNOCIN2PERCCOFINS.Value / 100);
    End;
  end;
 }
end;

procedure TFormCadastroNotaCompraItem.edtCofinsQTDExit(Sender: TObject);
begin
  inherited;
{  if (edtCofinsQTD.Value <> 0 ) or (edtCofinsReal.value <> 0) then
    if SQLTemplate.State in ([dsInsert, dsEdit]) then
    Begin
      SQLTemplateNOCIN2PERCCOFINS.Value := 0;
      SQLTemplateNOCIN2VLRCOFINS.Value := SQLTemplateNOCN4COFINSQTD.Value * SQLTemplateNOCN4COFINSREAL.Value;
    End;
    }
end;

procedure TFormCadastroNotaCompraItem.edtPercIPIExit(Sender: TObject);
begin
  inherited;
  if edtPercIPI.Value <> 0 then
  begin
    if SQLTemplate.State in ([dsInsert, dsEdit]) then
    begin
      SQLTemplateNOCN4QTDIPI.Value  := 0;
      SQLTemplateNOCN4UNDIPI.Value := 0;
      SQLTemplateNOCIN3VLRIPI.Value := SQLTemplateNOCIN2VBCIPI.Value * (SQLTemplateNOCIN3PERCIPI.Value / 100);
    End;
  end;
end;

procedure TFormCadastroNotaCompraItem.Button4Click(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := PageControl1.ActivePageIndex + 1;
end;

procedure TFormCadastroNotaCompraItem.ComboUnidadeExit(Sender: TObject);
begin
  inherited;
  if DSTemplate.state in [dsInsert, dsEdit] then
    begin
      if SQLUnidadeUNIDN3FATORCONV.Value > 0 then
        SQLTemplateNOCIN3CAPEMBAL.Value := SQLUnidadeUNIDN3FATORCONV.Value
      else
        SQLTemplateNOCIN3CAPEMBAL.Value := 1;
    end;
end;

procedure TFormCadastroNotaCompraItem.DBEditQtdeExit(Sender: TObject);
begin
  inherited;
  SQLTemplateNOCIN2PERCDESP.OnChange(SQLTemplateNOCIN2PERCDESP);
end;

procedure TFormCadastroNotaCompraItem.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  ComboUnidade.SetFocus;
  FieldLookup := DsTemplate.DataSet.FieldByName('UNIDICOD');
  FieldOrigem := 'UNIDICOD' ;
  DataSetLookup := SQLUnidade;
  CriaFormulario(TFormCadastroUnidade,'FormCadastroUnidade',False,True,True,'Produto ' + IntToStr(SQLTemplatePRODICOD.Value));
end;

procedure TFormCadastroNotaCompraItem.ComboSitTribExit(Sender: TObject);
begin
  inherited;
  if ((SQLTemplateNOCIA3CSTICMS.AsString = '10') or (SQLTemplateNOCIA3CSTICMS.AsString = '70')) and (SQLLocate('PRODUTO','PRODICOD','PRODISITTRIB',SQLTemplatePRODICOD.AsString)<>'60') then
    begin
      ShowMessage('ALERTA! Para CST ICMS de Compra 10 ou 70. A CST de Venda no Produto deve 60!'+#13+#10+#13+#10+
                  'Se tiver certeza continue o lançamento! Em caso de dúvida, verifique com seu setor FISCAL!');
    end;

{                  'Para Operações dentro do Estado, geralmente a CST ICMS de Compra e Venda são iguais!'+#13+#10+
                  'Para Operações fora do Estado, tem que analisado Caso a Caso!'                       +#13+#10+#13+#10+}

  if not (SQLtemplate.State in ([dsInsert, dsEdit]) )then
    Exit;

    if (SQLTemplateNOCIA3CSTICMS.AsString = '30') or (SQLTemplateNOCIA3CSTICMS.AsString = '40') or (SQLTemplateNOCIA3CSTICMS.AsString = '41') or
    (SQLTemplateNOCIA3CSTICMS.AsString = '50') or (SQLTemplateNOCIA3CSTICMS.AsString = '60') then
    Begin
        Ocupado := True;
        SQLTemplateNOCIN2VBC.Value          := 0;
        SQLTemplateNOCIN2PREDBC.Value       := 0;
        SQLTemplateNOCIN3PERCICMS.Value     := 0;
        SQLTemplateNOCIN3VLRICMS.Value      := 0;
        DBEdit15.Enabled                    := False;
        EvDBNumEdit16.Enabled               := False;
        DBEdit14.Enabled                    := False;
        DBEdit16.Enabled                    := False;
        Ocupado := False;
        cmbCSTIPI.SetFocus;
    end Else
    Begin
        DBEdit15.Enabled                    := True;
        EvDBNumEdit16.Enabled               := True;
        DBEdit14.Enabled                    := True;
        DBEdit16.Enabled                    := True;
    end;
end;

procedure TFormCadastroNotaCompraItem.SQLTemplateNOCIN2PREDBCChange(
  Sender: TField);
begin
  inherited;
  SQLTemplateNOCIN2VBC.Value := SQLTemplateTotalItemCalc.Value * (1 - SQLTemplateNOCIN2PREDBC.Value / 100);
end;

procedure TFormCadastroNotaCompraItem.DBEdit15Exit(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in ([dsInsert, dsEdit]) then
  begin
    DBEdit14.Enabled  := SQLTemplateNOCIN2VBC.Value > 0;
    DBEdit16.Enabled  := SQLTemplateNOCIN2VBC.Value > 0;
    If SQLTemplateNOCIN2VBC.Value = 0 Then
    begin
      SQLTemplateNOCIN3PERCICMS.Value := 0;
      SQLTemplateNOCIN3VLRICMS.Value  := 0;
      cmbCSTIPI.SetFocus;
    End Else
      DBEdit14.SetFocus;
  End;

end;

procedure TFormCadastroNotaCompraItem.edtBaseIPIExit(Sender: TObject);
begin
  inherited;
  edtPercIPI.Enabled                := SQLTemplateNOCIN2VBCIPI.Value  > 0;
  edtQtdIPI.Enabled                 := SQLTemplateNOCIN2VBCIPI.Value  > 0;
  edtIPIreal.Enabled                := SQLTemplateNOCIN2VBCIPI.Value  > 0;
  edtValorIPI.Enabled               := SQLTemplateNOCIN2VBCIPI.Value  > 0;
  if SQLTemplateNOCIN2VBCIPI.Value  = 0 Then
  begin
    SQLTemplateNOCIN3PERCIPI.Value    := 0;
    SQLTemplateNOCN4QTDIPI.Value      := 0;
    SQLTemplateNOCN4UNDIPI.Value      := 0;
    SQLTemplateNOCIN3VLRIPI.Value     := 0;
    DBEdit18.SetFocus
  End Else
    edtPercIPI.SetFocus;

end;

procedure TFormCadastroNotaCompraItem.DBEdit18Enter(Sender: TObject);
var newMVA, icmCalc:Extended;

begin
  inherited;
    newMVA := StrToFloat(SQLLocate('NCM','NCMA30CODIGO','MVA','"'+Trim(DBEdit9.Text)+'"'));
    if (edtMVA.value > 0) and (edtMVA.Value <> newMVA) then
    begin
      if Pergunta('SIM','O MVA digitado é diferente do gravado na tabela NCM. Atualiar o MVA?') then
        edtMVA.Value := newMVA;
    End else
      EdtMVA.Value := newMVA;

    If (SQLTemplate.State in ([dsInsert, dsEdit])) and (edtMVA.value > 0) then
    begin
      SQLTemplateNOCIN2PERCSUBST.Value   := StrToFloat(SQLLocate('NCM','NCMA30CODIGO','ALIQUOTAINTERNA','"'+Trim(DBEdit9.Text)+'"'));
      SQLTemplateNOCIN2VBCST.Value       := (SQLTemplateTotalItemCalc.Value + SQLTemplateNOCIN3VLRIPI.Value) + ((SQLTemplateTotalItemCalc.Value + SQLTemplateNOCIN3VLRIPI.Value) * (edtMVA.value / 100) );
      icmCalc := SQLTemplateNOCIN2VBCST.Value * ( SQLTemplateNOCIN2PERCSUBST.Value  / 100 );
      SQLTemplateNOCIN3VLRSUBST.Value    := icmCalc - SQLTemplateNOCIN3VLRICMS.Value;
    End;
end;

procedure TFormCadastroNotaCompraItem.DBEdtPercSubstTribExit(
  Sender: TObject);
var newMVA, icmCalc:Extended;
begin
  inherited;
  if SQLTemplateNOCIN2PERCSUBST.Value <> 0 then
  begin
    if SQLTemplate.State in ([dsInsert, dsEdit]) then
    begin
      icmCalc := SQLTemplateNOCIN2VBCST.Value * ( SQLTemplateNOCIN2PERCSUBST.Value  / 100 );
      SQLTemplateNOCIN3VLRSUBST.Value    := icmCalc - SQLTemplateNOCIN3VLRICMS.Value;
    End;
  end;
end;

end.

