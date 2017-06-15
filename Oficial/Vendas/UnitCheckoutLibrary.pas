unit UnitCheckoutLibrary;

interface

uses Variants, MemTable, Menus, Stdctrls, Classes, Windows, Forms, CartaoCredito,
     UCrpe32, RxQuery, DBTables, Controls, Dialogs, DB, JPeg, Sysutils, DBCtrls;

Var
  AlterarUsuario,
  VendaConsignada,
  E_Orcamento,
  DevolucaoAbateConsig,
  FinalizacaodeVenda,
  vImportarPrevenda, vImportarOrcamento, ReativarPreVenda, ContinuarPrevenda, GravaPrevendaSemFinanceiro,
  ReativarPedidoOrcamento,
  ImportandoPreVenda,
  E_PRODBALANCA : boolean ;
  CupoA13IDDevol,
  CodigoAntigoCupom : String ;
  ValorDescontoASerImportado : double;
  RetornoCartao : TInfoRetorno;
  DadosImpressora : TInfoImpressao;

function  ConverteCodigo(Codigo : String):string;
procedure GravarTabelaTempImpPreVendaDeCupom(IDCupom : string; SQLParcelasVistaVendaTemp, SQLParcelasPrazoVendaTemp, SQLCup, SQLCupomIt : TRxQuery; Valor_Entrada : Double; Reimpressao : String) ;
procedure GravarTabelaTempImpPreVenda(Terminal, PReVenda, IDCupom : string ; SQLPreVD, SQLPreVDIt : TRxQuery) ;
procedure InformaG(Texto:string) ;
procedure ProdutoNaoCadastrado ;
procedure GravarTabelaTempImpOrcamento(IDOrcamento : string ; SQLOrcamento, SQLOrcamentoItem : TRxQuery) ;
procedure GeraArquivoExternoParaImpOrcamento(IDOrcamento, CampoValorParcela, CampoDataVectoParcela : string ; SQLOrcamento, SQLOrcamentoItem, SQLParcelasVista, SQLParcelasPrazo : TRxQuery);
function  RetornaAliquotaICMSProduto(CodICMS : Integer) : Double;
function  RetornaNumerarioTipoPadrao(CodNumerario : string) : String ;
function  RetornaREDUCAOICMSProduto(CodICMS : Integer) : Double;
function  RetornaBaseIcmsProdutosVenda(Terminal  : Integer) : Double;
function  RetornaValorIcmsProdutosVenda(Terminal : Integer) : Double;
function  RetornaAliquotaMediaProduto(CodNCM, OrigemProduto : Integer) : Double;

implementation

uses DataModulo, UnitLibrary, TelaImpressaoPreVenda, TelaMensagem, TelaProdutoNaoEncontrado,
     TelaFechamentoVenda, TelaItens, DataModuloTemplate ;

function  RetornaAliquotaICMSProduto(CodICMS : Integer) : Double;
var
  ICMS : TQuery;
begin
  ICMS := TQuery.Create(DM);
  ICMS.DatabaseName := 'DB';
  ICMS.Close;
  ICMS.SQL.Clear;
  ICMS.SQL.ADD('SELECT ICMSN2ALIQUOTA FROM ICMS WHERE ICMSICOD = ' + IntToStr(CodICMS));
  ICMS.Open;
  if not ICMS.IsEmpty then
    begin
      if ICMS.FindField('ICMSN2ALIQUOTA').AsFloat > 0 then
        RetornaAliquotaICMSProduto := ICMS.FindField('ICMSN2ALIQUOTA').AsFloat
      else
        RetornaAliquotaICMSProduto := 0;
    end
  else
    RetornaAliquotaICMSProduto := 17;

  ICMS.Close;
  ICMS.Destroy;
end;

function RetornaBaseIcmsProdutosVenda(Terminal : Integer) : Double;
var
  BaseICMS : TQuery;
begin
  BaseICMS := TQuery.Create(DM);
  BaseICMS.DatabaseName := 'EASY_TEMP';
  BaseICMS.Close;
  BaseICMS.SQL.Clear;
  BaseICMS.SQL.ADD('SELECT SUM(BASEICMS) AS BASE FROM '+ TabelaMaisTerminal +' WHERE TERMICOD = ' + IntToStr(Terminal));
  BaseICMS.Open;
  if not BaseICMS.IsEmpty then
    begin
      if BaseICMS.FieldByName('BASE').AsFloat > 0 then
        RetornaBaseIcmsProdutosVenda := BaseICMS.FieldByName('BASE').AsFloat
      else
        RetornaBaseIcmsProdutosVenda := 0;
    end
  else
    RetornaBaseIcmsProdutosVenda := 0;

  BaseICMS.Close;
  BaseICMS.Destroy;
end;

function RetornaValorIcmsProdutosVenda(Terminal : Integer) : Double;
var
  ValorICMS : TQuery;
begin
  ValorICMS := TQuery.Create(DM);
  ValorICMS.DatabaseName := 'EASY_TEMP';
  ValorICMS.Close;
  ValorICMS.SQL.Clear;
  ValorICMS.SQL.ADD('SELECT SUM(VLRICMS) AS VLR FROM '+TabelaMaisTerminal+' WHERE TERMICOD = ' + IntToStr(Terminal));
  ValorICMS.Open;
  if not ValorICMS.IsEmpty then
    begin
      if ValorICMS.FieldByName('VLR').AsFloat > 0 then
        RetornaValorIcmsProdutosVenda := ValorICMS.FieldByName('VLR').AsFloat
      else
        RetornaValorIcmsProdutosVenda := 0;
    end
  else
    RetornaValorIcmsProdutosVenda := 0;

  ValorICMS.Close;
  ValorICMS.Destroy;
end;

function  RetornaREDUCAOICMSProduto(CodICMS : Integer) : Double;
var
  ICMS : TQuery;
begin
  ICMS := TQuery.Create(DM);
  ICMS.DatabaseName := 'DB';
  ICMS.Close;
  ICMS.SQL.Clear;
  ICMS.SQL.ADD('SELECT ICMSN2REDBASEICMS FROM ICMS WHERE ICMSICOD = ' + IntToStr(CodICMS));
  ICMS.Open;
  if not ICMS.IsEmpty then
    begin
      if ICMS.FindField('ICMSN2REDBASEICMS').AsFloat > 0 then
        RetornaREDUCAOICMSProduto := ICMS.FindField('ICMSN2REDBASEICMS').AsFloat
      else
        RetornaREDUCAOICMSProduto := 0
    end
  else
    RetornaREDUCAOICMSProduto := 0;

  ICMS.Close;
  ICMS.Destroy;
end;

function ConverteCodigo(Codigo :String):string;
var
  WCodEmpr,
  WCodTerm,
  WCod      : string;
  NumPonto,
  i         : integer ;
begin
  NumPonto := 0 ;
  for i := 0 to Length(Codigo) do
    if Codigo[i] = '.' then
      Inc(NumPonto) ;

  case NumPonto of
    1 : begin
          WCodEmpr := Copy(Codigo,1,Pos('.', Codigo)-1) ;
          case Length(WCodEmpr) of
            1 : WCodEmpr := '00' + WCodEmpr ;
            2 : WCodEmpr := '0' + WCodEmpr ;
          end ;

          WCod := Copy(Codigo,Pos('.', Codigo)+1,Length(Codigo)) ;
          case Length(WCod) of
            1 : WCod := '000000' + WCod ;
            2 : WCod := '00000' + WCod ;
            3 : WCod := '0000' + WCod ;
            4 : WCod := '000' + WCod ;
            5 : WCod := '00' + WCod ;
            6 : WCod := '0' + WCod ;
          end ;
          ConverteCodigo:= WCodEmpr + WCod ;
        end ;
    2 : begin
          WCod := Codigo ;

          WCodEmpr := Copy(Codigo,1,Pos('.', Codigo)-1) ;
          case Length(WCodEmpr) of
            1 : WCodEmpr := '00' + WCodEmpr ;
            2 : WCodEmpr := '0' + WCodEmpr ;
          end ;
          Delete(WCod, 1, Pos('.', WCod)) ;

          WCodTerm := Copy(WCod,1,Pos('.', WCod)-1) ;
          case Length(WCodTerm) of
            1 : WCodTerm := '00' + WCodTerm;
            2 : WCodTerm := '0' + WCodTerm;
          end ;
          Delete(WCod, 1, Pos('.', WCod)) ;

          case Length(WCod) of
            1 : WCod := '000000' + WCod ;
            2 : WCod := '00000' + WCod ;
            3 : WCod := '0000' + WCod ;
            4 : WCod := '000' + WCod ;
            5 : WCod := '00' + WCod ;
            6 : WCod := '0' + WCod ;
          end ;
          ConverteCodigo:= WCodEmpr + WCodTerm + WCod ;
        end ;
  end ;

end;

procedure GravarTabelaTempImpPreVendaDeCupom(IDCupom : string; SQLParcelasVistaVendaTemp, SQLParcelasPrazoVendaTemp, SQLCup , SQLCupomIt : TRxQuery; Valor_Entrada : Double; Reimpressao : String ) ;
var
  TargetPrinter, NumerarioPrazo : string ;
  TotDesc, TotConfissao, TotalTroca : Double;
begin
  while Application.FindComponent('FormTelaImpressaoPreVenda') <> nil do
    Application.ProcessMessages ;

  try
    DM.TblTicketPreVendaCab.Close;
  except
    Application.ProcessMessages;
  end;
  try
    DM.TblTicketPreVendaCab.DeleteTable;
  except
    Application.ProcessMessages;
  end ;

  try DM.TblTicketPreVendaCab.CreateTable except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaCab.Open except Application.ProcessMessages end ;

  try DM.TblTicketPreVendaItem.Close except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaItem.DeleteTable  except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaItem.CreateTable  except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaItem.Open except Application.ProcessMessages end ;

  try DM.TblTicketPreVendaFin.Close except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaFin.DeleteTable  except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaFin.CreateTable  except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaFin.Open  except Application.ProcessMessages end ;


  SQLCup.Close ;
  SQLCup.MacroByName('MFiltro').Value := 'CUPOA13ID = ''' + IDCupom + '''' ;
  SQLCup.Open ;
  if SQLCup.IsEmpty then
    begin
      Informa('Problemas ao Imprimir Pré-Venda!');
      Exit;
    end;
  //GRAVAR CABECALHO TICKET
  DM.TblTicketPreVendaCab.Open;
  if not DM.TblTicketPreVendaCab.IsEmpty then
    begin
      while not DM.TblTicketPreVendaCab.Eof do
        dm.TblTicketPreVendaCab.Delete;
    end;

  DM.TblTicketPreVendaCab.Append;
  DM.TblTicketPreVendaCabEmpresaEmit.Value        := SQLLocate('EMPRESA','EMPRICOD','EMPRA60NOMEFANT',EmpresaPadrao);
  DM.TblTicketPreVendaCabEmpresaEmit_Fone.Value   := SQLLocate('EMPRESA','EMPRICOD','EMPRA20FONE',EmpresaPadrao);
  DM.TblTicketPreVendaCabEmpresaEmit_Ender.Value  := SQLLocate('EMPRESA','EMPRICOD','EMPRA60END',EmpresaPadrao);

  DM.TblTicketPreVendaCabUsuarioVendaSTR.Value  := UsuarioAtualNome;
  DM.TblTicketPreVendaCabTERMICOD.Value         := TerminalAtual;
  DM.TblTicketPreVendaCabTerminal.Value         := TerminalAtualNome;
  DM.TblTicketPreVendaCabDataEmissao.Value      := SQLCup.FieldByName('CUPODEMIS').Value ;
  DM.TblTicketPreVendaCabTicketNumero.AsString  := SQLCup.FieldByName('CUPOA13ID').AsString ;
  DM.TblTicketPreVendaCabDisplayNumero.AsString := SQLCup.FieldByName('DISPICOD').AsString ;
  DM.TblTicketPreVendaCabVendedor.AsString      := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', SQLCup.FieldByName('VENDICOD').AsString) ;
  DM.TblTicketPreVendaCabPlano.AsString         := SQLLocate('PLANORECEBIMENTO', 'PLRCICOD', 'PLRCA60DESCR', SQLCup.FieldByName('PLRCICOD').AsString) ;
  DM.TblTicketPreVendaCabCliente.AsString       := SQLCup.FieldByName('CLIEA13ID').Value + ' ' +
                                                   SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '''' + SQLCup.FieldByName('CLIEA13ID').AsString + '''') ;

  if SQLCup.FieldByName('CLDPICOD').AsString <> '' then
    begin
      dm.sqltemplate.Close;
      dm.sqltemplate.sql.Clear;
      dm.sqltemplate.sql.Add('Select CLDPA60NOME from CLIENTEDEPENDENTE where CLIEA13ID='''+SQLCup.FieldByName('CLIEA13ID').AsString+''' and CLDPICOD='+SQLCup.FieldByName('CLDPICOD').AssTring);
      dm.sqltemplate.Open;
      if not dm.sqltemplate.IsEmpty then
        DM.TblTicketPreVendaCabClienteDependente.AsString := dm.SQLTemplate.fieldbyname('CLDPA60NOME').AsString;
    end;

  {Se Desc for maior q zero, é porque teve desconto direto nos produtos, entao tem q somar os dois campos}
  if SQLCup.FieldByName('CUPON2DESCITENS').Value > 0 then
    DM.TblTicketPreVendaCabTotalNominal.Value := SQLCup.FieldByName('CUPON2TOTITENS').Value + SQLCup.FieldByName('CUPON2DESCITENS').Value
  else
    DM.TblTicketPreVendaCabTotalNominal.Value := SQLCup.FieldByName('CUPON2TOTITENS').Value;

  DM.TblTicketPreVendaCabTaxaCrediario.Value    := 0 ;
  DM.TblTicketPreVendaCabAcrescimo.AsString     := SQLCup.FieldByName('CUPON2ACRESC').AsString ;
  DM.TblTicketPreVendaCabDesconto.AsString      := SQLCup.FieldByName('CUPON2DESC').AsString ;
  DM.TblTicketPreVendaCabTotalGeral.AsString    := SQLCup.FieldByName('CUPON2TOTITENS').Value -
                                                   SQLCup.FieldByName('CUPON2DESC').Value -
                                                   SQLCup.FieldByName('CUPON3BONUSTROCA').Value ;

  DM.TblTicketPreVendaCabVlrEntrada.Value      := Valor_Entrada;
  DM.TblTicketPreVendaCabTroco.AsString        := SQLCup.FieldByName('TROCO').AsString ;
  DM.TblTicketPreVendaCabTipoVenda.AsString    := SQLCup.FieldByName('CUPOCTIPOPADRAO').AsString ;
  DM.TblTicketPreVendaCabPEDIDOORCAMENTO.Value := 'PEDIDO';

  if Reimpressao = 'N' then
    begin
      DM.TblTicketPreVendaCabNomeClienteVenda.AsString      := NomeClienteVenda;
      DM.TblTicketPreVendaCabDocumentoClienteVenda.AsString := DocumentoClienteVenda;
      DM.TblTicketPreVendaCabEnderecoClienteVenda.AsString  := EnderecoClienteVenda;
      DM.TblTicketPreVendaCabBairroClienteVenda.AsString    := BairroClienteVenda;
      DM.TblTicketPreVendaCabCidadeClienteVenda.AsString    := CidadeClienteVenda;
      DM.TblTicketPreVendaCabFoneClienteVenda.AsString      := FoneClienteVenda;
      DM.TblTicketPreVendaCabOBSImpressaoCupom.AsString     := OBSImpressaoCupom;
      DM.TblTicketPreVendaCabPlacaVeiculo.AsString          := PlacaCliente;
    end
  else
    begin
      DM.TblTicketPreVendaCabNomeClienteVenda.AsString      := SQLCup.FieldByName('CLIENTENOME').AsString ;
      DM.TblTicketPreVendaCabDocumentoClienteVenda.AsString := SQLCup.FieldByName('CLIENTECNPJ').AsString ;
      DM.TblTicketPreVendaCabEnderecoClienteVenda.AsString  := SQLCup.FieldByName('CLIENTEENDE').AsString ;
      DM.TblTicketPreVendaCabBairroClienteVenda.AsString    := SQLCup.FieldByName('CLIENTEBAIRRO').AsString ;
      DM.TblTicketPreVendaCabCidadeClienteVenda.AsString    := SQLCup.FieldByName('CLIENTECIDA').AsString ;
      DM.TblTicketPreVendaCabFoneClienteVenda.AsString      := SQLCup.FieldByName('CLIENTEFONE').AsString ;
      DM.TblTicketPreVendaCabOBSImpressaoCupom.AsString     := SQLCup.FieldByName('CUPOV254OBS').AsString ;
      DM.TblTicketPreVendaCabPlacaVeiculo.AsString          := SQLCup.FieldByName('CUPOA8PLACAVEIC').AsString ;
    end;

  if DM.SQLConfigVenda.ParamByName('CFVECINFDADOVENDA').Value = 'S' then
    begin
      if DM.TblTicketPreVendaCabFoneClienteVenda.AsString = '' then
        DM.TblTicketPreVendaCabFoneCliente.Value   := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA15FONE1', '''' + SQLCup.FieldByName('CLIEA13ID').AsString + '''') ;
      DM.TblTicketPreVendaCabNroCreditCard.Value := SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA20NROCARTCRED', '''' + SQLCup.FieldByName('CLIEA13ID').AsString + '''') ;
      DM.TblTicketPreVendaCabMensagem2.Value     := MensagemVenda ;

      DM.TblTicketPreVendaCabTipoVenda.Value      := SQLLocate('TIPOVENDA', 'TPVDICOD', 'TPVDA60DESCR', IntToStr(TipoVenda)) ;
      DM.TblTicketPreVendaCabDataEntrega.AsString := DataEntregaVenda ;

      DM.TblTicketPreVendaCabPessoaRecebeNome.AsString  := 'Nome.... : ' + NomeClienteRec ;
      DM.TblTicketPreVendaCabPessoaRecebeEnder.AsString := 'Endereco.: ' + EnderecoClienteRec ;
      DM.TblTicketPreVendaCabPessoaRecebeBai.AsString   := 'Bairro...: ' + BairroCLienteRec ;
      DM.TblTicketPreVendaCabPessoaRecebeCid.AsString   := 'Cidade...: ' + CidadeClienteRec ;
      DM.TblTicketPreVendaCabPessoaRecebeUF.AsString    := EstadoClienteRec ;
      DM.TblTicketPreVendaCabPessoaRecebeFone.AsString  := 'Fone: ' + FoneClienteRec ;
    end ;

  DM.TblTicketPreVendaCabKM.AsString           := KmCliente;

  DM.TblTicketPreVendaCab.Post ;

  SQLCupomIt.Close ;
  SQLCupomIt.MacroByName('MFiltro').Value := 'CPITCSTATUS <> ''C'' and CUPOA13ID = ''' + IDCupom + '''' ;
  SQLCupomIt.Open ;

  DM.TblTicketPreVendaItem.Open;
  if not DM.TblTicketPreVendaItem.IsEmpty then
    begin
      while not DM.TblTicketPreVendaItem.Eof do
        dm.TblTicketPreVendaItem.delete;
    end;

  while not SQLCupomIt.EOF do
  begin
    DM.TblTicketPreVendaItem.Append ;
    DM.TblTicketPreVendaItemCodigo.Value        := SQLCupomIt.FieldbyName('PRODICOD').Value ;
    if SQLCupomIt.Fieldbyname('ADICIONAIS').ASSTRING <> '' Then
      DM.TblTicketPreVendaItemDescricao.Value   := SQLCupomIt.FieldbyName('PRODICOD').Value
    else
      DM.TblTicketPreVendaItemDescricao.Value   := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA60DESCR', SQLCupomIt.FieldbyName('PRODICOD').AsString) ;

    DM.TblTicketPreVendaItemComplemento.Value   := SQLCupomIt.FieldbyName('CPITTOBS').Value ;

    DM.TblTicketPreVendaItemUnidade.Value       := SQLLocate('UNIDADE', 'UNIDICOD', 'UNIDA5DESCR',SQLLocate('PRODUTO', 'PRODICOD', 'UNIDICOD', SQLCupomIt.FieldbyName('PRODICOD').AsString)) ;
    DM.TblTicketPreVendaItemMarca.Value         := SQLLocate('MARCA', 'MARCICOD', 'MARCA60DESCR',SQLLocate('PRODUTO', 'PRODICOD', 'MARCICOD', SQLCupomIt.FieldbyName('PRODICOD').AsString)) ; ;
    DM.TblTicketPreVendaItemReferencia.Value    := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA60REFER', SQLCupomIt.FieldbyName('PRODICOD').AsString) ;

    if SQLCupomIt.FieldbyName('CPITN3QTD').Value > 0 then
      begin
        DM.TblTicketPreVendaItemQuantidade.Value := SQLCupomIt.FieldbyName('CPITN3QTD').Value ;
        DM.TblTicketPreVendaItemTroca.Value      := 'N';
      end;
    if SQLCupomIt.FieldbyName('CPITN3QTDTROCA').Value > 0 then
      begin
        DM.TblTicketPreVendaItemQuantidade.Value := SQLCupomIt.FieldbyName('CPITN3QTDTROCA').Value ;
        DM.TblTicketPreVendaItemTroca.Value      := 'S';
      end;

    DM.TblTicketPreVendaItemValorUnitario.Value := SQLCupomIt.FieldbyName('CPITN3VLRUNIT').Value;
    DM.TblTicketPreVendaItemValorTotal.Value    := (SQLCupomIt.FieldbyName('CPITN3VLRUNIT').Value * SQLCupomIt.FieldbyName('CPITN3QTD').Value) -
                                                    SQLCupomIt.FieldbyName('CPITN2DESC').Value;
    DM.TblTicketPreVendaItemDesconto.Value      := SQLCupomIt.FieldbyName('CPITN2DESC').Value;

    if (DM.TblTicketPreVendaItemUnidade.Value='M3') and (SQLCupomIt.FieldbyName('M3_ESPESSURA').Value>0) and
       (SQLCupomIt.FieldbyName('M3_LARGURA').Value>0) and (SQLCupomIt.FieldbyName('M3_COMPRI').Value>0) then
      begin
        DM.TblTicketPreVendaItemDescricao.Value := DM.TblTicketPreVendaItemDescricao.Value                            + ' ('+
                                                   formatfloat('##0.00',SQLCupomIt.FieldbyName('M3_ESPESSURA').value) + 'X' +
                                                   formatfloat('##0.00',SQLCupomIt.FieldbyName('M3_LARGURA').value)   + 'X' +
                                                   formatfloat('##0.00',SQLCupomIt.FieldbyName('M3_COMPRI').value)    + ')' ;
      end;

    DM.TblTicketPreVendaItem.Post ;

    SQLCupomIt.Next ;
  end;

  // Lanca Numerarios A Vista
  DM.TblTicketPreVendaFin.Open;
  if not DM.TblTicketPreVendaFin.IsEmpty then
    begin
      while not DM.TblTicketPreVendaFin.Eof do
        dm.TblTicketPreVendaFin.Delete;
    end;

  dm.sqltemplate.Close;
  dm.sqltemplate.sql.Clear;
  dm.sqltemplate.sql.Add('Select * from CUPOMNUMERARIO where CUPOA13ID='''+SQLCup.FieldByName('CUPOA13ID').AsString+'''');
  dm.sqltemplate.Open;
  if not dm.sqltemplate.IsEmpty then
    begin
      dm.sqltemplate.First;
      while not dm.sqltemplate.EOF do
        begin
          dm.TblTicketPreVendaCab.Edit;
          dm.TblTicketPreVendaCabNumerarioPagto.Value := RetornaNumerario(dm.sqltemplate.fieldbyname('NUMEICOD').AsString);
          dm.TblTicketPreVendaCab.Post;

          dm.TblTicketPreVendaFin.Append;
          dm.TblTicketPreVendaFinPedICod.Value         := SQLCup.FieldByName('CUPOA13ID').AsString;
          dm.TblTicketPreVendaFinValor.AsVariant       := dm.sqltemplate.fieldbyname('CPNMN2VLR').AsVariant;
          dm.TblTicketPreVendaFinNumerario.Value       := RetornaNumerario(dm.sqltemplate.fieldbyname('NUMEICOD').AsString);
          dm.TblTicketPreVendaFinTipopadrao.Value      := RetornaNumerarioTipoPadrao(dm.sqltemplate.fieldbyname('NUMEICOD').AsString);
          dm.TblTicketPreVendaFinbonustroca.value      := dm.SQLLocate('NUMERARIO','NUMEICOD','NUMECBONUSTROCA',dm.sqltemplate.fieldbyname('NUMEICOD').AsString);
          dm.TblTicketPreVendaFinVencimento.Value      := Now;
          dm.TblTicketPreVendaFin.Post;
          dm.sqltemplate.Next ;
        end;
    end;

  // Lanca Numerarios A Prazo
  dm.sqltemplate.Close;
  dm.sqltemplate.sql.Clear;
  dm.sqltemplate.sql.Add('Select * from CONTASRECEBER where CUPOA13ID='''+SQLCup.FieldByName('CUPOA13ID').AsString+'''');
  dm.sqltemplate.Open;
  if not dm.sqltemplate.IsEmpty then
    begin
      dm.sqltemplate.First ;
      while not dm.sqltemplate.EOF do
        begin
          DM.TblTicketPreVendaFin.Append;
          DM.TblTicketPreVendaFinPedICod.Value         := SQLCup.FieldByName('CUPOA13ID').AsString;
          DM.TblTicketPreVendaFinValor.AsVariant       := dm.sqltemplate.fieldbyname('CTRCN2VLR').AsVariant;
          DM.TblTicketPreVendaFinVencimento.AsVariant  := dm.sqltemplate.fieldbyname('CTRCDVENC').AsVariant;
          DM.TblTicketPreVendaFinNumerario.Value       := RetornaNumerario(dm.sqltemplate.fieldbyname('NUMEICOD').AsString);
          DM.TblTicketPreVendaFinTipoPadrao.value      := dm.sqltemplate.fieldbyname('CTRCA5TIPOPADRAO').AsString;
          dm.TblTicketPreVendaFinbonustroca.value      := dm.SQLLocate('NUMERARIO','NUMEICOD','NUMECBONUSTROCA',dm.sqltemplate.fieldbyname('NUMEICOD').AsString);
          DM.TblTicketPreVendaFin.Post;
          dm.sqltemplate.Next ;
        end;
    end;

  if DM.TblTicketPreVendaCab.Active then DM.TblTicketPreVendaCab.Close;
  if DM.TblTicketPreVendaItem.Active then DM.TblTicketPreVendaItem.Close;
  if DM.TblTicketPreVendaFin.Active then DM.TblTicketPreVendaFin.Close;
  if SQLCup.Active then SQLCup.Close;
  if SQLCupomIt.Active then SQLCupomIt.Close;

  if (DM.SQLTerminalAtivo.ParamByName('TERMCIMPPREVENDA').Value = 'S') then
    begin
      Application.CreateForm(TFormTelaImpressaoPreVenda, FormTelaImpressaoPreVenda);
      FormTelaImpressaoPreVenda.ImprimeClick(Nil);
    end ;
end ;

procedure GravarTabelaTempImpPreVenda(Terminal, PReVenda, IDCupom : string ; SQLPreVD, SQLPreVDIt : TRxQuery) ;
var
  CodEnaPreV,
  ClieCod,
  TermCod,
  PrvCod  : String ;
  Acresc,
  Desco   : double ;
begin
  while Application.FindComponent('FormTelaImpressaoPreVenda') <> nil do
    Application.ProcessMessages ;

  try DM.TblTicketPreVendaCab.Close except Application.ProcessMessages end;
  try DM.TblTicketPreVendaCab.DeleteTable except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaCab.CreateTable except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaCab.Open except Application.ProcessMessages end ;

  try DM.TblTicketPreVendaItem.Close except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaItem.DeleteTable  except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaItem.CreateTable  except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaItem.Open except Application.ProcessMessages end ;

  try DM.TblTicketPreVendaFin.Close except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaFin.DeleteTable  except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaFin.CreateTable  except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaFin.Open  except Application.ProcessMessages end ;

  SQLPreVD.Close ;
  SQLPreVD.MacroByName('MFiltro').Value := 'TERMICOD = ' + Terminal + ' and PRVDICOD = ' + PReVenda ;
  SQLPreVD.Open ;
  if SQLPreVD.IsEmpty then
    begin
      Informa('Problemas ao imprimir pré-venda!');
      Exit;
    end;
  //GRAVAR CABECALHO TICKET
  if not DM.TblTicketPreVendaCab.IsEmpty then
    begin
      while not DM.TblTicketPreVendaCab.Eof do
        dm.TblTicketPreVendaCab.Delete;
    end;

  CodEnaPreV := FormatFloat('000', DM.SQLEmpresaEMPRICOD.AsFloat) ;
  CodEnaPreV := CodEnaPreV + FormatFloat('000000000', SQLPreVD.FieldByName('PRVDICOD').AsFloat) ;
  CodEnaPreV := CodEnaPreV + DigitVerifEAN(CodEnaPreV) ;


  DM.TblTicketPreVendaCab.Append ;

  DM.TblTicketPreVendaCabEmpresaEmit.Value        := SQLLocate('EMPRESA','EMPRICOD','EMPRA60NOMEFANT',EmpresaPadrao);
  DM.TblTicketPreVendaCabEmpresaEmit_Fone.Value   := SQLLocate('EMPRESA','EMPRICOD','EMPRA20FONE',EmpresaPadrao);
  DM.TblTicketPreVendaCabEmpresaEmit_Ender.Value  := SQLLocate('EMPRESA','EMPRICOD','EMPRA60END',EmpresaPadrao);

  DM.TblTicketPreVendaCabTicketNumero.AsString     := CodEnaPreV ;
  DM.TblTicketPreVendaCabTERMICOD.Value            := TerminalAtual;
  DM.TblTicketPreVendaCabPEDIDOORCAMENTO.AsString  := 'PRE-VENDA' ;

  DM.TblTicketPreVendaCabVendedor.AsString      := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', SQLPreVD.FieldByName('VENDICOD').AsString) ;
  DM.TblTicketPreVendaCabPlano.AsString         := SQLLocate('PLANORECEBIMENTO', 'PLRCICOD', 'PLRCA60DESCR', SQLPreVD.FieldByName('PLRCICOD').AsString) ;
  DM.TblTicketPreVendaCabCliente.AsString       := SQLPreVD.FieldByName('CLIEA13ID').Value + ' ' +
                                                   SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '''' + SQLPreVD.FieldByName('CLIEA13ID').AsString + '''') ;

  DM.TblTicketPreVendaCabTotalNominal.AsString  := SQLPreVD.FieldByName('PRVDN2TOTITENS').Value -
                                                   SQLPreVD.FieldByName('PRVDN2ACRESC').Value +
                                                   SQLPreVD.FieldByName('PRVDN2DESC').Value ;

  DM.TblTicketPreVendaCabTaxaCrediario.Value    := 0 ;
  DM.TblTicketPreVendaCabAcrescimo.AsString     := SQLPreVD.FieldByName('PRVDN2ACRESC').AsString ;
  DM.TblTicketPreVendaCabDesconto.AsString      := SQLPreVD.FieldByName('PRVDN2DESC').AsString ;
  DM.TblTicketPreVendaCabTotalGeral.AsString    := SQLPreVD.FieldByName('PRVDN2TOTITENS').Value ;
  DM.TblTicketPreVendaCabPRVDICOD.AsString      := SQLPreVD.FieldByName('PRVDICOD').Value ;
  DM.TblTicketPreVendaCabTERMICOD.AsString      := SQLPreVD.FieldByName('TERMICOD').Value ;
  DM.TblTicketPreVendaCabClienteDependente.AsString  := SQLPreVD.FieldByName('CLDPICOD').AssTring ;

  if NomeClienteVenda <> '' then
    DM.TblTicketPreVendaCabNomeClienteVenda.AsString      := NomeClienteVenda
  else
    DM.TblTicketPreVendaCabNomeClienteVenda.AsString      := SQLPreVD.FieldByName('CLIENTENOME').AsString ;
  if DocumentoClienteVenda <> '' then
    DM.TblTicketPreVendaCabDocumentoClienteVenda.AsString := DocumentoClienteVenda
  else
    DM.TblTicketPreVendaCabDocumentoClienteVenda.AsString := SQLPreVD.FieldByName('CLIENTECNPJ').AsString ;
  if EnderecoClienteVenda <> '' then
    DM.TblTicketPreVendaCabEnderecoClienteVenda.AsString  := EnderecoClienteVenda
  else
    DM.TblTicketPreVendaCabEnderecoClienteVenda.AsString  := SQLPreVD.FieldByName('CLIENTEENDE').AsString ;
  if CidadeClienteVenda <> '' then
    DM.TblTicketPreVendaCabCidadeClienteVenda.AsString    := CidadeClienteVenda
  else
    DM.TblTicketPreVendaCabCidadeClienteVenda.AsString    := SQLPreVD.FieldByName('CLIENTECIDA').AsString ;
  if FoneClienteVenda <> '' then
    DM.TblTicketPreVendaCabFoneClienteVenda.AsString      := FoneClienteVenda
  else
    DM.TblTicketPreVendaCabCidadeClienteVenda.AsString    := SQLPreVD.FieldByName('CLIENTEFONE').AsString ;
  if OBSImpressaoCupom <> '' then
    DM.TblTicketPreVendaCabOBSImpressaoCupom.AsString     := OBSImpressaoCupom
  else
    DM.TblTicketPreVendaCabOBSImpressaoCupom.AsString     := SQLPreVD.FieldByName('CLIENTEOBS').AsString ;

  DM.TblTicketPreVendaCabDataEmissao.Value := SQLPreVD.FieldByName('PDVDDHVENDA').Value;
  DM.TblTicketPreVendaCabTipoVenda.AsString   := TipoPadrao;
  DM.TblTicketPreVendaCab.Post ;

  if not DM.TblTicketPreVendaItem.IsEmpty then
    begin
      while not DM.TblTicketPreVendaItem.Eof do
        dm.TblTicketPreVendaItem.Delete;
    end;

  SQLPreVDIt.Close ;
  SQLPreVDIt.MacroByName('MFiltro').Value := 'TERMICOD = ' + Terminal + ' and PRVDICOD = ' + PReVenda + ' and PVITCSTATUS <> ''C'' ';
  SQLPreVDIt.Open ;
  Desco := 0;
  while not SQLPreVDIt.EOF do
  begin
    DM.TblTicketPreVendaItem.Append ;
    DM.TblTicketPreVendaItemCodigo.Value        := SQLPreVDIt.FieldbyName('PRODICOD').Value ;
    DM.TblTicketPreVendaItemReferencia.Value    := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA60REFER', SQLPreVDIt.FieldbyName('PRODICOD').AsString) ;
    DM.TblTicketPreVendaItemDescricao.Value     := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA60DESCR', SQLPreVDIt.FieldbyName('PRODICOD').AsString) ;
    DM.TblTicketPreVendaItemUnidade.Value       := SQLLocate('UNIDADE', 'UNIDICOD', 'UNIDA5DESCR',SQLLocate('PRODUTO', 'PRODICOD', 'UNIDICOD', SQLPreVDIt.FieldbyName('PRODICOD').AsString)) ;
    DM.TblTicketPreVendaItemMarca.Value         := SQLLocate('MARCA', 'MARCICOD', 'MARCA60DESCR', SQLLocate('PRODUTO', 'PRODICOD', 'MARCICOD', SQLPreVDIt.FieldbyName('PRODICOD').AsString)) ;
    // Testa se é item de normal ou de troca
    if SQLPreVDIt.FieldbyName('PVITN3QTD').Value > 0 then
      begin
        DM.TblTicketPreVendaItemQuantidade.Value    :=  SQLPreVDIt.FieldbyName('PVITN3QTD').Value ;
        DM.TblTicketPreVendaItemValorUnitario.Value :=  SQLPreVDIt.FieldbyName('PVITN3VLRUNIT').Value ;
        DM.TblTicketPreVendaItemValorTotal.Value    := (SQLPreVDIt.FieldbyName('PVITN3VLRUNIT').Value  * SQLPreVDIt.FieldbyName('PVITN3QTD').Value) -SQLPreVDIt.FieldbyName('PVITN2DESC').Value;
        DM.TblTicketPreVendaItemTroca.Value         := 'N';
      end
    else
      begin
        DM.TblTicketPreVendaItemQuantidade.Value    :=  SQLPreVDIt.FieldbyName('PVITN3QTDTROCA').Value ;
        DM.TblTicketPreVendaItemValorUnitario.Value :=  SQLPreVDIt.FieldbyName('PVITN3VLRUNIT').Value ;
        DM.TblTicketPreVendaItemValorTotal.Value    := (SQLPreVDIt.FieldbyName('PVITN3VLRUNIT').Value  * SQLPreVDIt.FieldbyName('PVITN3QTDTROCA').Value) - SQLPreVDIt.FieldbyName('PVITN2DESC').Value ;
        DM.TblTicketPreVendaItemTroca.Value         := 'S';
      end;
    DM.TblTicketPreVendaItemDesconto.Value      := SQLPreVDIt.FieldbyName('PVITN2DESC').Value ;

    if (DM.TblTicketPreVendaItemUnidade.Value='M3') and (SQLPreVDIt.FieldbyName('M3_ESPESSURA').Value>0) and
       (SQLPreVDIt.FieldbyName('M3_LARGURA').Value>0) and (SQLPreVDIt.FieldbyName('M3_COMPRI').Value>0) then
      begin
        DM.TblTicketPreVendaItemDescricao.Value := DM.TblTicketPreVendaItemDescricao.Value                            + ' ('+
                                                   formatfloat('##0.00',SQLPreVDIt.FieldbyName('M3_ESPESSURA').value) + 'X' +
                                                   formatfloat('##0.00',SQLPreVDIt.FieldbyName('M3_LARGURA').value)   + 'X' +
                                                   formatfloat('##0.00',SQLPreVDIt.FieldbyName('M3_COMPRI').value)    + ')' ;
      end;

    DM.TblTicketPreVendaItemComplemento.Value   := SQLPreVDIt.FieldbyName('PVITTOBS').Value ;
    DM.TblTicketPreVendaItem.Post ;
    Desco := Desco + SQLPreVDIt.FieldbyName('PVITN2DESC').Value ;
    SQLPreVDIt.Next ;
  end;

  {Grava Total desconto nos itens na coluna Desconto do Cabecalho}
  if Desco > 0 then
    begin
      DM.TblTicketPreVendaCab.Edit;
      DM.TblTicketPreVendaCabTotalNominal.Value := DM.TblTicketPreVendaCabTotalNominal.Value + Desco;
      DM.TblTicketPreVendaCab.Post;
    end;

  // Lanca Numerarios A Vista
  DM.TblTicketPreVendaFin.Open;
  if not DM.TblTicketPreVendaFin.IsEmpty then
    begin
      while not DM.TblTicketPreVendaFin.Eof do
        dm.TblTicketPreVendaFin.Delete;
    end;

  try DM.TblTicketPreVendaCab.Close ; except Application.ProcessMessages end;
  try DM.TblTicketPreVendaItem.Close ; except Application.ProcessMessages end;
  try DM.TblTicketPreVendaFin.Close ; except Application.ProcessMessages end;

  if (DM.SQLTerminalAtivo.ParamByName('TERMCIMPPREVENDA').Value = 'S') and
     (DM.SQLConfigVenda.ParamByName('CFVECINFDADOVENDA').Value <> 'S') and
     (DM.SQLTerminalAtivo.ParamByName('TERMA60IMPPEDIDO').AsString <> '') then
  begin
    Application.CreateForm(TFormTelaImpressaoPreVenda, FormTelaImpressaoPreVenda) ;
    FormTelaImpressaoPreVenda.ImprimeClick(Nil) ;
  end ;
end ;

procedure GravarTabelaTempImpOrcamento(IDOrcamento : string ; SQLOrcamento, SQLOrcamentoItem : TRxQuery) ;
begin
  while Application.FindComponent('FormTelaImpressaoPreVenda') <> nil do
    Application.ProcessMessages ;

  DM.TblTicketPreVendaCab.Close ;
  try DM.TblTicketPreVendaCab.DeleteTable ; except Application.ProcessMessages end ;
  DM.TblTicketPreVendaCab.CreateTable ;
  DM.TblTicketPreVendaCab.Open ;

  DM.TblTicketPreVendaItem.Close ;
  try DM.TblTicketPreVendaItem.DeleteTable ; except Application.ProcessMessages end ;
  DM.TblTicketPreVendaItem.CreateTable ;
  DM.TblTicketPreVendaItem.Open ;

  try DM.TblTicketPreVendaFin.Close except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaFin.DeleteTable  except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaFin.CreateTable  except Application.ProcessMessages end ;
  try DM.TblTicketPreVendaFin.Open  except Application.ProcessMessages end ;
  
  // Lanca Numerarios A Vista
  DM.TblTicketPreVendaFin.Open;
  if not DM.TblTicketPreVendaFin.IsEmpty then
    begin
      while not DM.TblTicketPreVendaFin.Eof do
        dm.TblTicketPreVendaFin.Delete;
    end;

  SQLOrcamento.Close ;
  SQLOrcamento.MacroByName('MFiltro').Value := 'PDVDA13ID = ''' + IDOrcamento  + '''';
  SQLOrcamento.Open ;
  if SQLOrcamento.IsEmpty then
    begin
      Informa('Problemas ao imprimir Orçamento!');
      Exit;
    end;

  if not DM.TblTicketPreVendaCab.IsEmpty then
    begin
      while not DM.TblTicketPreVendaCab.Eof do
        dm.TblTicketPreVendaCab.Delete;
    end;

  //GRAVAR CABECALHO TICKET
  DM.TblTicketPreVendaCab.Append ;
  DM.TblTicketPreVendaCabEmpresaEmit.Value         := SQLLocate('EMPRESA','EMPRICOD','EMPRA60NOMEFANT',EmpresaPadrao);
  DM.TblTicketPreVendaCabEmpresaEmit_Ender.Value   := SQLLocate('EMPRESA','EMPRICOD','EMPRA60END',EmpresaPadrao);
  DM.TblTicketPreVendaCabEmpresaEmit_Fone.Value    := SQLLocate('EMPRESA','EMPRICOD','EMPRA20FONE',EmpresaPadrao);

  DM.TblTicketPreVendaCabTicketNumero.AsString     := SQLOrcamento.FieldByName('PDVDA13ID').AsString;
  DM.TblTicketPreVendaCabDataEmissao.Value         := SQLOrcamento.FieldByName('PDVDDEMISSAO').Value;
  DM.TblTicketPreVendaCabPEDIDOORCAMENTO.AsString  := 'ORCAMENTO';
  DM.TblTicketPreVendaCabUsuarioVendaSTR.Value     := UsuarioAtualNome;
  DM.TblTicketPreVendaCabTERMICOD.Value            := TerminalAtual;

  DM.TblTicketPreVendaCabVendedor.AsString         := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', SQLOrcamento.FieldByName('VENDICOD').AsString) ;
  DM.TblTicketPreVendaCabPlano.AsString            := SQLLocate('PLANORECEBIMENTO', 'PLRCICOD', 'PLRCA60DESCR', SQLOrcamento.FieldByName('PLRCICOD').AsString) ;
  DM.TblTicketPreVendaCabCliente.AsString          := SQLOrcamento.FieldByName('CLIEA13ID').Value + ' ' +
                                                      SQLLocate('CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC', '''' + SQLOrcamento.FieldByName('CLIEA13ID').AsString + '''') ;
  DM.TblTicketPreVendaCabTotalNominal.AsFloat      := SQLOrcamento.FieldByName('PDVDN2TOTPROD').AsFloat +
                                                      SQLOrcamento.FieldByName('PDVDN2VLRDESC').AsFloat +
                                                      SQLOrcamento.FieldByName('PDVDN2VLRDESCPROM').AsFloat -
                                                      SQLOrcamento.FieldByName('PDVDN2VLRFRETE').AsFloat;
  DM.TblTicketPreVendaCabTaxaCrediario.Value       := 0;
  DM.TblTicketPreVendaCabAcrescimo.AsFloat         := 0;
  DM.TblTicketPreVendaCabDesconto.Value            := SQLOrcamento.FieldByName('PDVDN2VLRDESC').Value + SQLOrcamento.FieldByName('PDVDN2VLRDESCPROM').value;
  DM.TblTicketPreVendaCabTotalGeral.Value          := SQLOrcamento.FieldByName('PDVDN2TOTPED').Value ;
  DM.TblTicketPreVendaCabMensagem.AsString         := SQLOrcamento.FieldByName('PDVDTOBS').AsString;

  DM.TblTicketPreVendaCabNomeClienteVenda.AsString      := NomeClienteVenda;
  DM.TblTicketPreVendaCabDocumentoClienteVenda.AsString := DocumentoClienteVenda;
  DM.TblTicketPreVendaCabEnderecoClienteVenda.AsString  := EnderecoClienteVenda;
  DM.TblTicketPreVendaCabCidadeClienteVenda.AsString    := CidadeClienteVenda;
  DM.TblTicketPreVendaCabFoneCliente.AsString           := FoneClienteVenda;
  DM.TblTicketPreVendaCabOBSImpressaoCupom.AsString     := OBSImpressaoCupom;

  DM.TblTicketPreVendaCab.Post ;

  if not DM.TblTicketPreVendaItem.IsEmpty then
    begin
      while not DM.TblTicketPreVendaItem.Eof do
        dm.TblTicketPreVendaItem.Delete;
    end;

  SQLOrcamentoItem.Close ;
  SQLOrcamentoItem.MacroByName('MFiltro').Value := 'PDVDA13ID = ''' + IDOrcamento + '''';
  SQLOrcamentoItem.Open ;
  // Itens
  while not SQLOrcamentoItem.EOF do
  begin
    DM.TblTicketPreVendaItem.Append ;
    DM.TblTicketPreVendaItemCodigo.Value        := SQLOrcamentoItem.FieldbyName('PRODICOD').Value ;
    DM.TblTicketPreVendaItemDescricao.Value     := SQLLocate('PRODUTO', 'PRODICOD', 'PRODA60DESCR', SQLOrcamentoItem.FieldbyName('PRODICOD').AsString) ;
    DM.TblTicketPreVendaItemMarca.Value         := '' ;
    DM.TblTicketPreVendaItemReferencia.Value    := '' ;
    DM.TblTicketPreVendaItemQuantidade.Value    := SQLOrcamentoItem.FieldbyName('PVITN3QUANT').Value ;
    DM.TblTicketPreVendaItemValorUnitario.Value := SQLOrcamentoItem.FieldbyName('PVITN2VLRUNIT').Value ;
    DM.TblTicketPreVendaItemDesconto.Value      := SQLOrcamentoItem.FieldbyName('PVITN2VLRDESC').Value ;
    DM.TblTicketPreVendaItemValorTotal.Value    := (SQLOrcamentoItem.FieldbyName('PVITN2VLRUNIT').Value-SQLOrcamentoItem.FieldbyName('PVITN2VLRDESC').Value)* SQLOrcamentoItem.FieldbyName('PVITN3QUANT').Value ;
    DM.TblTicketPreVendaItemComplemento.Value   := SQLOrcamentoItem.FieldbyName('PDVDA60OBS').Value ;
    DM.TblTicketPreVendaItem.Post ;
    SQLOrcamentoItem.Next ;
  end;
  DM.TblTicketPreVendaCab.Close ;
  DM.TblTicketPreVendaItem.Close ;
end ;

procedure InformaG(Texto:string) ;
begin
  Beep ;
  Application.CreateForm(TFormTelaMensagem, FormTelaMensagem) ;
  FormTelaMensagem.LblMsg.Caption := Texto ;
  FormTelaMensagem.LblMsg.Refresh ;
  FormTelaMensagem.ShowModal ;
  FormTelaMensagem.BringToFront;
end ;

procedure ProdutoNaoCadastrado ;
begin
  Application.CreateForm(TFormTelaProdutoNaoEncontrado, FormTelaProdutoNaoEncontrado) ;
  FormTelaProdutoNaoEncontrado.ShowModal ;
  FormTelaProdutoNaoEncontrado.BringToFront;
end ;

procedure GeraArquivoExternoParaImpOrcamento(IDOrcamento, CampoValorParcela, CampoDataVectoParcela : string ; SQLOrcamento, SQLOrcamentoItem, SQLParcelasVista, SQLParcelasPrazo : TRxQuery);
begin
  if not SQLOrcamento.Active then SQLOrcamento.Open;
  SQLOrcamento.Close ;
  SQLOrcamento.MacroByName('MFiltro').Value := 'PDVDA13ID = ''' + IDOrcamento  + '''';
  SQLOrcamento.Open ;
  if SQLOrcamento.IsEmpty then
    begin
      Informa('Problemas ao imprimir Orçamento!');
      Exit;
    end;
  //GRAVAR CABECALHO TICKET
  DM.TblPedidoCab.Close;
  try
    DM.TblPedidoCab.DeleteTable;
    DM.TblPedidoCab.CreateTable;
  except
    DM.TblPedidoCab.CreateTable;
  end;
  DM.TblPedidoCab.AddIndex('Primario','PedICod',[ixPrimary]);
  DM.TblPedidoCab.Open;
  DM.TblPedidoCab.Append;
  If SQLOrcamento.FieldByName('PDVDCTIPO').asString = 'P' Then
    DM.TblPedidoCabPEDIDOORCAMENTO.AsString         := 'PEDIDO NRO:'
  Else
    DM.TblPedidoCabPEDIDOORCAMENTO.AsString         := 'ORÇAMENTO NRO:';
  DM.TblPedidoCabPedICod.AsString                := SQLOrcamento.FieldByName('PDVDA13ID').AsString;
  DM.TblPedidoCabEmitente_Nome.asString          := DM.SQLEmpresaEMPRA60NOMEFANT.AsString;
  DM.TblPedidoCabEmitente_Ender.asString         := DM.SQLEmpresaEMPRA60END.asString;
  DM.TblPedidoCabEmitente_Bairro.asString        := DM.SQLEmpresaEMPRA60BAI.asString;
  DM.TblPedidoCabEmitente_Cidade.asString        := DM.SQLEmpresaEMPRA60CID.asString;
  DM.TblPedidoCabEmitente_UF.asString            := DM.SQLEmpresaEMPRA2UF.asString;
  DM.TblPedidoCabEmitente_CGC.asString           := DM.SQLEmpresaEMPRA14CGC.asString;
  DM.TblPedidoCabEmitente_IE.asString            := DM.SQLEmpresaEMPRA20IE.asString;
  DM.TblPedidoCabEmitente_Fone.asString          := Dm.SQLEmpresaEMPRA20FONE.asString;
  DM.TblPedidoCabDtEmissao.Value                 := SQLOrcamento.FieldByName('PDVDDEMISSAO').Value;
  if DM.ProcuraRegistro('CLIENTE',['CLIEA13ID'],[SQLOrcamento.FieldByName('CLIEA13ID').Value],1) then
    begin
      DM.TblPedidoCabDestinatario_Nome.asString      := DM.SQLTemplate.FieldByName('CLIEA60RAZAOSOC').AsString;
      DM.TblPedidoCabDestinatario_Endereco.asString  := DM.SQLTemplate.FieldByName('CLIEA60ENDRES').AsString;
      DM.TblPedidoCabDestinatario_Bairro.asString    := DM.SQLTemplate.FieldByName('CLIEA60BAIRES').AsString;
      DM.TblPedidoCabDestinatario_Cep.asString       := DM.SQLTemplate.FieldByName('CLIEA8CEPRES').AsString;
      DM.TblPedidoCabDestinatario_Cidade.asString    := DM.SQLTemplate.FieldByName('CLIEA60CIDRES').AsString;
      DM.TblPedidoCabDestinatario_UF.asString        := DM.SQLTemplate.FieldByName('CLIEA2UFRES').AsString;
      DM.TblPedidoCabDestinatario_CpfCgc.asString    := DM.SQLTemplate.FieldByName('CLIEA11CPF').AsString;
      DM.TblPedidoCabDestinatario_IE.asString        := DM.SQLTemplate.FieldByName('CLIEA20IE').AsString;
      DM.TblPedidoCabDestinatario_Fone.asString      := DM.SQLTemplate.FieldByName('CLIEA15FONE1').AsString;
      DM.TblPedidoCabDestinatario_Fone2.AsString     := DM.SQLTemplate.FieldByName('CLIEA15FONE2').AsString;
      DM.TblPedidoCabDestinatario_Fax.asString       := DM.SQLTemplate.FieldByName('CLIEA15FAX').AsString;
    end;
//  DM.TblPedidoCabTransp.asString                 := SQLTemplateTransportadoraLookUp.asString;
//  DM.TblPedidoCabDtaEntrega.asVariant            := SQLTemplatePDVDDENTREGA.asVariant;
//  DM.TblPedidoCabComprador.asString              := SQLTemplatePDVDA30COMPRADOR.asString;
//  DM.TblPedidoCabOrdemCompra.asString            := SQLTemplatePDVDA30NROPEDCOMP.asString;
//  DM.TblPedidoCabPlano.asString                  := SQLTemplatePlanoRecebimentoLookUp.asString;
//  If SQLTemplatePDVDCTIPOFRETE.asString='C' Then
//    DM.TblPedidoCabTipoFrete.asString   := '1'
//  Else
//    DM.TblPedidoCabTipoFrete.asString   := '2';
  DM.TblPedidoCabValorFrete.Value                := SQLOrcamento.FieldByName('PDVDN2VLRFRETE').AsFloat;
  DM.TblPedidoCabTotalDesconto.Value             := SQLOrcamento.FieldByName('PDVDN2VLRDESC').AsFloat + SQLOrcamento.FieldByName('PDVDN2VLRDESCPROM').AsFloat;
  DM.TblPedidoCabTotal.Value                     := SQLOrcamento.FieldByName('PDVDN2TOTPROD').AsFloat;
  DM.TblPedidoCabObservacoes.asString            := SQLOrcamento.FieldByName('PDVDTOBS').asString;
  DM.TblPedidoCabVendedor.asString               := SQLLocate('VENDEDOR', 'VENDICOD', 'VENDA60NOME', SQLOrcamento.FieldByName('VENDICOD').AsString);
//  DM.TblPedidoCabEmail.asString                  := AnsiLowerCase(SQLTemplateVendedorEmailLookUp.asString);
  DM.TblPedidoCabEmitente_Email.AsString         := LowerCase(DM.SQLEmpresaEMPRA60EMAIL.AsString);
  DM.TblPedidoCabEmitente_URL.AsString           := LowerCase(DM.SQLEmpresaEMPRA60URL.AsString);
  DM.TblPedidoCabEmitenteLogo.AsVariant          := DM.SQLEmpresaEMPRBLOGOTIPO.AsVariant;
  DM.TblPedidoCab.Post;
  DM.TblPedidoCab.Close;

  If DM.TblPedidoItens.Exists Then
    DM.TblPedidoItens.DeleteTable;
  DM.TblPedidoItens.CreateTable;
  DM.TblPedidoItens.Open;

  SQLOrcamentoItem.Close ;
  SQLOrcamentoItem.MacroByName('MFiltro').Value := 'PDVDA13ID = ''' + IDOrcamento + '''';
  SQLOrcamentoItem.Open ;
  if not SQLOrcamentoItem.Active then SQLOrcamentoItem.Open;
  // Itens
  While Not SQLOrcamentoItem.Eof Do
    Begin
      DM.TblPedidoItens.Append;
      DM.TblPedidoItensVlrUnitario.Value := SQLOrcamentoItem.FieldbyName('PVITN2VLRUNIT').Value;
      DM.TblPedidoItensVlrTotal.Value    := (SQLOrcamentoItem.FieldbyName('PVITN2VLRUNIT').Value) *
                                             SQLOrcamentoItem.FieldbyName('PVITN3QUANT').Value ;

      DM.TblPedidoItensUn.Value          := '';
      DM.TblPedidoItensQtd1.Value        := SQLOrcamentoItem.FieldbyName('PVITN3QUANT').Value;
      DM.TblPedidoItensPedICod.Value     := SQLOrcamentoItem.FieldbyName('PDVDA13ID').Value;
      DM.TblPedidoItensDescricao.Value   := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLOrcamentoItem.FieldbyName('PRODICOD').AsString);
      DM.TblPedidoItensReferencia.Value  := SQLLocate('PRODUTO','PRODICOD','PRODA60REFER',SQLOrcamentoItem.FieldbyName('PRODICOD').AsString);
      DM.TblPedidoItensCodigo.Value      := SQLOrcamentoItem.FieldbyName('PRODICOD').AsInteger;
      DM.TblPedidoItens.Post;
      SQLOrcamentoItem.Next;
    End;

  DM.TblPedidoItens.Close;
  SQLOrcamentoItem.Close;

    DM.TblPedidoFinan.Close;
  try
    DM.TblPedidoFinan.DeleteTable;
    DM.TblPedidoFinan.CreateTable;
  except
    DM.TblPedidoFinan.CreateTable;
  end;

  DM.TblPedidoFinan.Open;

  if SQLParcelasVista <> nil then
    begin
      if not SQLParcelasVista.Active then SQLParcelasVista.Open;
      SQLParcelasVista.First;
      While not SQLParcelasVista.Eof do
        begin
          DM.TblPedidoFinan.Append;
          DM.TblPedidoFinanPedICod.Value    := IDOrcamento;
          DM.TblPedidoFinanValor.Value      := SQLParcelasVista.FieldByName('VALORPARC').Value;
          DM.TblPedidoFinanVencimento.Value := Date;
          DM.TblPedidoFinan.Post;
          SQLParcelasVista.Next;
        end;
    end;

  if SQLParcelasPrazo <> nil then
    begin
      SQLParcelasPrazo.First;
      if not SQLParcelasPrazo.Active then SQLParcelasPrazo.Open; 
      While not SQLParcelasPrazo.Eof do
        begin
          DM.TblPedidoFinan.Append;
          DM.TblPedidoFinanPedICod.Value    := IDOrcamento;
          DM.TblPedidoFinanValor.Value      := SQLParcelasPrazo.FieldByName(CampoValorParcela).Value;
          DM.TblPedidoFinanVencimento.Value := SQLParcelasPrazo.FieldByName(CampoDataVectoParcela).Value;
          DM.TblPedidoFinan.Post;
          SQLParcelasPrazo.Next;
        end;
    end;
  DM.TblPedidoFinan.Close;
end;

function  RetornaAliquotaMediaProduto(CodNCM, OrigemProduto : Integer) : Double;
var
  NCM : TQuery;
begin
  if AliqOlhoImpostoSimples > 0 then
    RetornaAliquotaMediaProduto := AliqOlhoImpostoSimples
  else
    begin
      NCM := TQuery.Create(DM);
      NCM.DatabaseName := 'DB';
      NCM.Close;
      NCM.SQL.Clear;
      NCM.SQL.ADD('SELECT NCMN2ALIQNAC, NCMN2ALIQIMP FROM NCM WHERE NCMICOD = ' + IntToStr(CodNCM));
      NCM.Open;
      if not NCM.IsEmpty then
        begin
          if OrigemProduto = 0 then
            begin
              if NCM.FindField('NCMN2ALIQNAC').AsFloat > 0 then
                RetornaAliquotaMediaProduto := NCM.FindField('NCMN2ALIQNAC').AsFloat
              else
                RetornaAliquotaMediaProduto := 0;
            end
          else
            begin
              if NCM.FindField('NCMN2ALIQIMP').AsFloat > 0 then
                RetornaAliquotaMediaProduto := NCM.FindField('NCMN2ALIQIMP').AsFloat
              else
                RetornaAliquotaMediaProduto := 0;
            end;
        end
      else
        RetornaAliquotaMediaProduto := 0;

      NCM.Close;
      NCM.Destroy;
    end;
end;
function RetornaNumerarioTipoPadrao(CodNumerario : string) : String ;
var
  MyQuery : TQuery ;
begin
  MyQuery := TQuery.Create(DM);
  MyQuery.DatabaseName := 'DB' ;
  MyQuery.Close ;
  MyQuery.SQL.Clear ;
  MyQuery.SQL.Add('select NUMEA5TIPO from NUMERARIO') ;
  MyQuery.SQL.Add('where NUMEICOD = ' + CodNumerario ) ;
  MyQuery.Open ;
  if MyQuery.Fieldbyname('NUMEA5TIPO').AsString <> '' then
    RetornaNumerarioTipoPadrao := MyQuery.Fieldbyname('NUMEA5TIPO').AsString
  else
    RetornaNumerarioTipoPadrao := '';
  MyQuery.Destroy;
end ;
end.


