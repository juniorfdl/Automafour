unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCrpe32, DB, DBTables, RxQuery, VarSys, ComCtrls, ExtCtrls;

type
  TFormPrincipal = class(TForm)
    TblPedido: TTable;
    TblPedidoItem: TTable;
    TblPedidoFinanceiro: TTable;
    ImpPedidoVenda: TCrpe;
    SQLPlanoRecebimento: TRxQuery;
    SQLPlanoRecebimentoPLRCICOD: TIntegerField;
    SQLPlanoRecebimentoPLRCA60DESCR: TStringField;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    SQLTransportadora: TRxQuery;
    SQLTransportadoraTRANICOD: TIntegerField;
    SQLTransportadoraTRANA60RAZAOSOC: TStringField;
    SQLTemplate: TRxQuery;
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplatePDVDICOD: TIntegerField;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateTRANICOD: TIntegerField;
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplatePDVDDEMISSAO: TDateTimeField;
    SQLTemplatePDVDN2VLRFRETE: TFloatField;
    SQLTemplatePDVDA30NROPEDCOMP: TStringField;
    SQLTemplatePDVDA30COMPRADOR: TStringField;
    SQLTemplatePDVDCTIPO: TStringField;
    SQLTemplatePDVDCSTATUS: TStringField;
    SQLTemplatePDVDN2VLRDESC: TFloatField;
    SQLTemplatePDVDN2TOTPROD: TFloatField;
    SQLTemplatePDVDN2TOTPED: TFloatField;
    SQLTemplatePDVDTOBS: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateTransportadoraLookUp: TStringField;
    SQLTemplateVendedorLookUp: TStringField;
    SQLTemplatePlanoRecebimentoLookUp: TStringField;
    SQLTemplateClienteLookUp: TStringField;
    SQLTemplateClienteEnderecoLookUp: TStringField;
    SQLTemplateClienteEstadoLookUp: TStringField;
    SQLTemplateClienteBairroLookUp: TStringField;
    SQLTemplateClienteCEPLookUp: TStringField;
    SQLTemplateClienteCGCCPFLookUp: TStringField;
    SQLTemplateClienteIERGLookUp: TStringField;
    SQLTemplateClienteCidadeLookUp: TStringField;
    SQLTemplateClienteFoneLookUp: TStringField;
    SQLTemplatePDVDN2VLRDESCPROM: TFloatField;
    SQLTemplatePDVDINROTALAO: TIntegerField;
    SQLTemplateClienteTabelaPrecoLookUp: TIntegerField;
    SQLNumerario: TRxQuery;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    SQLPortador: TRxQuery;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    SQLPedidoFinanceiro: TRxQuery;
    DSSQLTemplate: TDataSource;
    SQLPedidoItem: TRxQuery;
    SQLPedidoItemProdutoLookUp: TStringField;
    SQLPedidoItemGradeCodLookUp: TIntegerField;
    SQLPedidoItemAgrupGradeLookUp: TIntegerField;
    SQLPedidoItemTotalItemCalc: TFloatField;
    SQLPedidoItemPDVDA13ID: TStringField;
    SQLPedidoItemPVITIITEM: TIntegerField;
    SQLPedidoItemPRODICOD: TIntegerField;
    SQLPedidoItemPVITN3QUANT: TFloatField;
    SQLPedidoItemPVITN2VLRUNIT: TFloatField;
    SQLPedidoItemPVITN2PERCDESC: TFloatField;
    SQLPedidoItemPVITN2VLRDESC: TFloatField;
    SQLPedidoItemREGISTRO: TDateTimeField;
    SQLPedidoItemPENDENTE: TStringField;
    SQLPedidoItemPVITN3QUANTVEND: TFloatField;
    SQLPedidoItemReferenciaLookup: TStringField;
    SQLPedidoFinanceiroCTRCA13ID: TStringField;
    SQLPedidoFinanceiroEMPRICOD: TIntegerField;
    SQLPedidoFinanceiroTERMICOD: TIntegerField;
    SQLPedidoFinanceiroCTRCICOD: TIntegerField;
    SQLPedidoFinanceiroCLIEA13ID: TStringField;
    SQLPedidoFinanceiroCTRCCSTATUS: TStringField;
    SQLPedidoFinanceiroCTRCINROPARC: TIntegerField;
    SQLPedidoFinanceiroCTRCDVENC: TDateTimeField;
    SQLPedidoFinanceiroCTRCN2VLR: TFloatField;
    SQLPedidoFinanceiroCTRCN2DESCFIN: TFloatField;
    SQLPedidoFinanceiroNUMEICOD: TIntegerField;
    SQLPedidoFinanceiroPORTICOD: TIntegerField;
    SQLPedidoFinanceiroCTRCN2TXJURO: TFloatField;
    SQLPedidoFinanceiroCTRCN2TXMULTA: TFloatField;
    SQLPedidoFinanceiroCTRCA5TIPOPADRAO: TStringField;
    SQLPedidoFinanceiroCTRCDULTREC: TDateTimeField;
    SQLPedidoFinanceiroCTRCN2TOTREC: TFloatField;
    SQLPedidoFinanceiroCTRCN2TOTJUROREC: TFloatField;
    SQLPedidoFinanceiroCTRCN2TOTMULTAREC: TFloatField;
    SQLPedidoFinanceiroCTRCN2TOTDESCREC: TFloatField;
    SQLPedidoFinanceiroEMPRICODULTREC: TIntegerField;
    SQLPedidoFinanceiroCUPOA13ID: TStringField;
    SQLPedidoFinanceiroTPDCICOD: TIntegerField;
    SQLPedidoFinanceiroPLCTA15COD: TStringField;
    SQLPedidoFinanceiroCTRCA30NRODUPLICBANCO: TStringField;
    SQLPedidoFinanceiroNOFIA13ID: TStringField;
    SQLPedidoFinanceiroCTRCDEMIS: TDateTimeField;
    SQLPedidoFinanceiroPENDENTE: TStringField;
    SQLPedidoFinanceiroREGISTRO: TDateTimeField;
    SQLPedidoFinanceiroCTRCDREABILSPC: TDateTimeField;
    SQLPedidoFinanceiroCTRCN2TOTMULTACOBR: TFloatField;
    SQLPedidoFinanceiroBANCA5CODCHQ: TStringField;
    SQLPedidoFinanceiroCTRCA10AGENCIACHQ: TStringField;
    SQLPedidoFinanceiroCTRCA15CONTACHQ: TStringField;
    SQLPedidoFinanceiroCTRCA15NROCHQ: TStringField;
    SQLPedidoFinanceiroCTRCA60TITULARCHQ: TStringField;
    SQLPedidoFinanceiroCTRCA20CGCCPFCHQ: TStringField;
    SQLPedidoFinanceiroCTRCDDEPOSCHQ: TDateTimeField;
    SQLPedidoFinanceiroALINICOD: TIntegerField;
    SQLPedidoFinanceiroNumerarioLookUp: TStringField;
    SQLPedidoFinanceiroPortadorLookUp: TStringField;
    SQLPedidoFinanceiroPDVDA13ID: TStringField;
    SQLUnidade: TRxQuery;
    SQLUnidadeUNIDICOD: TIntegerField;
    SQLUnidadeUNIDA5DESCR: TStringField;
    SQLPedidoItemUnidadeLookUp: TStringField;
    SQLVendedorVENDA60EMAIL: TStringField;
    SQLTemplateVendedorEmailLookUp: TStringField;
    SQLTemplatePDVDCTIPOFRETE: TStringField;
    SQLTemplatePDVDDENTREGA: TDateTimeField;
    TblPedidoPedICod: TStringField;
    TblPedidoEmitente_Nome: TStringField;
    TblPedidoEmitente_Ender: TStringField;
    TblPedidoEmitente_Bairro: TStringField;
    TblPedidoEmitente_Cidade: TStringField;
    TblPedidoEmitente_UF: TStringField;
    TblPedidoEmitente_CGC: TStringField;
    TblPedidoEmitente_IE: TStringField;
    TblPedidoEmitente_Fone: TStringField;
    TblPedidoDtEmissao: TDateField;
    TblPedidoDestinatario_Nome: TStringField;
    TblPedidoDestinatario_Endereco: TStringField;
    TblPedidoDestinatario_Bairro: TStringField;
    TblPedidoDestinatario_Cep: TStringField;
    TblPedidoDestinatario_Cidade: TStringField;
    TblPedidoDestinatario_UF: TStringField;
    TblPedidoDestinatario_CpfCgc: TStringField;
    TblPedidoDestinatario_IE: TStringField;
    TblPedidoDestinatario_Fone: TStringField;
    TblPedidoDestinatario_Fax: TStringField;
    TblPedidoTransp: TStringField;
    TblPedidoDtaEntrega: TDateField;
    TblPedidoComprador: TStringField;
    TblPedidoOrdemCompra: TStringField;
    TblPedidoPlano: TStringField;
    TblPedidoTipoFrete: TStringField;
    TblPedidoValorFrete: TFloatField;
    TblPedidoTotalDesconto: TFloatField;
    TblPedidoTotal: TFloatField;
    TblPedidoObservacoes: TMemoField;
    TblPedidoVendedor: TStringField;
    TblPedidoEmail: TStringField;
    TblPedidoItemPedICod: TStringField;
    TblPedidoItemCodigo: TIntegerField;
    TblPedidoItemDescricao: TStringField;
    TblPedidoItemVlrUnitario: TFloatField;
    TblPedidoItemVlrTotal: TFloatField;
    TblPedidoFinanceiroPedICod: TStringField;
    TblPedidoFinanceiroVencimento: TDateField;
    TblPedidoFinanceiroValor: TFloatField;
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
    SQLTemplateEmitenteLookUp: TStringField;
    SQLTemplateEmitenteEndLookUp: TStringField;
    SQLTemplateEmitenteBairroLookUp: TStringField;
    SQLTemplateEmitenteCidadeLookUp: TStringField;
    SQLTemplateEmitenteUFLookUp: TStringField;
    SQLTemplateEmitenteCGCLookUp: TStringField;
    SQLTemplateEmitenteIELookUp: TStringField;
    SQLTemplateEmitenteFoneLookUp: TStringField;
    SQLTemplateClienteFaxLookUp: TStringField;
    TblPedidoItemUn: TStringField;
    TblPedidoItemQtd1: TFloatField;
    TblPedidoItemCor: TStringField;
    TblPedidoItemTecido: TStringField;
    TblPedidoItemLegenda: TIntegerField;
    TblPedidoItemQtd2: TFloatField;
    TblPedidoItemQtd3: TFloatField;
    TblPedidoItemQtd4: TFloatField;
    TblPedidoItemQtd5: TFloatField;
    TblPedidoItemQtd6: TFloatField;
    TblPedidoItemQtd7: TFloatField;
    TblPedidoItemQtd8: TFloatField;
    TblPedidoItemQtd9: TFloatField;
    TblPedidoItemQtd10: TFloatField;
    TblPedidoItemQtd11: TFloatField;
    TblPedidoItemQtd12: TFloatField;
    TblPedidoItemQtd13: TFloatField;
    TblPedidoItemQtd14: TFloatField;
    TblPedidoItemQtd15: TFloatField;
    TblPedidoPEDIDOORCAMENTO: TStringField;
    SQLTemplateEmitenteEmail: TStringField;
    SQLTemplateEmitenteFaxLookup: TStringField;
    TblPedidoEmitente_Email: TStringField;
    TblPedidoEmitente_Fax: TStringField;
    TblPedidoItemBarras: TStringField;
    SQLPedidoItemBarrasLookup: TStringField;
    DB: TDatabase;
    SQLCliente: TRxQuery;
    SQLProduto: TRxQuery;
    TblPedidoDestinatario_Fantasia: TStringField;
    SQLTemplateClienteFantasia: TStringField;
    SQLTemplateClienteEndereco_nro: TStringField;
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLPedidoItemCalcFields(DataSet: TDataSet);
    procedure ImpPedidoVendaWindowClose(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure AbrirDados;
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation


{$R *.dfm}

procedure TFormPrincipal.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  if DataSet.FieldByName('CLIEA13ID').AsVariant <> null then
  begin
    sqlcliente.close;
    sqlcliente.MacroByName('MFiltro').Value := 'CLIEA13ID="' + DataSet.FieldByName('CLIEA13ID').Value + '"';
    sqlcliente.Open;
    if not sqlcliente.IsEmpty then
    begin
      DataSet.FieldByName('ClienteLookup').AsVariant := sqlcliente.FindField('CLIEA60RAZAOSOC').AsVariant;
      DataSet.FieldByName('ClienteCidadeLookup').AsVariant := sqlcliente.FindField('CLIEA60CIDRES').AsVariant;
      DataSet.FieldByName('ClienteEstadoLookup').AsVariant := sqlcliente.FindField('CLIEA2UFRES').AsVariant;
      DataSet.FieldByName('ClienteCEPLookup').AsVariant := sqlcliente.FindField('CLIEA8CEPRES').AsVariant;
      DataSet.FieldByName('ClienteBairroLookup').AsVariant := sqlcliente.FindField('CLIEA60BAIRES').AsVariant;
      DataSet.FieldByName('ClienteEnderecoLookUp').AsVariant := sqlcliente.FindField('CLIEA60ENDRES').AsVariant;
      DataSet.FieldByName('ClienteFoneLookUp').AsVariant := sqlcliente.FindField('CLIEA15FONE1').AsVariant;
      DataSet.FieldByName('ClienteFaxLookUp').AsVariant := sqlcliente.FindField('CLIEA15FAX').AsVariant;
      DataSet.FieldByName('ClienteTabelaPrecoLookUp').AsVariant := sqlcliente.FindField('TPRCICOD').AsVariant;
      if sqlcliente.FindField('CLIEA5FISJURID').AsString = 'F' then
      begin
        DataSet.FieldByName('ClienteCGCCPFLookup').AsVariant := sqlcliente.FindField('CLIEA11CPF').AsVariant;
        DataSet.FieldByName('ClienteIERGLookup').AsVariant := sqlcliente.FindField('CLIEA10RG').AsVariant;
        DataSet.FieldByName('ClienteCGCCPFLookup').EditMask := '000.000.000-00;0;_';
      end
      else
      begin
        DataSet.FieldByName('ClienteCGCCPFLookup').AsVariant := sqlcliente.FindField('CLIEA14CGC').AsVariant;
        DataSet.FieldByName('ClienteIERGLookup').AsVariant := sqlcliente.FindField('CLIEA20IE').AsVariant;
        DataSet.FieldByName('ClienteCGCCPFLookup').EditMask := '00.000.000/0000-00;0;_';
      end;
    end
    else
      DataSet.FieldByName('ClienteLookup').asString := MensagemLookUp;
  end
  else
    DataSet.FieldByName('ClienteLookup').AsVariant := Null;
end;

procedure TFormPrincipal.SQLPedidoItemCalcFields(DataSet: TDataSet);
begin
  SQLPedidoItemTotalItemCalc.asFloat := (SQLPedidoItemPVITN2VLRUNIT.AsFloat * SQLPedidoItemPVITN3QUANT.asFloat) - SQLPedidoItemPVITN2VLRDESC.AsFloat;
  if DataSet.FieldByName('PRODICOD').AsVariant <> null then
  begin
    sqlproduto.close;
    sqlproduto.MacroByName('MFiltro').Value := 'PRODICOD=' + DataSet.FieldByName('PRODICOD').AsString;
    sqlproduto.Open;
    if not sqlproduto.IsEmpty then
    begin
      DataSet.FieldByName('ProdutoLookup').AsVariant := sqlproduto.FindField('PRODA60DESCR').AsVariant;
      DataSet.FieldByName('GradeCodLookup').AsVariant := sqlproduto.FindField('GRADICOD').AsVariant;
      DataSet.FieldByName('AgrupGradeLookup').AsVariant := sqlproduto.FindField('PRODIAGRUPGRADE').AsVariant;
      DataSet.FieldByName('ReferenciaLookup').AsVariant := sqlproduto.FindField('PRODA60REFER').AsVariant;
      DataSet.FieldByName('BarrasLookup').AsVariant := sqlproduto.FindField('PRODA60CODBAR').AsVariant;
      if sqlproduto.FindField('UNIDICOD').AsVariant <> Null then
      begin
        SQLUnidade.Close;
        SQLUnidade.ParamByName('UNIDICOD').asInteger := sqlproduto.FindField('UNIDICOD').asInteger;
        SQLUnidade.Open;
        DataSet.FieldByName('UnidadeLookUp').AsVariant := SQLUnidade.FindField('UNIDA5DESCR').asString;
      end;
    end
    else
    begin
      DataSet.FieldByName('ProdutoLookup').AsVariant := NULL;
      DataSet.FieldByName('GradeCodLookup').AsVariant := NULL;
      DataSet.FieldByName('AgrupGradeLookup').AsVariant := NULL;
      DataSet.FieldByName('ReferenciaLookup').AsVariant := NULL;
      DataSet.FieldByName('UnidadeLookUp').AsVariant := NULL;
      DataSet.FieldByName('BarrasLookup').AsVariant := NULL;
    end;
  end
  else
  begin
    DataSet.FieldByName('ProdutoLookup').AsVariant := NULL;
    DataSet.FieldByName('GradeCodLookup').AsVariant := NULL;
    DataSet.FieldByName('AgrupGradeLookup').AsVariant := NULL;
    DataSet.FieldByName('ReferenciaLookup').AsVariant := NULL;
    DataSet.FieldByName('UnidadeLookUp').AsVariant := NULL;
    DataSet.FieldByName('BarrasLookup').AsVariant := NULL;
  end;
end;

procedure TFormPrincipal.ImpPedidoVendaWindowClose(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormPrincipal.FormActivate(Sender: TObject);
var Cont: Integer;
begin
  try
    db.Connected := True;
    ImpPedidoVenda.ReportName := 'c:\easy2solutions\gestao\PedidoVenda\Pedido Orcamento.rpt';
    try

      AbrirDados;
      ImpPedidoVenda.Execute;
    except
      on E: Exception do
      begin
        ShowMessage(E.Message);
      end;
    end;
  finally
    db.Connected := False;
    Halt(0);
  end;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFormPrincipal.AbrirDados;
var
  idPedido, idCliente: string;
begin
  try
    idPedido := ParamStr(1);
    SQLTemplate.ParamByName('PDVDA13ID').asString := idPedido;
    SQLTemplate.Open;
    SQLPedidoFinanceiro.Open;
    SQLPedidoItem.Open;

    if TblPedido.Exists then
      TblPedido.DeleteTable;
    TblPedido.CreateTable;
    TblPedido.AddIndex('Primario', 'PedICod', [ixPrimary]);
    TblPedido.Open;
    TblPedido.Append;
    if SQLTemplatePDVDCTIPO.asString = 'P' then
      TblPedidoPEDIDOORCAMENTO.AsString := 'PEDIDO NRO:'
    else
      TblPedidoPEDIDOORCAMENTO.AsString := 'ORÇAMENTO NRO:';
    TblPedidoPedICod.AsString := SQLTemplatePDVDA13ID.asString;
    TblPedidoEmitente_Nome.asString := SQLTemplateEmitenteLookUp.asString;
    TblPedidoEmitente_Ender.asString := SQLTemplateEmitenteEndLookUp.asString;
    TblPedidoEmitente_Bairro.asString := SQLTemplateEmitenteBairroLookUp.asString;
    TblPedidoEmitente_Cidade.asString := SQLTemplateEmitenteCidadeLookUp.asString;
    TblPedidoEmitente_UF.asString := SQLTemplateEmitenteUFLookUp.asString;
    TblPedidoEmitente_CGC.asString := SQLTemplateEmitenteCGCLookUp.asString;
    TblPedidoEmitente_IE.asString := SQLTemplateEmitenteIELookUp.asString;
    TblPedidoEmitente_Fone.asString := SQLTemplateEmitenteFoneLookUp.asString;
    TblPedidoEmitente_Fax.asString := SQLTemplateEmitenteFaxLookup.asString;
    TblPedidoEmitente_Email.asString := LowerCase(SQLTemplateEmitenteEmail.asString);
    TblPedidoDtEmissao.Value := SQLTemplatePDVDDEMISSAO.Value;
    TblPedidoDestinatario_Nome.asString := SQLTemplateClienteLookUp.asString;
    TblPedidoDestinatario_Fantasia.asString := SQLTemplateClienteFantasia.asString;
    TblPedidoDestinatario_Endereco.asString := SQLTemplateClienteEnderecoLookUp.asString + ', ' + SQLTemplateClienteEndereco_nro.Value;
    TblPedidoDestinatario_Bairro.asString := SQLTemplateClienteBairroLookUp.asString;
    TblPedidoDestinatario_Cep.asString := SQLTemplateClienteCEPLookUp.asString;
    TblPedidoDestinatario_Cidade.asString := SQLTemplateClienteCidadeLookUp.asString;
    TblPedidoDestinatario_UF.asString := SQLTemplateClienteEstadoLookUp.asString;
    TblPedidoDestinatario_CpfCgc.asString := SQLTemplateClienteCGCCPFLookUp.asString;
    TblPedidoDestinatario_IE.asString := SQLTemplateClienteIERGLookUp.asString;
    TblPedidoDestinatario_Fone.asString := SQLTemplateClienteFoneLookUp.asString;
    TblPedidoDestinatario_Fax.asString := SQLTemplateClienteFaxLookUp.asString;
    TblPedidoTransp.asString := SQLTemplateTransportadoraLookUp.asString;
    TblPedidoDtaEntrega.asVariant := SQLTemplatePDVDDENTREGA.asVariant;
    TblPedidoComprador.asString := SQLTemplatePDVDA30COMPRADOR.asString;
    TblPedidoOrdemCompra.asString := SQLTemplatePDVDA30NROPEDCOMP.asString;
    TblPedidoPlano.asString := SQLTemplatePlanoRecebimentoLookUp.asString;
    if SQLTemplatePDVDCTIPOFRETE.asString = 'C' then
      TblPedidoTipoFrete.asString := '1'
    else
      TblPedidoTipoFrete.asString := '2';
    TblPedidoValorFrete.Value := SQLTemplatePDVDN2VLRFRETE.Value;
    TblPedidoTotalDesconto.Value := SQLTemplatePDVDN2VLRDESC.Value + SQLTemplatePDVDN2VLRDESCPROM.Value;
    TblPedidoTotal.Value := SQLTemplatePDVDN2TOTPROD.Value + SQLTemplatePDVDN2VLRDESC.Value;
    TblPedidoObservacoes.asString := SQLTemplatePDVDTOBS.asString;
    TblPedidoVendedor.asString := SQLTemplateVendedorLookUp.asString;
    TblPedidoEmail.asString := AnsiLowerCase(SQLTemplateVendedorEmailLookUp.asString);
    TblPedido.Post;
    TblPedido.Close;

    if TblPedidoItem.Exists then
      TblPedidoItem.DeleteTable;
    TblPedidoItem.CreateTable;
    TblPedidoItem.Open;
    SQLPedidoItem.First;
    while not SQLPedidoItem.Eof do
    begin
      TblPedidoItem.Append;
      TblPedidoItemCodigo.Value := SQLPedidoItemPRODICOD.Value;
      TblPedidoItemBarras.Value := SQLPedidoItemBarrasLookup.Value;
      TblPedidoItemDescricao.Value := SQLPedidoItemProdutoLookUp.Value;
      TblPedidoItemVlrUnitario.Value := SQLPedidoItemPVITN2VLRUNIT.Value;
      TblPedidoItemVlrTotal.Value := SQLPedidoItemTotalItemCalc.Value;
      TblPedidoItemUn.Value := SQLPedidoItemUnidadeLookUp.Value;
      TblPedidoItemQtd1.Value := SQLPedidoItemPVITN3QUANT.Value;
      TblPedidoItemPedICod.Value := SQLPedidoItemPDVDA13ID.Value;
      TblPedidoItem.Post;
      SQLPedidoItem.Next;
    end;
    TblPedidoItem.Close;

    if TblPedidoFinanceiro.Exists then
      TblPedidoFinanceiro.DeleteTable;
    TblPedidoFinanceiro.CreateTable;
    TblPedidoFinanceiro.Open;
    SQLPedidoFinanceiro.First;
    while not SQLPedidoFinanceiro.Eof do
    begin
      TblPedidoFinanceiro.Append;
      TblPedidoFinanceiroVencimento.Value := SQLPedidoFinanceiroCTRCDVENC.Value;
      TblPedidoFinanceiroValor.Value := SQLPedidoFinanceiroCTRCN2VLR.Value;
      TblPedidoFinanceiroPedICod.Value := SQLPedidoFinanceiroPDVDA13ID.Value;
      TblPedidoFinanceiro.Post;
      SQLPedidoFinanceiro.Next;
    end;
    TblPedidoFinanceiro.Close;
  except
    on E: Exception do
    begin
      ShowMessage(E.Message);
      Halt(0);
    end;
  end;

end;

end.

