unit RelatorioResumoOperacaoDiaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, ComCtrls, DBTables, Placemnt, DB,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, UCrpe32,
  Grids, DBGrids, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioResumoOperacaoDiaria = class(TFormRelatorioTEMPLATE)
    Dia: TDateTimePicker;
    SQLResumo: TRxQuery;
    TblTemporariaOperacao: TStringField;
    TblTemporariaQuantidade: TIntegerField;
    TblTemporariaTipoOperacao: TStringField;
    TblTemporariaStatusOperacao: TStringField;
    TblTemporariaValor: TFloatField;
    SQLNotaFiscal: TRxQuery;
    SQLPedidoVenda: TRxQuery;
    TblPedidosNotas: TTable;
    Report: TCrpe;
    SQLNotaFiscalTIPOOPERACAO: TStringField;
    SQLNotaFiscalSTATUSOPERACAO: TStringField;
    SQLNotaFiscalID: TStringField;
    SQLNotaFiscalNUMERO: TIntegerField;
    SQLNotaFiscalVLRICMS: TFloatField;
    SQLNotaFiscalVLRIPI: TFloatField;
    SQLNotaFiscalVLRDESC: TFloatField;
    SQLNotaFiscalVLRFRETE: TFloatField;
    SQLNotaFiscalVLRSERVICO: TFloatField;
    SQLNotaFiscalVLRISSQN: TFloatField;
    SQLNotaFiscalVLRPRODUTO: TFloatField;
    SQLNotaFiscalVLRNOTA: TFloatField;
    SQLNotaFiscalCLIENTE: TStringField;
    SQLNotaFiscalFORNECEDOR: TStringField;
    SQLNotaFiscalEMPRESADESTINO: TStringField;
    SQLNotaFiscalUSUARIO: TStringField;
    SQLNotaFiscalOPERACAOESTOQUE: TStringField;
    SQLNotaFiscalPLANO: TStringField;
    SQLPedidoVendaTIPOOPERACAO: TStringField;
    SQLPedidoVendaSTATUSOPERACAO: TStringField;
    SQLPedidoVendaID: TStringField;
    SQLPedidoVendaNUMERO: TStringField;
    SQLPedidoVendaVLRICMS: TFloatField;
    SQLPedidoVendaVLRIPI: TFloatField;
    SQLPedidoVendaVLRDESC: TFloatField;
    SQLPedidoVendaVLRFRETE: TFloatField;
    SQLPedidoVendaVLRSERVICO: TFloatField;
    SQLPedidoVendaVLRISSQN: TFloatField;
    SQLPedidoVendaVLRPRODUTO: TFloatField;
    SQLPedidoVendaVLRNOTA: TFloatField;
    SQLPedidoVendaCLIENTE: TStringField;
    SQLPedidoVendaFORNECEDOR: TStringField;
    SQLPedidoVendaEMPRESADESTINO: TStringField;
    SQLPedidoVendaUSUARIO: TStringField;
    SQLPedidoVendaOPERACAOESTOQUE: TStringField;
    SQLPedidoVendaPLANO: TStringField;
    TblPedidosNotasTIPOOPERACAO: TStringField;
    TblPedidosNotasSTATUSOPERACAO: TStringField;
    TblPedidosNotasID: TStringField;
    TblPedidosNotasNUMERO: TStringField;
    TblPedidosNotasVLRICMS: TFloatField;
    TblPedidosNotasVLRIPI: TFloatField;
    TblPedidosNotasVLRDESC: TFloatField;
    TblPedidosNotasVLRFRETE: TFloatField;
    TblPedidosNotasVLRSERVICO: TFloatField;
    TblPedidosNotasVLRISSQN: TFloatField;
    TblPedidosNotasVLRPRODUTO: TFloatField;
    TblPedidosNotasVLRNOTA: TFloatField;
    TblPedidosNotasCLIENTE: TStringField;
    TblPedidosNotasFORNECEDOR: TStringField;
    TblPedidosNotasEMPRESADESTINO: TStringField;
    TblPedidosNotasUSUARIO: TStringField;
    TblPedidosNotasOPERACAOESTOQUE: TStringField;
    TblPedidosNotasPLANO: TStringField;
    SQLNotaFiscalitens: TRxQuery;
    TblResumoItens: TTable;
    SQLPedidoVendaItens: TRxQuery;
    SQLProdutoReajuste: TRxQuery;
    TblResumoItensULTVLRVENDA: TFloatField;
    TblResumoItensULTVLRCOMPRA: TFloatField;
    TblResumoItensULTVLRCOMPRAMED: TFloatField;
    TblResumoItensULTVLRCUSTO: TFloatField;
    TblResumoItensULTVLRCUSTOMED: TFloatField;
    TblResumoItensULTMARGEM: TFloatField;
    SQLNotaFiscalitensTIPOOPERACAO: TStringField;
    SQLNotaFiscalitensSTATUSOPERACAO: TStringField;
    SQLNotaFiscalitensID: TStringField;
    SQLNotaFiscalitensEMPRESA: TIntegerField;
    SQLNotaFiscalitensCODPRODUTO: TIntegerField;
    SQLNotaFiscalitensQTDE: TFloatField;
    SQLNotaFiscalitensVLRUNITARIO: TFloatField;
    SQLNotaFiscalitensVLRDESC: TFloatField;
    SQLNotaFiscalitensVLRICMS: TFloatField;
    SQLNotaFiscalitensVLRIPI: TFloatField;
    SQLNotaFiscalitensLOTE: TStringField;
    SQLNotaFiscalitensDESCRPRODUTO: TStringField;
    SQLNotaFiscalitensVLRCOMPRA: TFloatField;
    SQLNotaFiscalitensVLRCOMPRAMEDIO: TFloatField;
    SQLNotaFiscalitensVLRCUSTO: TFloatField;
    SQLNotaFiscalitensVLRCUSTOMEDIO: TFloatField;
    SQLNotaFiscalitensREFPRODUTO: TStringField;
    SQLNotaFiscalitensTAMPRODUTO: TStringField;
    SQLNotaFiscalitensCORPRODUTO: TStringField;
    SQLNotaFiscalitensCODMOV: TIntegerField;
    SQLNotaFiscalitensDATAMOV: TDateTimeField;
    SQLNotaFiscalitensSALDOATUAL: TFloatField;
    SQLNotaFiscalitensSALDOANTERIOR: TFloatField;
    TblResumoItensTIPOOPERACAO: TStringField;
    TblResumoItensSTATUSOPERACAO: TStringField;
    TblResumoItensID: TStringField;
    TblResumoItensEMPRESA: TIntegerField;
    TblResumoItensCODPRODUTO: TIntegerField;
    TblResumoItensQTDE: TFloatField;
    TblResumoItensVLRUNITARIO: TFloatField;
    TblResumoItensVLRDESC: TFloatField;
    TblResumoItensVLRICMS: TFloatField;
    TblResumoItensVLRIPI: TFloatField;
    TblResumoItensLOTE: TStringField;
    TblResumoItensDESCRPRODUTO: TStringField;
    TblResumoItensVLRCOMPRA: TFloatField;
    TblResumoItensVLRCOMPRAMEDIO: TFloatField;
    TblResumoItensVLRCUSTO: TFloatField;
    TblResumoItensVLRCUSTOMEDIO: TFloatField;
    TblResumoItensREFPRODUTO: TStringField;
    TblResumoItensTAMPRODUTO: TStringField;
    TblResumoItensCORPRODUTO: TStringField;
    TblResumoItensCODMOV: TIntegerField;
    TblResumoItensDATAMOV: TDateTimeField;
    TblResumoItensSALDOATUAL: TFloatField;
    TblResumoItensSALDOANTERIOR: TFloatField;
    SQLPedidoVendaItensTIPOOPERACAO: TStringField;
    SQLPedidoVendaItensSTATUSOPERACAO: TStringField;
    SQLPedidoVendaItensID: TStringField;
    SQLPedidoVendaItensEMPRESA: TIntegerField;
    SQLPedidoVendaItensCODPRODUTO: TIntegerField;
    SQLPedidoVendaItensQTDE: TFloatField;
    SQLPedidoVendaItensVLRUNITARIO: TFloatField;
    SQLPedidoVendaItensVLRDESC: TFloatField;
    SQLPedidoVendaItensVLRICMS: TFloatField;
    SQLPedidoVendaItensVLRIPI: TFloatField;
    SQLPedidoVendaItensLOTE: TStringField;
    SQLPedidoVendaItensDESCRPRODUTO: TStringField;
    SQLPedidoVendaItensVLRCOMPRA: TFloatField;
    SQLPedidoVendaItensVLRCOMPRAMEDIO: TFloatField;
    SQLPedidoVendaItensVLRCUSTO: TFloatField;
    SQLPedidoVendaItensVLRCUSTOMEDIO: TFloatField;
    SQLPedidoVendaItensREFPRODUTO: TStringField;
    SQLPedidoVendaItensTAMPRODUTO: TStringField;
    SQLPedidoVendaItensCORPRODUTO: TStringField;
    SQLPedidoVendaItensCODMOV: TIntegerField;
    SQLPedidoVendaItensDATAMOV: TDateTimeField;
    SQLPedidoVendaItensSALDOATUAL: TFloatField;
    SQLPedidoVendaItensSALDOANTERIOR: TFloatField;
    SQLNotaCompra: TRxQuery;
    SQLNotaCompraTIPOOPERACAO: TStringField;
    SQLNotaCompraSTATUSOPERACAO: TStringField;
    SQLNotaCompraID: TStringField;
    SQLNotaCompraNUMERO: TStringField;
    SQLNotaCompraVLRICMS: TFloatField;
    SQLNotaCompraVLRIPI: TFloatField;
    SQLNotaCompraVLRDESC: TFloatField;
    SQLNotaCompraVLRFRETE: TFloatField;
    SQLNotaCompraVLRSERVICO: TFloatField;
    SQLNotaCompraVLRISSQN: TFloatField;
    SQLNotaCompraVLRPRODUTO: TFloatField;
    SQLNotaCompraVLRNOTA: TFloatField;
    SQLNotaCompraCLIENTE: TStringField;
    SQLNotaCompraFORNECEDOR: TStringField;
    SQLNotaCompraEMPRESADESTINO: TStringField;
    SQLNotaCompraUSUARIO: TStringField;
    SQLNotaCompraOPERACAOESTOQUE: TStringField;
    SQLNotaCompraPLANO: TStringField;
    SQLResumoItens: TRxQuery;
    SQLGeral: TRxQuery;
    SQLPedidoCompra: TRxQuery;
    SQLNotaCompraItens: TRxQuery;
    SQLNotaCompraItensTIPOOPERACAO: TStringField;
    SQLNotaCompraItensSTATUSOPERACAO: TStringField;
    SQLNotaCompraItensID: TStringField;
    SQLNotaCompraItensEMPRESA: TIntegerField;
    SQLNotaCompraItensCODPRODUTO: TIntegerField;
    SQLNotaCompraItensQTDE: TFloatField;
    SQLNotaCompraItensVLRUNITARIO: TFloatField;
    SQLNotaCompraItensVLRDESC: TFloatField;
    SQLNotaCompraItensVLRICMS: TFloatField;
    SQLNotaCompraItensVLRIPI: TFloatField;
    SQLNotaCompraItensLOTE: TStringField;
    SQLNotaCompraItensDESCRPRODUTO: TStringField;
    SQLNotaCompraItensVLRCOMPRA: TFloatField;
    SQLNotaCompraItensVLRCOMPRAMEDIO: TFloatField;
    SQLNotaCompraItensVLRCUSTO: TFloatField;
    SQLNotaCompraItensVLRCUSTOMEDIO: TFloatField;
    SQLNotaCompraItensREFPRODUTO: TStringField;
    SQLNotaCompraItensTAMPRODUTO: TStringField;
    SQLNotaCompraItensCORPRODUTO: TStringField;
    SQLNotaCompraItensCODMOV: TIntegerField;
    SQLNotaCompraItensDATAMOV: TDateTimeField;
    SQLNotaCompraItensSALDOATUAL: TFloatField;
    SQLNotaCompraItensSALDOANTERIOR: TFloatField;
    SQLPedidoCompraItens: TRxQuery;
    SQLPedidoCompraItensTIPOOPERACAO: TStringField;
    SQLPedidoCompraItensSTATUSOPERACAO: TStringField;
    SQLPedidoCompraItensID: TStringField;
    SQLPedidoCompraItensEMPRESA: TIntegerField;
    SQLPedidoCompraItensCODPRODUTO: TIntegerField;
    SQLPedidoCompraItensQTDE: TFloatField;
    SQLPedidoCompraItensVLRUNITARIO: TFloatField;
    SQLPedidoCompraItensVLRDESC: TFloatField;
    SQLPedidoCompraItensVLRICMS: TFloatField;
    SQLPedidoCompraItensVLRIPI: TFloatField;
    SQLPedidoCompraItensLOTE: TStringField;
    SQLPedidoCompraItensDESCRPRODUTO: TStringField;
    SQLPedidoCompraItensVLRCOMPRA: TFloatField;
    SQLPedidoCompraItensVLRCOMPRAMEDIO: TFloatField;
    SQLPedidoCompraItensVLRCUSTO: TFloatField;
    SQLPedidoCompraItensVLRCUSTOMEDIO: TFloatField;
    SQLPedidoCompraItensREFPRODUTO: TStringField;
    SQLPedidoCompraItensTAMPRODUTO: TStringField;
    SQLPedidoCompraItensCORPRODUTO: TStringField;
    SQLPedidoCompraItensCODMOV: TIntegerField;
    SQLPedidoCompraItensDATAMOV: TIntegerField;
    SQLPedidoCompraItensSALDOATUAL: TFloatField;
    SQLPedidoCompraItensSALDOANTERIOR: TFloatField;
    SQLPedidoCompraTIPOOPERACAO: TStringField;
    SQLPedidoCompraSTATUSOPERACAO: TStringField;
    SQLPedidoCompraID: TStringField;
    SQLPedidoCompraNUMERO: TStringField;
    SQLPedidoCompraVLRICMS: TFloatField;
    SQLPedidoCompraVLRIPI: TFloatField;
    SQLPedidoCompraVLRDESC: TFloatField;
    SQLPedidoCompraVLRFRETE: TFloatField;
    SQLPedidoCompraVLRSERVICO: TFloatField;
    SQLPedidoCompraVLRISSQN: TFloatField;
    SQLPedidoCompraVLRPRODUTO: TFloatField;
    SQLPedidoCompraVLRNOTA: TFloatField;
    SQLPedidoCompraCLIENTE: TStringField;
    SQLPedidoCompraFORNECEDOR: TStringField;
    SQLPedidoCompraEMPRESADESTINO: TStringField;
    SQLPedidoCompraUSUARIO: TStringField;
    SQLPedidoCompraOPERACAOESTOQUE: TStringField;
    SQLPedidoCompraPLANO: TStringField;
    SQLSaldoDiario: TRxQuery;
    TblResumoInicioDia: TTable;
    SQLSaldoAtual: TRxQuery;
    TblResumoSaldoAtual: TTable;
    SQLSaldoAtualQTDEATUAL: TFloatField;
    SQLSaldoAtualCOMPRAATUAL: TFloatField;
    SQLSaldoAtualCOMPRAMEDIOATUAL: TFloatField;
    SQLSaldoAtualCUSTOATUAL: TFloatField;
    SQLSaldoAtualCUSTOMEDIOATUAL: TFloatField;
    SQLSaldoAtualVENDAATUAL: TFloatField;
    TblResumoSaldoAtualQTDEATUAL: TFloatField;
    TblResumoSaldoAtualCOMPRAATUAL: TFloatField;
    TblResumoSaldoAtualCOMPRAMEDIOATUAL: TFloatField;
    TblResumoSaldoAtualCUSTOATUAL: TFloatField;
    TblResumoSaldoAtualCUSTOMEDIOATUAL: TFloatField;
    TblResumoSaldoAtualVENDAATUAL: TFloatField;
    SQLSaldoDiarioQTDE: TFloatField;
    SQLSaldoDiarioCOMPRA: TFloatField;
    SQLSaldoDiarioCOMPRAMEDIO: TFloatField;
    SQLSaldoDiarioCUSTO: TFloatField;
    SQLSaldoDiarioCUSTOMEDIO: TFloatField;
    SQLSaldoDiarioVENDA: TFloatField;
    TblResumoInicioDiaQTDE: TFloatField;
    TblResumoInicioDiaCOMPRA: TFloatField;
    TblResumoInicioDiaCOMPRAMEDIO: TFloatField;
    TblResumoInicioDiaCUSTO: TFloatField;
    TblResumoInicioDiaCUSTOMEDIO: TFloatField;
    TblResumoInicioDiaVENDA: TFloatField;
    SQLMovDiverso: TRxQuery;
    SQLMovDiversoItem: TRxQuery;
    SQLMovDiversoTIPOOPERACAO: TStringField;
    SQLMovDiversoSTATUSOPERACAO: TStringField;
    SQLMovDiversoID: TStringField;
    SQLMovDiversoNUMERO: TIntegerField;
    SQLMovDiversoVLRICMS: TFloatField;
    SQLMovDiversoVLRIPI: TFloatField;
    SQLMovDiversoVLRDESC: TFloatField;
    SQLMovDiversoVLRFRETE: TFloatField;
    SQLMovDiversoVLRSERVICO: TFloatField;
    SQLMovDiversoVLRISSQN: TFloatField;
    SQLMovDiversoVLRPRODUTO: TFloatField;
    SQLMovDiversoVLRNOTA: TFloatField;
    SQLMovDiversoEMPRESADESTINO: TStringField;
    SQLMovDiversoUSUARIO: TStringField;
    SQLMovDiversoOPERACAOESTOQUE: TStringField;
    SQLMovDiversoItemTIPOOPERACAO: TStringField;
    SQLMovDiversoItemSTATUSOPERACAO: TStringField;
    SQLMovDiversoItemID: TStringField;
    SQLMovDiversoItemEMPRESA: TIntegerField;
    SQLMovDiversoItemCODPRODUTO: TIntegerField;
    SQLMovDiversoItemQTDE: TFloatField;
    SQLMovDiversoItemVLRUNITARIO: TFloatField;
    SQLMovDiversoItemVLRDESC: TFloatField;
    SQLMovDiversoItemVLRICMS: TFloatField;
    SQLMovDiversoItemVLRIPI: TFloatField;
    SQLMovDiversoItemLOTE: TStringField;
    SQLMovDiversoItemDESCRPRODUTO: TStringField;
    SQLMovDiversoItemVLRCOMPRA: TFloatField;
    SQLMovDiversoItemVLRCOMPRAMEDIO: TFloatField;
    SQLMovDiversoItemVLRCUSTO: TFloatField;
    SQLMovDiversoItemVLRCUSTOMEDIO: TFloatField;
    SQLMovDiversoItemREFPRODUTO: TStringField;
    SQLMovDiversoItemTAMPRODUTO: TStringField;
    SQLMovDiversoItemCORPRODUTO: TStringField;
    SQLMovDiversoItemCODMOV: TIntegerField;
    SQLMovDiversoItemDATAMOV: TDateTimeField;
    SQLMovDiversoItemSALDOATUAL: TFloatField;
    SQLMovDiversoItemSALDOANTERIOR: TFloatField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure GeraLegendaOperacaoes();
    procedure GravaQuantidadeNaLegenda(TipoOperacao,StatusOperacao: String; Quantidade : Integer; Valor : Double);
    procedure AtualizaTabelasTemporarias;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioResumoOperacaoDiaria: TFormRelatorioResumoOperacaoDiaria;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioResumoOperacaoDiaria.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  // Gera legenda das operações;
  GeraLegendaOperacaoes;
  //////////////////////////////

  // GRAVA QUANTIDADE E VALOR DOS PEDIDOS DO DIA

  //VENDA
  SQLResumo.Close;
  SQLResumo.SQL.Clear;
  SQLResumo.SQL.Add('SELECT COUNT(*) AS QTDEPEDIDO, SUM(PDVDN2TOTPED) AS TOTALPEDIDO FROM PEDIDOVENDA WHERE PDVDCSTATUS = %Status ' +
                    'AND PDVDDEMISSAO = ''' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '''');
  SQLResumo.MacroByName('Status').AsString := '''A''';
  SQLResumo.Open;
  if SQLResumo.FieldByName('QTDEPEDIDO').AsInteger > 0 then
    GravaQuantidadeNaLegenda('PV','A',SQLResumo.FieldByName('QTDEPEDIDO').AsInteger,SQLResumo.FieldByName('TOTALPEDIDO').AsFloat);

  SQLResumo.Close;
  SQLResumo.MacroByName('Status').AsString := '''E''';
  SQLResumo.Open;
  if SQLResumo.FieldByName('QTDEPEDIDO').AsInteger > 0 then
    GravaQuantidadeNaLegenda('PV','E',SQLResumo.FieldByName('QTDEPEDIDO').AsInteger,SQLResumo.FieldByName('TOTALPEDIDO').AsFloat);

  SQLResumo.Close;
  SQLResumo.MacroByName('Status').AsString := '''C''';
  SQLResumo.Open;
  if SQLResumo.FieldByName('QTDEPEDIDO').AsInteger > 0 then
    GravaQuantidadeNaLegenda('PV','C',SQLResumo.FieldByName('QTDEPEDIDO').AsInteger,SQLResumo.FieldByName('TOTALPEDIDO').AsFloat);

  //COMPRA
  SQLResumo.Close;
  SQLResumo.SQL.Clear;
  SQLResumo.SQL.Add('SELECT COUNT(*) AS QTDEPEDIDO, SUM(PDCPN2TOTITENS) AS TOTALPEDIDO FROM PEDIDOCOMPRA WHERE PDCPCSTATUS = %Status ' +
                    'AND PDCPDEMIS = ''' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '''');
  SQLResumo.MacroByName('Status').AsString := '''A''';
  SQLResumo.Open;
  if SQLResumo.FieldByName('QTDEPEDIDO').AsInteger > 0 then
    GravaQuantidadeNaLegenda('PC','A',SQLResumo.FieldByName('QTDEPEDIDO').AsInteger,SQLResumo.FieldByName('TOTALPEDIDO').AsFloat);

  SQLResumo.Close;
  SQLResumo.MacroByName('Status').AsString := '''E''';
  SQLResumo.Open;
  if SQLResumo.FieldByName('QTDEPEDIDO').AsInteger > 0 then
    GravaQuantidadeNaLegenda('PC','E',SQLResumo.FieldByName('QTDEPEDIDO').AsInteger,SQLResumo.FieldByName('TOTALPEDIDO').AsFloat);

  SQLResumo.Close;
  SQLResumo.MacroByName('Status').AsString := '''C''';
  SQLResumo.Open;
  if SQLResumo.FieldByName('QTDEPEDIDO').AsInteger > 0 then
    GravaQuantidadeNaLegenda('PC','C',SQLResumo.FieldByName('QTDEPEDIDO').AsInteger,SQLResumo.FieldByName('TOTALPEDIDO').AsFloat);

  /////////////////////////////////////


  // GRAVA QUANTIDADE E VALOR DAS NOTAS FISCAIS DO DIA

  // VENDA
  SQLResumo.Close;
  SQLResumo.SQL.Clear;
  SQLResumo.SQL.Add('SELECT COUNT(*) AS QTDENF, SUM(NOFIN2VLRNOTA) AS TOTALNF FROM NOTAFISCAL WHERE NOFICSTATUS = %Status ' +
                    'AND NOFIDEMIS = ''' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '''');
  SQLResumo.MacroByName('Status').AsString := '''A''';
  SQLResumo.Open;
  if SQLResumo.FieldByName('QTDENF').AsInteger > 0 then
    GravaQuantidadeNaLegenda('NF','A',SQLResumo.FieldByName('QTDENF').AsInteger,SQLResumo.FieldByName('TOTALNF').AsFloat);

  SQLResumo.Close;
  SQLResumo.MacroByName('Status').AsString := '''E''';
  SQLResumo.Open;
  if SQLResumo.FieldByName('QTDENF').AsInteger > 0 then
    GravaQuantidadeNaLegenda('NF','E',SQLResumo.FieldByName('QTDENF').AsInteger,SQLResumo.FieldByName('TOTALNF').AsFloat);

  SQLResumo.Close;
  SQLResumo.MacroByName('Status').AsString := '''C''';
  SQLResumo.Open;
  if SQLResumo.FieldByName('QTDENF').AsInteger > 0 then
    GravaQuantidadeNaLegenda('NF','C',SQLResumo.FieldByName('QTDENF').AsInteger,SQLResumo.FieldByName('TOTALNF').AsFloat);

  // COMPRA
  SQLResumo.Close;
  SQLResumo.SQL.Clear;
  SQLResumo.SQL.Add('SELECT COUNT(*) AS QTDENF, SUM(NOCPN3VLRTOTNOTA) AS TOTALNF FROM NOTACOMPRA WHERE NOCPCSTATUS = %Status ' +
                    'AND NOCPDRECEBIMENTO = ''' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '''');
  SQLResumo.MacroByName('Status').AsString := '''A''';
  SQLResumo.Open;
  if SQLResumo.FieldByName('QTDENF').AsInteger > 0 then
    GravaQuantidadeNaLegenda('NC','A',SQLResumo.FieldByName('QTDENF').AsInteger,SQLResumo.FieldByName('TOTALNF').AsFloat);

  SQLResumo.Close;
  SQLResumo.MacroByName('Status').AsString := '''E''';
  SQLResumo.Open;
  if SQLResumo.FieldByName('QTDENF').AsInteger > 0 then
    GravaQuantidadeNaLegenda('NC','E',SQLResumo.FieldByName('QTDENF').AsInteger,SQLResumo.FieldByName('TOTALNF').AsFloat);

  SQLResumo.Close;
  SQLResumo.MacroByName('Status').AsString := '''C''';
  SQLResumo.Open;
  if SQLResumo.FieldByName('QTDENF').AsInteger > 0 then
    GravaQuantidadeNaLegenda('NC','C',SQLResumo.FieldByName('QTDENF').AsInteger,SQLResumo.FieldByName('TOTALNF').AsFloat);

  /////////////////////////////////////

  // GRAVA QUANTIDADE E VALOR DAS MOVIMENTACOES DIVERSAS

  SQLResumo.Close;
  SQLResumo.SQL.Clear;
  SQLResumo.SQL.Add('SELECT COUNT(*) AS QTDENF, SUM(MOVIMENTODIVERSOITEM.MVDIN3QTD * PRODUTO.PRODN3VLRCUSTO) AS TOTALNF FROM MOVIMENTODIVERSO ');
  SQLResumo.SQL.Add('LEFT OUTER JOIN MOVIMENTODIVERSOITEM ON MOVIMENTODIVERSO.MOVDA13ID = MOVIMENTODIVERSOITEM.MOVDA13ID ');
  SQLResumo.SQL.Add('LEFT OUTER JOIN PRODUTO ON MOVIMENTODIVERSOITEM.PRODICOD = PRODUTO.PRODICOD ');
  SQLResumo.SQL.Add('WHERE MOVDCCONLUIDO = %Status AND MOVDDMOVIMENTO = ''' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '''');
  SQLResumo.MacroByName('Status').AsString := '''S''';
  SQLResumo.Open;
  if SQLResumo.FieldByName('QTDENF').AsInteger > 0 then
    GravaQuantidadeNaLegenda('MD','A',SQLResumo.FieldByName('QTDENF').AsInteger,SQLResumo.FieldByName('TOTALNF').AsFloat);

  SQLResumo.Close;
  SQLResumo.MacroByName('Status').AsString := '''N''';
  SQLResumo.Open;
  if SQLResumo.FieldByName('QTDENF').AsInteger > 0 then
    GravaQuantidadeNaLegenda('MD','E',SQLResumo.FieldByName('QTDENF').AsInteger,SQLResumo.FieldByName('TOTALNF').AsFloat);

  ///////////////////////////////////////////////////////

  // GERA TABELAS TEMPORARIAS

  AtualizaTabelasTemporarias;

  SQLPedidoVenda.Close;
  SQLPedidoVenda.MacroByName('DataEmissao').AsString        := 'PDVDDEMISSAO = ''' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '''';
  SQLPedidoVenda.Open;
  if not SQLPedidoVenda.IsEmpty then
    BatchExec(SQLPedidoVenda,TblPedidosNotas);

  SQLNotaFiscal.Close;
  SQLNotaFiscal.MacroByName('DataEmissao').AsString         := 'NOFIDEMIS = ''' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '''';
  SQLNotaFiscal.Open;
  TblPedidosNotas.Close;
  if not SQLNotaFiscal.IsEmpty then
    BatchExec(SQLNotaFiscal,TblPedidosNotas);

  SQLNotaFiscalitens.Close;
  SQLNotaFiscalitens.MacroByName('DataEmissao').AsString    := 'NOTAFISCAL.NOFIDEMIS = ''' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '''';
  SQLNotaFiscalitens.Open;
  if not SQLNotaFiscalitens.IsEmpty then
    BatchExec(SQLNotaFiscalitens,TblResumoItens);

  SQLPedidoVendaItens.Close;
  SQLPedidoVendaItens.MacroByName('DataEmissao').AsString   := 'PEDIDOVENDA.PDVDDEMISSAO = ''' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '''';
  SQLPedidoVendaItens.Open;
  if not SQLPedidoVendaItens.IsEmpty then
    BatchExec(SQLPedidoVendaItens,TblResumoItens);
  /////////////////////////

  SQLNotaCompra.Close;
  SQLNotaCompra.MacroByName('DataEmissao').AsString         := 'NOCPDRECEBIMENTO = ''' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '''';
  SQLNotaCompra.Open;
  if not SQLNotaCompra.IsEmpty then
    BatchExec(SQLNotaCompra,TblPedidosNotas);

  SQLNotaCompraitens.Close;
  SQLNotaCompraitens.MacroByName('DataEmissao').AsString    := 'NOTACOMPRA.NOCPDRECEBIMENTO = ''' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '''';
  SQLNotaCompraitens.Open;
  if not SQLNotaCompraitens.IsEmpty then
    BatchExec(SQLNotaCompraitens,TblResumoItens);

  SQLPEDIDOCOMPRA.Close;
  SQLPEDIDOCOMPRA.MacroByName('DataEmissao').AsString       := 'PDCPDEMIS = ''' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '''';
  SQLPEDIDOCOMPRA.Open;
  if not SQLPEDIDOCOMPRA.IsEmpty then
    BatchExec(SQLPEDIDOCOMPRA,TblPedidosNotas);

  SQLMovDiverso.Close;
  SQLMovDiverso.MacroByName('DataEmissao').AsString         := 'MOVDDMOVIMENTO = ''' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '''';
  SQLMovDiverso.Open;
  if not SQLMovDiverso.IsEmpty then
    BatchExec(SQLMovDiverso,TblPedidosNotas);

  SQLMovDiversoItem.Close;
  SQLMovDiversoItem.MacroByName('DataEmissao').AsString     := 'MOVDDMOVIMENTO = ''' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '''';
  SQLMovDiversoItem.Open;
  if not SQLMovDiverso.IsEmpty then
    BatchExec(SQLMovDiversoItem,TblResumoItens);

  // GRAVA VALORES INICIAIS DO DIA
  SQLSaldoDiario.Close;
  SQLSaldoDiario.MacroByName('Empresa').AsString            := SQLDeLista(ComboEmpresa,ListaEmpresas,'','PRODUTOSALDODIA','');
  SQLSaldoDiario.MacroByName('Data').AsString               := 'PRODUTOSALDODIA.PSDIDDATA = ''' + FormatDateTime('mm/dd/yyyy',Dia.Date) + '''';
  SQLSaldoDiario.Open;
  if not SQLSaldoDiario.IsEmpty then
    begin
      BatchExec(SQLSaldoDiario,TblResumoInicioDia);
    end;

  // GRAVA VALORES ATUAIS
  SQLSaldoAtual.Close;
  SQLSaldoAtual.MacroByName('Empresa').AsString             := SQLDeLista(ComboEmpresa,ListaEmpresas,'','PRODUTOSALDO','');
  SQLSaldoAtual.Open;
  if not SQLSaldoAtual.IsEmpty then
    BatchExec(SQLSaldoAtual,TblResumoSaldoAtual);

  //GRAVA ULT REAJUSTE DE PRECO DO PRODUTO
  SQLResumoItens.Close;
  SQLResumoItens.Open;
  TblResumoItens.Close;
  while not SQLResumoItens.Eof do
    begin
      SQLProdutoReajuste.Close;
      SQLProdutoReajuste.ParamByName('Produto').AsInteger := SQLResumoItens.FieldByName('CodProduto').AsInteger;
      SQLProdutoReajuste.Open;
      SQLProdutoReajuste.Last;
      if not SQLProdutoReajuste.IsEmpty then
        begin
          SQLGeral.Close;
          SQLGeral.MacroByName('PRODUTO').AsString         := SQLProdutoReajuste.FieldByName('PRODICOD').AsString;
          if SQLProdutoReajuste.FieldByName('PRRJVLRVENDA').AsFloat > 0 then
            SQLGeral.MacroByName('VLRVENDA').AsString        := '''' + ConvFloatToStr(SQLProdutoReajuste.FieldByName('PRRJVLRVENDA').AsFloat) + ''''
          else
            SQLGeral.MacroByName('VLRVENDA').AsString        := '''0.00''';
          if SQLProdutoReajuste.FieldByName('PRRJN2MARGEM').AsFloat > 0 then
            SQLGeral.MacroByName('MARGEM').AsString          := '''' + ConvFloatToStr(SQLProdutoReajuste.FieldByName('PRRJN2MARGEM').AsFloat) + ''''
          else
            SQLGeral.MacroByName('MARGEM').AsString          := '''0.00''';
          if SQLProdutoReajuste.FieldByName('PRRJN2VLRCOMPRA').AsFloat > 0 then
            SQLGeral.MacroByName('VLRCOMPRA').AsString       := '''' + ConvFloatToStr(SQLProdutoReajuste.FieldByName('PRRJN2VLRCOMPRA').AsFloat) + ''''
          else
            SQLGeral.MacroByName('VLRCOMPRA').AsString       := '''0.00''';
          if SQLProdutoReajuste.FieldByName('PRRJN3ULTCOMPRAMED').AsFloat > 0 then
            SQLGeral.MacroByName('VLRCOMPRAMED').AsString    := '''' + ConvFloatToStr(SQLProdutoReajuste.FieldByName('PRRJN3ULTCOMPRAMED').AsFloat) + ''''
          else
            SQLGeral.MacroByName('VLRCOMPRAMED').AsString    := '''0.00''';
          if SQLProdutoReajuste.FieldByName('PRRJN3VLRCUSTO').AsFloat > 0 then
            SQLGeral.MacroByName('VLRCUSTO').AsString        := '''' + ConvFloatToStr(SQLProdutoReajuste.FieldByName('PRRJN3VLRCUSTO').AsFloat)+ ''''
          else
            SQLGeral.MacroByName('VLRCUSTO').AsString        := '''0.00''';
          if SQLProdutoReajuste.FieldByName('PRRJN3ULTCUSTOMED').AsFloat > 0 then
            SQLGeral.MacroByName('VLRCUSTOMED').AsString     := '''' + ConvFloatToStr(SQLProdutoReajuste.FieldByName('PRRJN3ULTCUSTOMED').AsFloat)+ ''''
          else
            SQLGeral.MacroByName('VLRCUSTOMED').AsString     := '''0.00''';
          try
            SQLGeral.ExecSQL;
          except
            on E:Exception do
              begin
                ShowMessage(SQLGeral.RealSQL.Text);
                ShowMessage('Problemas ao atualizar tabela temp dos itens, ANOTE O ERRO:' + #13 + E.Message);
                Exit;
              end
          end;
        end;
      SQLResumoItens.Next
    end;
  //////////////////////////////////////////////////
  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Resumo de Operacoes Diarias.rpt';
  Report.ReportTitle       := 'Relatório Resumo de Operações Diárias';
  Report.WindowStyle.Title := 'Relatório Resumo de Operações Diárias';
  Report.Execute;

end;
procedure TFormRelatorioResumoOperacaoDiaria.GeraLegendaOperacaoes();
begin
  // PEDIDO DE VENDA
  TblTemporaria.Close;
  TblTemporaria.AddIndex('TipoStatusOp_Key','TipoOperacao;StatusOperacao',[IxPrimary]);
  TblTemporaria.Open;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Pedido(s) de Venda(s) Em Aberto :';
  TblTemporariaStatusOperacao.AsString     := 'A';
  TblTemporariaTipoOperacao.AsString       := 'PV';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Pedido(s) de Venda(s) Encerrado(s) :';
  TblTemporariaStatusOperacao.AsString     := 'E';
  TblTemporariaTipoOperacao.AsString       := 'PV';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Pedido(s) de Venda(s) Cancelado(s) :';
  TblTemporariaStatusOperacao.AsString     := 'C';
  TblTemporariaTipoOperacao.AsString       := 'PV';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;

  // NOTA FISCAL DE VENDA
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Nota(s) Fiscal(is) de Venda(s) Em Aberto :';
  TblTemporariaStatusOperacao.AsString     := 'A';
  TblTemporariaTipoOperacao.AsString       := 'NF';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Nota(s) Fiscal(is) Encerrada(s) :';
  TblTemporariaStatusOperacao.AsString     := 'E';
  TblTemporariaTipoOperacao.AsString       := 'NF';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Nota(s) Fiscal(is) Cancelada(s) :';
  TblTemporariaStatusOperacao.AsString     := 'C';
  TblTemporariaTipoOperacao.AsString       := 'NF';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;

  // CUPOM FISCAL
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Cupom(ns) Fiscal(is) de Venda(s) Em Aberto :';
  TblTemporariaStatusOperacao.AsString     := 'A';
  TblTemporariaTipoOperacao.AsString       := 'CF';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Cupom(ns) de Venda(s) Encerrado(s) :';
  TblTemporariaStatusOperacao.AsString     := 'E';
  TblTemporariaTipoOperacao.AsString       := 'CF';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Cupom(ns) de Venda(s) Cancelado(s) :';
  TblTemporariaStatusOperacao.AsString     := 'C';
  TblTemporariaTipoOperacao.AsString       := 'CF';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;

  // PEDIDO DE COMPRA
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Pedido(s) de Compra(s) Em Aberto :';
  TblTemporariaStatusOperacao.AsString     := 'A';
  TblTemporariaTipoOperacao.AsString       := 'PC';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Pedido(s) de Compra(s) Encerrado(s) :';
  TblTemporariaStatusOperacao.AsString     := 'E';
  TblTemporariaTipoOperacao.AsString       := 'PC';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Pedido(s) de Compra(s) Cancelado(s) :';
  TblTemporariaStatusOperacao.AsString     := 'C';
  TblTemporariaTipoOperacao.AsString       := 'PC';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;

  // NOTA DE COMPRA
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Nota(s) de Compra(s) Em Aberto :';
  TblTemporariaStatusOperacao.AsString     := 'A';
  TblTemporariaTipoOperacao.AsString       := 'NC';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Nota(s) de Compra(s) Encerrada(s) :';
  TblTemporariaStatusOperacao.AsString     := 'E';
  TblTemporariaTipoOperacao.AsString       := 'NC';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Nota(s) de Compra(s) Cancelada(s) :';
  TblTemporariaStatusOperacao.AsString     := 'C';
  TblTemporariaTipoOperacao.AsString       := 'NC';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;

  // MOVIMENTO DIVERSO
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Movimento(s) Diverso(s) Em Aberto :';
  TblTemporariaStatusOperacao.AsString     := 'A';
  TblTemporariaTipoOperacao.AsString       := 'MD';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
  TblTemporaria.Append;
  TblTemporariaOperacao.AsString           := 'Movimento(s) Diverso(s) Concluído(s) :';
  TblTemporariaStatusOperacao.AsString     := 'E';
  TblTemporariaTipoOperacao.AsString       := 'MD';
  TblTemporariaQuantidade.AsFloat          := 0;
  TblTemporariaValor.AsFloat               := 0;
  TblTemporaria.Post;
end;
procedure TFormRelatorioResumoOperacaoDiaria.GravaQuantidadeNaLegenda(TipoOperacao,StatusOperacao: String; Quantidade : Integer; Valor : Double);
begin
  if not TblTemporaria.Active then TblTemporaria.Open;
  TblTemporaria.Locate('TipoOperacao;StatusOperacao',VarArrayOf([TipoOperacao,StatusOperacao]),[]);
  TblTemporaria.Edit;
  TblTemporariaQuantidade.AsFloat := Quantidade;
  TblTemporariaValor.AsFloat      := Valor;
  TblTemporaria.Post;
end;
procedure TFormRelatorioResumoOperacaoDiaria.AtualizaTabelasTemporarias;
begin
  try
    TblPedidosNotas.Close;
    TblPedidosNotas.DeleteTable;
    TblPedidosNotas.CreateTable;
  except
    TblPedidosNotas.CreateTable;
  end;
  TblPedidosNotas.AddIndex('TipoStatus_Key','TipoOperacao;StatusOperacao;ID',[IxPrimary]);
  try
    TblResumoItens.Close;
    TblResumoItens.DeleteTable;
    TblResumoItens.CreateTable;
  except
    TblResumoItens.CreateTable;
  end;

  try
    TblResumoInicioDia.Close;
    TblResumoInicioDia.DeleteTable;
    TblResumoInicioDia.CreateTable;
  except
    TblResumoInicioDia.CreateTable;
  end;
  try
    TblResumoSaldoAtual.Close;
    TblResumoSaldoAtual.DeleteTable;
    TblResumoSaldoAtual.CreateTable;
  except
    TblResumoSaldoAtual.CreateTable;
  end;

end;
end.
