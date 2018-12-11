unit TelaCalculoComissao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls, Db,
  DBTables, RxQuery, Mask, ToolEdit, ComCtrls, Variants,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppCtrls, ppBands, ppPrnabl,
  ppCache;

type
  TFormTelaCalculoComissao = class(TFormTelaGeralTEMPLATE)
    GroupBox1: TGroupBox;
    Opcao1: TRadioButton;
    SQLVendedorComissao: TRxQuery;
    SQLVendedorComissaoVENDICOD: TIntegerField;
    SQLVendedorComissaoCUPOA13ID: TStringField;
    SQLVendedorComissaoVDCON2TOTVENDVISTA: TFloatField;
    SQLVendedorComissaoVDCON2TOTVENDPRAZO: TFloatField;
    SQLVendedorComissaoVDCOINROVEND: TIntegerField;
    SQLVendedorComissaoVDCON2VENDMEDIA: TFloatField;
    SQLVendedorComissaoVDCON3QTDVEND: TFloatField;
    SQLVendedorComissaoVDCON2VLRCOMISS: TFloatField;
    SQLVendedorComissaoVDCODEMIS: TDateTimeField;
    SQLCalcComiss: TRxQuery;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    Opcao2: TRadioButton;
    SQLItensVenda: TRxQuery;
    SQLItensVendaCUPOA13ID: TStringField;
    SQLItensVendaVENDICOD: TIntegerField;
    SQLItensVendaCPITN3QTD: TFloatField;
    SQLItensVendaCPITN3VLRUNIT: TFloatField;
    SQLItensVendaCUPODEMIS: TDateTimeField;
    SQLItensVendaCUPOCSTATUS: TStringField;
    SQLItensVendaCUPOCTIPOPADRAO: TStringField;
    SQLItensVendaVENDN2COMISP: TFloatField;
    SQLItensVendaVENDN2COMISV: TFloatField;
    SQLItensVendaCUPON2DESC: TFloatField;
    SQLItensVendaCUPON2TOTITENS: TFloatField;
    SQLPlanoRecebimento: TRxQuery;
    SQLPlanoRecebimentoPLRCICOD: TIntegerField;
    SQLPlanoRecebimentoParcela: TRxQuery;
    SQLPlanoRecebimentoParcelaPLRCICOD: TIntegerField;
    SQLCalcComissCUPOA13ID: TStringField;
    SQLCalcComissCUPODEMIS: TDateTimeField;
    SQLCalcComissVENDICOD: TIntegerField;
    SQLCalcComissPLRCICOD: TIntegerField;
    SQLCalcComissCUPON2TOTITENS: TFloatField;
    SQLCalcComissCUPON2ACRESC: TFloatField;
    SQLCalcComissCUPOCTIPOPADRAO: TStringField;
    SQLCalcComissVENDN2COMISV: TFloatField;
    SQLCalcComissVENDN2COMISP: TFloatField;
    SQLPlanoRecebimentoParcelaPLRPINROPARC: TIntegerField;
    SQLPlanoRecebimentoParcelaPLRPINRODIAS: TIntegerField;
    SQLItensVendaPLRCICOD: TIntegerField;
    GroupBox3: TGroupBox;
    MemoProb: TMemo;
    SQLPlanoRecebimentoPLRCCDFIX: TStringField;
    SQLPlanoRecebimentoPLRCIDFIXNROPARC: TIntegerField;
    SQLPlanoRecebimentoPLRCCDFIXENTR: TStringField;
    Opcao3: TRadioButton;
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
    SQLContasReceberCTRCN2TOTMULTACOBR: TFloatField;
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
    SQLContasReceberBANCA5CODCHQ: TStringField;
    SQLContasReceberCTRCA10AGENCIACHQ: TStringField;
    SQLContasReceberCTRCA15CONTACHQ: TStringField;
    SQLContasReceberCTRCA15NROCHQ: TStringField;
    SQLContasReceberCTRCA60TITULARCHQ: TStringField;
    SQLContasReceberCTRCA20CGCCPFCHQ: TStringField;
    SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField;
    SQLContasReceberALINICOD: TIntegerField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLCupomNumerario: TRxQuery;
    SQLCupomNumerarioCUPOA13ID: TStringField;
    SQLCupomNumerarioNUMEICOD: TIntegerField;
    SQLCupomNumerarioCONMCSTATUS: TStringField;
    SQLCupomNumerarioCPNMN2VLR: TFloatField;
    SQLCupomNumerarioCPNMCAUTENT: TStringField;
    SQLCupomNumerarioCLIEA13ID: TStringField;
    GroupEmissao: TGroupBox;
    Label1: TLabel;
    DateEmissao: TDateEdit;
    SQLConsulta: TRxQuery;
    SQLVendedorComissaoVDCOICOD: TIntegerField;
    SQLVendedorComissaoPENDENTE: TStringField;
    SQLVendedorComissaoREGISTRO: TDateTimeField;
    SQLProduto: TRxQuery;
    SQLItensVendaPRODICOD: TIntegerField;
    SQLProdutoPRODCGERACOMIS: TStringField;
    SQLProdutoPRODN2COMISVISTA: TFloatField;
    SQLProdutoPRODN2COMISPRAZO: TFloatField;
    Opcao4: TRadioButton;
    SQLVendasFidelizadas: TRxQuery;
    SQLVendasFidelizadasCUPOA13ID: TStringField;
    SQLVendasFidelizadasCLIEA13ID: TStringField;
    SQLVendasFidelizadasCUPODEMIS: TDateTimeField;
    SQLVendasFidelizadasVENDICOD: TIntegerField;
    SQLVendasFidelizadasPLRCICOD: TIntegerField;
    SQLVendasFidelizadasCUPON2TOTITENS: TFloatField;
    SQLVendasFidelizadasCUPON2ACRESC: TFloatField;
    SQLVendasFidelizadasCUPOCTIPOPADRAO: TStringField;
    SQLVendasFidelizadasVENDN2COMISV: TFloatField;
    SQLVendasFidelizadasVENDN2COMISP: TFloatField;
    SQLVendasFidelizadasCUPON3BONUSTROCA: TFloatField;
    SQLVendedor: TRxQuery;
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
    SQLVendedorVENDN2PERCFIDEL: TFloatField;
    SQLVendedorComissaoVDCODESTORNO: TDateTimeField;
    SQLVendedorComissaoVDCON3VLRESTORNO: TFloatField;
    SQLVendedorComissaoCLIEA13ID: TStringField;
    SQLVendedorComissaoVDCOA5TIPODOC: TStringField;
    SQLVendedorComissaoVDCOCDEBCRED: TStringField;
    SQLCalcComissCLIEA13ID: TStringField;
    SQLCalcComissTIPODOC: TStringField;
    SQLVendedorComissaoVDCON2PERCOMISSAO: TFloatField;
    SQLVendedorVENDIDIASVALFIDEL: TIntegerField;
    SQLVendasFidelizadasTIPODOC: TStringField;
    Opcao5: TRadioButton;
    SQLPedidoVenda: TRxQuery;
    SQLPedidoVendaPDVDA13ID: TStringField;
    SQLPedidoVendaPDVDDEMISSAO: TDateTimeField;
    SQLPedidoVendaVENDICOD: TIntegerField;
    SQLPedidoVendaPLRCICOD: TIntegerField;
    SQLPedidoVendaPDVDN2TOTPED: TFloatField;
    SQLPedidoVendaVENDN2COMISV: TFloatField;
    SQLPedidoVendaVENDN2COMISP: TFloatField;
    SQLPedidoVendaCLIEA13ID: TStringField;
    SQLPedidoVendaTIPODOC: TStringField;
    SQLPedidoVendaPDVDN2PERCOMIS: TFloatField;
    SQLPedidoVendaPDVDN2VLRFRETE: TFloatField;
    DSSQLContasReceber: TDataSource;
    SQLRecebimento: TRxQuery;
    SQLRecebimentoCTRCA13ID: TStringField;
    SQLRecebimentoRECEICOD: TIntegerField;
    SQLRecebimentoRECEDRECTO: TDateTimeField;
    SQLRecebimentoRECEN2VLRRECTO: TFloatField;
    SQLRecebimentoRECEN2VLRJURO: TFloatField;
    SQLRecebimentoRECEN2VLRMULTA: TFloatField;
    SQLRecebimentoRECEN2DESC: TFloatField;
    SQLRecebimentoRECEN2MULTACOBR: TFloatField;
    SQLRecebimentoEMPRICODREC: TIntegerField;
    SQLRecebimentoTERMICODREC: TIntegerField;
    SQLRecebimentoCLIEA13ID: TStringField;
    SQLRecebimentoPENDENTE: TStringField;
    SQLRecebimentoREGISTRO: TDateTimeField;
    SQLRecebimentoTERMICOD: TIntegerField;
    SQLRecebimentoRECEA30HIST: TStringField;
    SQLRecebimentoRECEA254HISTORICO: TStringField;
    SQLRecebimentoTPLQICOD: TIntegerField;
    SQLRecebimentoPLCTA15CREDITO: TStringField;
    SQLRecebimentoPLCTA15CODJUROCRED: TStringField;
    SQLRecebimentoPLCTA15CODMULTCRED: TStringField;
    SQLRecebimentoPLCTA15CODDESCCRED: TStringField;
    SQLRecebimentoPLCTA15DEBITO: TStringField;
    SQLRecebimentoPLCTA15CODJURODEB: TStringField;
    SQLRecebimentoPLCTA15CODMULTDEB: TStringField;
    SQLRecebimentoPLCTA15CODDESCDEB: TStringField;
    SQLRecebimentoRECEDDATAMOV: TDateTimeField;
    SQLRecebimentoCTRCA13IDCREDITO: TStringField;
    SQLRecebimentoRECECSTATUS: TStringField;
    SQLCalcComissCUPON3BONUSTROCA: TFloatField;
    EditHoraINI: TEdit;
    Label2: TLabel;
    EditHoraFIM: TEdit;
    Label5: TLabel;
    SQLItensVendaCLIEA13ID: TStringField;
    Progress: TProgressBar;
    BtnVisualizar: TSpeedButton;
    Opcao6: TRadioButton;
    SQLPedidoVendaItem: TRxQuery;
    SQLPedidoVendaItemPDVDA13ID: TStringField;
    SQLPedidoVendaItemPDVDDEMISSAO: TDateTimeField;
    SQLPedidoVendaItemVENDICOD: TIntegerField;
    SQLPedidoVendaItemPLRCICOD: TIntegerField;
    SQLPedidoVendaItemPDVDN2TOTPED: TFloatField;
    SQLPedidoVendaItemVENDN2COMISV: TFloatField;
    SQLPedidoVendaItemVENDN2COMISP: TFloatField;
    SQLPedidoVendaItemCLIEA13ID: TStringField;
    SQLPedidoVendaItemTIPODOC: TStringField;
    SQLPedidoVendaItemPVITN2VLRUNIT: TFloatField;
    SQLPedidoVendaItemPVITN3QUANT: TFloatField;
    SQLPedidoVendaItemPVITN2VLRDESC: TFloatField;
    SQLPedidoVendaItemPVITN3TOTVENDITEM: TFloatField;
    SQLPedidoVendaItemPRODICOD: TIntegerField;
    Opcao7: TRadioButton;
    SQLCupomItem: TRxQuery;
    SQLCupomItemCUPOA13ID: TStringField;
    SQLCupomItemVENDICOD: TIntegerField;
    SQLCupomItemCPITN3QTD: TFloatField;
    SQLCupomItemCPITN3VLRUNIT: TFloatField;
    SQLCupomItemCUPODEMIS: TDateTimeField;
    SQLCupomItemCUPOCSTATUS: TStringField;
    SQLCupomItemCUPOCTIPOPADRAO: TStringField;
    SQLCupomItemCUPON2DESC: TFloatField;
    SQLCupomItemCUPON2TOTITENS: TFloatField;
    SQLCupomItemPLRCICOD: TIntegerField;
    SQLCupomItemCLIEA13ID: TStringField;
    SQLCupomItemPRODICOD: TIntegerField;
    SQLEmpresaComissao: TRxQuery;
    SQLCupomItemEMPRICOD: TIntegerField;
    SpeedButton1: TSpeedButton;
    ppReportVertebralle: TppReport;
    dsSQLEmpresaComissao: TDataSource;
    ppBDEPipeline: TppBDEPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppLabel7: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    lbPeriodo: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLine2: TppLine;
    ppSummaryBand1: TppSummaryBand;
    lbFilial: TppLabel;
    ppLabel9: TppLabel;
    ppDBCalc13: TppDBCalc;
    SQLEmpresaComissaoTotalVendasCalc: TFloatField;
    TotalVendasCalc: TppField;
    ppDBCalc14: TppDBCalc;
    SQLEmpresaComissaoID: TIntegerField;
    SQLEmpresaComissaoEMPRICOD: TIntegerField;
    SQLEmpresaComissaoCUPOA13ID: TStringField;
    SQLEmpresaComissaoPRODICOD: TIntegerField;
    SQLEmpresaComissaoVENDICOD: TIntegerField;
    SQLEmpresaComissaoCUPODEMIS: TDateTimeField;
    SQLEmpresaComissaoCLIEA13ID: TStringField;
    SQLEmpresaComissaoVDCON3QTDVEND: TFloatField;
    SQLEmpresaComissaoVDCON2TOTVENDVISTA: TFloatField;
    SQLEmpresaComissaoVDCON2TOTVENDPRAZO: TFloatField;
    SQLEmpresaComissaoVDCON2PERCOMISSAO: TFloatField;
    SQLEmpresaComissaoVDCON2VLRCOMISS: TFloatField;
    SQLEmpresaComissaoVDCON2VLRCOMISS3: TFloatField;
    SQLEmpresaComissaoVDCON2VLRCOMISS4: TFloatField;
    SQLEmpresaComissaoVDCON2VLRCOMISS5: TFloatField;
    Msg: TLabel;
    ppLabel10: TppLabel;
    SQLEmpresaComissaoVDCON2VLRCOMISS35: TFloatField;
    ppDBCalc15: TppDBCalc;
    ppBDEPipelineppField15: TppField;
    ppDBCalc16: TppDBCalc;
    rdgComissaoProduto: TRadioGroup;
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Opcao3Click(Sender: TObject);
    procedure Opcao1Click(Sender: TObject);
    procedure SQLVendedorComissaoBeforePost(DataSet: TDataSet);
    procedure SQLEmpresaComissaoNewRecord(DataSet: TDataSet);
    procedure SQLVendedorComissaoNewRecord(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure SQLEmpresaComissaoCalcFields(DataSet: TDataSet);
    procedure SQLEmpresaComissaoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  ValorAtual : Double;
  public
    { Public declarations }
  end;

var
  FormTelaCalculoComissao: TFormTelaCalculoComissao;

implementation

uses DataModulo, UnitLibrary, DataModuloTemplate;

{$R *.DFM}

procedure TFormTelaCalculoComissao.BtnVisualizarClick(Sender: TObject);
var
  Valor,
  Desco, PercDescPlano : double ;
  TipoDeVenda,
  Clausula,Vendedor : string ;
  InfoUltCompraCliente : TinfoRetornoUltCompra;
  ParticipaComissao : Boolean;
begin
  inherited;
  Msg.Caption := 'Apagando cálculo anterior...' ;
  Msg.Refresh ;
  ParticipaComissao := rdgComissaoProduto.ItemIndex = 0;

  EditHoraINI.Text := FormatDateTime('dd/mm/yy hh:mm',Now);
  EditHoraINI.Update;
  if not Opcao7.Checked then
    begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('delete from VENDEDORCOMISSAO') ;
      DM.SQLTemplate.SQL.Add('where VDCODEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + '''') ;
      DM.SQLTemplate.SQL.Add('and   VDCODEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''') ;
      DM.SQLTemplate.SQL.Add('and VDCOA5TIPODOC <> ''MN''');
      DM.SQLTemplate.ExecSQL ;
    end;

  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('delete from EMPRESACOMISSAO') ;
  DM.SQLTemplate.SQL.Add('where CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + '''') ;
  DM.SQLTemplate.SQL.Add('and   CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''') ;
  DM.SQLTemplate.ExecSQL ;

  Msg.Caption := 'Filtrando vendas no período selecionado...' ;
  Msg.Refresh ;

  SQLVendedorComissao.Open ;

  Screen.Cursor := crHourglass ;
  //CALCULAR USANDO SOMENTE PERCENTUAL DO VENDEDOR
  if Opcao1.Checked then
  begin
    Clausula := 'CUPOM.CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                'CUPOM.CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' ;

    Progress.Max := SQLRecCount('CUPOM', 'where ' + Clausula) ;
    Progress.Position := 0;
    SQLCalcComiss.Close;
    SQLCalcComiss.MacrobyName('MData').Value    := Clausula ;
    SQLCalcComiss.MacrobyName('MStatus').Value  := 'CUPOM.CUPOCSTATUS = ''A''';
    SQLCalcComiss.MacrobyName('MStatus1').Value := 'NOTAFISCAL.NOFICSTATUS = ''E''';
    SQLCalcComiss.MacrobyName('MData1').Value   := 'NOTAFISCAL.NOFIDEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                   'NOTAFISCAL.NOFIDEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' ;
    SQLCalcComiss.Open;
    SQLCalcComiss.First;

    while not SQLCalcComiss.EOF do
    begin
      Msg.Caption := 'Verificando vendas...' ;
      Msg.Refresh ;

      TipoDeVenda := PlanoVistaPrazo(SQLCalcComissPLRCICOD.Value, SQLPlanoRecebimento, SQLPlanoRecebimentoParcela) ;

      if TipoDeVenda = '' then
        MemoProb.Lines.Add('O Documento ' + SQLCalcComissCUPOA13ID.Value + ' não é à VISTA nem à PRAZO!') ;

      SQLVendedorComissao.Append ;
      SQLVendedorComissaoVENDICOD.Value          := SQLCalcComissVENDICOD.Value;
      SQLVendedorComissaoCUPOA13ID.Value         := SQLCalcComissCUPOA13ID.Value;
      SQLVendedorComissaoCLIEA13ID.AsString      := SQLCalcComissCLIEA13ID.AsString;
      SQLVendedorComissaoVDCOA5TIPODOC.AsString  := SQLCalcComissTIPODOC.AsString;
      SQLVendedorComissaoVDCOCDEBCRED.AsString   := 'C';
      if TipoDeVenda = 'VISTA' then
      begin
        Msg.Caption := 'Calculando comissão a vista...' ;
        Msg.Refresh ;
        SQLVendedorComissaoVDCON2TOTVENDVISTA.Value := (SQLCalcComissCUPON2TOTITENS.Value - SQLCalcComissCUPON3BONUSTROCA.Value);
        SQLVendedorComissaoVDCON2VLRCOMISS.Value    := (SQLCalcComissCUPON2TOTITENS.Value - SQLCalcComissCUPON3BONUSTROCA.Value) *
                                                       (SQLCalcComissVENDN2COMISV.Value/100);
        SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLCalcComissVENDN2COMISV.Value;
      end ;

      if TipoDeVenda = 'PRAZO' then
      begin
        Msg.Caption := 'Calculando comissão a prazo...' ;
        Msg.Refresh ;
        SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value := (SQLCalcComissCUPON2TOTITENS.Value - SQLCalcComissCUPON3BONUSTROCA.Value) ;
        SQLVendedorComissaoVDCON2VLRCOMISS.Value    := (SQLCalcComissCUPON2TOTITENS.Value - SQLCalcComissCUPON3BONUSTROCA.Value) *
                                                       (SQLCalcComissVENDN2COMISP.Value/100);
        SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLCalcComissVENDN2COMISP.Value;
      end ;

      SQLVendedorComissaoVDCOINROVEND.Value    := 0 ;
      SQLVendedorComissaoVDCON2VENDMEDIA.Value := 0 ;
      SQLVendedorComissaoVDCON3QTDVEND.Value   := 0 ;
      SQLVendedorComissaoVDCODEMIS.Value       := SQLCalcComissCUPODEMIS.Value ;

      if not (SQLVendedorComissaoVDCON2TOTVENDVISTA.Value > 0) then
        SQLVendedorComissaoVDCON2TOTVENDVISTA.Value := 0 ;
      if not (SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value > 0) then
        SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value := 0 ;
      if not (SQLVendedorComissaoVDCON2VENDMEDIA.Value > 0) then
        SQLVendedorComissaoVDCON2VENDMEDIA.Value := 0 ;
      if not (SQLVendedorComissaoVDCON3QTDVEND.Value > 0) then
        SQLVendedorComissaoVDCON3QTDVEND.Value := 0 ;
      if not (SQLVendedorComissaoVDCON2VLRCOMISS.Value > 0) then
        SQLVendedorComissaoVDCON2VLRCOMISS.Value := 0 ;

      SQLVendedorComissao.Post ;

      SQLCalcComiss.Next ;
      Progress.Position := Progress.Position + 1 ;
    end ;
    Progress.Position := 0 ;
  end ;

  //CALCULAR APLICANDO PERCENTUAL DO VENDEDOR EM CADA ÍTEM DA VENDA
  if Opcao2.Checked then
  begin
    Msg.Caption := 'Contando registros...' ;
    Msg.Refresh ;

    Clausula := 'CUPOM.CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                'CUPOM.CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' ;

    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('select Count(*) as RecCount') ;
    DM.SQLTemplate.SQL.Add('from') ;
    DM.SQLTemplate.SQL.Add('CUPOM CUPOM INNER JOIN CUPOMITEM CUPOMITEM ON CUPOM.CUPOA13ID = CUPOMITEM.CUPOA13ID') ;
    DM.SQLTemplate.SQL.Add('where') ;
    DM.SQLTemplate.SQL.Add('CUPOM.CUPOCSTATUS = ''A'' and') ;
    DM.SQLTemplate.SQL.Add('CUPOMITEM.CPITN3QTD > 0 and') ;
    DM.SQLTemplate.SQL.Add('CUPOM.CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ') ;
    DM.SQLTemplate.SQL.Add('CUPOM.CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''') ;
    DM.SQLTemplate.Open ;
    Progress.Max := DM.SQLTemplate.fieldbyname('RecCount').Value ;

    Progress.Position := 0 ;

    Msg.Caption := 'Filtrando registros...' ;
    Msg.Refresh ;
    SQLItensVenda.Close ;
    SQLItensVenda.MacrobyName('MData').Value := Clausula ;
    SQLItensVenda.MacrobyName('MData1').Value := 'NOTAFISCAL.NOFIDEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                 'NOTAFISCAL.NOFIDEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' ;

    if ParticipaComissao then
      SQLItensVenda.MacroByName('MParticipa').Value := 'PRODUTO.PRODCGERACOMIS = ' + QuotedStr('S')
    else
      SQLItensVenda.MacroByName('MParticipa').Value := '0=0';
    SQLItensVenda.Open ;
    SQLItensVenda.First ;

    while not SQLItensVenda.EOF do
    begin
      TipoDeVenda := PlanoVistaPrazo(SQLItensVendaPLRCICOD.AsInteger, SQLPlanoRecebimento, SQLPlanoRecebimentoParcela) ;

      if TipoDeVenda = '' then
        begin
          MemoProb.Lines.Add('O Documento ' + SQLItensVendaCUPOA13ID.Value + ' não é à VISTA nem à PRAZO!') ;
          TipoDeVenda := PlanoVistaPrazo(SQLItensVendaPLRCICOD.Value, SQLPlanoRecebimento, SQLPlanoRecebimentoParcela) ;
        end ;

      Msg.Caption := 'Verificando vendas...' ;
      Msg.Refresh ;

      Valor := (SQLItensVendaCPITN3QTD.Value * SQLItensVendaCPITN3VLRUNIT.Value) - SQLItensVendaCUPON2DESC.Value ;

      SQLVendedorComissao.Close ;
      SQLVendedorComissao.MacroByName('MFiltro').Value := 'VENDICOD  = ' + SQLItensVendaVENDICOD.AsString + ' and ' +
                                                          'CUPOA13ID = ''' + SQLItensVendaCUPOA13ID.AsString + '''' ;
      try
        SQLVendedorComissao.Open ;
      except
        ShowMessage('Erro na Venda Nro.'+SQLItensVendaCUPOA13ID.AsString+ chr(13)+
                    'Vendedor = '+SQLItensVendaVENDICOD.AsString);
      end;
      if SQLVendedorComissao.EOF then
      begin
        SQLVendedorComissao.Append ;
        SQLVendedorComissaoVENDICOD.Value          := SQLItensVendaVENDICOD.Value ;
        SQLVendedorComissaoCUPOA13ID.Value         := SQLItensVendaCUPOA13ID.Value ;
        SQLVendedorComissaoCLIEA13ID.AsString      := SQLItensVendaCLIEA13ID.AsString;
        SQLVendedorComissaoVDCOA5TIPODOC.AsString  := SQLCalcComissTIPODOC.AsString;
        SQLVendedorComissaoVDCOCDEBCRED.AsString   := 'C';
        if TipoDeVenda = 'VISTA' then
        begin
          Msg.Caption := 'Calculando comissão a vista...' ;
          Msg.Refresh ;
          SQLVendedorComissaoVDCON2TOTVENDVISTA.Value := Valor ;
          SQLProduto.Close;
          SQLProduto.ParamByName('Produto').AsInteger := SQLItensVendaPRODICOD.AsInteger;
          SQLProduto.Open;
          if (SQLProduto.FieldByName('PRODCGERACOMIS').AsString = 'S') then
            begin
              if SQLProduto.FieldByName('PRODN2COMISVISTA').AsFloat > 0 then
              begin
                SQLVendedorComissaoVDCON2VLRCOMISS.Value     := Valor * (SQLProduto.FieldByName('PRODN2COMISVISTA').AsFloat/100);
                SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLProduto.FieldByName('PRODN2COMISVISTA').AsFloat;
              end
              else
              begin
                SQLVendedorComissaoVDCON2VLRCOMISS.Value     := Valor * (SQLItensVendaVENDN2COMISV.Value/100);
                SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLItensVendaVENDN2COMISV.Value;
              end;
            end
          else
            begin
              if SQLItensVendaVENDN2COMISV.Value > 0 then
                SQLVendedorComissaoVDCON2VLRCOMISS.Value     := Valor * (SQLItensVendaVENDN2COMISV.Value/100);
                SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLItensVendaVENDN2COMISV.Value;
            end;
        end;

        if TipoDeVenda = 'PRAZO' then
          begin
            Msg.Caption := 'Calculando comissão a prazo...' ;
            Msg.Refresh ;
            SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value := Valor ;

            SQLProduto.Close;
            SQLProduto.ParamByName('Produto').AsInteger := SQLItensVendaPRODICOD.AsInteger;
            SQLProduto.Open;
            if (SQLProduto.FieldByName('PRODCGERACOMIS').AsString = 'S') then
              begin
                if SQLProduto.FieldByName('PRODN2COMISPRAZO').AsFloat > 0 then
                begin
                  SQLVendedorComissaoVDCON2VLRCOMISS.Value     := Valor * (SQLProduto.FieldByName('PRODN2COMISPRAZO').AsFloat/100);
                  SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLProduto.FieldByName('PRODN2COMISPRAZO').AsFloat;
                end
                else
                begin
                  SQLVendedorComissaoVDCON2VLRCOMISS.Value     := Valor * (SQLItensVendaVENDN2COMISP.Value/100);
                  SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLItensVendaVENDN2COMISP.Value;
                end;
              end
            else
              begin
                if SQLItensVendaVENDN2COMISP.Value > 0 then
                  SQLVendedorComissaoVDCON2VLRCOMISS.Value     := Valor * (SQLItensVendaVENDN2COMISP.Value/100) ;
                  SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLItensVendaVENDN2COMISP.Value;
              end;
          end ;

        SQLVendedorComissaoVDCOINROVEND.Value    := 0 ;
        SQLVendedorComissaoVDCON2VENDMEDIA.Value := 0 ;
        SQLVendedorComissaoVDCON3QTDVEND.Value   := SQLItensVendaCPITN3QTD.Value ;
        SQLVendedorComissaoVDCODEMIS.Value       := SQLItensVendaCUPODEMIS.Value ;
        SQLVendedorComissao.Post ;
      end
      else begin
        SQLVendedorComissao.Edit ;

        if TipoDeVenda = 'VISTA' then
        begin
          Msg.Caption := 'Calculando comissão a vista...' ;
          Msg.Refresh ;
          SQLVendedorComissaoVDCON2TOTVENDVISTA.Value := SQLVendedorComissaoVDCON2TOTVENDVISTA.Value + Valor ;
          SQLProduto.Close;
          SQLProduto.ParamByName('Produto').AsInteger := SQLItensVendaPRODICOD.AsInteger;
          SQLProduto.Open;
          if (SQLProduto.FieldByName('PRODCGERACOMIS').AsString = 'S') then
            begin
              if SQLProduto.FieldByName('PRODN2COMISVISTA').AsFloat > 0 then
              begin
                SQLVendedorComissaoVDCON2VLRCOMISS.Value := SQLVendedorComissaoVDCON2VLRCOMISS.Value +
                                                            (Valor * (SQLProduto.FieldByName('PRODN2COMISVISTA').AsFloat/100));
                SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLProduto.FieldByName('PRODN2COMISVISTA').AsFloat;
              end
              else
              begin
                SQLVendedorComissaoVDCON2VLRCOMISS.Value := SQLVendedorComissaoVDCON2VLRCOMISS.Value +
                                                            (Valor * (SQLVendedorComissaoVDCON2VLRCOMISS.Value/100));
                SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLVendedorComissaoVDCON2VLRCOMISS.Value;
              end;
            end
          else
            begin
              if SQLItensVendaVENDN2COMISV.Value > 0 then
                SQLVendedorComissaoVDCON2VLRCOMISS.Value := SQLVendedorComissaoVDCON2VLRCOMISS.Value +
                                                            (Valor * (SQLItensVendaVENDN2COMISV.Value/100)) ;
              SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLItensVendaVENDN2COMISV.Value;
            end;
        end;

        if TipoDeVenda = 'PRAZO' then
        begin
          Msg.Caption := 'Calculando comissão a prazo...' ;
          Msg.Refresh ;
          SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value := SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value + Valor ;
          SQLProduto.Close;
          SQLProduto.ParamByName('Produto').AsInteger := SQLItensVendaPRODICOD.AsInteger;
          SQLProduto.Open;
          if (SQLProduto.FieldByName('PRODCGERACOMIS').AsString = 'S') then
            begin
              if SQLProduto.FieldByName('PRODN2COMISPRAZO').AsFloat > 0 then
              begin
                SQLVendedorComissaoVDCON2VLRCOMISS.Value     := SQLVendedorComissaoVDCON2VLRCOMISS.Value +
                                                                (Valor * (SQLProduto.FieldByName('PRODN2COMISPRAZO').AsFloat/100));
                SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLProduto.FieldByName('PRODN2COMISPRAZO').AsFloat;
              end
              else
              begin
                SQLVendedorComissaoVDCON2VLRCOMISS.Value     := SQLVendedorComissaoVDCON2VLRCOMISS.Value +
                                                                (Valor * (SQLItensVendaVENDN2COMISP.Value));
                SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLItensVendaVENDN2COMISP.Value;
              end;
            end
          else
            begin
              if SQLItensVendaVENDN2COMISP.Value > 0 then
                SQLVendedorComissaoVDCON2VLRCOMISS.Value     := SQLVendedorComissaoVDCON2VLRCOMISS.Value +
                                                                (Valor * (SQLItensVendaVENDN2COMISP.Value/100)) ;
                SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLItensVendaVENDN2COMISP.Value;
            end;
        end;

        SQLVendedorComissaoVDCOINROVEND.Value    := 0;
        SQLVendedorComissaoVDCON2VENDMEDIA.Value := 0;
        SQLVendedorComissaoVDCON3QTDVEND.Value   := SQLVendedorComissaoVDCON3QTDVEND.Value + SQLItensVendaCPITN3QTD.Value; {total de itens vendidos}
        SQLVendedorComissao.Post;
      end;
      SQLItensVenda.Next;
      Progress.Position := Progress.Position + 1;
    end;
    Progress.Position := 0;
  end;

  // Calcular Usando Percentual do Vendedor e Parcelas Quitadas do Periodo...
  if Opcao3.Checked then
  begin
    Clausula := 'CUPOM.CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date)  + ''' and ' +
                'CUPOM.CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''';

    Progress.Max := SQLRecCount('CUPOM', 'where ' + Clausula) ;
    Progress.Position := 1 ;
    SQLCalcComiss.Close ;
    SQLCalcComiss.MacrobyName('MData').Value := Clausula ;
    SQLCalcComiss.MacrobyName('MData1').Value := 'NOTAFISCAL.NOFIDEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                 'NOTAFISCAL.NOFIDEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' ;

    SQLCalcComiss.MacrobyName('MStatus').Value  := 'CUPOM.CUPOCSTATUS = ''A''';
    SQLCalcComiss.MacrobyName('MStatus1').Value := 'NOTAFISCAL.NOFICSTATUS = ''E''';
    SQLCalcComiss.Open ;
    SQLCalcComiss.First ;
    while not SQLCalcComiss.EOF do
    begin
      Msg.Caption := 'Calculando comissão a Vista, Registro.: ' + inttostr(Progress.Position)+' de '+inttostr(Progress.Max);
      Msg.Refresh ;
      Application.ProcessMessages;

      TipoDeVenda := PlanoVistaPrazo(SQLCalcComissPLRCICOD.Value, SQLPlanoRecebimento, SQLPlanoRecebimentoParcela) ;

      if TipoDeVenda = '' then
        MemoProb.Lines.Add('O Documento ' + SQLCalcComissCUPOA13ID.Value + ' não é à VISTA nem à PRAZO!') ;

      SQLCupomNumerario.Close;
      SQLCupomNumerario.MacroByName('Cupom').Value := 'CUPOA13ID = '''+SQLCalcComissCUPOA13ID.Value+'''';
      SQLCupomNumerario.Open;

      SQLVendedorComissao.Append ;
      SQLVendedorComissaoVENDICOD.Value            := SQLCalcComissVENDICOD.Value ;
      SQLVendedorComissaoCUPOA13ID.Value           := SQLCalcComissCUPOA13ID.Value ;
      SQLVendedorComissaoCLIEA13ID.AsString        := SQLCalcComissCLIEA13ID.AsString;
      SQLVendedorComissaoVDCOA5TIPODOC.AsString    := SQLCalcComissTIPODOC.AsString;
      SQLVendedorComissaoVDCOCDEBCRED.AsString     := 'C';
      SQLVendedorComissaoVDCON2TOTVENDVISTA.Value  := SQLCupomNumerarioCPNMN2VLR.Value;
      SQLVendedorComissaoVDCON2VLRCOMISS.Value     := SQLCupomNumerarioCPNMN2VLR.Value *
                                                      (SQLCalcComissVENDN2COMISV.Value/100) ;
      SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLCalcComissVENDN2COMISV.Value;
      SQLVendedorComissaoVDCOINROVEND.Value        := 0 ;
      SQLVendedorComissaoVDCON2VENDMEDIA.Value     := 0 ;
      SQLVendedorComissaoVDCON3QTDVEND.Value       := 0 ;
      SQLVendedorComissaoVDCODEMIS.Value           := SQLCalcComissCUPODEMIS.Value ;

      if not (SQLVendedorComissaoVDCON2TOTVENDVISTA.Value > 0) then
        SQLVendedorComissaoVDCON2TOTVENDVISTA.Value := 0 ;
      if not (SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value > 0) then
        SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value := 0 ;
      if not (SQLVendedorComissaoVDCON2VENDMEDIA.Value > 0) then
        SQLVendedorComissaoVDCON2VENDMEDIA.Value := 0 ;
      if not (SQLVendedorComissaoVDCON3QTDVEND.Value > 0) then
        SQLVendedorComissaoVDCON3QTDVEND.Value := 0 ;
      if not (SQLVendedorComissaoVDCON2VLRCOMISS.Value > 0) then
        SQLVendedorComissaoVDCON2VLRCOMISS.Value := 0 ;

      SQLVendedorComissao.Post ;
      SQLCalcComiss.Next ;
      Progress.Position := Progress.Position + 1 ;
    end ;

    Progress.Position := 0 ;
    Application.ProcessMessages;

    SQLContasReceber.Close;
    SQLContasReceber.MacroByName('Data').Value      := 'CTRCDULTREC >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                       'CTRCDULTREC <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' ;

    if DateEmissao.Text <> '  /  /    ' then
      SQLContasReceber.MacroByName('Emissao').Value := 'CTRCDEMIS >= ' + '''' + FormatDateTime('mm/dd/yyyy',DateEmissao.Date) + ''''
    else
      SQLContasReceber.MacroByName('Emissao').Value := '0=0';

    SQLVendedorComissao.Close;
    SQLVendedorComissao.MacroByName('MFiltro').AsString := 'VDCODEMIS >= ''' + FormatDateTime('mm/dd/yyyy',De.Date) + ''' AND ' +
                                                           'VDCODEMIS <= ''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';
    SQLVendedorComissao.Open;
    SQLContasReceber.Open;
    SQLContasReceber.Last;
    SQLContasReceber.First;
    Progress.Max := SQLContasReceber.RecordCount;
    Progress.Min := 1;
    SQLConsulta.Close;
    SQLConsulta.SQL.Clear;
    SQLConsulta.SQL.Add('SELECT CUPOM.VENDICOD, VENDEDOR.VENDN2COMISV, VENDEDOR.VENDN2COMISP FROM CUPOM');
    SQLConsulta.SQL.Add('LEFT OUTER JOIN VENDEDOR ON CUPOM.VENDICOD = VENDEDOR.VENDICOD');
    SQLConsulta.SQL.Add('WHERE CUPOA13ID = :Cupom');

    While not SQLContasReceber.Eof Do
      begin
        Msg.Caption := 'Calculando comissão a Prazo, Registro.: ' + inttostr(Progress.Position)+' de '+inttostr(Progress.Max);
        Msg.Refresh ;
        Application.ProcessMessages;

        SQLRecebimento.Close;
        SQLRecebimento.MacroByName('Data').Value := 'RECEDRECTO >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                    'RECEDRECTO <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' ;
        SQLRecebimento.Open;
        SQLRecebimento.First;

        SQLConsulta.Close;
        SQLConsulta.ParamByName('Cupom').AsString := SQLContasReceberCUPOA13ID.AsString;
        SQLConsulta.Open;
        While not SQLRecebimento.eof do
          begin
            if (SQLConsulta.FieldByName('VENDICOD').AsString <> '') then
              begin
                SQLVendedorComissao.Append;
                SQLVendedorComissaoVDCOINROVEND.Value       := 0 ;
                SQLVendedorComissaoVDCODEMIS.AsDateTime     := SQLRecebimentoRECEDRECTO.AsDateTime ;
                SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value := SQLRecebimentoRECEN2VLRRECTO.AsFloat ;
                SQLVendedorComissaoVDCON2PERCOMISSAO.Value  := SQLConsulta.FieldByName('VENDN2COMISP').Value;
                SQLVendedorComissaoVDCON2VLRCOMISS.Value    := SQLVendedorComissaoVDCON2VLRCOMISS.AsFloat+(SQLRecebimentoRECEN2VLRRECTO.AsFloat *
                                                               SQLConsulta.FieldByName('VENDN2COMISP').AsFloat/100);
                SQLVendedorComissaoVENDICOD.AsString        := SQLConsulta.FieldByName('VENDICOD').AsString;

                if not SQLContasReceberCUPOA13ID.IsNull then
                   begin
                     SQLVendedorComissaoCUPOA13ID.AsString      := SQLContasReceberCUPOA13ID.AsString;
                     SQLVendedorComissaoVDCOA5TIPODOC.AsString  := 'CP';
                   end;
                if not SQLContasReceberNOFIA13ID.IsNull then
                   begin
                     SQLVendedorComissaoCUPOA13ID.AsString      := SQLContasReceberNOFIA13ID.AsString;
                     SQLVendedorComissaoVDCOA5TIPODOC.AsString  := 'NF';
                   end;
                SQLVendedorComissaoCLIEA13ID.AsString      := SQLRecebimentoCLIEA13ID.AsString;
                SQLVendedorComissaoVDCOCDEBCRED.AsString   := 'C';

                SQLVendedorComissao.Post;
              end;
            SQLRecebimento.Next;
          end;
        SQLVendedorComissao.Close;
        SQLVendedorComissao.Open;
        SQLContasReceber.Next;
        Progress.Position := Progress.Position + 1 ;
        Progress.Update;
      end;
  end ;

  if Opcao4.Checked then
    begin
      // CALCULA A COMISSAO NORMALMENTE USANDO PERCENTUAL DO VENDEDOR
      Clausula := 'CUPOM.CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                  'CUPOM.CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' +
                  ' and OperacaoEstoque.OPESCENTRADASAIDA = ''S'' and OperacaoEstoque.OPESCGERAFINANCEIRO = ''S'' ';

      SQLCalcComiss.Close;
      SQLCalcComiss.MacrobyName('MData').Value := Clausula ;
      SQLCalcComiss.MacrobyName('MData1').Value := 'NOTAFISCAL.NOFIDEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                   'NOTAFISCAL.NOFIDEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' +
                                                   ' and OperacaoEstoque.OPESCENTRADASAIDA = ''S'' and OperacaoEstoque.OPESCGERAFINANCEIRO = ''S'' ';

      SQLCalcComiss.MacrobyName('MStatus').Value  := 'CUPOM.CUPOCSTATUS = ''A''';
      SQLCalcComiss.MacrobyName('MStatus1').Value := 'NOTAFISCAL.NOFICSTATUS = ''E''';
      SQLCalcComiss.Open;
      SQLCalcComiss.Last;
      Progress.Min := 0;
      Progress.Max := SQLCalcComiss.RecordCount;
      Progress.Position := 0;
      SQLCalcComiss.First;

      while not SQLCalcComiss.EOF do
      begin
        Msg.Caption := 'Verificando vendas...' ;
        Msg.Refresh ;

        TipoDeVenda := PlanoVistaPrazo(SQLCalcComissPLRCICOD.Value, SQLPlanoRecebimento, SQLPlanoRecebimentoParcela) ;

        if TipoDeVenda = '' then
          MemoProb.Lines.Add('O Documento ' + SQLCalcComissCUPOA13ID.Value + ' não é à VISTA nem à PRAZO!') ;

        SQLVendedorComissao.Append ;
        SQLVendedorComissaoVENDICOD.Value  := SQLCalcComissVENDICOD.Value ;
        SQLVendedorComissaoCUPOA13ID.Value := SQLCalcComissCUPOA13ID.Value ;
        SQLVendedorComissaoCLIEA13ID.AsString      := SQLCalcComissCLIEA13ID.AsString;
        SQLVendedorComissaoVDCOA5TIPODOC.AsString  := SQLCalcComissTIPODOC.AsString;
        SQLVendedorComissaoVDCOCDEBCRED.AsString   := 'C';
        if (TipoDeVenda = 'VISTA') or (TipoDeVenda = '') then
        begin
          Msg.Caption := 'Calculando comissão a vista...' ;
          Msg.Refresh ;
          SQLVendedorComissaoVDCON2TOTVENDVISTA.Value  := (SQLCalcComissCUPON2TOTITENS.Value - SQLCalcComissCUPON3BONUSTROCA.Value);
          SQLVendedorComissaoVDCON2VLRCOMISS.Value     := (SQLCalcComissCUPON2TOTITENS.Value - SQLCalcComissCUPON3BONUSTROCA.Value) *
                                                          (SQLCalcComissVENDN2COMISV.Value/100) ;
          SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat :=  SQLCalcComissVENDN2COMISV.Value;
        end ;

        if TipoDeVenda = 'PRAZO' then
        begin
          Msg.Caption := 'Calculando comissão a prazo...' ;
          Msg.Refresh ;
          SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value  := (SQLCalcComissCUPON2TOTITENS.Value - SQLCalcComissCUPON3BONUSTROCA.Value) ;
          SQLVendedorComissaoVDCON2VLRCOMISS.Value     := (SQLCalcComissCUPON2TOTITENS.Value - SQLCalcComissCUPON3BONUSTROCA.Value) *
                                                          (SQLCalcComissVENDN2COMISP.Value/100) ;
          SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLCalcComissVENDN2COMISP.Value;
        end ;

        SQLVendedorComissaoVDCOINROVEND.Value    := 0 ;
        SQLVendedorComissaoVDCON2VENDMEDIA.Value := 0 ;
        SQLVendedorComissaoVDCON3QTDVEND.Value   := 0 ;
        SQLVendedorComissaoVDCODEMIS.Value       := SQLCalcComissCUPODEMIS.Value ;

        if not (SQLVendedorComissaoVDCON2TOTVENDVISTA.Value > 0) then
          SQLVendedorComissaoVDCON2TOTVENDVISTA.Value := 0 ;
        if not (SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value > 0) then
          SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value := 0 ;
        if not (SQLVendedorComissaoVDCON2VENDMEDIA.Value > 0) then
          SQLVendedorComissaoVDCON2VENDMEDIA.Value := 0 ;
        if not (SQLVendedorComissaoVDCON3QTDVEND.Value > 0) then
          SQLVendedorComissaoVDCON3QTDVEND.Value := 0 ;
        if not (SQLVendedorComissaoVDCON2VLRCOMISS.Value > 0) then
          SQLVendedorComissaoVDCON2VLRCOMISS.Value := 0 ;

        SQLVendedorComissao.Post ;

        SQLCalcComiss.Next ;
        Progress.Position := Progress.Position + 1 ;
        Progress.Update;
        Application.ProcessMessages;
      end;
      Progress.Position := 0 ;
      // VERIFICA A VENDA FIDELIZADA
      Clausula := 'CUPOM.CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                  'CUPOM.CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' +
                  ' and OperacaoEstoque.OPESCENTRADASAIDA = ''S'' and OperacaoEstoque.OPESCGERAFINANCEIRO = ''S'' ';

      SQLVendasFidelizadas.Close;
      SQLVendasFidelizadas.MacrobyName('MData').Value := Clausula ;
      SQLVendasFidelizadas.MacrobyName('MData1').Value := 'NOTAFISCAL.NOFIDEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                          'NOTAFISCAL.NOFIDEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' +
                                                          ' and OperacaoEstoque.OPESCENTRADASAIDA = ''S'' and OperacaoEstoque.OPESCGERAFINANCEIRO = ''S'' ';
      SQLVendasFidelizadas.Open;
      SQLVendasFidelizadas.Last;
      Progress.Min := 0;
      Progress.Max := SQLVendasFidelizadas.RecordCount;
      Progress.Update;
      SQLVendasFidelizadas.First;
      while not SQLVendasFidelizadas.EOF do
      begin
        Msg.Caption := 'Verificando Fidelização...' ;
        Msg.Refresh ;

        TipoDeVenda := PlanoVistaPrazo(SQLVendasFidelizadasPLRCICOD.Value, SQLPlanoRecebimento, SQLPlanoRecebimentoParcela) ;

        if TipoDeVenda = '' then
          MemoProb.Lines.Add('O Documento ' + SQLVendasFidelizadasCUPOA13ID.Value + ' não é à VISTA nem à PRAZO!') ;
        if not SQLVendedor.Active then SQLVendedor.Open;
        if SQLVendedor.Locate('VENDICOD',SQLVendasFidelizadasVENDICOD.AsString,[]) then
          begin
            InfoUltCompraCliente := RetornaUltimaCompraCliente(SQLVendasFidelizadasCLIEA13ID.AsString,SQLVendasFidelizadasVENDICOD.AsString);
            if InfoUltCompraCliente.UltimaCompra <> '' then
              begin
                if (SQLVendasFidelizadasCUPODEMIS.AsDateTime - StrToDate(InfoUltCompraCliente.UltimaCompra)) <= SQLVendedorVENDIDIASVALFIDEL.AsInteger then
                  begin
                    SQLVendedorComissao.Append ;
                    SQLVendedorComissaoVENDICOD.Value          := SQLVendasFidelizadasVENDICOD.Value ;
                    SQLVendedorComissaoCUPOA13ID.Value         := SQLVendasFidelizadasCUPOA13ID.Value ;
                    SQLVendedorComissaoCLIEA13ID.AsString      := SQLVendasFidelizadasCLIEA13ID.AsString;
                    SQLVendedorComissaoVDCOA5TIPODOC.AsString  := SQLVendasFidelizadasTIPODOC.AsString;
                    SQLVendedorComissaoVDCOCDEBCRED.AsString   := 'C';

                    if (TipoDeVenda = 'VISTA') or (TipoDeVenda = '') then
                    begin
                      SQLVendedorComissaoVDCON2TOTVENDVISTA.Value  := (SQLVendasFidelizadasCUPON2TOTITENS.Value - SQLVendasFidelizadasCUPON3BONUSTROCA.Value);
                      SQLVendedorComissaoVDCON2VLRCOMISS.Value     := (SQLVendasFidelizadasCUPON2TOTITENS.Value - SQLVendasFidelizadasCUPON3BONUSTROCA.Value) *
                                                                      (SQLVendasFidelizadasVENDN2COMISV.Value/100);
                      SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLVendasFidelizadasVENDN2COMISV.Value;
                    end ;

                    if TipoDeVenda = 'PRAZO' then
                    begin
                      SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value  := (SQLVendasFidelizadasCUPON2TOTITENS.Value - SQLVendasFidelizadasCUPON3BONUSTROCA.Value);
                      SQLVendedorComissaoVDCON2VLRCOMISS.Value     := (SQLVendasFidelizadasCUPON2TOTITENS.Value - SQLVendasFidelizadasCUPON3BONUSTROCA.Value) *
                                                                      (SQLVendasFidelizadasVENDN2COMISP.Value/100);
                      SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLVendasFidelizadasVENDN2COMISP.Value;

                    end;

                    SQLVendedorComissaoVDCOINROVEND.Value    := 0;
                    SQLVendedorComissaoVDCON2VENDMEDIA.Value := 0;
                    SQLVendedorComissaoVDCON3QTDVEND.Value   := 0;
                    SQLVendedorComissaoVDCODEMIS.Value       := SQLVendasFidelizadasCUPODEMIS.Value;

                    if not (SQLVendedorComissaoVDCON2TOTVENDVISTA.Value > 0) then
                      SQLVendedorComissaoVDCON2TOTVENDVISTA.Value := 0;
                    if not (SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value > 0) then
                      SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value := 0;
                    if not (SQLVendedorComissaoVDCON2VENDMEDIA.Value > 0) then
                      SQLVendedorComissaoVDCON2VENDMEDIA.Value := 0;
                    if not (SQLVendedorComissaoVDCON3QTDVEND.Value > 0) then
                      SQLVendedorComissaoVDCON3QTDVEND.Value := 0;
                    if not (SQLVendedorComissaoVDCON2VLRCOMISS.Value > 0) then
                      SQLVendedorComissaoVDCON2VLRCOMISS.Value := 0;

                    SQLVendedorComissao.Post;
                  end;
              end;
          end;
        SQLVendasFidelizadas.Next;
        Progress.Position := Progress.Position + 1;
        Progress.Update;
        Application.ProcessMessages;
      end;
      // CALCULA OS ESTORNOS DO PERIODO
      Clausula := ' (CUPOM.CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                             'CUPOM.CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' +
                             ' and OperacaoEstoque.OPESCENTRADASAIDA = ''D'' and OperacaoEstoque.OPESCGERAFINANCEIRO = ''S'') ';
      Progress.Position := 0;
      SQLCalcComiss.Close;
      SQLCalcComiss.MacrobyName('MData').Value  := Clausula ;
      SQLCalcComiss.MacrobyName('MData1').Value := ' (NOTAFISCAL.NOFIDEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                   'NOTAFISCAL.NOFIDEMIS     <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' +
                                                   ' and OperacaoEstoque.OPESCENTRADASAIDA = ''D'' and OperacaoEstoque.OPESCGERAFINANCEIRO = ''S'') ';

      SQLCalcComiss.MacrobyName('MStatus').Value  := 'CUPOM.CUPOCSTATUS = ''C''';
      SQLCalcComiss.MacrobyName('MStatus1').Value := 'NOTAFISCAL.NOFICSTATUS <> ''A''';

      SQLCalcComiss.Open;
      SQLCalcComiss.Last;
      Progress.Min := 0;
      Progress.Max := SQLCalcComiss.RecordCount;
      Progress.Update;

      SQLCalcComiss.First;

      while not SQLCalcComiss.EOF do
      begin
        Msg.Caption := 'Verificando Estorno de vendas...' ;
        Msg.Refresh ;

        TipoDeVenda := PlanoVistaPrazo(SQLCalcComissPLRCICOD.Value, SQLPlanoRecebimento, SQLPlanoRecebimentoParcela) ;

        if TipoDeVenda = '' then
          MemoProb.Lines.Add('O Documento ' + SQLCalcComissCUPOA13ID.Value + ' não é à VISTA nem à PRAZO!') ;

        SQLVendedorComissao.Append ;

        SQLVendedorComissaoVDCON2TOTVENDVISTA.Value := 0 ;
        SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value := 0 ;
        SQLVendedorComissaoVDCON2VENDMEDIA.Value    := 0 ;
        SQLVendedorComissaoVDCON3QTDVEND.Value      := 0 ;
        SQLVendedorComissaoVDCON2VLRCOMISS.Value    := 0 ;

        SQLVendedorComissaoVENDICOD.Value           := SQLCalcComissVENDICOD.Value ;
        SQLVendedorComissaoCUPOA13ID.Value          := SQLCalcComissCUPOA13ID.Value ;
        SQLVendedorComissaoCLIEA13ID.AsString       := SQLCalcComissCLIEA13ID.AsString;
        SQLVendedorComissaoVDCOA5TIPODOC.AsString   := SQLCalcComissTIPODOC.AsString;
        SQLVendedorComissaoVDCOCDEBCRED.AsString    := 'D';

        if (TipoDeVenda = 'VISTA') or (TipoDeVenda = '') then
        begin
          SQLVendedorComissaoVDCON2TOTVENDVISTA.Value  := -(SQLCalcComissCUPON2TOTITENS.Value - SQLCalcComissCUPON3BONUSTROCA.Value);
          SQLVendedorComissaoVDCON2VLRCOMISS.Value     := -(SQLCalcComissCUPON2TOTITENS.Value - SQLCalcComissCUPON3BONUSTROCA.Value) *
                                                          (SQLCalcComissVENDN2COMISV.Value/100) ;
          SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat :=  -SQLCalcComissVENDN2COMISV.Value;
        end ;

        if TipoDeVenda = 'PRAZO' then
        begin
          SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value  := -(SQLCalcComissCUPON2TOTITENS.Value - SQLCalcComissCUPON3BONUSTROCA.Value) ;
          SQLVendedorComissaoVDCON2VLRCOMISS.Value     := -(SQLCalcComissCUPON2TOTITENS.Value - SQLCalcComissCUPON3BONUSTROCA.Value) *
                                                          (SQLCalcComissVENDN2COMISP.Value/100) ;
          SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := -SQLCalcComissVENDN2COMISP.Value;
        end ;

        SQLVendedorComissaoVDCOINROVEND.Value    := 0 ;
        SQLVendedorComissaoVDCON2VENDMEDIA.Value := 0 ;
        SQLVendedorComissaoVDCON3QTDVEND.Value   := 0 ;
        SQLVendedorComissaoVDCODEMIS.Value       := SQLCalcComissCUPODEMIS.Value ;

        SQLVendedorComissao.Post ;

        SQLCalcComiss.Next ;
        Progress.Position := Progress.Position + 1 ;
        Progress.Update;
        Application.ProcessMessages;
      end;
      Progress.Position := 0 ;
      ////////////////////////////

      Progress.Position := 0 ;
      // VERIFICA ESTORNO DA VENDA FIDELIZADA

      Clausula := ' (CUPOM.CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                             'CUPOM.CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' +
                             ' and OperacaoEstoque.OPESCENTRADASAIDA = ''D'' and OperacaoEstoque.OPESCGERAFINANCEIRO = ''S'') ';
      Progress.Position := 0;
      SQLVendasFidelizadas.Close;
      SQLVendasFidelizadas.MacrobyName('MData').Value  := Clausula ;
      SQLVendasFidelizadas.MacrobyName('MData1').Value := ' (NOTAFISCAL.NOFIDEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                   'NOTAFISCAL.NOFIDEMIS     <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' +
                                                   ' and OperacaoEstoque.OPESCENTRADASAIDA = ''D'' and OperacaoEstoque.OPESCGERAFINANCEIRO = ''S'') ';

      SQLVendasFidelizadas.Open;
      SQLVendasFidelizadas.Last;
      Progress.Min := 0;
      Progress.Max := SQLVendasFidelizadas.RecordCount;
      Progress.Update;
      SQLVendasFidelizadas.First;
      while not SQLVendasFidelizadas.EOF do
      begin
        Msg.Caption := 'Verificando Estorno de Fidelização...' ;
        Msg.Refresh ;

        TipoDeVenda := PlanoVistaPrazo(SQLVendasFidelizadasPLRCICOD.Value, SQLPlanoRecebimento, SQLPlanoRecebimentoParcela) ;

        if TipoDeVenda = '' then
          MemoProb.Lines.Add('O Documento ' + SQLVendasFidelizadasCUPOA13ID.Value + ' não é à VISTA nem à PRAZO!') ;
        if not SQLVendedor.Active then SQLVendedor.Open;
        if SQLVendedor.Locate('VENDICOD',SQLVendasFidelizadasVENDICOD.AsString,[]) then
          begin
            InfoUltCompraCliente := RetornaUltimaCompraCliente(SQLVendasFidelizadasCLIEA13ID.AsString,SQLVendasFidelizadasVENDICOD.AsString);
            if InfoUltCompraCliente.UltimaCompra <> '' then
              begin
                if (SQLVendasFidelizadasCUPODEMIS.AsDateTime - StrToDate(InfoUltCompraCliente.UltimaCompra)) <= SQLVendedorVENDIDIASVALFIDEL.AsInteger then
                  begin
                    SQLVendedorComissao.Append ;
                    SQLVendedorComissaoVDCON2TOTVENDVISTA.Value := 0;
                    SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value := 0;
                    SQLVendedorComissaoVDCON2VENDMEDIA.Value := 0;
                    SQLVendedorComissaoVDCON3QTDVEND.Value := 0;
                    SQLVendedorComissaoVDCON2VLRCOMISS.Value := 0;
                    SQLVendedorComissaoVENDICOD.Value          := SQLVendasFidelizadasVENDICOD.Value ;
                    SQLVendedorComissaoCUPOA13ID.Value         := SQLVendasFidelizadasCUPOA13ID.Value ;
                    SQLVendedorComissaoCLIEA13ID.AsString      := SQLVendasFidelizadasCLIEA13ID.AsString;
                    SQLVendedorComissaoVDCOA5TIPODOC.AsString  := SQLVendasFidelizadasTIPODOC.AsString;
                    SQLVendedorComissaoVDCOCDEBCRED.AsString   := 'D';

                    if (TipoDeVenda = 'VISTA') or (TipoDeVenda = '') then
                    begin
                      SQLVendedorComissaoVDCON2TOTVENDVISTA.Value  := -(SQLVendasFidelizadasCUPON2TOTITENS.Value - SQLVendasFidelizadasCUPON3BONUSTROCA.Value);
                      SQLVendedorComissaoVDCON2VLRCOMISS.Value     := -(SQLVendasFidelizadasCUPON2TOTITENS.Value - SQLVendasFidelizadasCUPON3BONUSTROCA.Value) *
                                                                      (SQLVendasFidelizadasVENDN2COMISV.Value/100);
                      SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := -SQLVendasFidelizadasVENDN2COMISV.Value;
                    end ;

                    if TipoDeVenda = 'PRAZO' then
                    begin
                      Msg.Caption := 'Calculando comissão a prazo...';
                      Msg.Refresh;
                      SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value  := -(SQLVendasFidelizadasCUPON2TOTITENS.Value - SQLVendasFidelizadasCUPON3BONUSTROCA.Value);
                      SQLVendedorComissaoVDCON2VLRCOMISS.Value     := -(SQLVendasFidelizadasCUPON2TOTITENS.Value - SQLVendasFidelizadasCUPON3BONUSTROCA.Value) *
                                                                      (SQLVendasFidelizadasVENDN2COMISP.Value/100);
                      SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := -SQLVendasFidelizadasVENDN2COMISP.Value;

                    end;

                    SQLVendedorComissaoVDCOINROVEND.Value    := 0;
                    SQLVendedorComissaoVDCON2VENDMEDIA.Value := 0;
                    SQLVendedorComissaoVDCON3QTDVEND.Value   := 0;
                    SQLVendedorComissaoVDCODEMIS.Value       := SQLVendasFidelizadasCUPODEMIS.Value;

                    SQLVendedorComissao.Post;
                  end;
              end;
          end;
        SQLVendasFidelizadas.Next;
        Progress.Position := Progress.Position + 1;
        Progress.Update;
        Application.ProcessMessages;
      end;
    ////////////////////
    end;

  if Opcao5.Checked then
    begin
      SQLPedidoVenda.Close;
      SQLPedidoVenda.MacroByName('MData').AsString := 'PEDIDOVENDA.PDVDDEMISSAO >= ''' + FormatDateTime('mm/dd/yyyy 00:00:00', De.Date) + ''' and ' +
                                                      'PEDIDOVENDA.PDVDDEMISSAO <= ''' + FormatDateTime('mm/dd/yyyy 23:59:00', Ate.Date) + '''' ;
      SQLPedidoVenda.Open;
      SQLPedidoVenda.First;

      while not SQLPedidoVenda.EOF do
      begin
        Msg.Caption := 'Verificando Pedidos...';
        Msg.Refresh ;

        TipoDeVenda := PlanoVistaPrazo(SQLPedidoVendaPLRCICOD.Value, SQLPlanoRecebimento, SQLPlanoRecebimentoParcela);

        if TipoDeVenda = '' then
          MemoProb.Lines.Add('O Documento ' + SQLPedidoVendaPDVDA13ID.Value + ' não é à VISTA nem à PRAZO!');

        SQLVendedorComissao.Append;
        SQLVendedorComissaoVENDICOD.Value             := SQLPedidoVendaVENDICOD.Value;
        SQLVendedorComissaoCUPOA13ID.Value            := SQLPedidoVendaPDVDA13ID.Value;
        SQLVendedorComissaoCLIEA13ID.AsString         := SQLPedidoVendaCLIEA13ID.AsString;
        SQLVendedorComissaoVDCOA5TIPODOC.AsString     :=  SQLPedidoVendaTIPODOC.AsString;
        SQLVendedorComissaoVDCOCDEBCRED.AsString      := 'C';
        if TipoDeVenda = 'VISTA' then
        begin
          Msg.Caption := 'Calculando comissão a vista...';
          Msg.Refresh;
          if SQLPedidoVendaPDVDN2PERCOMIS.AsFloat > 0 then
            begin
              SQLVendedorComissaoVDCON2TOTVENDVISTA.Value := (SQLPedidoVendaPDVDN2TOTPED.AsFloat - SQLPedidoVendaPDVDN2VLRFRETE.AsFloat);
              SQLVendedorComissaoVDCON2VLRCOMISS.Value    := (SQLPedidoVendaPDVDN2TOTPED.AsFloat - SQLPedidoVendaPDVDN2VLRFRETE.AsFloat) *
                                                             (SQLPedidoVendaPDVDN2PERCOMIS.Value/100);
              SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLPedidoVendaPDVDN2PERCOMIS.Value;
            end
          else
            begin
              SQLVendedorComissaoVDCON2TOTVENDVISTA.Value := (SQLPedidoVendaPDVDN2TOTPED.AsFloat - SQLPedidoVendaPDVDN2VLRFRETE.AsFloat);
              SQLVendedorComissaoVDCON2PERCOMISSAO.AsString   := SQLLocate('VENDEDOR','VENDICOD','VENDN2COMISV',SQLPedidoVendaVENDICOD.AsString) ;
              SQLVendedorComissaoVDCON2VLRCOMISS.Value    := (SQLPedidoVendaPDVDN2TOTPED.AsFloat - SQLPedidoVendaPDVDN2VLRFRETE.AsFloat) *
                                                             (SQLVendedorComissaoVDCON2PERCOMISSAO.Value/100);
            end;
        end ;

        if TipoDeVenda = 'PRAZO' then
        begin
          Msg.Caption := 'Calculando comissão a prazo...';
          Msg.Refresh;
          if SQLPedidoVendaPDVDN2PERCOMIS.AsFloat > 0 then
            begin
              SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value := (SQLPedidoVendaPDVDN2TOTPED.AsFloat - SQLPedidoVendaPDVDN2VLRFRETE.AsFloat);
              SQLVendedorComissaoVDCON2VLRCOMISS.Value    := (SQLPedidoVendaPDVDN2TOTPED.AsFloat - SQLPedidoVendaPDVDN2VLRFRETE.AsFloat) *
                                                             (SQLPedidoVendaPDVDN2PERCOMIS.Value/100);
              SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLPedidoVendaPDVDN2PERCOMIS.Value;
            end
          else
            begin
              SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value  := (SQLPedidoVendaPDVDN2TOTPED.AsFloat - SQLPedidoVendaPDVDN2VLRFRETE.AsFloat);
              SQLVendedorComissaoVDCON2PERCOMISSAO.AsString   := SQLLocate('VENDEDOR','VENDICOD','VENDN2COMISP',SQLPedidoVendaVENDICOD.AsString);
              SQLVendedorComissaoVDCON2VLRCOMISS.Value     := (SQLPedidoVendaPDVDN2TOTPED.AsFloat - SQLPedidoVendaPDVDN2VLRFRETE.AsFloat) *
                                                              (SQLVendedorComissaoVDCON2PERCOMISSAO.Value/100);
            end;
        end ;

        SQLVendedorComissaoVDCOINROVEND.Value    := 0;
        SQLVendedorComissaoVDCON2VENDMEDIA.Value := 0;
        SQLVendedorComissaoVDCON3QTDVEND.Value   := 0;
        SQLVendedorComissaoVDCODEMIS.Value       := SQLPedidoVendaPDVDDEMISSAO.Value;

        if not (SQLVendedorComissaoVDCON2TOTVENDVISTA.Value > 0) then
          SQLVendedorComissaoVDCON2TOTVENDVISTA.Value := 0;
        if not (SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value > 0) then
          SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value := 0;
        if not (SQLVendedorComissaoVDCON2VENDMEDIA.Value > 0) then
          SQLVendedorComissaoVDCON2VENDMEDIA.Value := 0;
        if not (SQLVendedorComissaoVDCON3QTDVEND.Value > 0) then
          SQLVendedorComissaoVDCON3QTDVEND.Value := 0;
        if not (SQLVendedorComissaoVDCON2VLRCOMISS.Value > 0) then
          SQLVendedorComissaoVDCON2VLRCOMISS.Value := 0;

        SQLVendedorComissao.Post;

        SQLPedidoVenda.Next;
        Progress.Position := Progress.Position + 1;
      end;
      Progress.Position := 0;
    end;

  if Opcao6.Checked then
    begin
      Msg.Caption := 'Contando registros...' ;
      Msg.Refresh ;

      Clausula := 'PEDIDOVENDA.PDVDDEMISSAO >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                  'PEDIDOVENDA.PDVDDEMISSAO <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' ;

      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('Select Count(*) as RecCount') ;
      DM.SQLTemplate.SQL.Add('From') ;
      DM.SQLTemplate.SQL.Add('PEDIDOVENDA PEDIDOVENDA INNER JOIN PEDIDOVENDAITEM PEDIDOVENDAITEM ON PEDIDOVENDA.PDVDA13ID = PEDIDOVENDAITEM.PDVDA13ID') ;
      DM.SQLTemplate.SQL.Add('Where') ;
      DM.SQLTemplate.SQL.Add('PEDIDOVENDA.PDVDCSTATUS <> ''C'' and') ;
      DM.SQLTemplate.SQL.Add('PEDIDOVENDAITEM.PVITN3QUANT > 0 and') ;
      DM.SQLTemplate.SQL.Add('PEDIDOVENDA.PDVDDEMISSAO >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ') ;
      DM.SQLTemplate.SQL.Add('PEDIDOVENDA.PDVDDEMISSAO <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''') ;
      DM.SQLTemplate.Open ;

      Progress.Position := 0 ;
      Progress.Max := DM.SQLTemplate.fieldbyname('RecCount').Value ;

      Msg.Caption := 'Filtrando registros...' ;
      Msg.Refresh ;

      SQLPedidoVendaItem.Close ;
      SQLPedidoVendaItem.MacrobyName('MData').Value := Clausula ;
      SQLPedidoVendaItem.Open ;
      SQLPedidoVendaItem.First ;
      while not SQLPedidoVendaItem.EOF do
      begin
        TipoDeVenda := PlanoVistaPrazo(SQLPedidoVendaItemPLRCICOD.AsInteger, SQLPlanoRecebimento, SQLPlanoRecebimentoParcela) ;

        if TipoDeVenda = '' then
          begin
            MemoProb.Lines.Add('O Documento ' + SQLPedidoVendaItemPDVDA13ID.Value + ' não é à VISTA nem à PRAZO!') ;
            TipoDeVenda := PlanoVistaPrazo(SQLPedidoVendaItemPLRCICOD.Value, SQLPlanoRecebimento, SQLPlanoRecebimentoParcela) ;
          end ;

        Msg.Caption := 'Verificando vendas...' ;
        Msg.Refresh ;

        Valor := SQLPedidoVendaItemPVITN3TOTVENDITEM.Value ;

        SQLVendedorComissao.Close ;
        SQLVendedorComissao.MacroByName('MFiltro').Value := 'VENDICOD  = ' + SQLPedidoVendaItemVENDICOD.AsString + ' and ' +
                                                            'CUPOA13ID = ''' + SQLPedidoVendaItemPDVDA13ID.AsString + '''' ;
        try
          SQLVendedorComissao.Open ;
        except
          ShowMessage('Erro na Venda Nro.'+SQLPedidoVendaItemPDVDA13ID.AsString+ chr(13)+'Vendedor = '+SQLPedidoVendaItemVENDICOD.AsString);
        end;
        if SQLVendedorComissao.EOF then
        begin
          SQLVendedorComissao.Append ;
          SQLVendedorComissaoVENDICOD.Value          := SQLPedidoVendaItemVENDICOD.Value ;
          SQLVendedorComissaoCUPOA13ID.Value         := SQLPedidoVendaItemPDVDA13ID.Value ;
          SQLVendedorComissaoCLIEA13ID.AsString      := SQLPedidoVendaItemCLIEA13ID.AsString;
          SQLVendedorComissaoVDCOA5TIPODOC.AsString  := 'PV';
          SQLVendedorComissaoVDCOCDEBCRED.AsString   := 'C';
          if TipoDeVenda = 'VISTA' then
            begin
              Msg.Caption := 'Calculando comissão a vista...' ;
              Msg.Refresh ;
              SQLVendedorComissaoVDCON2TOTVENDVISTA.Value := Valor ;
              SQLProduto.Close;
              SQLProduto.ParamByName('Produto').AsInteger := SQLPedidoVendaItemPRODICOD.AsInteger;
              SQLProduto.Open;
              if (SQLProduto.FieldByName('PRODCGERACOMIS').AsString = 'S') and (SQLProduto.FieldByName('PRODN2COMISVISTA').AsFloat > 0) then
                begin
                  SQLVendedorComissaoVDCON2VLRCOMISS.Value     := Valor * (SQLProduto.FieldByName('PRODN2COMISVISTA').AsFloat/100);
                  SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLProduto.FieldByName('PRODN2COMISVISTA').AsFloat;
                end
              else
                begin
                  if SQLPedidoVendaItemVENDN2COMISV.Value > 0 then
                    SQLVendedorComissaoVDCON2VLRCOMISS.Value     := Valor * (SQLPedidoVendaItemVENDN2COMISV.Value/100);
                    SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLPedidoVendaItemVENDN2COMISV.Value;
                end;
            end;

          if TipoDeVenda = 'PRAZO' then
            begin
              Msg.Caption := 'Calculando comissão a prazo...' ;
              Msg.Refresh ;
              SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value := Valor ;

              SQLProduto.Close;
              SQLProduto.ParamByName('Produto').AsInteger := SQLPedidoVendaItemPRODICOD.AsInteger;
              SQLProduto.Open;
              if (SQLProduto.FieldByName('PRODCGERACOMIS').AsString = 'S') and (SQLProduto.FieldByName('PRODN2COMISPRAZO').AsFloat > 0) then
                begin
                  SQLVendedorComissaoVDCON2VLRCOMISS.Value     := Valor * (SQLProduto.FieldByName('PRODN2COMISPRAZO').AsFloat/100);
                  SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLProduto.FieldByName('PRODN2COMISPRAZO').AsFloat;
                end
              else
                begin
                  if SQLPedidoVendaItemVENDN2COMISP.Value > 0 then
                    SQLVendedorComissaoVDCON2VLRCOMISS.Value     := Valor * (SQLPedidoVendaItemVENDN2COMISP.Value/100) ;
                    SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLPedidoVendaItemVENDN2COMISP.Value;
                end;
            end ;

          SQLVendedorComissaoVDCOINROVEND.Value    := 0 ;
          SQLVendedorComissaoVDCON2VENDMEDIA.Value := 0 ;
          SQLVendedorComissaoVDCON3QTDVEND.Value   := SQLPedidoVendaItemPVITN3QUANT.Value ;
          SQLVendedorComissaoVDCODEMIS.Value       := SQLPedidoVendaItemPDVDDEMISSAO.Value ;
          SQLVendedorComissao.Post ;
        end
        else begin
          SQLVendedorComissao.Edit ;

          if TipoDeVenda = 'VISTA' then
          begin
            Msg.Caption := 'Calculando comissão a vista...' ;
            Msg.Refresh ;
            SQLVendedorComissaoVDCON2TOTVENDVISTA.Value := SQLVendedorComissaoVDCON2TOTVENDVISTA.Value + Valor ;
            SQLProduto.Close;
            SQLProduto.ParamByName('Produto').AsInteger := SQLPedidoVendaItemPRODICOD.AsInteger;
            SQLProduto.Open;
            if (SQLProduto.FieldByName('PRODCGERACOMIS').AsString = 'S') and (SQLProduto.FieldByName('PRODN2COMISVISTA').AsFloat > 0) then
              begin
                SQLVendedorComissaoVDCON2VLRCOMISS.Value := SQLVendedorComissaoVDCON2VLRCOMISS.Value +
                                                            (Valor * (SQLProduto.FieldByName('PRODN2COMISVISTA').AsFloat/100));
                SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLProduto.FieldByName('PRODN2COMISVISTA').AsFloat;
              end
            else
              begin
                if SQLPedidoVendaItemVENDN2COMISV.Value > 0 then
                  SQLVendedorComissaoVDCON2VLRCOMISS.Value := SQLVendedorComissaoVDCON2VLRCOMISS.Value +
                                                              (Valor * (SQLPedidoVendaItemVENDN2COMISV.Value/100)) ;
                SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLPedidoVendaItemVENDN2COMISV.Value;
              end;
          end;

          if TipoDeVenda = 'PRAZO' then
          begin
            Msg.Caption := 'Calculando comissão a prazo...' ;
            Msg.Refresh ;
            SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value := SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value + Valor ;
            SQLProduto.Close;
            SQLProduto.ParamByName('Produto').AsInteger := SQLPedidoVendaItemPRODICOD.AsInteger;
            SQLProduto.Open;
            if (SQLProduto.FieldByName('PRODCGERACOMIS').AsString = 'S') and (SQLProduto.FieldByName('PRODN2COMISPRAZO').AsFloat > 0) then
              begin
                SQLVendedorComissaoVDCON2VLRCOMISS.Value     := SQLVendedorComissaoVDCON2VLRCOMISS.Value +
                                                                (Valor * (SQLProduto.FieldByName('PRODN2COMISPRAZO').AsFloat/100));
                SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLProduto.FieldByName('PRODN2COMISPRAZO').AsFloat;
              end
            else
              begin
                if SQLPedidoVendaItemVENDN2COMISP.Value > 0 then
                  SQLVendedorComissaoVDCON2VLRCOMISS.Value     := SQLVendedorComissaoVDCON2VLRCOMISS.Value +
                                                                  (Valor * (SQLPedidoVendaItemVENDN2COMISP.Value/100)) ;
                  SQLVendedorComissaoVDCON2PERCOMISSAO.AsFloat := SQLPedidoVendaItemVENDN2COMISP.Value;
              end;
          end;

          SQLVendedorComissaoVDCOINROVEND.Value    := 0;
          SQLVendedorComissaoVDCON2VENDMEDIA.Value := 0;
          SQLVendedorComissaoVDCON3QTDVEND.Value   := SQLVendedorComissaoVDCON3QTDVEND.Value + SQLPedidoVendaItemPVITN3QUANT.Value;
          SQLVendedorComissao.Post;
        end;
        SQLPedidoVendaItem.Next;
        Progress.Position := Progress.Position + 1;
      end;
      Progress.Position := 0;
    end;

  //CALCULAR VERTEBRALLE
  if Opcao7.Checked then
  begin
    Msg.Caption := 'Contando registros...' ;
    Msg.Refresh ;

    DM.SQLConsulta.Close ;
    DM.SQLConsulta.SQL.Clear ;
    DM.SQLConsulta.SQL.Add('select * from CUPOM where (CUPOCSTATUS <> ''C'') and ') ;
    DM.SQLConsulta.SQL.Add('CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ') ;
    DM.SQLConsulta.SQL.Add('CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''') ;
    DM.SQLConsulta.Open ;
    Progress.Max := DM.SQLConsulta.RecordCount ;

    Progress.Position := 0 ;

    Msg.Caption := 'Filtrando registros...' ;
    Msg.Refresh ;
    DM.SQLConsulta.First ;
    while not DM.SQLConsulta.EOF do
    begin
      Valor := DM.SQLConsulta.Fieldbyname('CUPON2TOTITENS').Value +
               DM.SQLConsulta.Fieldbyname('CUPON2ACRESC').Value -
               DM.SQLConsulta.Fieldbyname('CUPON2DESC').Value -
               DM.SQLConsulta.Fieldbyname('CUPON3BONUSTROCA').Value ;

      TipoDeVenda := PlanoVistaPrazo(DM.SQLConsulta.Fieldbyname('PLRCICOD').AsInteger, SQLPlanoRecebimento, SQLPlanoRecebimentoParcela) ;
      if TipoDeVenda = '' then
        begin
          MemoProb.Lines.Add('O Documento ' + DM.SQLConsulta.Fieldbyname('CUPOA13ID').Value + ' não é à VISTA nem à PRAZO!') ;
          TipoDeVenda := PlanoVistaPrazo(DM.SQLConsulta.Fieldbyname('PLRCICOD').AsInteger, SQLPlanoRecebimento, SQLPlanoRecebimentoParcela) ;
        end ;

      Msg.Caption := 'Verificando vendas...' ;
      Msg.Refresh ;

      SQLEmpresaComissao.Close ;
      SQLEmpresaComissao.MacroByName('MFiltro').Value := 'CUPOA13ID = ''' + DM.SQLConsulta.Fieldbyname('CUPOA13ID').Value + '''' ;
      try
        SQLEmpresaComissao.Open ;
      except
        ShowMessage('Erro na Venda Nro.' + DM.SQLConsulta.Fieldbyname('CUPOA13ID').Value);
      end;
      if SQLEmpresaComissao.EOF then
      begin
        SQLEmpresaComissao.Append ;
        SQLEmpresaComissaoEMPRICOD.Value          := DM.SQLConsulta.Fieldbyname('EMPRICOD').Value;
        SQLEmpresaComissaoVENDICOD.Value          := DM.SQLConsulta.Fieldbyname('VENDICOD').Value;
        SQLEmpresaComissaoCUPOA13ID.Value         := DM.SQLConsulta.Fieldbyname('CUPOA13ID').Value;
        SQLEmpresaComissaoCUPODEMIS.Value         := DM.SQLConsulta.Fieldbyname('CUPODEMIS').Value;
        SQLEmpresaComissaoCLIEA13ID.AsString      := DM.SQLConsulta.Fieldbyname('CLIEA13ID').Value;

        if TipoDeVenda = 'VISTA' then
          begin
            Msg.Caption := 'Calculando comissão a vista...' ;
            Msg.Refresh ;
            SQLEmpresaComissaoVDCON2TOTVENDVISTA.Value  := Valor ;
            SQLEmpresaComissaoVDCON2VLRCOMISS3.AsFloat  := Valor * (3/100);
            SQLEmpresaComissaoVDCON2VLRCOMISS35.AsFloat := Valor * (3.5/100);
            SQLEmpresaComissaoVDCON2VLRCOMISS4.AsFloat  := Valor * (4/100);
            SQLEmpresaComissaoVDCON2VLRCOMISS5.AsFloat  := Valor * (5/100);
          end;

        if TipoDeVenda = 'PRAZO' then
          begin
            Msg.Caption := 'Calculando comissão a prazo...' ;
            Msg.Refresh ;
            SQLEmpresaComissaoVDCON2TOTVENDPRAZO.Value  := Valor ;
            SQLEmpresaComissaoVDCON2VLRCOMISS3.AsFloat  := Valor * (3/100);
            SQLEmpresaComissaoVDCON2VLRCOMISS35.AsFloat := Valor * (3.5/100);
            SQLEmpresaComissaoVDCON2VLRCOMISS4.AsFloat  := Valor * (4/100);
            SQLEmpresaComissaoVDCON2VLRCOMISS5.AsFloat  := Valor * (5/100);
          end ;

        SQLEmpresaComissaoVDCON3QTDVEND.Value   := 0 ;
        SQLEmpresaComissao.Post ;
      end
      else
      begin
        SQLEmpresaComissao.Edit ;

        if TipoDeVenda = 'VISTA' then
        begin
          Msg.Caption := 'Calculando comissão a vista...' ;
          Msg.Refresh ;
          SQLEmpresaComissaoVDCON2TOTVENDVISTA.Value := SQLEmpresaComissaoVDCON2TOTVENDVISTA.Value + Valor ;
        end;

        if TipoDeVenda = 'PRAZO' then
        begin
          Msg.Caption := 'Calculando comissão a prazo...' ;
          Msg.Refresh ;
          SQLEmpresaComissaoVDCON2TOTVENDPRAZO.Value := SQLEmpresaComissaoVDCON2TOTVENDPRAZO.Value + Valor ;
        end;

        SQLEmpresaComissao.Post;
      end;
      DM.SQLConsulta.Next;
      Progress.Position := Progress.Position + 1;
    end;
    Progress.Position := 0;
  end;

  Msg.Caption := 'Rotina finalizada com sucesso!';
  Msg.Refresh;
  EditHoraFIM.Text := FormatDateTime('dd/mm/yy hh:mm',Now);
  EditHoraFIM.Update;
  Progress.Position := 0;
  Screen.Cursor := crDefault;
end;

procedure TFormTelaCalculoComissao.FormCreate(Sender: TObject);
begin
  inherited;
  Msg.Caption := '' ;
  Msg.Refresh ;
  De.Date := Date ;
  Ate.Date := Date ;
end;

procedure TFormTelaCalculoComissao.Opcao3Click(Sender: TObject);
begin
  inherited;
  GroupEmissao.Visible := True;
end;

procedure TFormTelaCalculoComissao.Opcao1Click(Sender: TObject);
begin
  inherited;
  GroupEmissao.Visible := False;
end;

procedure TFormTelaCalculoComissao.SQLVendedorComissaoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('VDCOICOD').AsInteger := Dm.ProximoCodigoUnico('VENDEDORCOMISSAO',DataSet,Nil,0);
end;

procedure TFormTelaCalculoComissao.SQLEmpresaComissaoNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLEmpresaComissaoVDCON2TOTVENDVISTA.Value := 0 ;
  SQLEmpresaComissaoVDCON2TOTVENDPRAZO.Value := 0 ;
  SQLEmpresaComissaoVDCON3QTDVEND.Value      := 0 ;
  SQLEmpresaComissaoVDCON2VLRCOMISS.Value    := 0 ;
end;

procedure TFormTelaCalculoComissao.SQLVendedorComissaoNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLVendedorComissaoVDCON2TOTVENDVISTA.Value := 0 ;
  SQLVendedorComissaoVDCON2TOTVENDPRAZO.Value := 0 ;
  SQLVendedorComissaoVDCON3QTDVEND.Value      := 0 ;
  SQLVendedorComissaoVDCON2VLRCOMISS.Value    := 0 ;
  SQLVendedorComissaoVDCON2PERCOMISSAO.Value  := 0 ;
  SQLVendedorComissaoVDCON3VLRESTORNO.Value   := 0 ;
  SQLVendedorComissaoVDCOCDEBCRED.Value       := 'C' ;
end;

procedure TFormTelaCalculoComissao.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  SQLEmpresaComissao.Close ;
  SQLEmpresaComissao.MacroByName('MFiltro').Value := 'CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) +
                                                     ''' and   CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' ;
  SQLEmpresaComissao.open;
  if not SQLEmpresaComissao.IsEmpty then
    ppReportVertebralle.print;
end;

procedure TFormTelaCalculoComissao.ppHeaderBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  lbPeriodo.caption := 'Periodo: ' + de.Text + ' ate ' + ate.Text;
end;

procedure TFormTelaCalculoComissao.ppGroupFooterBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  lbFilial.Caption := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60NOMEFANT',SQLEmpresaComissaoEMPRICOD.AsString); 
end;

procedure TFormTelaCalculoComissao.SQLEmpresaComissaoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  SQLEmpresaComissaoTotalVendasCalc.Value := SQLEmpresaComissaoVDCON2TOTVENDVISTA.Value + SQLEmpresaComissaoVDCON2TOTVENDPRAZO.Value;
end;

procedure TFormTelaCalculoComissao.SQLEmpresaComissaoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ID').AsInteger := Dm.ProximoCodigoUnico('EMPRESACOMISSAO',DataSet,Nil,0);
end;

end.
