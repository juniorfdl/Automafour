unit DataModuloImpNotaFiscal;

interface

uses
  SysUtils, Classes, DB, DBTables, RxQuery, UCrpe32, RDprint, Dialogs;

type
  TDMImpNotaFiscal = class(TDataModule)
    TblNotaFiscal: TTable;
    TblNotaFiscalX_Saida: TStringField;
    TblNotaFiscalX_Entrada: TStringField;
    TblNotaFiscalNumeroNF: TStringField;
    TblNotaFiscalCFOP_Descricao: TStringField;
    TblNotaFiscalCFOP_Codigo: TStringField;
    TblNotaFiscalEmitente_CGC: TStringField;
    TblNotaFiscalEmitente_InscEst: TStringField;
    TblNotaFiscalDestinatario_RazaoSoc: TStringField;
    TblNotaFiscalDestinatario_CGC: TStringField;
    TblNotaFiscalDestinatario_Ender: TStringField;
    TblNotaFiscalDestinatario_Bairro: TStringField;
    TblNotaFiscalDestinatario_Cep: TStringField;
    TblNotaFiscalDestinatario_Cidade: TStringField;
    TblNotaFiscalDestinatario_UF: TStringField;
    TblNotaFiscalDestinatario_FoneFax: TStringField;
    TblNotaFiscalDestinatario_InscEst: TStringField;
    TblNotaFiscalData_Emissao: TDateField;
    TblNotaFiscalBaseCalc_ICMS: TFloatField;
    TblNotaFiscalValor_ICMS: TFloatField;
    TblNotaFiscalBaseCalc_ICMS_Subts: TFloatField;
    TblNotaFiscalValor_ICMS_Subts: TFloatField;
    TblNotaFiscalValor_Produtos: TFloatField;
    TblNotaFiscalValor_Frete: TFloatField;
    TblNotaFiscalValor_Seguro: TFloatField;
    TblNotaFiscalOutras_Despesas: TFloatField;
    TblNotaFiscalValor_IPI: TFloatField;
    TblNotaFiscalValor_Nota: TFloatField;
    TblNotaFiscalAliq_ISSQN: TFloatField;
    TblNotaFiscalValor_ISSQN: TFloatField;
    TblNotaFiscalValor_Servicos: TFloatField;
    TblNotaFiscalTransportadora_RazaoSoc: TStringField;
    TblNotaFiscalFretePorConta: TFloatField;
    TblNotaFiscalVeiculo_Placa: TStringField;
    TblNotaFiscalVeiculo_UF: TStringField;
    TblNotaFiscalTransportadora_CGC: TStringField;
    TblNotaFiscalTransportadora_Ender: TStringField;
    TblNotaFiscalTransportadora_Cidade: TStringField;
    TblNotaFiscalTransportadora_UF: TStringField;
    TblNotaFiscalTransportadora_InscEst: TStringField;
    TblNotaFiscalQuantidade: TFloatField;
    TblNotaFiscalEspecie: TStringField;
    TblNotaFiscalMarca: TStringField;
    TblNotaFiscalNumero: TStringField;
    TblNotaFiscalPeso_Bruto: TFloatField;
    TblNotaFiscalPeso_Liquido: TFloatField;
    TblNotaFiscalDadosAdicionais: TStringField;
    TblNotaFiscalPedidoVendaNumero: TStringField;
    TblNotaFiscalVendedor: TStringField;
    TblNotaFiscalOrdemCompraClienteNro: TStringField;
    TblNotaFiscalCompradorCliente: TStringField;
    TblNotaFiscalOBS: TStringField;
    TblNotaFiscalDecretos: TStringField;
    SQLClasFisc: TRxQuery;
    SQLClasFiscCLFSICOD: TIntegerField;
    SQLClasFiscCLFSA30DESCR: TStringField;
    TblNotaFiscalFinanceiro: TTable;
    TblNotaFiscalFinanceiroParcela: TStringField;
    TblNotaFiscalFinanceiroVencimento: TDateField;
    TblNotaFiscalFinanceiroValor: TFloatField;
    TblNotaFiscalItem: TTable;
    TblNotaFiscalItemCodigo: TStringField;
    TblNotaFiscalItemDescricao: TStringField;
    TblNotaFiscalItemClasFisc: TStringField;
    TblNotaFiscalItemSitTrib: TStringField;
    TblNotaFiscalItemUnidade: TStringField;
    TblNotaFiscalItemValor_Unitario: TFloatField;
    TblNotaFiscalItemValor_Desconto: TFloatField;
    TblNotaFiscalItemValor_Total: TFloatField;
    TblNotaFiscalItemICMS_Aliquota: TFloatField;
    TblNotaFiscalItemIPI_Aliquota: TFloatField;
    TblNotaFiscalItemLOTEA30NRO: TStringField;
    TblNotaFiscalItemReferencia: TStringField;
    SQLUnidade: TRxQuery;
    SQLUnidadeUNIDICOD: TIntegerField;
    SQLUnidadeUNIDA5DESCR: TStringField;
    SQLDecreto: TRxQuery;
    SQLDecretoDECRICOD: TIntegerField;
    SQLDecretoDECRA100DESCR: TStringField;
    TblNotaFiscalItemServico: TTable;
    TblNotaFiscalItemServicoCodigoServ: TStringField;
    TblNotaFiscalItemServicoDescricaoServ: TStringField;
    TblNotaFiscalItemServicoUnidadeServ: TStringField;
    TblNotaFiscalItemServicoQuantidadeServ: TFloatField;
    TblNotaFiscalItemServicoValor_UnitarioServ: TFloatField;
    TblNotaFiscalItemServicoValor_TotalServ: TFloatField;
    TblNotaFiscalEndCobranca: TStringField;
    TblNotaFiscalEndEntrega: TStringField;
    TblNotaFiscalEmitenteEndereco: TStringField;
    TblNotaFiscalEmitenteCEP: TStringField;
    TblNotaFiscalEmitenteFone: TStringField;
    TblNotaFiscalPlanoRecebimento: TStringField;
    TblNotaFiscalPortador: TStringField;
    TblNotaFiscalDestinatarioCodSistema: TStringField;
    TblNotaFiscalValorExtenso: TStringField;
    SQLConfigimpressao: TRxQuery;
    SQLConfigimpressaoCFIMICOD: TIntegerField;
    SQLConfigimpressaoCFIMA30DESCR: TStringField;
    SQLConfigimpressaoCFIMA30TABLE: TStringField;
    SQLConfigimpressaoCFIMITOP: TIntegerField;
    SQLConfigimpressaoCFIMILEFT: TIntegerField;
    SQLConfigimpressaoCFIMA30FIELD: TStringField;
    SQLConfigimpressaoCFIMA60FIELDLABEL: TStringField;
    SQLConfigimpressaoCFIMIDIVISAO: TIntegerField;
    SQLConfigimpressaoCFIMIIMPCOL: TIntegerField;
    SQLConfigimpressaoCFIMIIMPLIN: TIntegerField;
    SQLConfigimpressaoCFIMA15TIPO: TStringField;
    SQLConfigImpPapel: TRxQuery;
    SQLConfigimpressaoCFIMIID: TIntegerField;
    DSSQLConfigimpressao: TDataSource;
    SQLConfigImpPapelCFIMIID: TIntegerField;
    SQLConfigImpPapelCFIPILININICAB: TIntegerField;
    SQLConfigImpPapelCFIPILININIFINAN: TIntegerField;
    SQLConfigImpPapelCFIPILINFINFINAN: TIntegerField;
    SQLConfigImpPapelCFIPICOLINIFINAN: TIntegerField;
    SQLConfigImpPapelCFIPICOLFINFINAN: TIntegerField;
    SQLConfigImpPapelCFIPILININIITENS: TIntegerField;
    SQLConfigImpPapelCFIPILINFINITENS: TIntegerField;
    SQLConfigImpPapelCFIPICOLINIITENS: TIntegerField;
    SQLConfigImpPapelCFIPICOLFINITENS: TIntegerField;
    SQLConfigImpPapelCFIPILININISERV: TIntegerField;
    SQLConfigImpPapelCFIPILINFINSERV: TIntegerField;
    SQLConfigImpPapelCFIPICOLINISERV: TIntegerField;
    SQLConfigImpPapelCFIPICOLFINSERV: TIntegerField;
    SQLConfigImpPapelCFIPCDIRECAO: TStringField;
    SQLConfigImpPapelCFIPITOTALLINHAS: TIntegerField;
    SQLConfigImpPapelCFIPITOTALCOLUNAS: TIntegerField;
    SQLConfigImpPapelCFIPILININIRODAPE: TIntegerField;
    TblNotaFiscalItemQuantidade: TFloatField;
    TblNotaFiscalItemValor_IPI: TFloatField;
    TblNotaFiscalFinanceiroNumero: TStringField;
    SQLConfigVenda: TRxQuery;
    SQLConfigVendaCFVEN3MAXLIMCRED: TFloatField;
    SQLConfigVendaCFVEN2PERCLIMCRED: TFloatField;
    SQLConfigVendaCFVECTIPOLIMCRED: TStringField;
    SQLConfigVendaCFVECARREDPARCELA: TStringField;
    SQLConfigVendaCFVECVENDAESTNEGAT: TStringField;
    SQLConfigVendaCFVECTIPOIMPPED: TStringField;
    SQLConfigVendaCFVECDADOSCHQPDV: TStringField;
    SQLConfigVendaCFVECUSADEBCREDCLI: TStringField;
    SQLConfigVendaCGVECTESTAITENSNF: TStringField;
    SQLConfigVendaCFVEN3ALIQISSQN: TFloatField;
    SQLConfigVendaCFVECIMPLEGPEDVENF: TStringField;
    SQLConfigVendaCFVEN3PERCICMFRETE: TFloatField;
    SQLConfigVendaCFVEA255OBSPADNF: TStringField;
    SQLConfigVendaCFVEITEMPOCONSPROD: TIntegerField;
    SQLConfigVendaCFVECQUITARPARCHQ: TStringField;
    SQLConfigVendaCFVEA255OBSPADRPED: TStringField;
    SQLConfigVendaOPESICODCUPOM: TIntegerField;
    SQLConfigVendaOPESICODCANCCUPOM: TIntegerField;
    SQLConfigVendaOPESICODNF: TIntegerField;
    SQLConfigVendaOPESICODCANCNF: TIntegerField;
    SQLConfigVendaOPESICODRETORNO: TIntegerField;
    SQLConfigVendaOPESICODCANCTROCA: TIntegerField;
    SQLConfigVendaOPESICODTROCA: TIntegerField;
    SQLConfigVendaCFVECRENDCONJNOLIM: TStringField;
    SQLConfigVendaCFVECINFDADOVENDA: TStringField;
    SQLConfigVendaCFVEA250MSGBLOQ: TStringField;
    SQLConfigVendaCFVECPARC0ENTRBAIX: TStringField;
    SQLConfigVendaCFVEICMSFRETECOD: TIntegerField;
    SQLConfigVendaTPRCICOD: TIntegerField;
    SQLConfigVendaCFVECFAZVENDCONSIG: TStringField;
    SQLConfigVendaCFVECMOVESTOQUENF: TStringField;
    SQLConfigVendaCFVECMOVESTOQUEPED: TStringField;
    SQLConfigVendaOPESICODCANCPED: TIntegerField;
    SQLConfigVendaOPESICODDEVOL: TIntegerField;
    SQLConfigVendaOPESICODPED: TIntegerField;
    SQLConfigVendaMTBLICODVENDCONSIG: TIntegerField;
    SQLConfigVendaCFVECFINVENDADPREVD: TStringField;
    SQLConfigVendaCFVECIMPPREVDCOD: TStringField;
    SQLConfigVendaCFVECFINDPRODPORDESCR: TStringField;
    SQLConfigVendaPORTICOD: TIntegerField;
    SQLConfigVendaTPDCICOD: TIntegerField;
    SQLConfigVendaCFVECEXCLUIPEDFAT: TStringField;
    SQLConfigVendaCFVEINROITENSNF: TIntegerField;
    SQLConfigVendaCFVECALTPEDIMPORT: TStringField;
    SQLConfigVendaCFVECPEDEVLRPRODUTO: TStringField;
    SQLConfigVendaCFVECSUBDEBNOLIMITE: TStringField;
    SQLConfigVendaCFVECTESTALIMTCRED: TStringField;
    SQLConfigVendaCFVEINROCASASDEC: TIntegerField;
    SQLConfigVendaCFVETOBSPADRAONF: TStringField;
    SQLConfigVendaCFVETOBSPADRAOPED: TStringField;
    SQLConfigVendaOPESICODIMPCUPOM: TIntegerField;
    SQLConfigVendaOPESICODVENDCONSIG: TIntegerField;
    SQLConfigVendaCFVECQUITAPARCONV: TStringField;
    SQLConfigVendaCFVEN2PERCCOFINS: TFloatField;
    SQLConfigVendaCFVEN2PERCENCARG: TFloatField;
    SQLConfigVendaCFVEN2PERCPIS: TFloatField;
    SQLConfigVendaCFVECFARREDVLRVEND: TStringField;
    SQLConfigVendaCFVECUSALIBERCRED: TStringField;
    SQLConfigVendaCFVECIMPDESCRPRINF: TStringField;
    SQLConfigVendaCFVECCONTPEDVDAUSU: TStringField;
    SQLConfigVendaCFVECCONTRUSUVLR: TStringField;
    SQLConfigVendaCFVECSOLSENHAALTVLR: TStringField;
    SQLConfigVendaCFVEN2PERCICMS: TFloatField;
    SQLConfigVendaCFVEIOPTESVENDANF: TIntegerField;
    SQLConfigVendaCFVECINFPRODSUBTRI: TStringField;
    SQLConfigVendaCFVECNAOIMPCLFISNF: TStringField;
    SQLConfigVendaCFVECQUITAPARCRT: TStringField;
    SQLConfigVendaCFVEIOPTESVENDNFNA: TIntegerField;
    SQLConfigVendaCFVECFRETEPADRAO: TStringField;
    SQLConfigVendaCFVECINFVLRDEVCVEN: TStringField;
    SQLConfigVendaCFVECAUTENTIMPMATRI: TStringField;
    Report: TCrpe;
    TblNotaFiscalItemNumeroNF: TStringField;
    TblNotaFiscalFinanceiroNumeroNF: TStringField;
    TblNotaFiscalItemServicoNumeroNF: TStringField;
    TblNotaFiscalNumeroNFSeq: TStringField;
    TblNotaFiscalItemNumeroNFSeq: TStringField;
    TblNotaFiscalFinanceiroNumeroNFSeq: TStringField;
    TblNotaFiscalItemServicoNumeroNFSeq: TStringField;
    RDPrint: TRDprint;
    SQLConfigImpPapelCFIPICOLINIRODAPE: TIntegerField;
    SQLConfigImpPapelCFIPCPADRAO: TStringField;
    SQLConfigImpPapelCFIPA13COMPRESSAO: TStringField;
    SQLLayOutImpressao: TRxQuery;
    SQLCount: TRxQuery;
    SQLICMS: TRxQuery;
    SQLICMSICMSICOD: TIntegerField;
    SQLICMSICMSICODSITTRIB: TIntegerField;
    SQLICMSDecretoLookup: TStringField;
    SQLICMSDECRICOD: TStringField;
    SQLICMSICMSA60DESCR: TStringField;
    SQLICMSICMSN2ALIQUOTA: TFloatField;
    SQLICMSICMSA5TOTECF: TStringField;
    SQLICMSICMSN2PERCSUBSTSAI: TFloatField;
    SQLICMSICMSN2PERCSUBSTENT: TFloatField;
    SQLICMSPENDENTE: TStringField;
    SQLICMSREGISTRO: TDateTimeField;
    SQLICMSICMSPOSALIQECF: TStringField;
    SQLICMSICMSPOSMAPARESUMO: TIntegerField;
    SQLICMSICMSN2REDBASEICMS: TFloatField;
    TblNotaFiscalDataHora_Saida: TDateTimeField;
    TblNotaFiscalCFOP_Cod_Aux: TStringField;
    TblNotaFiscalCFOP_Descricao_Aux: TStringField;
    TblNotaFiscalDecreto: TTable;
    TblNotaFiscalDecretoCodigo: TIntegerField;
    TblNotaFiscalDecretoDescricao: TStringField;
    TblNotaFiscalIdCliente: TStringField;
    SQLICMSICMSN2ICMSM1: TFloatField;
    TblNotaFiscalItemNFITA254OBS: TStringField;
    TblNotaFiscalItemServicoNFITA254OBS: TStringField;
    TblNotaFiscalDestinatario_CodMunicipio: TStringField;
    TblNotaFiscalItemValor_ICMS: TFloatField;
    TblNotaFiscalPercMaoObra: TFloatField;
    TblNotaFiscalPercMaterial: TFloatField;
    TblNotaFiscalPercINSS: TFloatField;
    TblNotaFiscalPercCofins: TFloatField;
    TblNotaFiscalPercPis: TFloatField;
    TblNotaFiscalPercIR: TFloatField;
    TblNotaFiscalPercContrSocial: TFloatField;
    TblNotaFiscalPercISSQN: TFloatField;
    TblNotaFiscalVlrMaoObra: TFloatField;
    TblNotaFiscalVlrMaterial: TFloatField;
    TblNotaFiscalVlrINSS: TFloatField;
    TblNotaFiscalVlrCofins: TFloatField;
    TblNotaFiscalVlrPis: TFloatField;
    TblNotaFiscalVlrContrSocial: TFloatField;
    TblNotaFiscalVlrIR: TFloatField;
    SQLUnidadeUNIDN3FATORCONV: TFloatField;
    procedure LocalizaConfigNFPadrao;
    procedure SQLConfigImpPapelNewRecord(DataSet: TDataSet);
    function TipoFonte(Nome: String):TTipoFonte;
    procedure ImprimeDadosNFPersonalizado(Divisao : Integer);
    procedure ImprimeFinanNFPersonalizado;
    procedure ImprimeItensNFPersonalizado;
    procedure ImprimeServsNFPersonalizado;
  private
    { Private declarations }
    Config : String;

  public
    { Public declarations }
  end;

var
  DMImpNotaFiscal: TDMImpNotaFiscal;
  PainelDivisao : array [0..3] of string = ('CFIPILININICAB','','','CFIPILININIRODAPE');

implementation

{$R *.dfm}

procedure TDMImpNotaFiscal.LocalizaConfigNFPadrao;
begin
  SQLCount.Close;
  SQLCount.SQL.Text := 'select CFIMIID from CONFIGIMPRESSAOPAPEL where CFIPCPADRAO = "S"';
  SQLCount.Open;

  if SQLCount.RecordCount > 1 then
     begin
       ShowMessage('Há mais de uma configuração de Impressão de Nota Fiscal como padrão.' + Char(#13) +
                   'Verifique as Configurações e tente novamente. Só pode haver uma configuração como Padrão.');
       Abort;
     end;

  if SQLCount.IsEmpty then
     begin
       ShowMessage('Não foi encontrada nenhuma configuração de Impressão de Nota Fiscal como padrão.' + Char(#13) +
                   'Verifique as Configurações e tente novamente.');
       Abort;
     end;

  Config := SQLCount.FieldByName('CFIMIID').AsString;
end;

function TDMImpNotaFiscal.TipoFonte(Nome: String):TTipoFonte;
begin
    if Nome = 'normal' then
       Result := normal;
    if Nome = 'comp12' then
       Result := comp12;
    if Nome = 'comp17' then
       Result := comp17;
    if Nome = 'comp20' then
       Result := comp20;
end;

procedure TDMImpNotaFiscal.SQLConfigImpPapelNewRecord(DataSet: TDataSet);
Var I : Integer;
begin
  SQLConfigImpPapelCFIPITOTALLINHAS.AsInteger  := 80;
  SQLConfigImpPapelCFIPITOTALCOLUNAS.AsInteger := 96;

  for I := 3 to SQLConfigImpPapel.FieldCount - 1 do
    begin
      SQLConfigImpPapel.Fields.Fields[I].AsInteger := 0;
    end;
end;

procedure TDMImpNotaFiscal.ImprimeDadosNFPersonalizado(Divisao : Integer);
Var I : Integer;
begin
   SQLLayOutImpressao.Close;
   SQLLayOutImpressao.SQL.Text := ' select CONFIGIMPRESSAO.*, CONFIGIMPRESSAOPAPEL.* from CONFIGIMPRESSAO  ' +
                                  ' left outer join CONFIGIMPRESSAOPAPEL on CONFIGIMPRESSAO.CFIMIID = CONFIGIMPRESSAOPAPEL.CFIMIID ' +
                                  ' where CONFIGIMPRESSAO.CFIMIID  = ' + Config + ' and CONFIGIMPRESSAO.CFIMIDIVISAO  = ' + IntToStr(Divisao) ;
   SQLLayOutImpressao.Open;

   RDprint.TamanhoQteLinhas  := SQLLayOutImpressao.FieldByName('CFIPITOTALLINHAS').AsInteger;
   RDprint.TamanhoQteColunas := SQLLayOutImpressao.FieldByName('CFIPITOTALCOLUNAS').AsInteger;

   for I := 0 to TblNotaFiscal.FieldCount - 1 do
     begin
       if SQLLayOutImpressao.Locate('CFIMA30FIELD',TblNotaFiscal.Fields.Fields[I].FieldName,[loCaseInsensitive]) then
         if (TblNotaFiscal.Fields.Fields[I].DataType in [ftFloat, ftCurrency]) and
            (TblNotaFiscal.Fields.Fields[I].Tag <> 1) then
            RDprint.ImpVal(SQLLayOutImpressao.FieldByName('CFIMIIMPLIN').AsInteger + SQLLayOutImpressao.FieldByName(PainelDivisao[Divisao]).AsInteger,
                           SQLLayOutImpressao.FieldByName('CFIMIIMPCOL').AsInteger,
                           '#,##0.00',
                           TblNotaFiscal.Fields.Fields[I].AsFloat,
                           [TipoFonte(SQLLayOutImpressao.FieldByName('CFIPA13COMPRESSAO').AsString)])
         else
            RDprint.ImpF(SQLLayOutImpressao.FieldByName('CFIMIIMPLIN').AsInteger + SQLLayOutImpressao.FieldByName(PainelDivisao[Divisao]).AsInteger,
                         SQLLayOutImpressao.FieldByName('CFIMIIMPCOL').AsInteger,TblNotaFiscal.Fields.Fields[I].AsString,[TipoFonte(SQLLayOutImpressao.FieldByName('CFIPA13COMPRESSAO').AsString)]);
     end;
end;

procedure TDMImpNotaFiscal.ImprimeItensNFPersonalizado;
Var I, Item : Integer;
begin
   SQLLayOutImpressao.Close;
   SQLLayOutImpressao.SQL.Text := ' select CONFIGIMPRESSAO.*, CONFIGIMPRESSAOPAPEL.* from CONFIGIMPRESSAO ' +
                                  ' left outer join CONFIGIMPRESSAOPAPEL on CONFIGIMPRESSAO.CFIMIID = CONFIGIMPRESSAOPAPEL.CFIMIID ' +
                                  ' where CONFIGIMPRESSAO.CFIMIID  = ' + Config + ' and CONFIGIMPRESSAO.CFIMIDIVISAO  = 1 ';
   SQLLayOutImpressao.Open;

   for I := 0 to TblNotaFiscalItem.FieldCount - 1 do
       begin
          if SQLLayOutImpressao.Locate('CFIMA30FIELD',TblNotaFiscalItem.Fields.Fields[I].FieldName,[loCaseInsensitive]) then
             begin
                TblNotaFiscalItem.First;
                Item := 0;
                while not TblNotaFiscalItem.Eof do
                    begin
                       if (TblNotaFiscalItem.Fields.Fields[I].DataType in [ftFloat, ftCurrency]) and
                          (TblNotaFiscalItem.Fields.Fields[I].Tag <> 1) then
                          RDprint.ImpVal(SQLLayOutImpressao.FieldByName('CFIMIIMPLIN').AsInteger + SQLLayOutImpressao.FieldByName('CFIPILININIITENS').AsInteger + Item,
                                         SQLLayOutImpressao.FieldByName('CFIMIIMPCOL').AsInteger,
                                         '#,##0.00',
                                         TblNotaFiscalItem.Fields.Fields[I].AsFloat,
                                         [TipoFonte(SQLLayOutImpressao.FieldByName('CFIPA13COMPRESSAO').AsString)])
                       else
                          RDprint.ImpF(SQLLayOutImpressao.FieldByName('CFIMIIMPLIN').AsInteger + SQLLayOutImpressao.FieldByName('CFIPILININIITENS').AsInteger + Item,
                                       SQLLayOutImpressao.FieldByName('CFIMIIMPCOL').AsInteger,TblNotaFiscalItem.Fields.Fields[I].AsString,[TipoFonte(SQLLayOutImpressao.FieldByName('CFIPA13COMPRESSAO').AsString)]);
                       TblNotaFiscalItem.Next;
                       Item := Item + 1;
                    end;
             end;
       end;
end;

procedure TDMImpNotaFiscal.ImprimeServsNFPersonalizado;
Var I, Item : Integer;
begin
   SQLLayOutImpressao.Close;
   SQLLayOutImpressao.SQL.Text := ' select CONFIGIMPRESSAO.*, CONFIGIMPRESSAOPAPEL.* from CONFIGIMPRESSAO ' +
                                  ' left outer join CONFIGIMPRESSAOPAPEL on CONFIGIMPRESSAO.CFIMIID = CONFIGIMPRESSAOPAPEL.CFIMIID ' +
                                  ' where CONFIGIMPRESSAO.CFIMIID  = ' + Config + ' and CONFIGIMPRESSAO.CFIMIDIVISAO  = 2 ';
   SQLLayOutImpressao.Open;

   for I := 0 to TblNotaFiscalItemServico.FieldCount - 1 do
       begin
          if SQLLayOutImpressao.Locate('CFIMA30FIELD',TblNotaFiscalItemServico.Fields.Fields[I].FieldName,[loCaseInsensitive]) then
             begin
                TblNotaFiscalItemServico.First;
                Item := 0;
                while not TblNotaFiscalItemServico.Eof do
                    begin
                       if (TblNotaFiscalItemServico.Fields.Fields[I].DataType in [ftFloat, ftCurrency])  and
                          (TblNotaFiscalItemServico.Fields.Fields[I].Tag <> 1) then
                          RDprint.ImpVal(SQLLayOutImpressao.FieldByName('CFIMIIMPLIN').AsInteger + SQLLayOutImpressao.FieldByName('CFIPILININISERV').AsInteger + Item,
                                         SQLLayOutImpressao.FieldByName('CFIMIIMPCOL').AsInteger,
                                         '#,##0.00',
                                         TblNotaFiscalItemServico.Fields.Fields[I].AsFloat,
                                         [TipoFonte(SQLLayOutImpressao.FieldByName('CFIPA13COMPRESSAO').AsString)])
                       else
                          RDprint.ImpF(SQLLayOutImpressao.FieldByName('CFIMIIMPLIN').AsInteger + SQLLayOutImpressao.FieldByName('CFIPILININISERV').AsInteger + Item,
                                       SQLLayOutImpressao.FieldByName('CFIMIIMPCOL').AsInteger,TblNotaFiscalItemServico.Fields.Fields[I].AsString,[TipoFonte(SQLLayOutImpressao.FieldByName('CFIPA13COMPRESSAO').AsString)]);
                       TblNotaFiscalItemServico.Next;
                       Item := Item + 1;
                    end;
             end;
       end;
end;

procedure TDMImpNotaFiscal.ImprimeFinanNFPersonalizado;
var I, Item, QtdeItens, QtdeColunas, ColunasBox, Linha : Integer;
begin
   SQLLayOutImpressao.Close;
   SQLLayOutImpressao.SQL.Text := ' select CONFIGIMPRESSAO.*, CONFIGIMPRESSAOPAPEL.* from CONFIGIMPRESSAO ' +
                                  ' left outer join CONFIGIMPRESSAOPAPEL on CONFIGIMPRESSAO.CFIMIID = CONFIGIMPRESSAOPAPEL.CFIMIID ' +
                                  ' where CONFIGIMPRESSAO.CFIMIID  = ' + Config + ' and CONFIGIMPRESSAO.CFIMIDIVISAO  = 4';
   SQLLayOutImpressao.Open;

   QtdeItens := SQLLayOutImpressao.FieldByName('CFIPILINFINFINAN').AsInteger - SQLLayOutImpressao.FieldByName('CFIPILININIFINAN').AsInteger;
   ColunasBox := SQLLayOutImpressao.FieldByName('CFIPICOLFINFINAN').AsInteger - SQLLayOutImpressao.FieldByName('CFIPICOLINIFINAN').AsInteger;

   for I := 0 to TblNotaFiscalFinanceiro.FieldCount - 1 do
       begin
          if SQLLayOutImpressao.Locate('CFIMA30FIELD',TblNotaFiscalFinanceiro.Fields.Fields[I].FieldName,[loCaseInsensitive]) then
             begin
                TblNotaFiscalFinanceiro.First;
                Item := 0;
                QtdeColunas := 0;
                Linha       := 0;

                while not TblNotaFiscalFinanceiro.Eof do
                   begin
                       //Direção Vertical
                       if SQLLayOutImpressao.FieldByName('CFIPCDIRECAO').AsString = 'V' then
                          begin
                             if Item > (QtdeItens - 1) then
                                begin
                                   Item := 0;
                                   QtdeColunas := QtdeColunas + ColunasBox;
                                end;
                             if Item <> 0 then
                                Linha := Linha + 1
                             else
                                Linha := 0;
                          end;

                       //Direção Horizontal
                       if SQLLayOutImpressao.FieldByName('CFIPCDIRECAO').AsString = 'H' then
                          if (Item * ColunasBox) > SQLLayOutImpressao.FieldByName('CFIPITOTALCOLUNAS').AsFloat  then
                             begin
                               QtdeColunas := 0;
                               Linha       := Linha + 1;
                             end
                          else
                             begin
                               QtdeColunas := Item * ColunasBox;
                             end;

                       if (TblNotaFiscalFinanceiro.Fields.Fields[I].DataType in [ftFloat, ftCurrency])  and
                          (TblNotaFiscalFinanceiro.Fields.Fields[I].Tag <> 1) then
                          RDprint.ImpVal(SQLLayOutImpressao.FieldByName('CFIMIIMPLIN').AsInteger + SQLLayOutImpressao.FieldByName('CFIPILININIFINAN').AsInteger + Linha,
                                         SQLLayOutImpressao.FieldByName('CFIMIIMPCOL').AsInteger + QtdeColunas,
                                         '#,##0.00',
                                         TblNotaFiscalFinanceiro.Fields.Fields[I].AsFloat,
                                         [TipoFonte(SQLLayOutImpressao.FieldByName('CFIPA13COMPRESSAO').AsString)])
                       else
                          RDprint.ImpF(SQLLayOutImpressao.FieldByName('CFIMIIMPLIN').AsInteger + SQLLayOutImpressao.FieldByName('CFIPILININIFINAN').AsInteger + Linha,
                                       SQLLayOutImpressao.FieldByName('CFIMIIMPCOL').AsInteger + QtdeColunas,
                                       TblNotaFiscalFinanceiro.Fields.Fields[I].AsString,
                                       [TipoFonte(SQLLayOutImpressao.FieldByName('CFIPA13COMPRESSAO').AsString)]);
                       TblNotaFiscalFinanceiro.Next;

                       Item := Item + 1;
                    end;
             end;
       end;
end;

end.
