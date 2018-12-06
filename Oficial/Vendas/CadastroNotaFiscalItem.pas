unit CadastroNotaFiscalItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons,
  jpeg, RxDBComb, ToolEdit, RXDBCtrl, DBCtrls, VarSys, FormResources, EDBNum,
  CurrEdit, Placemnt, RxLookup, Serial, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TICMSUF = record
    nICMS, nRED_ICMS, nICMS_INTERNO, nMVA: Double;
    nSTFisica: string;
    nSTJuridica: string;
  end;

  TFormCadastroNotaFiscalItem = class(TFormCadastroTEMPLATE)
    SQLTemplateNOFIA13ID: TStringField;
    SQLTemplateNFITIITEM: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateNFITN3QUANT: TFloatField;
    SQLTemplateNFITN2VLRUNIT: TFloatField;
    SQLTemplateNFITN2PERCDESC: TFloatField;
    SQLTemplateNFITN2VLRDESC: TFloatField;
    SQLTemplateNFITN2PERCICMS: TFloatField;
    SQLTemplateNFITN2BASEICMS: TFloatField;
    SQLTemplateNFITN2PERCSUBS: TFloatField;
    SQLTemplateNFITN2BASESUBS: TFloatField;
    SQLTemplateNFITN2VLRSUBS: TFloatField;
    SQLTemplateNFITN2PERCIPI: TFloatField;
    SQLTemplateNFITN2VLRIPI: TFloatField;
    SQLTemplateNFITN2PERCISSQN: TFloatField;
    SQLTemplateNFITN2VLRISSQN: TFloatField;
    SQLTemplateNFITN2VLRFRETE: TFloatField;
    SQLTemplateNFITN2VLRLUCRO: TFloatField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLAtualizaItemPedido: TRxQuery;
    SQLIcmsUF: TRxQuery;
    SQLIcms: TRxQuery;
    SQLTemplateAgrupGradeLookUp: TIntegerField;
    SQLTemplateGradeCodLookUp: TIntegerField;
    SQLTemplateProdutoLookUp: TStringField;
    SQLTemplateTotalItemCalc: TFloatField;
    SQLTemplateReferenciaLookUp: TStringField;
    SQLTemplateNFITN3QUANTVEND: TFloatField;
    SQLTemplatePVITIITEM: TIntegerField;
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplateNFITN3TOTVEND: TFloatField;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit9: TEvDBNumEdit;
    DBEdit10: TEvDBNumEdit;
    DBEdit12: TEvDBNumEdit;
    DBEdit13: TEvDBNumEdit;
    DBEdit26: TEvDBNumEdit;
    SQLTemplateNFITN2PERCREDUCAO: TFloatField;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    RxDBComboBox1: TRxDBComboBox;
    EvDBNumEdit1: TEvDBNumEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    EvDBNumEdit3: TEvDBNumEdit;
    Label47: TLabel;
    EvDBNumEdit7: TEvDBNumEdit;
    SQLTemplateServicoLookUp: TStringField;
    SQLTemplatePesoBrutoLookUp: TFloatField;
    SQLTemplatePesoLiquidoLookUp: TFloatField;
    Label24: TLabel;
    EvDBNumComissao: TEvDBNumEdit;
    SQLTemplateNFITN2PERCCOMIS: TFloatField;
    SQLGeral: TRxQuery;
    SQLTemplateValorCompraLookUp: TFloatField;
    SQLNumeroItens: TQuery;
    SQLTemplateCPITICPOS: TIntegerField;
    SQLTemplateCUPOA13ID: TStringField;
    SQLTemplateLOTEA30NRO: TStringField;
    Label25: TLabel;
    DBEdit3: TDBEdit;
    SQLTemplateNFITA254OBS: TStringField;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit14: TEvDBNumEdit;
    DBEdit15: TEvDBNumEdit;
    DBEdit16: TEvDBNumEdit;
    DBEdit17: TEvDBNumEdit;
    DBEdit18: TEvDBNumEdit;
    DBEdit19: TEvDBNumEdit;
    DBEdit20: TEvDBNumEdit;
    DBEdit21: TEvDBNumEdit;
    DBEdit22: TEvDBNumEdit;
    DBEdit23: TEvDBNumEdit;
    Label27: TLabel;
    DBEdit27: TEvDBNumEdit;
    Label9: TLabel;
    BtnProduto: TSpeedButton;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit11: TDBEdit;
    EditProduto: TEdit;
    RadioPesquisa: TRadioGroup;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    SQLTemplateCodAntigoLookup: TStringField;
    Label33: TLabel;
    EvDBNumEdit5: TEvDBNumEdit;
    SQLTemplateNFITN2VLRICMS: TFloatField;
    btnNmerosdeSerie: TMenuItem;
    SQLTemplateControlaSerieLookup: TStringField;
    LabelLote: TLabel;
    DBEditLote: TDBEdit;
    LSaldo: TLabel;
    SaldoAtual: TLabel;
    SQLTemplateCFOPA5CODAUX: TStringField;
    DSSQLCFOP: TDataSource;
    SQLCFOP: TRxQuery;
    SQLCFOPCFOPA5COD: TStringField;
    SQLCFOPCFOPA60DESCR: TStringField;
    SQLCFOPCFOPCVENDA: TStringField;
    SQLCFOPPENDENTE: TStringField;
    SQLCFOPREGISTRO: TDateTimeField;
    Label50: TLabel;
    ComboCFOP: TRxDBLookupCombo;
    MnImportarProdutosdeOutraNotaFiscal: TMenuItem;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    SQLTemplateNCMLookUp: TStringField;
    BitBtn1: TBitBtn;
    PaginaImportacao: TTabSheet;
    SQLTemplateNFITINITENS: TIntegerField;
    NFITA10DIIMPORT: TStringField;
    SQLTemplateNFITA15PEDIDOCOMPRA: TStringField;
    SQLTemplateNFITA2UFDESEMBARACO: TStringField;
    SQLTemplateNFITA60CEXPORTADOR: TStringField;
    SQLTemplateNFITA60CFABRICANTE: TStringField;
    SQLTemplateNFITA60LOCALDESEMBARACO: TStringField;
    SQLTemplateNFITDDATADI: TDateTimeField;
    SQLTemplateNFITDDESEMBARACO: TDateTimeField;
    SQLTemplateNFITINADICAO: TIntegerField;
    SQLTemplateNFITINSEQADIC: TIntegerField;
    SQLTemplateNFITN2DESCTOADIC: TFloatField;
    Label29: TLabel;
    DBEdit7: TDBEdit;
    Label32: TLabel;
    DBEdit8: TDBEdit;
    Label35: TLabel;
    DBEdit25: TDBEdit;
    Label36: TLabel;
    DBEdit28: TDBEdit;
    Label37: TLabel;
    DBEdit29: TDBEdit;
    Label38: TLabel;
    DBEdit30: TDBEdit;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DBEdit33: TDBEdit;
    Label42: TLabel;
    DBEdit34: TDBEdit;
    Label43: TLabel;
    DBEdit35: TDBEdit;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    DBEdit36: TDBEdit;
    DBDateEdit2: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    SQLTemplateNFITN2OUTRASDESP: TFloatField;
    SQLTemplateNFITN2SEGURO: TFloatField;
    Label48: TLabel;
    EvDBNumEdit6: TEvDBNumEdit;
    Label49: TLabel;
    EvDBNumEdit8: TEvDBNumEdit;
    Label51: TLabel;
    EvDBNumEdit9: TEvDBNumEdit;
    SQLTemplateNFITICST: TIntegerField;
    SQLTemplateNFITN2BC_IMP: TFloatField;
    SQLTemplateNFITN2VALOR_DA: TFloatField;
    SQLTemplateNFITN2VALOR_II: TFloatField;
    SQLTemplateNFITN2VALOR_IOF: TFloatField;
    Label53: TLabel;
    DBEdit32: TDBEdit;
    Label54: TLabel;
    DBEdit37: TDBEdit;
    Label55: TLabel;
    DBEdit38: TDBEdit;
    Label56: TLabel;
    DBEdit39: TDBEdit;
    edtValorFinal: TCurrencyEdit;
    Label52: TLabel;
    DBEdit31: TDBEdit;
    MnImportarProdutospelaNotadeEntrada: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Label26: TLabel;
    Label57: TLabel;
    dsSQLUnidade2: TDataSource;
    SQLUnidade2: TRxQuery;
    SQLUnidade2UNIDICOD: TIntegerField;
    SQLUnidade2UNIDA5DESCR: TStringField;
    SQLUnidade2UNIDA15DESCR: TStringField;
    SQLUnidade2UNIDCFRAC: TStringField;
    SQLUnidade2UNIDN3FATORCONV: TFloatField;
    SQLTemplateUNIDICOD: TIntegerField;
    SQLUnidade: TRxQuery;
    SQLUnidadeUNIDICOD: TIntegerField;
    SQLUnidadeUNIDA5DESCR: TStringField;
    SQLUnidadeUNIDA15DESCR: TStringField;
    SQLUnidadeUNIDN3FATORCONV: TFloatField;
    SQLTemplateUnidadeLookup: TStringField;
    ComboUnidade: TRxDBLookupCombo;
    SQLTemplateNOFIA2CSTCOFINS: TStringField;
    SQLTemplateNOFIN3PERCCOFINS: TFloatField;
    SQLTemplateNOFIN3VLRCOFINS: TFloatField;
    SQLTemplateNOFIA2CSTPIS: TStringField;
    SQLTemplateNOFIN3PERCPIS: TFloatField;
    SQLTemplateNOFIN3VLRPIS: TFloatField;
    Label58: TLabel;
    EvDBNumEdit10: TEvDBNumEdit;
    Label59: TLabel;
    EvDBNumEdit11: TEvDBNumEdit;
    Label34: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    EvDBNumEdit13: TEvDBNumEdit;
    Label62: TLabel;
    EvDBNumEdit14: TEvDBNumEdit;
    DBEdit24: TDBEdit;
    DBEdit40: TDBEdit;
    SQLTotal: TRxQuery;
    MnCalcularValorTotalItens: TMenuItem;
    ImportarProdutosdoColetorPalmOne1: TMenuItem;
    ImportarProdutosdoColetorBematechDC20001: TMenuItem;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODA30CODESTRUT: TStringField;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoCLFSICOD: TIntegerField;
    SQLProdutoGRUPICOD: TIntegerField;
    SQLProdutoMARCICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoUNIDICOD: TIntegerField;
    SQLProdutoPRODN3VLRCUSTO: TFloatField;
    SQLProdutoClassFiscal: TStringField;
    SQLProdutoMarca: TStringField;
    SQLProdutoUnidade: TStringField;
    SQLProdutoProdutoLookup: TStringField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLProdutoPERC_REDUCAO_BASE_CALCULO: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure BtnProdutoClick(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplatePRODICODChange(Sender: TField);
    procedure SQLTemplateNFITN2VLRUNITChange(Sender: TField);
    procedure SQLTemplateNFITN2VLRIPIChange(Sender: TField);
    procedure SQLTemplateNFITN2PERCIPIChange(Sender: TField);
    procedure SQLTemplateNFITN3QUANTChange(Sender: TField);
    procedure SQLTemplateNFITN2PERCDESCChange(Sender: TField);
    procedure SQLTemplateNFITN2VLRDESCChange(Sender: TField);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateAfterDelete(DataSet: TDataSet);
    procedure SQLTemplateNFITN2PERCICMSChange(Sender: TField);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure DBEditLoteExit(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplateNFITN2PERCSUBSChange(Sender: TField);
    procedure EditProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditProdutoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditProdutoEnter(Sender: TObject);
    procedure SQLTemplateNFITN2PERCREDUCAOChange(Sender: TField);
    procedure btnNmerosdeSerieClick(Sender: TObject);
    procedure MnImportarProdutosdeOutraNotaFiscalClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure edtValorFinalExit(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure SQLTemplateUNIDICODChange(Sender: TField);
    procedure MnImportarProdutospelaNotadeEntradaClick(Sender: TObject);
    procedure EvDBNumEdit9Exit(Sender: TObject);
    procedure ImportarProdutosdoColetorBematechDC20001Click(Sender: TObject);
    procedure ImportarProdutosdoColetorPalmOne1Click(Sender: TObject);
  private
    { Private declarations }
    Ocupado: Boolean;
    NovoTotalQuant, NovoTotalPesoBruto, NovoTotalPesoLiquido, NovoTotalItem, NovoTotalDesc, NovoTotalBASCALCICMS, NovoTotalVLRICMS, NovoTotalBASCALCSUBS, NovoTotalVLRSUBS, NovoTotalBASCALCCIPI, NovoTotalVLRIPI, NovoTotalVLRSEGURO, NovoTotalVLRFrete, NovoTotalVLROutrasdesp, NovoTotalVLRSERVICO, NovoTotalVLRPIS, NovoTotalVLRCOFINS, NovoTotalISSQN: Double;
    TotalQuant, TotalPesoBruto, TotalPesoLiquido, TotalItem, TotalDesc, TotalBASCALCICMS, TotalVLRICMS, TotalBASCALCSUBS, TotalVLRSUBS, TotalBASCALCCIPI, TotalVLRIPI, TotalVLRFrete, TotalVLRSeguro, TotalVLROutrasDesp, TotalVLRSERVICO, TotalVLRPIS, TotalVLRCOFINS, TotalISSQN: Double;
    CodigoPedido, SitTrib: string;
    PosicaoItem, IcmsCod: Integer;
    QtdePed, NovaQtdePed, Reducao, ReducaoBase: Double;
    TemProdutoSemSubsTrib, TemProdutoComSubsTrib: Boolean;
    procedure CalculaImpostos;
    procedure AtualizaPedidoVenda(CodigoPedidoVenda: string; PosicaoItemPedido: Integer; QtdePed, NovaQtdePed: Double);
    function BuscaIcmsUf: TICMSUF;
    function BuscaIcms: TICMSUF;
    function Busca_CFOP(Operacao: Integer; Origem: Integer; CST: Integer): string;
    function CalculaSubstituicaoTributaria: string;
    procedure CalculaFrete;
  public
    { Public declarations }
  end;

var
  FormCadastroNotaFiscalItem: TFormCadastroNotaFiscalItem;
  nResultICMS: TICMSUF;

implementation

uses
  TelaConsultaProduto, DataModulo, TelaLancamentoGradeNotaFiscal, UnitLibrary,
  TelaSaldoPorLote, TelaImportaItens, SearchLibrary, CadastroNotaFiscal,
  CadastroProdutos, TelaNotaFiscalItemFiltro, TelaProdutoNumeroSerie,
  TelaInformaNumeroSerieProduto, {ENumEd,} Math;

{$R *.dfm}

procedure TFormCadastroNotaFiscalItem.CalculaImpostos;
var
  Substituicao, xMVA: Double;
  UFEmit, UFDest, Origem, FisJur, Situacao, AliquotaInterna, FinalidadeNFE: string;
begin

  if (SQLTemplatePRODICOD.AsString = '') then
    Exit;

  Ocupado := True;

  FinalidadeNFE := DSMasterTemplate.DataSet.FieldByName('NOFICFINALIDADE').AsString;

  // ReCarrega Array de ICMS conforme UF do Destinatario para quando for alteracao de produto
  try
    IcmsCod := strToInt(DM.SQLlocate('produto', 'prodicod', 'icmsicod', SQLTemplatePRODICOD.AsString));
  except
    Application.ProcessMessages;
  end;

  if FinalidadeNFE <> '4' then {Se nao for Devolucao de Mercadoria}
    if SQLTemplate.DataSource.DataSet.FindField('EmpresaUFLookUp').asString <> SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString then
      nResultICMS := BuscaIcmsUf
    else
      nResultICMS := BuscaIcms;

  { Adilson removi pq essa rotina atrapalha nas notas de devolucao pois pega o icms e cst conforme cadastro do produto e nas devolucoes nao é essa regra
  FisJur := DSMasterTemplate.DataSet.FieldByName('CliFornEmpFisicaJuridica').AsString;

  // verifica a Situação Tributaria do produto para saber se faz os calculos ou nao conforme tabela do manual da migrate
  If FisJur = 'F' then
    Situacao := nResultICMS.nSTFisica
  else
    Situacao := nResultICMS.nSTJuridica;

  // Caso não tenha encontrado nas buscas acima, procura a Situação Tributaria do cadastro do Produto
  if Situacao = '' then
    Situacao := SQLLocate('PRODUTO','PRODICOD','PRODISITTRIB',SQLTEMPLATEPRODICOD.AsString); }

  Situacao := SQLTemplateNFITICST.AsString;

  // calcula a margem de lucro
  SQLTemplateNFITN2VLRLUCRO.asFloat := (SQLTemplateNFITN2VLRUNIT.asFloat - SQLTemplateValorCompraLookUp.asFloat) * SQLTemplateNFITN3QUANT.asFloat;

  // Calcula o ISSQN caso for serviço
  SQLTemplateNFITN2VLRISSQN.asFloat := ((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat) * (SQLTemplateNFITN2PERCISSQN.asFloat / 100);

  // Calcula o IPI
  if (SQLTemplate.DataSource.DataSet.FindField('CalcIPILookUp').asString = 'S') then
    SQLTemplateNFITN2VLRIPI.asFloat := StrToFloat(FormatFloat('0.00', ((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat) * (SQLTemplateNFITN2PERCIPI.asFloat / 100)));

  // Calcula o ICMS
  if (SQLTemplate.DataSource.DataSet.FindField('CalcICMSLookUp').asString = 'S') and (SQLTemplateNFITN2PERCICMS.AsFloat > 0) then
  begin
    if (Situacao = '0') or (Situacao = '10') or (Situacao = '20') or (Situacao = '51') or (Situacao = '70') or (Situacao = '90') or (Situacao = '102') or (Situacao = '900') then
    begin
      SQLTemplateNFITN2BASEICMS.asFloat := ((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat) + SQLTemplateNFITN2VLRFRETE.AsFloat;
        // Calcula a Reduçao de Base de Calculo - utilizar variavel para quando a oper.estoq. calsula somente Subst.Tribut.
      if (SQLTemplateNFITN2PERCREDUCAO.Value > 0) then
        SQLTemplateNFITN2BASEICMS.asFloat := (((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat) + SQLTemplateNFITN2VLRFRETE.AsFloat) * (SQLTemplateNFITN2PERCREDUCAO.Value / 100);
      SQLTemplateNFITN2VLRICMS.asFloat := SQLTemplateNFITN2BASEICMS.asFloat * (SQLTemplateNFITN2PERCICMS.asFloat / 100);
    end
    else
    begin
      SQLTemplateNFITN2BASEICMS.asFloat := 0;
      SQLTemplateNFITN2VLRICMS.asFloat := 0;
      SQLTemplateNFITN2PERCICMS.AsFloat := 0;
      SQLTemplateNFITN2PERCREDUCAO.AsFloat := 0;
    end;
  end;

  // Calcula a substituicao tributaria
  if (SQLTemplate.DataSource.DataSet.FindField('CalcSUBSTLookUp').asString = 'S') then
  begin
    if (Situacao = '10') or (Situacao = '30') or (Situacao = '60') or (Situacao = '70') or (Situacao = '90') or (Situacao = '201') or (Situacao = '202') or (Situacao = '203') or (Situacao = '900') then
    begin
      AliquotaInterna := FloatToSTr(nResultICMS.nICMS_INTERNO);
        // se a aliquotainterna nao foi especificada pega o percentual de icms normal (aliquota icms)
      if (AliquotaInterna = '') or (AliquotaInterna = '0') then
        AliquotaInterna := FloatToSTr(SQLTemplateNFITN2PERCICMS.AsFloat);

      SQLTemplateNFITN2PERCSUBS.asString := AliquotaInterna;

      xMVA := 0;
      xMVA := nResultICMS.nMVA;
      if xMVA = 0 then
      try
        xMVA := strtofloat(SQLLocate('NCM', 'NCMICOD', 'MVA', SQLLocate('PRODUTO', 'PRODICOD', 'NCMICOD', SQLTemplatePRODICOD.AsString)));
      except
        Showmessage('Erro: Tabela de NCM sem MVA ou Nulo!');
      end;

      if SQLTemplateNFITN2PERCSUBS.asFloat > 0 then
      begin
        SQLTemplateNFITN2BASESUBS.asFloat := StrToFloat(FormatFloat('0.00', (((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat) + SQLTemplateNFITN2VLRFRETE.AsFloat + SQLTemplateNFITN2VLRIPI.AsFloat + SQLTemplateNFITN2OUTRASDESP.AsFloat) + ((((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat) + SQLTemplateNFITN2VLRFRETE.AsFloat + SQLTemplateNFITN2VLRIPI.AsFloat + SQLTemplateNFITN2OUTRASDESP.AsFloat) * (xMVA / 100))));
          // SQLTemplateNFITN2VLRSUBS.asFloat    := StrToFloat(FormatFloat('0.00',(SQLTemplateNFITN2BASESUBS.value * (StrToFloat(Aliquotainterna)/100)) -
        SQLTemplateNFITN2VLRSUBS.asFloat := StrToFloat(FormatFloat('0.00', ((SQLTemplateNFITN2BASESUBS.value * SQLTemplateNFITN2PERCSUBS.value / 100)) - ((((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat) + SQLTemplateNFITN2VLRFRETE.AsFloat) * (nResultICMS.nICMS / 100))));
      end
      else
      begin
        SQLTemplateNFITN2BASESUBS.asFloat := 0;
        SQLTemplateNFITN2VLRSUBS.asFloat := 0;
        SQLTemplateNFITN2PERCSUBS.AsFloat := 0;
      end;
    end
    else
    begin
      SQLTemplateNFITN2BASESUBS.asFloat := 0;
      SQLTemplateNFITN2VLRSUBS.asFloat := 0;
      SQLTemplateNFITN2PERCSUBS.AsFloat := 0;
    end;
  end
  else
  begin
   { SQLTemplateNFITN2BASESUBS.asFloat   := 0;
    SQLTemplateNFITN2VLRSUBS.asFloat    := 0;
    SQLTemplateNFITN2PERCSUBS.AsFloat   := 0; }
  end;
  ocupado := False;
end;

procedure TFormCadastroNotaFiscalItem.AtualizaPedidoVenda(CodigoPedidoVenda: string; PosicaoItemPedido: Integer; QtdePed, NovaQtdePed: Double);
begin
  SQLAtualizaItemPedido.ParamByName('PDVDA13ID').AsString := CodigoPedidoVenda;
  SQLAtualizaItemPedido.ParamByName('PVITIITEM').AsInteger := PosicaoItemPedido;
  SQLAtualizaItemPedido.ParamByName('NovaQtdePed').AsFloat := NovaQtdePed;
  SQLAtualizaItemPedido.ParamByName('QtdePed').AsFloat := QtdePed;
  SQLAtualizaItemPedido.ExecSQL;
end;

procedure TFormCadastroNotaFiscalItem.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'NOTAFISCALITEM';
  NumItem := 0;
  DM.GerarNovaNota := False;
  TemProdutoComSubsTrib := False;
  TemProdutoSemSubsTrib := False;
  SQLCFOP.Open;
  sqlunidade2.open;

  case Dm.SQLConfigVenda.FieldByName('CFVEINROCASASDEC').AsInteger of
    2:
      begin
        SQLTemplateNFITN2VLRUNIT.DisplayFormat := '##0.00';
        SQLTemplateNFITN2VLRUNIT.EditFormat := '##0.00';
        DBEdit10.Decimals := 2;
      end;
    3:
      begin
        SQLTemplateNFITN2VLRUNIT.DisplayFormat := '##0.000';
        SQLTemplateNFITN2VLRUNIT.EditFormat := '##0.000';
        DBEdit10.Decimals := 3;
      end;
  end;
  if FileExists('VFNota.txt') then
  begin
    edtValorFinal.Visible := True;
    Label26.Caption := 'R$ Unt Total';
    DBEdit26.Visible := False;
    Label26.Refresh;
  end;
end;

procedure TFormCadastroNotaFiscalItem.BtnProdutoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplate.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  CriaFormulario(TFormCadastroProduto, 'FormCadastroProduto', False, True, False, '');
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateCalcFields(DataSet: TDataSet);
var
  un: string;
begin
  inherited;

  if SQLTemplateNFITN3TOTVEND.IsNull then
    SQLTemplateTotalItemCalc.asFloat := ((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat)
  else
    SQLTemplateTotalItemCalc.asFloat := SQLTemplateNFITN3TOTVEND.value;

  if DM.GerandoNotaFiscal then
    Exit;
  if DataSet.FieldByName('PRODICOD').AsVariant <> null then
  begin
    if DM.ProcuraRegistro('PRODUTO', ['PRODICOD'], [DataSet.FieldByName('PRODICOD').AsString], 1) then
    begin
      DataSet.FieldByName('ProdutoLookup').AsVariant := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;

      if (DM.SQLTemplate.FindField('GRADICOD').AsVariant <> NULL) and (DM.SQLTemplate.FindField('GRTMICOD').AsVariant <> NULL) then
        DataSet.FieldByName('ProdutoLookup').AsVariant := DataSet.FieldByName('ProdutoLookup').AsVariant + ' / ' + RetornaTamanhoProduto(DM.SQLTemplate.FindField('GRADICOD').AsString, DM.SQLTemplate.FindField('GRTMICOD').AsString);
      if DM.SQLTemplate.FindField('CORICOD').AsVariant <> NULL then
        DataSet.FieldByName('ProdutoLookup').AsVariant := DataSet.FieldByName('ProdutoLookup').AsVariant + ' / ' + RetornaCorProduto(DM.SQLTemplate.FindField('CORICOD').AsString);

      DataSet.FieldByName('GradeCodLookup').AsVariant := DM.SQLTemplate.FindField('GRADICOD').AsVariant;
      DataSet.FieldByName('AgrupGradeLookup').AsVariant := DM.SQLTemplate.FindField('PRODIAGRUPGRADE').AsVariant;
      DataSet.FieldByName('ReferenciaLookup').AsVariant := DM.SQLTemplate.FindField('PRODA60REFER').AsVariant;
      DataSet.FieldByName('NCMLookup').AsVariant := SQLLocate('NCM', 'NCMICOD', 'NCMA30CODIGO', DM.SQLTemplate.FindField('NCMICOD').AsString);
      DataSet.FieldByName('ServicoLookup').AsVariant := DM.SQLTemplate.FindField('PRODCSERVICO').AsVariant;
      DataSet.FieldByName('PesoBrutoLookup').AsVariant := DM.SQLTemplate.FindField('PRODN3PESOBRUTO').AsVariant;
      DataSet.FieldByName('PesoLiquidoLookup').AsVariant := DM.SQLTemplate.FindField('PRODN3PESOLIQ').AsVariant;
      DataSet.FieldByName('ValorCompraLookUp').AsVariant := DM.SQLTemplate.FindField('PRODN3VLRCOMPRA').AsVariant;
      DataSet.FieldByName('CodAntigoLookup').AsVariant := DM.SQLTemplate.FindField('PRODA15CODANT').AsVariant;
      DataSet.FieldByName('ControlaSerieLookup').AsVariant := DM.SQLTemplate.FindField('PRODCTEMNROSERIE').AsVariant;
    end
    else
    begin
      DataSet.FieldByName('ProdutoLookup').asString := MensagemLookUp;
      DataSet.FieldByName('GradeCodLookup').AsVariant := NULL;
      DataSet.FieldByName('AgrupGradeLookup').AsVariant := NULL;
      DataSet.FieldByName('ReferenciaLookup').AsVariant := MensagemLookUp;
      DataSet.FieldByName('NCMLookup').AsVariant := NULL;
      DataSet.FieldByName('ServicoLookup').AsVariant := NULL;
      DataSet.FieldByName('PesoBrutoLookup').AsVariant := NULL;
      DataSet.FieldByName('PesoLiquidoLookup').AsVariant := NULL;
      DataSet.FieldByName('ValorCompraLookUp').AsVariant := NULL;
      DataSet.FieldByName('CodAntigoLookup').AsVariant := MensagemLookUp;
      DataSet.FieldByName('NCMLookup').AsVariant := NULL;
      DataSet.FieldByName('ControlaSerieLookup').AsVariant := NULL;
    end;
  end
  else
  begin
    DataSet.FieldByName('ProdutoLookup').AsVariant := Null;
    DataSet.FieldByName('GradeCodLookup').AsVariant := NULL;
    DataSet.FieldByName('AgrupGradeLookup').AsVariant := NULL;
    DataSet.FieldByName('ReferenciaLookup').AsVariant := NULL;
    DataSet.FieldByName('NCMLookup').AsVariant := NULL;
    DataSet.FieldByName('ServicoLookup').AsVariant := NULL;
    DataSet.FieldByName('PesoBrutoLookup').AsVariant := NULL;
    DataSet.FieldByName('PesoLiquidoLookup').AsVariant := NULL;
    DataSet.FieldByName('ValorCompraLookUp').AsVariant := NULL;
    DataSet.FieldByName('ControlaSerieLookup').AsVariant := NULL;
  end;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplatePRODICODChange(Sender: TField);
var
  BaseCalculo: Double;
  BKPBookMark: TBookMark;
  vISSQN: Extended;
  xUnidade1, xUnidade2: string;
begin
  inherited;
  EditProduto.Text := SQLTemplate.FieldByName((Sender as TField).FieldName).AsString;
  if DM.GerandoNotaFiscal then
    Exit;
  if (SQLTemplatePRODICOD.AsVariant <> null) and (SQLTemplate.State = dsInsert) and (DM.ProcuraRegistro('PRODUTO', ['PRODICOD'], [SQLTemplatePRODICOD.AsString], 1)) then
  begin
      // Alimenta Variavel ICMSCod para nao dar erro quando tem GRADE
    IcmsCod := DM.SQLTemplate.FindField('ICMSICOD').AsInteger;
    SitTrib := DM.SQLTemplate.FindField('PRODISITTRIB').AsString;
    ReducaoBase := DM.SQLTemplate.FindField('PERC_REDUCAO_BASE_CALCULO').AsFloat;

      // Verifica CFOP Auxiliar
    SQLTemplateCFOPA5CODAUX.AsString := Busca_CFOP(SQLTemplate.DataSource.DataSet.FindField('OPESICOD').AsInteger, DM.SQLTemplate.FindField('PRODIORIGEM').AsInteger, DM.SQLTemplate.FindField('PRODISITTRIB').AsInteger);

      // Verifica Produto Com Subs. Tributária
    if (not DM.GerandoNotaFiscal) and (not DM.ImportandoColetor) and (not DM.ImportandoPedidoVenda) then
    begin
      if TemProdutoSemSubsTrib then
        if DM.SQLTemplate.FieldByName('PRODCSUBSTRIB').AsString = 'S' then
          if DM.SQLConfigVenda.FieldByName('CFVECINFPRODSUBTRI').AsString = 'S' then
          begin
            Informa('Já existe(m) produto(s) SEM substituição tributária nesta venda, você deve fazer uma nota fiscal separada para produtos COM substituição tributária!' + #13 + 'Para maiores informações contate o suporte!');
            SQLTemplate.Cancel;
            Abort;
            Exit;
          end;
      if TemProdutoComSubsTrib then
        if DM.SQLTemplate.FieldByName('PRODCSUBSTRIB').AsString <> 'S' then
          if DM.SQLConfigVenda.FieldByName('CFVECINFPRODSUBTRI').AsString = 'S' then
          begin
            Informa('Já existe(m) produto(s) COM substituição tributária nesta venda, você deve fazer uma nota fiscal separada para produtos SEM substituição tributária!' + #13 + 'Para maiores informações contate o suporte!');
            SQLTemplate.Cancel;
            Abort;
            Exit;
          end;
    end;

    if (SQLTemplate.State in DsEditModes) then
    begin
          // Carrega apenas as unidades cadastrados no produto selecionado
      xUnidade1 := SQLLocate('PRODUTO', 'PRODICOD', 'UNIDICOD', SQLTemplatePRODICOD.AsString);
      xUnidade2 := SQLLocate('PRODUTO', 'PRODICOD', 'UNIDICOD2', SQLTemplatePRODICOD.AsString);
      sqlunidade2.close;
      sqlunidade2.MacroByName('Filtro').Value := 'UNIDICOD = ' + xUnidade1;
      if xunidade2 <> '' then
        sqlunidade2.MacroByName('Filtro').Value := sqlunidade2.MacroByName('Filtro').Value + ' or UNIDICOD = ' + xUnidade2;

      if (xUnidade1 = '') then
      begin
        Showmessage('Produto: ' + SQLTemplatePRODICOD.AsString + ' , sem nenhuma Unidade de Venda Varejo Cadastrada! Verifique Cadastro!');
        Abort;
        Exit;
      end;
      sqlunidade2.open;
          // Seta a Unidade1 como padrao
      SQLTemplateUNIDICOD.AsString := xUnidade1;

      Ocupado := True;
      BaseCalculo := 0;
      if SQLTemplate.DataSource.DataSet.FindField('CampoImpostoLookUp').asString = '' then
      begin
        ShowMessage('Tipo de movimentação não tem campo para cálculo de ICMS!');
        Abort;
      end
      else if DM.SQLTemplate.FindField(SQLTemplate.DataSource.DataSet.FindField('CampoImpostoLookUp').asString).asFloat <> 0 then
        if (AnsiUpperCase(SQLTemplate.DataSource.DataSet.FindField('CampoImpostoLookUp').asString) = 'PRODN3VLRVENDA') then
          SQLTemplateNFITN2VLRUNIT.asFloat := RetornaPreco(DM.SQLTemplate, DM.SQLConfigVenda.FieldByName('TPRCICOD').asString, SQLTemplate.DataSource.DataSet.FieldByName('CliFornEmpTabelaPrecoLookUp').asString)
        else
          SQLTemplateNFITN2VLRUNIT.asFloat := DM.SQLTemplate.FindField(SQLTemplate.DataSource.DataSet.FindField('CampoImpostoLookUp').asString).asFloat;

          // Deprecia em 20% se tiver data imobilizado
      if DM.SQLTemplate.FindField('PRODDIMOBOLIZ').asVariant = Null then
        if (SQLTemplate.DataSource.DataSet.FindField('NOFIDEMIS').asDateTime - DM.SQLTemplate.FindField('PRODDIMOBOLIZ').asDateTime < 365) then
          SQLTemplateNFITN2VLRUNIT.asFloat := SQLTemplateNFITN2VLRUNIT.asFloat - (SQLTemplateNFITN2VLRUNIT.asFloat * 0.20);

      if (SQLTemplate.DataSource.DataSet.FindField('CalcIPILookUp').asString = 'S') then
      begin
        if (DM.SQLTemplate.FindField('PRODN3PERCIPI').asFloat <> 0) then
          SQLTemplateNFITN2PERCIPI.asFloat := DM.SQLTemplate.FindField('PRODN3PERCIPI').asFloat;
        SQLTemplateNFITN2VLRIPI.asFloat := StrToFloat(FormatFloat('0.00', ((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat) * (SQLTemplateNFITN2PERCIPI.asFloat / 100)));
      end;

      if DM.SQLTemplate.FindField('PRODCSERVICO').asString = 'S' then
      begin
        if DM.SQLTemplate.FindField('PRODA255DESCRTEC').AsString <> '' then
          SQLTemplateNFITA254OBS.Text := DM.SQLTemplate.FindField('PRODA255DESCRTEC').AsString;
        try
          vISSQN := StrToFloat(SQLLocate('CIDADE', 'CIDAA60NOME', 'CIDAN3ISSQN', '''' + DSMasterTemplate.DataSet.FieldbyName('CLIFORNEMPCIDADELOOKUP').AsString + ''''));
        except
          vISSQN := 0;
        end;

        if vISSQN > 0 then
        begin
          SQLTemplateNFITN2PERCISSQN.asFloat := vISSQN;
          SQLTemplateNFITN2VLRISSQN.asFloat := ((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat) * (vISSQN / 100);
        end
        else
        begin
          SQLTemplateNFITN2PERCISSQN.asFloat := DM.SQLConfigVenda.FieldByName('CFVEN3ALIQISSQN').asFloat;
          SQLTemplateNFITN2VLRISSQN.asFloat := ((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat) * (SQLTemplateNFITN2PERCISSQN.asFloat / 100);
        end;
      end;

          // Carrega Array de ICMS conforme UF do Destinatario
      if SQLTemplate.DataSource.DataSet.FindField('EmpresaUFLookUp').asString <> SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString then
        nResultICMS := BuscaIcmsUf
      else
        nResultICMS := BuscaIcms;

          // Alimenta campo de Codigo de Situação Tributária
      if DSMasterTemplate.DataSet.FieldByName('CliFornEmpFisicaJuridica').AsString = 'J' then
        SQLTemplateNFITICST.AsString := nResultICMS.nSTJuridica
      else
        SQLTemplateNFITICST.AsString := nResultICMS.nSTFisica;

          // se não localizou situação nas linhas acima, busca no cadastro de produtos
      if (SQLTemplateNFITICST.AsString = '') or (SQLTemplateNFITICST.IsNull) then
        SQLTemplateNFITICST.AsString := SQLLocate('PRODUTO', 'PRODICOD', 'PRODISITTRIB', SQLTEMPLATEPRODICOD.AsString);


          // Se a Oper. de Estoque Calcula ICMS
      if (SQLTemplate.DataSource.DataSet.FindField('CalcICMSLookUp').asString = 'S') then
        SQLTemplateNFITN2PERCICMS.asFloat := nResultICMS.nICMS;

          // Se a Oper. de Estoque Calcula Subst. Tribut.
      if (SQLTemplate.DataSource.DataSet.FindField('CalcSUBSTLookUp').asString = 'S') then
        SQLTemplateNFITN2PERCSUBS.asFloat := nResultICMS.nMVA;

      if ReducaoBase > 0 then
        SQLTemplateNFITN2PERCREDUCAO.asFloat := ReducaoBase
      else
        SQLTemplateNFITN2PERCREDUCAO.asFloat := nResultICMS.nRED_ICMS;

          // Efetua o Calculo dos Impostos
      if not ocupado then
        CalculaImpostos;

      Ocupado := False;
    end;

    if (not DM.ImportandoPedidoVenda) and (SQLTemplate.FindField('GradeCodLookUp').asVariant <> Null) and (SQLTemplate.FindField('AgrupGradeLookUp').asVariant <> Null) then
      CriaFormulario(TFormTelaLancamentoGradeNotaFiscal, 'FormTelaLancamentoGradeNotaFiscal', False, False, True, '')
    else
    begin
      SaldoAtual.Caption := '0';
      SaldoAtual.Update;
      if not FileExists('NaoMostraSaldoConsultaProduto.Arq') then
      begin
        SQLGeral.Close;
        SQLGeral.SQL.Clear;
        SQLGeral.SQL.Add('select PSLDN3QTDE, PSLDN3QTDMIN, PSLDN3QTDMAX from PRODUTOSALDO');
        SQLGeral.SQL.Add('where EMPRICOD = ' + EmpresaPadrao);
        SQLGeral.SQL.Add('and   PRODICOD = ' + SQLTemplate.FieldByName('PRODICOD').AsString);
        SQLGeral.Open;
        if not SQLGeral.Eof then
        begin
          SaldoAtual.Caption := FloatToStr(SQLGeral.FieldByName('PSLDN3QTDE').asFloat);
          SaldoAtual.Update;
          if SQLGeral.FieldByName('PSLDN3QTDMIN').Value > 0 then
            if SQLGeral.FieldByName('PSLDN3QTDMIN').Value > SQLGeral.FieldByName('PSLDN3QTDE').Value then
              SaldoAtual.Font.Color := clRed;
          if SQLGeral.FieldByName('PSLDN3QTDMAX').Value > 0 then
            if SQLGeral.FieldByName('PSLDN3QTDMAX').Value < SQLGeral.FieldByName('PSLDN3QTDE').Value then
              SaldoAtual.Font.Color := clBlue;
        end;
        SQLGeral.Close;
      end;
    end;
    if Ocupado then
      Exit;
    Ocupado := True;
    CalculaImpostos;
    Ocupado := False;
  end;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateNFITN2VLRUNITChange(Sender: TField);
begin
  inherited;
  if Ocupado then
    Exit;
  Ocupado := True;
  CalculaImpostos;
  Ocupado := False;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateNFITN2VLRIPIChange(Sender: TField);
begin
  inherited;
  if Ocupado then
    Exit;
  Ocupado := True;
  if (SQLTemplate.DataSource.DataSet.FindField('CalcIPILookUp').asString = 'S') then
    if (SQLTemplateNFITN2VLRIPI.asFloat > 0) and (((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat) > 0) then
      SQLTemplateNFITN2PERCIPI.asFloat := (SQLTemplateNFITN2VLRIPI.asFloat / ((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat)) * 100
    else
    begin
      SQLTemplateNFITN2VLRIPI.asFloat := 0;
      SQLTemplateNFITN2PERCIPI.asFloat := 0;
    end;
  Ocupado := False;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateNFITN2PERCIPIChange(Sender: TField);
begin
  inherited;
  if Ocupado then
    Exit;
  Ocupado := True;
  if (SQLTemplate.DataSource.DataSet.FindField('CalcIPILookUp').asString = 'S') then
    if (SQLTemplateNFITN2PERCIPI.asFloat > 0) and (((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat) > 0) then
      SQLTemplateNFITN2VLRIPI.asFloat := StrToFloat(FormatFloat('0.00', ((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat) * (SQLTemplateNFITN2PERCIPI.asFloat / 100)))
    else
      SQLTemplateNFITN2VLRIPI.asFloat := 0;
  Ocupado := False;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateNFITN3QUANTChange(Sender: TField);
begin
  inherited;
  if Ocupado then
    Exit;
  Ocupado := True;
  CalculaImpostos;
  Ocupado := False;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateNFITN2PERCDESCChange(Sender: TField);
begin
  inherited;
  if Ocupado then
    Exit;
  Ocupado := True;
  if (SQLTemplateNFITN2PERCDESC.asFloat > 0) then
    SQLTemplateNFITN2VLRDESC.asFloat := (SQLTemplateNFITN2VLRUNIT.AsFloat * SQLTemplateNFITN3QUANT.asFloat) * (SQLTemplateNFITN2PERCDESC.asFloat / 100)
  else
    SQLTemplateNFITN2VLRDESC.asFloat := 0;

//  If Ocupado Then Exit;
  CalculaImpostos;
  Ocupado := False;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateNFITN2VLRDESCChange(Sender: TField);
begin
  inherited;
  if Ocupado then
    Exit;
  Ocupado := True;
  if (SQLTemplateNFITN2VLRDESC.asFloat > 0) then
    SQLTemplateNFITN2PERCDESC.asFloat := (SQLTemplateNFITN2VLRDESC.asFloat / (SQLTemplateNFITN2VLRUNIT.AsFloat * SQLTemplateNFITN3QUANT.asFloat)) * 100
  else
    SQLTemplateNFITN2PERCDESC.asFloat := 0;
 // If Ocupado Then Exit;
  CalculaImpostos;
  Ocupado := False;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateNOFIA13ID.Value := DataSet.DataSource.DataSet.FindField('NOFIA13ID').Value;
  SQLTemplateNFITN3QUANT.asFloat := 1;
  SQLTemplateNFITN2BASEICMS.asFloat := 0;
  SQLTemplateNFITN2BASESUBS.asFloat := 0;
  SQLTemplateNFITN2PERCDESC.asFloat := 0;
  SQLTemplateNFITN2PERCICMS.asFloat := 0;
  SQLTemplateNFITN2PERCIPI.asFloat := 0;
  SQLTemplateNFITN2PERCISSQN.asFloat := 0;
  SQLTemplateNFITN2PERCSUBS.asFloat := 0;
  SQLTemplateNFITN2VLRDESC.asFloat := 0;
  SQLTemplateNFITN2VLRFRETE.asFloat := 0;
  SQLTemplateNFITN2VLRICMS.asFloat := 0;
  SQLTemplateNFITN2VLRIPI.asFloat := 0;
  SQLTemplateNFITN2VLRISSQN.asFloat := 0;
  SQLTemplateNFITN2VLRLUCRO.asFloat := 0;
  SQLTemplateNFITN2VLRSUBS.asFloat := 0;
  SQLTemplateNFITN2VLRUNIT.asFloat := 0;
  SQLTemplateNFITN2BC_IMP.AsFloat := 0;
  SQLTemplateNFITN2VALOR_DA.AsFloat := 0;
  SQLTemplateNFITN2VALOR_II.AsFloat := 0;
  SQLTemplateNFITN2VALOR_IOF.AsFloat := 0;
  SQLTemplateREGISTRO.Value := Now;
  EditProduto.Clear;
  EditProduto.SetFocus;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateBeforePost(DataSet: TDataSet);
var
  NumeroSerie: string;
  I: integer;
begin
  if not DM.ImportandoPedidoVenda then
  begin
    if (DM.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S') and (SQLTemplateLOTEA30NRO.AsString = '') then
      if Application.MessageBox('O número do lote não foi informado, Deseja continuar mesmo assim ?', 'Advanced Control', MB_YESNO + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONQUESTION + MB_DEFBUTTON1) = IdNo then
      begin
        SQLTemplateLOTEA30NRO.FocusControl;
        Abort;
      end;

    if (SQLTemplateNFITN2VLRUNIT.asFloat = 0) then
    begin
      ShowMessage('O valor unitário não pode ser zero!');
      SQLTemplateNFITN2VLRUNIT.FocusControl;
      Abort;
    end;

    if (SQLTemplateNFITN3QUANT.asFloat = 0) then
    begin
      ShowMessage('A quantidade não pode ser zero!');
      SQLTemplateNFITN3QUANT.FocusControl;
      Abort;
    end;

    if SQLLocate('PRODUTO', 'PRODICOD', 'PRODCSUBSTRIB', SQLTemplatePRODICOD.AsString) = 'S' then
      TemProdutoComSubsTrib := True
    else
      TemProdutoSemSubsTrib := True;
  end;

  if ((SQLTemplateNFITICST.asFloat = 2) or (SQLTemplateNFITICST.asFloat = 4) or (SQLTemplateNFITICST.asFloat = 6)) then
  begin
    ShowMessage('Regra de Validação! CST Inválida!');
    Abort;
  end;

  if ((SQLTemplateNFITICST.asFloat = 40) or (SQLTemplateNFITICST.asFloat = 41) or (SQLTemplateNFITICST.asFloat = 60)) and ((SQLTemplateNFITN2VLRICMS.asFloat > 0) or (SQLTemplateNFITN2VLRSUBS.asFloat > 0)) then
  begin
    ShowMessage('Nova Regra de Validação Cst40,Cst41 o Valor de ICMs e ICMs ST não pode ser maior que zero!');
    Abort;
  end;

  if ((SQLTemplateNFITICST.asFloat = 0) or (SQLTemplateNFITICST.asFloat = 10) or (SQLTemplateNFITICST.asFloat = 20)) and (SQLTemplateNFITN2VLRICMS.asFloat = 0) then
  begin
    ShowMessage('Nova Regra de Validação Cst0,Cst10 o Valor de ICMs é obrigado ser maior que zero!');
    Abort;
  end;

  inherited;

  if DataSet.FieldByName('NFITN3QUANT').asFloat > DataSet.FieldByName('NFITN3TOTVEND').asFloat then
    DataSet.FieldByName('NFITN3QUANTVEND').asFloat := DataSet.FieldByName('NFITN3TOTVEND').asFloat
  else
    DataSet.FieldByName('NFITN3QUANTVEND').asFloat := DataSet.FieldByName('NFITN3QUANT').asFloat;

  if FileExists('VFNota.txt') then // exibe o valor final (total custo + subst. Trib.) ao lado do nome do produto.
    DataSet.FieldByName('NFITA254OBS').AsString := CalculaSubstituicaoTributaria;

  if DataSet.FieldByName('ServicoLookup').asString = 'S' then
  begin
    NovoTotalQuant := 0;
    NovoTotalPesoBruto := 0;
    NovoTotalPesoLiquido := 0;
    NovoTotalItem := 0;
    NovoTotalBASCALCICMS := 0;
    NovoTotalVLRICMS := 0;
    NovoTotalBASCALCSUBS := 0;
    NovoTotalVLRSUBS := 0;
    NovoTotalBASCALCCIPI := 0;
    NovoTotalVLRIPI := 0;
    NovoTotalVLRSEGURO := 0;
    NovoTotalVLRFrete := 0;
    NovoTotalVLROutrasdesp := 0;
    NovoTotalVLRPIS := 0;
    NovoTotalVLRCOFINS := 0;
  end
  else
  begin
    NovoTotalQuant := SQLTemplateNFITN3QUANT.AsFloat;
    NovoTotalPesoBruto := SQLTemplatePesoBrutoLookUp.asFloat * SQLTemplateNFITN3QUANT.asFloat;
    NovoTotalPesoLiquido := SQLTemplatePesoLiquidoLookUp.asFloat * SQLTemplateNFITN3QUANT.asFloat;
    NovoTotalItem := ((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat);
    NovoTotalBASCALCICMS := SQLTemplateNFITN2BASEICMS.asFloat;
    NovoTotalVLRICMS := SQLTemplateNFITN2VLRICMS.asFloat;
    NovoTotalBASCALCSUBS := SQLTemplateNFITN2BASESUBS.asFloat;
    NovoTotalVLRSUBS := SQLTemplateNFITN2VLRSUBS.asFloat;
    if SQLTemplateNFITN2VLRIPI.asFloat > 0 then
      NovoTotalBASCALCCIPI := ((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat)
    else
      NovoTotalBASCALCCIPI := 0;
    NovoTotalVLRIPI := SQLTemplateNFITN2VLRIPI.asFloat;
    NovoTotalVLRSEGURO := SQLTemplateNFITN2SEGURO.AsFloat;
    NovoTotalVLRFrete := SQLTemplateNFITN2VLRFRETE.AsFloat;
    NovoTotalVLROutrasdesp := SQLTemplateNFITN2OUTRASDESP.AsFloat;
  end;
  NovoTotalDesc := SQLTemplateNFITN2VLRDESC.asFloat;
  if DataSet.FieldByName('ServicoLookup').asString = 'S' then
    NovoTotalVLRSERVICO := ((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat)
  else
    NovoTotalVLRSERVICO := 0;
  NovoTotalISSQN := SQLTemplateNFITN2VLRISSQN.asFloat;
  NovaQtdePed := SQLTemplateNFITN3QUANTVEND.asFloat;
  CodigoPedido := DataSet.FindField('PDVDA13ID').asString;
  PosicaoItem := DataSet.FindField('PVITIITEM').asInteger;

  {Atualiza Pis Cofins}
  dm.sqlconsulta.close;
  dm.sqlconsulta.sql.clear;
  dm.sqlconsulta.sql.text := 'select PRODA2CSTPIS,PRODN2ALIQPIS,PRODA2CSTCOFINS,PRODN2ALIQCOFINS from produto where prodicod=' + SQLTemplatePRODICOD.AsString;
  dm.sqlconsulta.open;
  SQLTemplateNOFIA2CSTCOFINS.AsString := dm.sqlconsulta.fieldbyname('PRODA2CSTCOFINS').AsString;
  SQLTemplateNOFIA2CSTPIS.AsString := dm.sqlconsulta.fieldbyname('PRODA2CSTPIS').AsString;
  SQLTemplateNOFIN3PERCCOFINS.AsString := dm.sqlconsulta.fieldbyname('PRODN2ALIQCOFINS').AsString;
  SQLTemplateNOFIN3PERCPIS.AsString := dm.sqlconsulta.fieldbyname('PRODN2ALIQPIS').AsString;
  if (SQLTemplateNOFIA2CSTPIS.AsString = '01') or (SQLTemplateNOFIA2CSTPIS.AsString = '02') or (SQLTemplateNOFIA2CSTPIS.AsString = '03') or (SQLTemplateNOFIA2CSTPIS.AsString = '04') or (SQLTemplateNOFIA2CSTPIS.AsString = '05') or (SQLTemplateNOFIA2CSTPIS.AsString = '06') then
  begin
    SQLTemplateNOFIN3VLRCOFINS.Value := (((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat) * SQLTemplateNOFIN3PERCCOFINS.value) / 100;
    SQLTemplateNOFIN3VLRPIS.Value := (((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat) * SQLTemplateNOFIN3PERCPIS.value) / 100;
  end
  else
  begin
    SQLTemplateNOFIN3VLRPIS.AsFloat := 0;
    SQLTemplateNOFIN3VLRCOFINS.AsFloat := 0;
  end;
  dm.sqlconsulta.close;

  SQLTemplateControlaSerieLookup.AsVariant := DM.SQLlocate('produto', 'prodicod', 'PRODCTEMNROSERIE', SQLTemplatePRODICOD.AsString);
  if SQLTemplateControlaSerieLookup.AsVariant <> Null then
    if SQLTemplateControlaSerieLookup.AsString = 'S' then
    begin
        // Informa Numero de Serie
      if DSMasterTemplate.DataSet.FieldByName('OrigemDestinoLookUp').AsString <> '' then
      begin
        DataSet.FieldByName('NFITA254OBS').AsString := '';
        NumeroSerie := '';
        Status := 'D';
        CodigoProduto := SQLTemplatePRODICOD.AsString;
        Application.CreateForm(TFormTelaInformaNumeroSerieProduto, FormTelaInformaNumeroSerieProduto);
        FormTelaInformaNumeroSerieProduto.NumeroItens := SQLTemplateNFITN3QUANT.AsInteger;
        FormTelaInformaNumeroSerieProduto.Valida_Qtde := True;
        FormTelaInformaNumeroSerieProduto.ShowModal;
        for I := 1 to SQLTemplateNFITN3QUANT.AsInteger do
        begin
          if FormTelaInformaNumeroSerieProduto.ModalResult = MrOK then
          begin
            FormTelaInformaNumeroSerieProduto.RXSerie.First;
            while not FormTelaInformaNumeroSerieProduto.RXSerie.Eof do
            begin
              if FormTelaInformaNumeroSerieProduto.RXSerieItem.AsInteger = I then
              begin
                NumeroSerie := FormTelaInformaNumeroSerieProduto.RXSerieNumeroSerie.Text;
                if NumeroSerie <> '' then
                  GravaSaidaNroSerieProduto(NumeroSerie,
                    SQLTemplatePRODICOD.AsString,
                    'I',
                    EmpresaPadrao,
                    DSMasterTemplate.DataSet.FieldByName('CLIEA13ID').AsString, '', '',
                    DSMasterTemplate.DataSet.FieldByName('NOFIA13ID').AsString, '');
                if DataSet.FieldByName('NFITA254OBS').AsString = '' then
                  DataSet.FieldByName('NFITA254OBS').AsString := ' Nro Serie: ' + NumeroSerie
                else
                  DataSet.FieldByName('NFITA254OBS').AsString := DataSet.FieldByName('NFITA254OBS').AsString + ', ' + NumeroSerie;
              end;
              FormTelaInformaNumeroSerieProduto.RXSerie.Next;
            end;
          end;
        end;
        FormTelaInformaNumeroSerieProduto.Destroy;
      end;

    end;




end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateAfterPost(DataSet: TDataSet);
var
  I: integer;
var
  NumeroSerie: string;
begin
  inherited;

  CalculaFrete;

  DM.InserindoItemNV := True;

  SQLTemplate.DataSource.DataSet.DisableControls;
  SQLTemplate.DataSource.DataSet.Edit;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := False;

  sqlTotal.close;
  sqlTotal.Macrobyname('ID').Value := 'NOFIA13ID = ''' + SQLTemplate.DataSource.DataSet.FindField('NOFIA13ID').AsString + '''';
  sqlTotal.Open;

  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRPRODUTO').asFloat := SQLTotal.FindField('NOFIN2VLRPRODUTO').asFloat;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRDESC').asFloat := SQLTotal.FindField('NOFIN2VLRDESC').asFloat;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRIPI').asFloat := SQLTotal.FindField('NOFIN2VLRIPI').asFloat;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCICMS').asFloat := SQLTotal.FindField('NOFIN2BASCALCICMS').asFloat;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRICMS').asFloat := SQLTotal.FindField('NOFIN2VLRICMS').asFloat;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCSUBS').asFloat := SQLTotal.FindField('NOFIN2BASCALCSUBS').asFloat;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSUBS').asFloat := SQLTotal.FindField('NOFIN2VLRSUBS').asFloat;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLROUTRASDESP').asFloat := SQLTotal.FindField('NOFIN2VLROUTRASDESP').asFloat;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN3VLRPIS').asFloat := SQLTotal.FindField('NOFIN3VLRPIS').asFloat;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN3VLRCOFINS').asFloat := SQLTotal.FindField('NOFIN3VLRCOFINS').asFloat;

  SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCCIPI').asFloat := (SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCCIPI').asFloat - TotalBASCALCCIPI) + NovoTotalBASCALCCIPI;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRISSQN').asFloat := (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRISSQN').asFloat - TotalISSQN) + NovoTotalISSQN;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSERVICO').asFloat := (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSERVICO').asFloat - TotalVLRSERVICO) + NovoTotalVLRSERVICO;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN3PESBRUT').asFloat := (SQLTemplate.DataSource.DataSet.FindField('NOFIN3PESBRUT').asFloat - TotalPesoBruto) + NovoTotalPesoBruto;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN3PESLIQ').asFloat := (SQLTemplate.DataSource.DataSet.FindField('NOFIN3PESLIQ').asFloat - TotalPesoLiquido) + NovoTotalPesoLiquido;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSEGURO').asFloat := (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSEGURO').asFloat - TotalVLRSEGURO) + NovoTotalVLRSEGURO;

  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRFRETE').asFloat := SQLTotal.FindField('NOFIN2VLRFRETE').asFloat;

  if SQLTemplate.DataSource.DataSet.State in ([dsInsert, dsEdit]) then
    SQLTemplate.DataSource.DataSet.Post;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := True;
  SQLTemplate.DataSource.DataSet.EnableControls;

  if (CodigoPedido <> '') and (NovaQtdePed <> QtdePed) then
    AtualizaPedidoVenda(CodigoPedido, PosicaoItem, QtdePed, NovaQtdePed);
  DM.InserindoItemNV := False;
  Inc(NumItem);

//  if SQLTemplateControlaSerieLookup.AsVariant <> Null then
//    if SQLTemplateControlaSerieLookup.AsString = 'S' then
//    begin
//        // Informa Numero de Serie
//      if DSMasterTemplate.DataSet.FieldByName('OrigemDestinoLookUp').AsString = 'C' then
//      begin
//        NumeroSerie := '';
//        CodigoProduto := SQLTemplatePRODICOD.AsString;
//        Application.CreateForm(TFormTelaInformaNumeroSerieProduto, FormTelaInformaNumeroSerieProduto);
//        FormTelaInformaNumeroSerieProduto.ShowModal;
//        for I := 1 to SQLTemplateNFITN3QUANT.AsInteger do
//        begin
//          if FormTelaInformaNumeroSerieProduto.ModalResult = MrOK then
//          begin
//            FormTelaInformaNumeroSerieProduto.RXSerie.First;
//            while not FormTelaInformaNumeroSerieProduto.RXSerie.Eof do
//            begin
//              if FormTelaInformaNumeroSerieProduto.RXSerieItem.AsInteger = I then
//              begin
//                NumeroSerie := FormTelaInformaNumeroSerieProduto.RXSerieNumeroSerie.Text;
//                if NumeroSerie <> '' then
//                  GravaSaidaNroSerieProduto(NumeroSerie,
//                                            SQLTemplatePRODICOD.AsString,
//                                            'I',
//                                            EmpresaPadrao,
//                                            DSMasterTemplate.DataSet.FieldByName('CLIEA13ID').AsString, '', '',
//                                            DSMasterTemplate.DataSet.FieldByName('NOFIA13ID').AsString, '');
//              end;
//              FormTelaInformaNumeroSerieProduto.RXSerie.Next;
//            end;
//          end;
//        end;
//        FormTelaInformaNumeroSerieProduto.Destroy;
//      end;
//
//    end;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('ServicoLookup').asString = 'S' then
  begin
    TotalQuant := 0;
    TotalPesoBruto := 0;
    TotalPesoLiquido := 0;
    TotalItem := 0;
    TotalBASCALCICMS := 0;
    TotalVLRICMS := 0;
    TotalBASCALCSUBS := 0;
    TotalVLRSUBS := 0;
    TotalBASCALCCIPI := 0;
    TotalVLRIPI := 0;
    TotalVLRSeguro := 0;
    TotalVLRFrete := 0;
    TotalVLROutrasDesp := 0;
    TotalVLRPIS := 0;
    TotalVLRCOFINS := 0;
  end
  else
  begin
    TotalQuant := SQLTemplateNFITN3QUANT.asFloat;
    TotalPesoBruto := SQLTemplatePesoBrutoLookUp.asFloat * SQLTemplateNFITN3QUANT.asFloat;
    TotalPesoLiquido := SQLTemplatePesoLiquidoLookUp.asFloat * SQLTemplateNFITN3QUANT.asFloat;
    TotalItem := ((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat) + SQLTemplateNFITN2VLRDESC.AsFloat; // judi alterou aqui
    TotalBASCALCICMS := SQLTemplateNFITN2BASEICMS.asFloat;
    TotalVLRICMS := SQLTemplateNFITN2VLRICMS.asFloat;
    TotalBASCALCSUBS := SQLTemplateNFITN2BASESUBS.asFloat;
    TotalVLRSUBS := SQLTemplateNFITN2VLRSUBS.asFloat;
    if SQLTemplateNFITN2VLRIPI.asFloat > 0 then
      TotalBASCALCCIPI := ((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat)
    else
      TotalBASCALCCIPI := 0;
    TotalVLRIPI := SQLTemplateNFITN2VLRIPI.asFloat;
    TotalVLRFrete := SQLTemplateNFITN2VLRFRETE.AsFloat;
    TotalVLRSeguro := SQLTemplateNFITN2SEGURO.AsFloat;
    TotalVLROutrasDesp := SQLTemplateNFITN2OUTRASDESP.AsFloat;
  end;
  TotalDesc := SQLTemplateNFITN2VLRDESC.asFloat;
  if DataSet.FieldByName('ServicoLookup').asString = 'S' then
    TotalVLRSERVICO := ((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat)
  else
    TotalVLRSERVICO := 0;
  TotalISSQN := SQLTemplateNFITN2VLRISSQN.asFloat;
  QtdePed := SQLTemplateNFITN3QUANTVEND.asFloat;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if NumItem <= 0 then
  begin
    SQLNumeroItens.Close;
    SQLNumeroItens.Open;
    if SQLNumeroItens.FindField('COUNT').AsVariant <> Null then
      NumItem := SQLNumeroItens.FindField('COUNT').AsInteger
    else
      NumItem := 0;
  end;
  if DM.SQLConfigVenda.FieldByName('CFVEINROITENSNF').Value > 0 then
    if (NumItem = DM.SQLConfigVenda.FieldByName('CFVEINROITENSNF').AsInteger) and (not Dm.ImportandoPedidoVenda) then
    begin
      if Pergunta('SIM', 'O número máximo de itens para uma mesma nota foi alcançado, você deseja iniciar uma nova nota ?') then
      begin
        DM.GerarNovaNota := True;
        Close;
      end
      else
        Exit;
    end;

  TotalQuant := 0;
  TotalPesoBruto := 0;
  TotalPesoLiquido := 0;
  TotalItem := 0;
  TotalDesc := 0;
  TotalBASCALCICMS := 0;
  TotalVLRICMS := 0;
  TotalBASCALCSUBS := 0;
  TotalVLRSUBS := 0;
  TotalBASCALCCIPI := 0;
  TotalVLRIPI := 0;
  TotalVLRSeguro := 0;
  TotalVLRFrete := 0;
  TotalVLRSERVICO := 0;
  TotalISSQN := 0;
  TotalVLRPIS := 0;
  TotalVLRCOFINS := 0;
  QtdePed := 0;
  TotalVLROutrasDesp := 0;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateBeforeDelete(DataSet: TDataSet);
begin
  if DataSet.FieldByName('ServicoLookup').asString = 'S' then
  begin
    TotalQuant := 0;
    TotalPesoBruto := 0;
    TotalPesoLiquido := 0;
    TotalItem := 0;
    TotalBASCALCICMS := 0;
    TotalVLRICMS := 0;
    TotalBASCALCSUBS := 0;
    TotalVLRSUBS := 0;
    TotalBASCALCCIPI := 0;
    TotalVLRIPI := 0;
    TotalVLRSeguro := 0;
    TotalVLRFrete := 0;
    TotalVLROutrasDesp := 0;
    TotalVLRPIS := 0;
    TotalVLRCOFINS := 0;
  end
  else
  begin
    TotalQuant := SQLTemplateNFITN3QUANT.asFloat;
    TotalPesoBruto := SQLTemplatePesoBrutoLookUp.asFloat * SQLTemplateNFITN3QUANT.asFloat;
    TotalPesoLiquido := SQLTemplatePesoLiquidoLookUp.asFloat * SQLTemplateNFITN3QUANT.asFloat;
    TotalItem := ((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat);
    TotalBASCALCICMS := SQLTemplateNFITN2BASEICMS.asFloat;
    TotalVLRICMS := SQLTemplateNFITN2VLRICMS.asFloat;
    TotalBASCALCSUBS := SQLTemplateNFITN2BASESUBS.asFloat;
    TotalVLRSUBS := SQLTemplateNFITN2VLRSUBS.asFloat;
    if SQLTemplateNFITN2VLRIPI.asFloat > 0 then
      TotalBASCALCCIPI := ((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat)
    else
      TotalBASCALCCIPI := 0;
    TotalVLRIPI := SQLTemplateNFITN2VLRIPI.asFloat;
    TotalVLRSEGURO := SQLTemplateNFITN2SEGURO.AsFloat;
    TotalVLRFrete := SQLTemplateNFITN2VLRFRETE.AsFloat;
    TotalVLROutrasdesp := SQLTemplateNFITN2OUTRASDESP.AsFloat;
  end;
  TotalDesc := SQLTemplateNFITN2VLRDESC.asFloat;
  if DataSet.FieldByName('ServicoLookup').asString = 'S' then
    TotalVLRSERVICO := ((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat)
  else
    TotalVLRSERVICO := 0;
  TotalISSQN := SQLTemplateNFITN2VLRISSQN.asFloat;
  QtdePed := SQLTemplateNFITN3QUANTVEND.asFloat;
  CodigoPedido := DataSet.FindField('PDVDA13ID').asString;
  PosicaoItem := DataSet.FindField('PVITIITEM').asInteger;
  inherited;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateAfterDelete(DataSet: TDataSet);
begin
  inherited;
  DM.InserindoItemNV := True;
  SQLTemplate.DataSource.DataSet.DisableControls;
  SQLTemplate.DataSource.DataSet.Edit;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := False;

  sqlTotal.close;
  sqlTotal.Macrobyname('ID').Value := 'NOFIA13ID = ''' + SQLTemplate.DataSource.DataSet.FindField('NOFIA13ID').AsString + '''';
  sqlTotal.Open;

  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRPRODUTO').asFloat := SQLTotal.FindField('NOFIN2VLRPRODUTO').asFloat;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRDESC').asFloat := SQLTotal.FindField('NOFIN2VLRDESC').asFloat;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRIPI').asFloat := SQLTotal.FindField('NOFIN2VLRIPI').asFloat;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCICMS').asFloat := SQLTotal.FindField('NOFIN2BASCALCICMS').asFloat;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRICMS').asFloat := SQLTotal.FindField('NOFIN2VLRICMS').asFloat;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCSUBS').asFloat := SQLTotal.FindField('NOFIN2BASCALCSUBS').asFloat;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSUBS').asFloat := SQLTotal.FindField('NOFIN2VLRSUBS').asFloat;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRFRETE').asFloat := SQLTotal.FindField('NOFIN2VLRFRETE').asFloat;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLROUTRASDESP').asFloat := SQLTotal.FindField('NOFIN2VLROUTRASDESP').asFloat;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN3VLRPIS').asFloat := SQLTotal.FindField('NOFIN3VLRPIS').asFloat;
  SQLTemplate.DataSource.DataSet.FindField('NOFIN3VLRCOFINS').asFloat := SQLTotal.FindField('NOFIN3VLRCOFINS').asFloat;

  SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCCIPI').asFloat := (SQLTemplate.DataSource.DataSet.FindField('NOFIN2BASCALCCIPI').asFloat - TotalBASCALCCIPI);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRISSQN').asFloat := (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRISSQN').asFloat - TotalISSQN);
  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSERVICO').asFloat := (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSERVICO').asFloat - TotalVLRSERVICO);

  SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSEGURO').asFloat := (SQLTemplate.DataSource.DataSet.FindField('NOFIN2VLRSEGURO').asFloat - TotalVLRSEGURO);

  if SQLTemplate.DataSource.DataSet.State in ([dsInsert, dsEdit]) then
    SQLTemplate.DataSource.DataSet.Post;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := True;
  SQLTemplate.DataSource.DataSet.EnableControls;
  if (CodigoPedido <> '') then
    AtualizaPedidoVenda(CodigoPedido, PosicaoItem, QtdePed, 0);
  DM.InserindoItemNV := False;

  if NumItem <= 0 then
  begin
    SQLNumeroItens.Close;
    SQLNumeroItens.Open;
    if SQLNumeroItens.FindField('COUNT').AsVariant <> Null then
      NumItem := SQLNumeroItens.FindField('COUNT').AsInteger
    else
      NumItem := 0;
  end;
  Dec(NumItem);

end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateNFITN2PERCICMSChange(Sender: TField);
begin
  inherited;
  if SQLTemplateNFITN2PERCICMS.Value > 0 then
    nResultICMS.nICMS := SQLTemplateNFITN2PERCICMS.AsFloat;

  if Ocupado then
    Exit;
  CalculaImpostos;
  Ocupado := False;
end;

procedure TFormCadastroNotaFiscalItem.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  if (Sender as TDataSource).State = dsBrowse then
  begin
    SaldoAtual.Enabled := False;
  end
  else
  begin
    SaldoAtual.Enabled := True;
  end;
  if DSMasterTemplate.DataSet.FieldByName('NOFICSTATUS').AsString <> 'A' then
    DesabilitarBotoes(True, True, True, True, True);
end;

procedure TFormCadastroNotaFiscalItem.DBEditLoteExit(Sender: TObject);
begin
  inherited;
  if (Dm.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S') and (SQLTemplate.State in DsEditModes) and (SQLTemplateLOTEA30NRO.AsString = '') then
  begin
    Application.CreateForm(TFormTelaSaldoPorLote, FormTelaSaldoPorLote);
    FormTelaSaldoPorLote.SQLNotaFiscalitem.Close;
    FormTelaSaldoPorLote.SQLNotaFiscalitem.ParamByName('PRODICOD').AsString := SQLTemplatePRODICOD.AsString;
    FormTelaSaldoPorLote.SQLNotaFiscalitem.Open;
    FormTelaSaldoPorLote.SQLLoteSaldo.Close;
    FormTelaSaldoPorLote.SQLLoteSaldo.MacroByName('Produto').AsString := 'PRODICOD = ' + SQLTemplatePRODICOD.AsString;
    FormTelaSaldoPorLote.SQLLoteSaldo.Open;

    FormTelaSaldoPorLote.SQLLoteSaldo.First;
    FormTelaSaldoPorLote.SQLNotaFiscalitem.First;

    FormTelaSaldoPorLote.ShowModal;
    if FormTelaSaldoPorLote.ModalResult = MrOk then
    begin
      SQLTemplateLOTEA30NRO.AsString := FormTelaSaldoPorLote.SQLLoteSaldoLOTEA30NRO.AsString;
    end
    else
      SQLTemplateLOTEA30NRO.AsString := '';

    FormTelaSaldoPorLote.Close;
  end
  else
  begin
    if SQLTemplateLOTEA30NRO.AsString <> '' then
      if SQLLocate('LOTE', 'LOTEA30NRO', 'LOTEA30NRO', '''' + SQLTemplateLOTEA30NRO.AsString + '''') = '' then
      begin
        Informa('O número de lote informado está incorreto ou não foi cadastrado. Tente novamente !');
        (Sender as TDBEdit).SetFocus;
      end;
  end;
  if SQLTemplate.FieldByName('PRODICOD').AsVariant <> Null then
    DBEdit9.SetFocus;
end;

procedure TFormCadastroNotaFiscalItem.DSTemplateDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  LabelLote.Visible := Dm.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S';
  DBEditLote.Visible := Dm.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S';
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateNFITN2PERCSUBSChange(Sender: TField);
begin
  inherited;
  if Ocupado then
    Exit;
  CalculaImpostos;
end;

procedure TFormCadastroNotaFiscalItem.EditProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnProduto.Click;
  if Key = VK_RETURN then
  begin
    if (EditProduto.Text <> '') and (SQLTemplate.State in DSEditModes) then
    begin
      case RadioPesquisa.ItemIndex of
        0:
          begin
            FindProduct(EditProduto, SQLTemplate.FieldByName('PRODICOD'));
          end;
        1:
          begin
            SQLTemplate.FieldByName('PRODICOD').AsInteger := ProcuraProdutoPorCodigoAntigo(EditProduto.Text);
          end;
        2:
          begin
            SQLTemplate.FieldByName('PRODICOD').AsInteger := ProcuraProdutoPorReferencia(EditProduto.Text);
          end;
      end;
    end
    else
    begin
      ProdutoDescricao := '';
      FieldLookup := SQLTemplate.FieldByName('PRODICOD');
      FieldOrigem := 'PRODICOD';
      CriaFormulario(TFormTelaConsultaProduto, 'FormTelaConsultaProduto', False, True, False, '');
    end;
  end;
  if Key = VK_F3 then
  begin
    ProdutoDescricao := '';
    FieldLookup := SQLTemplate.FieldByName('PRODICOD');
    FieldOrigem := 'PRODICOD';
    CriaFormulario(TFormTelaConsultaProduto, 'FormTelaConsultaProduto', False, True, False, '');
  end;
end;

procedure TFormCadastroNotaFiscalItem.EditProdutoExit(Sender: TObject);
begin
  inherited;
  if EditProduto.Text <> '' then
    if DBEditLote.Visible then
      DBEditLote.SetFocus
    else
      DBEdit9.SetFocus;
end;

procedure TFormCadastroNotaFiscalItem.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (((Sender as TForm).ActiveControl <> EditProduto) and (RadioPesquisa.ItemIndex <> 0)) or ((Application.FindComponent('FormTelaConsultaProduto') = nil) and (Application.FindComponent('FormTelaLancamentoGradeNotaFiscal') = nil)) then
    inherited;

end;

procedure TFormCadastroNotaFiscalItem.EditProdutoEnter(Sender: TObject);
begin
  inherited;
  EditProduto.SelectAll;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateNFITN2PERCREDUCAOChange(Sender: TField);
begin
  inherited;
  Reducao := SQLTemplateNFITN2PERCREDUCAO.AsFloat;
  if Ocupado then
    Exit;
  CalculaImpostos;
end;

procedure TFormCadastroNotaFiscalItem.btnNmerosdeSerieClick(Sender: TObject);
begin
  inherited;
  if SQLTemplateControlaSerieLookup.AsVariant <> Null then
    if SQLTemplateControlaSerieLookup.AsString = 'S' then
    begin
      Application.CreateForm(TFormTelaGeralModalCadastroProdutoNumeroSerie, FormTelaGeralModalCadastroProdutoNumeroSerie);
      FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.Close;
      FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.MacroByName('MFiltro').AsString := 'NOFIA13ID = ''' + SQLTemplateNOFIA13ID.AsString + ''' AND PRODICOD = ' + SQLTemplatePRODICOD.AsString;
      FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.Open;
      FormTelaGeralModalCadastroProdutoNumeroSerie.CodProduto := SQLTemplatePRODICOD.AsInteger;
      FormTelaGeralModalCadastroProdutoNumeroSerie.Destino := DSMasterTemplate.DataSet.FieldByName('OrigemDestinoLookUp').AsString;
      FormTelaGeralModalCadastroProdutoNumeroSerie.IDNotaFiscal := SQLTemplateNOFIA13ID.AsString;
      FormTelaGeralModalCadastroProdutoNumeroSerie.IDCliente := DSMasterTemplate.DataSet.FieldByName('CLIEA13ID').AsString;
      FormTelaGeralModalCadastroProdutoNumeroSerie.RazaoSocial := DSMasterTemplate.DataSet.FieldByName('CliFornEmpLookUp').AsString;
      FormTelaGeralModalCadastroProdutoNumeroSerie.CodEmpresa := DSMasterTemplate.DataSet.FieldByName('EMPRICODDEST').AsString;
      FormTelaGeralModalCadastroProdutoNumeroSerie.CodFornecedor := DSMasterTemplate.DataSet.FieldByName('FORNICOD').AsString;
      FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Caption := FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Caption + ' - ' + SQLTemplateProdutoLookUp.AsString;
      FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Update;
      FormTelaGeralModalCadastroProdutoNumeroSerie.Status := 'I';
      FormTelaGeralModalCadastroProdutoNumeroSerie.ShowModal;
    end;
end;

procedure TFormCadastroNotaFiscalItem.MnImportarProdutosdeOutraNotaFiscalClick(Sender: TObject);
begin
  inherited;
  SQLTemplate.DisableControls;
  Application.CreateForm(TFormTelaNotaFiscalItemFiltro, FormTelaNotaFiscalitemFiltro);
  FormTelaNotaFiscalitemFiltro.LabelTitulo.Caption := 'Importar Produtos apartir de outra Nota Fiscal Emitida';
  FormTelaNotaFiscalItemFiltro.ShowModal;
  if FormTelaNotaFiscalItemFiltro.ModalResult = MrOk then
  begin
    FormTelaNotaFiscalItemFiltro.TblTemporaria.First;
    while not FormTelaNotaFiscalItemFiltro.TblTemporaria.Eof do
    begin
      if FormTelaNotaFiscalitemFiltro.TblTemporariaQTDENFDest.Value > 0 then
      begin
        SQLTemplate.Append;
        SQLTemplatePRODICOD.Value := FormTelaNotaFiscalItemFiltro.TblTemporariaPRODICOD.Value;
        SQLTemplateNFITN3QUANT.Value := FormTelaNotaFiscalItemFiltro.TblTemporariaQTDENFDest.Value;
        SQLTemplateNFITN2VLRUNIT.Value := FormTelaNotaFiscalItemFiltro.TblTemporariaPRODN3VLRVENDA.Value;
        SQLTemplateNFITN2PERCDESC.Value := FormTelaNotaFiscalItemFiltro.EditDesconto.Value;
        SQLTemplate.Post;
      end;
      FormTelaNotaFiscalitemFiltro.TblTemporaria.Next;
    end;
  end;
  SQLTemplate.EnableControls;
  SQLTemplate.Close;
  SQLTemplate.Open;
end;

procedure TFormCadastroNotaFiscalItem.BitBtn1Click(Sender: TObject);
var
  nTotal, nAntigo: Extended;
begin
  inherited;
  nAntigo := ((SQLTemplateNFITN2VLRUNIT.asFloat * SQLTemplateNFITN3QUANT.asFloat) - SQLTemplateNFITN2VLRDESC.AsFloat);
  nTotal := StrToFloat(InputBox('R$ Total', 'R$ Total do Item:', SQLTemplateTotalItemCalc.AsString));
  if not (SQLTemplate.State in ([dsEdit, dsInsert])) then
    SqlTemplate.Edit;
  if nTotal = 0 then
    SQLTemplateNFITN3TOTVEND.Clear
  else
  begin
    SQLTemplateNFITN3TOTVEND.Value := nTotal;
    SQLTemplateNFITN2VLRDESC.OnChange := nil;
    SQLTemplateNFITN2VLRDESC.asFloat := (nTotal) * (SQLTemplateNFITN2PERCDESC.asFloat / 100);
    SQLTemplateNFITN2VLRDESC.OnChange := SQLTemplateNFITN2VLRDESCChange;
  end;
end;

procedure TFormCadastroNotaFiscalItem.Button3Click(Sender: TObject);
begin
  inherited;
  PagePrincipal.ActivePage := PaginaImportacao;
end;

function TFormCadastroNotaFiscalItem.Busca_CFOP(Operacao: Integer; Origem: Integer; CST: Integer): string;
begin
  SQLICMSUF.Close;
  SQLICMSUF.SQL.Text := 'Select * From OPERACAOESTOQUECFOP Where OPESICOD = :xOp and CSTICMS = :xCst and ORIGEMMERC = :xOrigem';
  SQLIcmsUF.ParamByName('xOp').AsInteger := Operacao;
  SQLIcmsUF.ParamByName('xCst').AsInteger := CST;
  SQLIcmsUF.ParamByName('xOrigem').AsInteger := Origem;
  SQLIcmsUF.Open;

  if SQLTemplate.DataSource.DataSet.FindField('EmpresaUFLookUp').asString <> SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString then
    Result := SQLIcmsUF.Fieldbyname('CFOPVENDAFORAUF').AsString
  else
    Result := SQLIcmsUF.Fieldbyname('CFOPVENDANOUF').AsString;

  SQLICMSUf.Close;

end;

function TFormCadastroNotaFiscalItem.BuscaIcms: TICMSUF;
var
  nICMSUF: TICMSUF;
begin
  SQLICMS.Close;
  SQLICMS.ParamByName('ICMSICOD').asInteger := IcmsCod;
  SQLICMS.Open;

  if SQLICMS.IsEmpty then
  begin
    ShowMessage('ATENÇÃO...' + #13#10 + #13#10 + 'Alíquota de ICMS não cadastrado na tabela de ICMS!');
    nICMSUF.nICMS := 0;
    nICMSUF.nRED_ICMS := 0;
    nICMSUF.nICMS_INTERNO := 0;
    nICMSUF.nMVA := 0;
    nICMSUF.nSTFisica := '';
    nICMSUF.nSTJuridica := '';
  end
  else
  begin
    nICMSUF.nICMS := SQLICMS.FindField('ICMSN2ICMSM1').asFloat;
    nICMSUF.nRED_ICMS := SQLICMS.FindField('ICMSN2REDBASEICMS').asFloat;
    nICMSUF.nICMS_INTERNO := SQLICMS.FindField('ICMSN2ICMSM1').asFloat;
    nICMSUF.nMVA := SQLICMS.FindField('ICMSN2PERCSUBSTSAI').asFloat;
    nICMSUF.nSTFisica := SitTrib;
    nICMSUF.nSTJuridica := SitTrib;
  end;
  Result := nICMSUF;
end;

function TFormCadastroNotaFiscalItem.BuscaIcmsUf: TICMSUF;
var
  SQLText, nNCM: string;
  nProduto: Integer;
  nICMSUF: TICMSUF;
begin
  SQLText := 'Select * From ICMSUF Where ';
  nProduto := 0;
  nNCM := '';

  // Pesquisa o UF + Cod.Produto para ver se existe algum registro especifico ao Cod Produto digitado
  SQLICMSUF.Close;
  SQLICMSUF.SQL.Text := 'Select * From ICMSUF Where ICMUA2UF =:ICMUA2UF AND PRODICOD = :pPRODICOD';
  SQLICMSUF.ParamByName('ICMUA2UF').asString := SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString;
  SQLICMSUF.ParamByName('pPRODICOD').AsString := SQLTemplatePRODICOD.AsString;
  SQLICMSUF.Open;

  // se obtiver algum registro como resultado cria o parametro para busca agregada ao produto caso contrario busca registro com NCM
  if not SQLICMSUF.IsEmpty then
    nProduto := SQLTemplatePRODICOD.AsInteger
  else
  begin
    SQLICMSUF.Close;
    SQLICMSUF.SQL.Text := 'Select * From ICMSUF Where ICMUA2UF =:ICMUA2UF AND NCMA30CODIGO = :pNCM';
    SQLICMSUF.ParamByName('ICMUA2UF').asString := SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString;
    SQLICMSUF.ParamByName('pNCM').AsString := SQLTemplateNCMLookUp.AsString;
    SQLICMSUF.Open;
    // se obtiver algum registro como resultado cria o parametro para busca agregada ao NCM
    if not SQLICMSUF.IsEmpty then
      nNCM := SQLTemplateNCMLookUp.AsString;
  end;

  // Fecha e cria o novo SQL de Pesquisa
  SQLICMSUF.Close;
  SQLICMSUF.SQL.Text := 'Select * From ICMSUF Where PRODICOD = :pPRODICOD AND ' + 'ICMUA2UF =:ICMUA2UF AND TIPOPESSOA = :pPESSOA AND ENQUADRAMENTO = :pREGIME AND NCMA30CODIGO = :pNCM';

  // Se o Resultado for em branco, busca somente pelo UF + Tipo Pessoa (Fis/Jur) + Regime (Enquadramento)
  if SQLICMSUF.IsEmpty then
  begin
    SQLICMSUF.Close;
    SQLICMSUF.ParamByName('ICMUA2UF').asString := SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString;
    SQLICMSUF.ParamByName('pPESSOA').AsString := SQLTemplate.DataSource.DataSet.FindField('CliFornEmpFisicaJuridica').AsString;
    SQLICMSUF.ParamByName('pRegime').AsString := SQLTemplate.DataSource.DataSet.FindField('CliFornEmpRegime').AsString;
    SQLICMSUF.ParamByName('pPRODICOD').AsInteger := nProduto;
    SQLICMSUF.ParamByName('pNCM').AsString := nNCM;
    SQLICMSUF.Open;
  end;

  // Se o Resultado for em branco, busca somente pelo UF + Tipo Pessoa (Fis/Jur)
  if SQLICMSUF.IsEmpty then
  begin
    SQLICMSUF.Close;
    SQLICMSUF.ParamByName('ICMUA2UF').asString := SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString;
    SQLICMSUF.ParamByName('pPESSOA').AsString := SQLTemplate.DataSource.DataSet.FindField('CliFornEmpFisicaJuridica').AsString;
    SQLICMSUF.ParamByName('pRegime').AsString := 'A'; // Ambas
    SQLICMSUF.ParamByName('pPRODICOD').AsInteger := nProduto;
    SQLICMSUF.ParamByName('pNCM').AsString := nNCM;
    SQLICMSUF.Open;
  end;

  // Se o Resultado ainda for em branco, busca somente o UF
  if SQLICMSUF.IsEmpty then
  begin
    SQLICMSUF.Close;
    SQLICMSUF.SQL.Text := 'Select * From ICMSUF Where ICMUA2UF =:ICMUA2UF';
    SQLICMSUF.ParamByName('ICMUA2UF').asString := SQLTemplate.DataSource.DataSet.FindField('CliFornEmpEstadoLookUp').asString;
    { Adilson, Comentei pq o filtro nao estava pegando apenas pela UF
    SQLICMSUF.ParamByName('pPESSOA').AsString   := 'A';
    SQLICMSUF.ParamByName('pRegime').AsString   := 'A'; // Ambas
    SQLICMSUF.ParamByName('pPRODICOD').AsInteger:= nProduto;
    SQLICMSUF.ParamByName('pNCM').AsString      := nNCM; }
    SQLICMSUF.Open;
  end;
  if SQLICMSUF.IsEmpty then
  begin
    ShowMessage('ATENÇÃO...' + #13#10 + #13#10 + 'Alíquota de ICMS não cadastrado na tabela de ICMS por UF');
    nICMSUF.nICMS := 0;
    nICMSUF.nRED_ICMS := 0;
    nICMSUF.nICMS_INTERNO := 0;
    nICMSUF.nMVA := 0;
    nICMSUF.nSTFisica := '';
    nICMSUF.nSTJuridica := '';
  end
  else
  begin
    nICMSUF.nICMS := SQLICMSUF.FindField('ICMUN2ALIQUOTA').asFloat;
    nICMSUF.nRED_ICMS := SQLICMSUF.FindField('ICMUN3REDBASECALC').asFloat;
    nICMSUF.nICMS_INTERNO := SQLICMSUF.FindField('ICMUN2ALIQUOTAINTERNA').asFloat;
    nICMSUF.nMVA := SQLICMSUF.FindField('ICMUN3MVA').asFloat;
    nICMSUF.nSTFisica := SQLICMSUF.FindField('ICMUISITTRIB').AsString;
    nICMSUF.nSTJuridica := SQLICMSUF.FindField('ICMUISITTRIBJURIDICA').AsString;
  end;
  Result := nICMSUF;
end;

function TFormCadastroNotaFiscalItem.CalculaSubstituicaoTributaria: string;
var
  Retorno: Extended;
begin
  Retorno := 0;
  Retorno := SQLTemplateNFITN2VLRSUBS.value / SQLTemplateNFITN3QUANT.Value;
  Retorno := Retorno + (SQLTemplateNFITN2VLRIPI.Value / SQLTemplateNFITN3QUANT.Value);

  if Retorno > 0 then
    CalculaSubstituicaoTributaria := ' VF: ' + FormatFloat(',0.00', Retorno + (SQLTemplateNFITN2VLRUNIT.value))
  else
    CalculaSubstituicaoTributaria := '';
end;

procedure TFormCadastroNotaFiscalItem.edtValorFinalExit(Sender: TObject);
var
  nVF: Extended;
begin
  inherited;
  if edtValorFinal.value > 0 then
  begin
    nVF := (((((((100 + SQLTemplateNFITN2PERCIPI.Value) + (((100 + SQLTemplateNFITN2PERCIPI.Value)) * (SQLTemplateNFITN2PERCSUBS.asFloat / 100))) * (SQLTemplateNFITN2PERCICMS.value / 100))) - SQLTemplateNFITN2PERCICMS.value) / 100) + 1) + (SQLTemplateNFITN2PERCIPI.Value / 100);
    SQLTemplateNFITN2VLRUNIT.Value := StrToFloat(FormatFloat('0.00', edtValorFinal.Value / StrToFloat(Formatfloat('0.0000', nVF))));
  end;
end;

procedure TFormCadastroNotaFiscalItem.DBEdit18Exit(Sender: TObject);
begin
  inherited;
  {  if (sqltemplateNFITN2PERCSUBS.Value>0) and (sqltemplateNFITN2BASESUBS.Value>0) then }
  if (SQLTemplate.DataSource.DataSet.FindField('CalcSUBSTLookUp').asString = 'S') then
    CalculaImpostos;
end;

procedure TFormCadastroNotaFiscalItem.SQLTemplateUNIDICODChange(Sender: TField);
begin
  inherited;
  if SQLTemplatePRODICOD.AsString <> '' then
  begin
      // Testa se a Unidade Venda Igual a Unidado do Produto , trazer preco 1 senao preco 2
      // Ex. Uso a Distribuidora KR
      {Apenas para notas para Clientes}
    if DSMasterTemplate.DataSet.FieldByName('CLIEA13ID').AsString <> '' then
    begin
      dm.zConsulta.Close;
      dm.zConsulta.SQL.Text := 'select PRODDINIPROMO, PRODDFIMPROMO, PRODN3VLRVENDA, PRODN3VLRVENDA2, PRODN3VLRVENDAPROM from produto where prodicod = ' + SQLTemplatePRODICOD.AsString;
      dm.zConsulta.Open;
      if SQLTemplateUNIDICOD.AsString = SQLLocate('PRODUTO', 'PRODICOD', 'UNIDICOD', SQLTemplatePRODICOD.AsString) then
      begin
        if ((dm.zConsulta.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.zConsulta.FieldByName('PRODDFIMPROMO').AsDateTime >= Now) and (dm.zConsulta.FieldByName('PRODN3VLRVENDAPROM').AsFloat > 0)) or ((dm.zConsulta.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.zConsulta.FieldByName('PRODDFIMPROMO').AsString = '') and (dm.zConsulta.FieldByName('PRODN3VLRVENDAPROM').AsFloat > 0)) then
          SQLTemplateNFITN2VLRUNIT.Value := dm.zConsulta.fieldbyname('PRODN3VLRVENDAPROM').AsFloat
        else
          SQLTemplateNFITN2VLRUNIT.Value := dm.zConsulta.fieldbyname('PRODN3VLRVENDA').AsFloat;
      end
      else
        SQLTemplateNFITN2VLRUNIT.AsVariant := dm.zConsulta.fieldbyname('PRODN3VLRVENDA2').AsFloat;


         { If SQLLocate('CLIENTE','CLIEA13ID','CLIECTPPRCVENDA',''''+DSMasterTemplate.DataSet.FieldByName('CLIEA13ID').AsString+'''') = 'A' Then
            SQLTemplateNFITN2VLRUNIT.Value := dm.zConsulta.fieldbyname('PRODN3VLRVENDA2').AsFloat
          else
            begin
              if ((dm.zConsulta.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.zConsulta.FieldByName('PRODDFIMPROMO').AsDateTime >= Now) and (dm.zConsulta.FieldByName('PRODN3VLRVENDAPROM').AsFloat>0)) or
                 ((dm.zConsulta.FieldByName('PRODDINIPROMO').AsDateTime <= Now) and (dm.zConsulta.FieldByName('PRODDFIMPROMO').AsString = '') and (dm.zConsulta.FieldByName('PRODN3VLRVENDAPROM').AsFloat>0)) then
                SQLTemplateNFITN2VLRUNIT.Value := dm.zConsulta.fieldbyname('PRODN3VLRVENDAPROM').AsFloat
              else
                SQLTemplateNFITN2VLRUNIT.Value := dm.zConsulta.fieldbyname('PRODN3VLRVENDA').AsFloat;
            end;}
    end;
  end;

  // Recalcula o Total
  if (SQLTemplateNFITN2VLRUNIT.Value > 0) and (SQLTemplateNFITN3QUANT.Value > 0) and (SQLTemplate.State in dsEditModes) then
    SQLTemplateTotalItemCalc.Value := SQLTemplateNFITN2VLRUNIT.Value * (SQLTemplateNFITN3QUANT.Value * SQLUnidade2UNIDN3FATORCONV.Value);
end;

procedure TFormCadastroNotaFiscalItem.MnImportarProdutospelaNotadeEntradaClick(Sender: TObject);
begin
  inherited;
  SQLTemplate.DisableControls;
  Application.CreateForm(TFormTelaNotaFiscalItemFiltro, FormTelaNotaFiscalitemFiltro);
  FormTelaNotaFiscalitemFiltro.LabelTitulo.Caption := 'Importar Produtos apartir de uma Nota de Entrada';
  FormTelaNotaFiscalItemFiltro.ShowModal;
  if FormTelaNotaFiscalItemFiltro.ModalResult = MrOk then
  begin
    FormTelaNotaFiscalItemFiltro.TblTemporaria.First;
    while not FormTelaNotaFiscalItemFiltro.TblTemporaria.Eof do
    begin
      if FormTelaNotaFiscalitemFiltro.TblTemporariaQTDENFDest.Value > 0 then
      begin
        SQLTemplate.Append;
        SQLTemplatePRODICOD.Value := FormTelaNotaFiscalItemFiltro.TblTemporariaPRODICOD.Value;
        SQLTemplateNFITN3QUANT.Value := FormTelaNotaFiscalItemFiltro.TblTemporariaQTDENFDest.Value;
        SQLTemplateNFITN2VLRUNIT.Value := FormTelaNotaFiscalItemFiltro.TblTemporariaPRODN3VLRVENDA.Value;
        SQLTemplate.Post;
      end;
      FormTelaNotaFiscalitemFiltro.TblTemporaria.Next;
    end;
  end;
  SQLTemplate.EnableControls;
end;

procedure TFormCadastroNotaFiscalItem.EvDBNumEdit9Exit(Sender: TObject);
begin
  inherited;
  if (SQLTemplate.State in ([dsInsert, dsEdit])) then
  begin
    LabelGravar.Click;
    LabelNovo.Click;
  end;
end;

procedure TFormCadastroNotaFiscalItem.ImportarProdutosdoColetorBematechDC20001Click(Sender: TObject);
var
  Origem, Destino, CodProduto, CodInterno, vQtde, sCampo: string;
  LinhaAtual, NroLinhas, I, ContadorCampos, Resultado: integer;
  Info: string;
  Texto: TextFile;
  HouveErro: Boolean;
begin
  if DSMasterTemplate.DataSet.FieldByName('NOFICSTATUS').AsString <> 'A' then
    exit; // Aborta processo
  if FileExists('c:\easy2solutions\coletor\Contagem.txt') then
  begin
    if Application.MessageBox('Deseja realmente importar os registro do Arquivo c:\easy2solutions\coletor\Contagem.txt ?', 'Atenção', MB_YESNO + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONQUESTION) = IDYES then
    begin
      NroLinhas := 0;
      AssignFile(Texto, 'c:\easy2solutions\coletor\Contagem.txt');
      Reset(Texto);
      while not EOF(Texto) do
      begin
        Readln(Texto, Info);
        NroLinhas := NroLinhas + 1;
      end;
      CloseFile(Texto);

      AssignFile(Texto, 'c:\easy2solutions\coletor\Contagem.txt');
      Reset(Texto);

          {pula titulo}
      Readln(Texto, Info);

      SQLTemplate.DisableControls;

      LinhaAtual := 0;
      while not EOF(Texto) do
      begin
        Application.ProcessMessages;
        ReadLn(Texto, Info);
        LinhaAtual := LinhaAtual + 1;
        LabelRegistros.Caption := 'Lendo Linha Nro.: ' + IntToStr(LinhaAtual) + ' de ' + IntToStr(NroLinhas);
        LabelRegistros.Update;

        ContadorCampos := 1;
        sCampo := '';
        for i := 1 to Length(Info) do
        begin
          if Info[i] = ';' then
          begin
            case ContadorCampos of
              1:
                CodProduto := trim(sCampo);
            end;
            sCampo := '';
            ContadorCampos := ContadorCampos + 1;
            Continue;
          end
          else
            sCampo := sCampo + Info[i];
        end;
        vQtde := trim(sCampo);

        try
          CodInterno := '';
          if EncontrouProduto(CodProduto, SQLProduto) then
            CodInterno := SQLProdutoPRODICOD.AsString;

          if CodInterno <> '' then
          begin
            SQLTemplate.Append;
            SQLTemplatePRODICOD.AsString := CodInterno;
            SQLTemplateNFITN3QUANT.Value := StrToFloat(vQtde);
            SQLTemplateNFITN2VLRUNIT.Value := SQLProdutoPRODN3VLRCUSTO.Value;
            SQLTemplate.Post;
          end;
        except
          Application.ProcessMessages;
        end;
      end;
      SQLTemplate.EnableControls;
      CloseFile(Texto);
    end;
  end;

  Origem := 'c:\easy2solutions\coletor\Contagem.txt';
  Destino := 'c:\easy2solutions\coletor\Contagem_importada_' + FormatDateTime('ddmmyy_hhnn', now) + '.txt';
  CopyFile(PChar(origem), PChar(destino), false);
  DeleteFile(PChar(origem));

  ShowMessage('Importação Executada com Sucesso');
end;

procedure TFormCadastroNotaFiscalItem.ImportarProdutosdoColetorPalmOne1Click(Sender: TObject);
var
  Origem, Destino, CodProduto, CodInterno, vQtde, sCampo: string;
  LinhaAtual, NroLinhas, I, ContadorCampos, Resultado: integer;
  Info: string;
  Texto: TextFile;
begin
  if DSMasterTemplate.DataSet.FieldByName('NOFICSTATUS').AsString <> 'A' then
    exit; // Aborta processo
  if FileExists('..\Invent.Txt') then
  begin
    if Application.MessageBox('Deseja realmente importar os registro do Arquivo ..\Invent.Txt ?', 'Atenção', MB_YESNO + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONQUESTION) = IDYES then
    begin
      NroLinhas := 0;
      AssignFile(Texto, '..\Invent.Txt');
      Reset(Texto);
      while not EOF(Texto) do
      begin
        Readln(Texto, Info);
        NroLinhas := NroLinhas + 1;
      end;
      CloseFile(Texto);

      AssignFile(Texto, '..\Invent.Txt');
      Reset(Texto);

          {pula titulo}
      Readln(Texto, Info);

      SQLTemplate.DisableControls;

      LinhaAtual := 0;
      while not EOF(Texto) do
      begin
        Application.ProcessMessages;
        ReadLn(Texto, Info);
        LinhaAtual := LinhaAtual + 1;
        LabelRegistros.Caption := 'Lendo Linha Nro.: ' + IntToStr(LinhaAtual) + ' de ' + IntToStr(NroLinhas);
        LabelRegistros.Update;

        try
          CodInterno := '';
          if EncontrouProduto(Info, SQLProduto) then
            CodInterno := SQLProdutoPRODICOD.AsString;

          if CodInterno <> '' then
          begin
            SQLTemplate.Append;
            SQLTemplatePRODICOD.AsString := CodInterno;
            SQLTemplateNFITN3QUANT.Value := StrToFloat(vQtde);
            SQLTemplateNFITN2VLRUNIT.Value := SQLProdutoPRODN3VLRCUSTO.Value;
            SQLTemplate.Post;
          end;
        except
          Application.ProcessMessages;
        end;
      end;
      SQLTemplate.EnableControls;
      CloseFile(Texto);
    end;
  end;

  Origem := '..\Invent.Txt';
  Destino := 'c:\easy2solutions\coletor\Invent_Contagem_Importada_' + FormatDateTime('ddmmyy_hhnn', now);
  CopyFile(PChar(origem), PChar(destino), false);
  DeleteFile(PChar(origem));

  ShowMessage('Importação Executada com Sucesso');
end;

procedure TFormCadastroNotaFiscalItem.CalculaFrete;
{var
  vTotalItemCalc, vTotalFreteItens: Currency;
  vITEM: Integer;}
begin
{  if DSMasterTemplate.DataSet.FieldByName('NOFIN2VLRFRETE').AsCurrency > 0 then
  begin
    SQLTemplate.DisableControls;
    SQLTemplate.AfterPost := nil;
    SQLTemplate.BeforePost := nil;
    SQLTemplate.BeforeEdit := nil;
    SQLTemplate.BeforePost := nil;
    try
      vITEM := SQLTemplateNFITIITEM.Value;
      vTotalItemCalc := 0;
      vTotalFreteItens := 0;
      SQLTemplate.first;
      while not SQLTemplate.Eof do
      begin
        vTotalItemCalc := vTotalItemCalc + SQLTemplateTotalItemCalc.Value;
        SQLTemplate.Next;
      end;

      SQLTemplate.Locate('NFITIITEM', vITEM, []);
      SQLTemplate.edit;
      SQLTemplateNFITN2VLRFRETE.AsCurrency :=
        (SQLTemplateTotalItemCalc.AsCurrency / vTotalItemCalc) * DSMasterTemplate.DataSet.FieldByName('NOFIN2VLRFRETE').AsCurrency;
      SQLTemplate.post;
    finally
      SQLTemplate.EnableControls;
      SQLTemplate.AfterPost := SQLTemplateAfterPost;
      SQLTemplate.BeforePost := SQLTemplateBeforePost;
      SQLTemplate.BeforeEdit := SQLTemplateBeforeEdit;
      SQLTemplate.BeforePost := SQLTemplateBeforePost;
    end;
  end;}

end;

end.

