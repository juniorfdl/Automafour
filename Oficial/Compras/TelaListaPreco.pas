unit TelaListaPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, DB, Grids,
  DBGrids, Mask, DBCtrls, dbcgrids, DBTables, RxQuery, RXCtrls, RDprint,
  Menus, ToolEdit, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaListaPreco = class(TFormTelaGeralTEMPLATE)
    GroupProdFiltrados: TGroupBox;
    dsLista: TDataSource;
    SQLLista: TRxQuery;
    CtrlGridGrupos: TDBCtrlGrid;
    SQLListaDATA: TDateTimeField;
    SQLListaSTATUS: TStringField;
    SQLListaALTERAPRECO: TStringField;
    SQLListaPRODICOD: TIntegerField;
    SQLListaVLRCOMPRAATUAL: TFloatField;
    SQLListaVLRCUSTOATUAL: TFloatField;
    SQLListaVLRVENDA1ATUAL: TFloatField;
    SQLListaVLRVENDA2ATUAL: TFloatField;
    SQLListaPERCIPIENTRADA: TFloatField;
    SQLListaPERCICMSST: TFloatField;
    SQLListaPERCFRETE: TFloatField;
    SQLListaPERCOUTRAS: TFloatField;
    SQLListaVLRCOMPRA: TFloatField;
    SQLListaPERCMGVAREJO: TFloatField;
    SQLListaPERCMGATACADO: TFloatField;
    SQLListaVLRVENDA1: TFloatField;
    SQLListaVLRVENDA2: TFloatField;
    SQLListaDESCRICAO: TStringField;
    SQLPesquisa: TRxQuery;
    SQLListaVLRCUSTO: TFloatField;
    TblEtiquetas: TTable;
    TblEtiquetasContador: TAutoIncField;
    TblEtiquetasProdutoCodigo: TIntegerField;
    TblEtiquetasCodigoBarras: TStringField;
    TblEtiquetasREFERENCIA: TStringField;
    TblEtiquetasDescricao: TStringField;
    TblEtiquetasPreco: TFloatField;
    TblEtiquetasTamanho: TStringField;
    TblEtiquetasDescricaoReduzida: TStringField;
    TblEtiquetasCodigoEstrut: TStringField;
    TblEtiquetasMarca: TStringField;
    TblEtiquetasDtUltEntr: TDateField;
    TblEtiquetasCustFant: TStringField;
    TblEtiquetasParcPlanos: TMemoField;
    TblEtiquetasCor: TStringField;
    TblEtiquetasQuant: TIntegerField;
    TblEtiquetasProdutoCodigoAntigo: TStringField;
    TblEtiquetasLote: TStringField;
    TblEtiquetasPrateleira: TStringField;
    TblEtiquetasPavimento: TStringField;
    TblEtiquetasRua: TStringField;
    TblEtiquetasDimensao: TStringField;
    TblEtiquetasInfo01EtqBarras: TStringField;
    TblEtiquetasInfo02EtqBarras: TStringField;
    TblEtiquetasUnidade: TStringField;
    TblItenscomPrecosAlterados: TTable;
    TblItenscomPrecosAlteradosCDBarras: TStringField;
    TblItenscomPrecosAlteradosNOCICALTPRECO: TStringField;
    TblItenscomPrecosAlteradosPRODICOD: TIntegerField;
    TblItenscomPrecosAlteradosNOCPA13ID: TStringField;
    TblItenscomPrecosAlteradosPRODA60DESCR: TStringField;
    TblItenscomPrecosAlteradosQUANT: TFloatField;
    TblItenscomPrecosAlteradosVLRVENDA: TFloatField;
    RDPrintRelDep: TRDprint;
    SQLCodBarras: TRxQuery;
    SQLCodBarrasPRODICOD: TIntegerField;
    SQLCodBarrasPRBAA15BARRAS: TStringField;
    SQLListaREMOVEITEM: TStringField;
    SQLListaNOCPA13ID: TStringField;
    SQLListaLSPCICOD: TIntegerField;
    SQLListaPERCDIFICMS: TFloatField;
    Panel1: TPanel;
    DBText1: TDBText;
    DBText4: TDBText;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    Label4: TLabel;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    Label10: TLabel;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    Label20: TLabel;
    DBEdit3: TDBEdit;
    Label21: TLabel;
    Label19: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    Label16: TLabel;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label8: TLabel;
    SQLListaREFFABRIC: TStringField;
    SQLListaNRONF: TStringField;
    SQLListaFORNECEDOR: TStringField;
    DBText2: TDBText;
    Label22: TLabel;
    Label23: TLabel;
    DBText3: TDBText;
    Label24: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    Label26: TLabel;
    SQLListaUNIDADE: TStringField;
    SQLListaPERCDESC: TFloatField;
    Label28: TLabel;
    DBEdit4: TDBEdit;
    Label27: TLabel;
    SQLListaQTDCOMPRA: TFloatField;
    DBText7: TDBText;
    Label29: TLabel;
    PopupMenuImpressao: TPopupMenu;
    EtiquetasGondolas: TMenuItem;
    ListagemConferencia: TMenuItem;
    CircularPrecos: TMenuItem;
    TblNotaCompraItem: TTable;
    TblNotaCompraItemNOCPA13ID: TStringField;
    TblNotaCompraItemNOCIIITEM: TIntegerField;
    TblNotaCompraItemPRODICOD: TIntegerField;
    TblNotaCompraItemNOCIN3QTDBONIF: TFloatField;
    TblNotaCompraItemNOCIN3CAPEMBAL: TFloatField;
    TblNotaCompraItemNOCIN3QTDEMBAL: TFloatField;
    TblNotaCompraItemNOCIN3QTDEPED: TFloatField;
    TblNotaCompraItemNOCIN3TOTPED: TFloatField;
    TblNotaCompraItemNOCIN3VLREMBAL: TFloatField;
    TblNotaCompraItemNOCIN3VLRUNIT: TFloatField;
    TblNotaCompraItemNOCIN3VLRDESC: TFloatField;
    TblNotaCompraItemNOCIN3PERCDESC: TFloatField;
    TblNotaCompraItemNOCIN3VLRICMS: TFloatField;
    TblNotaCompraItemNOCIN3PERCICMS: TFloatField;
    TblNotaCompraItemNOCIN3VLRSUBST: TFloatField;
    TblNotaCompraItemNOCIN3VLRIPI: TFloatField;
    TblNotaCompraItemNOCIN3PERCIPI: TFloatField;
    TblNotaCompraItemNOCIN3VLRCUSTOMED: TFloatField;
    TblNotaCompraItemNOCIN3VLRFRETE: TFloatField;
    TblNotaCompraItemPDCPA13ID: TStringField;
    TblNotaCompraItemPCITIPOS: TIntegerField;
    TblNotaCompraItemPENDENTE: TStringField;
    TblNotaCompraItemREGISTRO: TDateTimeField;
    TblNotaCompraItemLOTEA30NRO: TStringField;
    TblNotaCompraItemNOCIN2ITENSENVIADOS: TFloatField;
    TblNotaCompraItemNOCIN2VLRCOMISSAO: TFloatField;
    TblNotaCompraItemPRODA60DESCR: TStringField;
    TblNotaCompraItemPRODA60REFER: TStringField;
    TblNotaCompraItemNOCIN2VLRVENDA2: TFloatField;
    TblNotaCompraItemNOCIN2MGVENDA2: TFloatField;
    TblNotaCompraItemNOCIN2VLRVENDA: TFloatField;
    TblNotaCompraItemNOCIN2QTDENF: TFloatField;
    TblNotaCompraItemNOCIN2MGVENDA: TFloatField;
    TblNotaCompraItemNOCIN2FATOR199: TFloatField;
    TblNotaCompraItemNOCICALTPRECO: TStringField;
    SQLTeste: TRxQuery;
    LbEncargos: TLabel;
    btComprasVendas: TSpeedButton;
    BTListaA: TSpeedButton;
    BTListaE: TSpeedButton;
    BtnReajuste: TSpeedButton;
    btnRemove: TSpeedButton;
    btnRemoveAll: TSpeedButton;
    SpeedButton1: TSpeedButton;
    ImpEtiquetas: TRxSpeedButton;
    Label25: TLabel;
    EDTNF: TEdit;
    Label30: TLabel;
    De: TDateEdit;
    Label31: TLabel;
    Ate: TDateEdit;
    SQLProdutoPdvs: TRxQuery;
    SQLProdutoAux: TRxQuery;
    procedure CalculaCusto;
    procedure BTListaAClick(Sender: TObject);
    procedure SQLListaVLRVENDA1Change(Sender: TField);
    procedure BtnReajusteClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnRemoveAllClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SQLListaPERCIPIENTRADAChange(Sender: TField);
    procedure SQLListaVLRVENDA2Change(Sender: TField);
    procedure DBEdit16Enter(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit17Enter(Sender: TObject);
    procedure BTListaEClick(Sender: TObject);
    procedure btComprasVendasClick(Sender: TObject);
    procedure CircularPrecosClick(Sender: TObject);
    procedure EtiquetasGondolasClick(Sender: TObject);
    procedure ListagemConferenciaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit14Enter(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit11Enter(Sender: TObject);
    procedure DBEdit12Enter(Sender: TObject);
    procedure DBEdit13Enter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    function EnviaProdutoPDVs : boolean;
    procedure dsListaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
     VlrIPI, VlrICMSST, VlrDesc, VlrFrete, VlrPisDif, VlrCofinsDif, VlrOutras, VlrDifIcms, PercEncargosOper, VlrEncargosOper, VlrVendaTeste : Double;
     Bloqueado : Boolean;
  public
    { Public declarations }
  end;

var
  FormTelaListaPreco: TFormTelaListaPreco;

implementation

uses DataModulo, UnitLibrary, WaitWindow,
  TelaPedidoCompraHistoricoComprasVendasProduto;

{$R *.dfm}

procedure TFormTelaListaPreco.BTListaAClick(Sender: TObject);
begin
  inherited;
  dsLista.AutoEdit := True;
  SQLLista.Close;
  SQLLista.MacroByName('MFiltro').Value := 'STATUS = ''A''';
  if EDTNF.Text <> '' then
    SQLLista.MacroByName('MNF').Value     := 'NRONF = '''+EDTNF.Text+''''
  else
    SQLLista.MacroByName('MNF').Value := '0=0';

  if (de.Text <> '  /  /    ') then
    SQLLista.MacroByName('MData').Value := 'DATA >= ''' + FormatDateTime('mm/dd/yyyy', De.Date)  + ''' and ' +
                                           'DATA <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ''''
  else
    SQLLista.MacroByName('MData').Value := '0=0';

  SQLLista.Open;
end;

procedure TFormTelaListaPreco.SQLListaVLRVENDA1Change(Sender: TField);
begin
  inherited;
  if (SQLListaVLRVENDA1ATUAL.Value <> SQLListaVLRVENDA1.Value) then
    SQLListaALTERAPRECO.Value  := 'S'
  else
    SQLListaALTERAPRECO.Value  := 'N';
end;

procedure TFormTelaListaPreco.BtnReajusteClick(Sender: TObject);
var xInconsistencias : string;
var NovoCustoMedio, SaldoAtual : Double;
begin
  inherited;
  // Testar se falta alguma informação importante no Produto
  xInconsistencias := '';
  SQLLista.First;
  while not SQLLista.eof do
    begin
      dm.sqlConsulta.Close;
      dm.sqlConsulta.sql.Clear;
      dm.sqlConsulta.sql.add('select icmsicod, unidicod, ncmicod, PRODN2PERCIPIENTRADA, PRODN3PERCIPI, PRODN2PERCSUBST, PRODN2PERCFRETE, PRODN2PERCDESP, PRODN2PERCDIFICM from produto where prodicod = '+SQLListaPRODICOD.AsString);
      dm.sqlConsulta.Open ;
      if dm.sqlConsulta.IsEmpty then
        xInconsistencias := 'Produto: '+SQLListaPRODICOD.AsString+'. Não Encontrado no Cadastro de Produtos!';

      if dm.sqlConsulta.fieldbyname('icmsicod').IsNull then
        xInconsistencias := xInconsistencias + #13#10 +
                            'Produto: '+SQLListaPRODICOD.AsString+'. ICMS de Venda não Cadastrado!';
      if SQLLocate('ICMS','ICMSICOD','ICMSN2ALIQUOTA',dm.sqlConsulta.FieldByName('ICMSICOD').AsString) = '' then
        xInconsistencias := xInconsistencias + #13#10 +
                            'Produto: '+SQLListaPRODICOD.AsString+'. Aliquota do ICMS de Venda está Nulo!';

      if dm.sqlConsulta.fieldbyname('unidicod').IsNull then
        xInconsistencias := xInconsistencias + #13#10 +
                            'Produto: '+SQLListaPRODICOD.AsString+'. UNIDADE de Venda não Cadastrada!';
      if dm.sqlConsulta.fieldbyname('ncmicod').IsNull then
        xInconsistencias := xInconsistencias + #13#10 +
                            'Produto: '+SQLListaPRODICOD.AsString+'. NCM não Cadastrado!';
      if dm.sqlConsulta.fieldbyname('PRODN2PERCIPIENTRADA').IsNull then
        xInconsistencias := xInconsistencias + #13#10 +
                            'Produto: '+SQLListaPRODICOD.AsString+'. Percentual IPI Entrada está Nulo!';
      if dm.sqlConsulta.fieldbyname('PRODN3PERCIPI').IsNull then
        xInconsistencias := xInconsistencias + #13#10 +
                            'Produto: '+SQLListaPRODICOD.AsString+'. Percentual IPI Saída está Nulo!';
      if dm.sqlConsulta.fieldbyname('PRODN2PERCSUBST').IsNull then
        xInconsistencias := xInconsistencias + #13#10 +
                            'Produto: '+SQLListaPRODICOD.AsString+'. Percentual ST está Nulo!';
      if dm.sqlConsulta.fieldbyname('PRODN2PERCFRETE').IsNull then
        xInconsistencias := xInconsistencias + #13#10 +
                            'Produto: '+SQLListaPRODICOD.AsString+'. Percentual FRETE está Nulo!';
      if dm.sqlConsulta.fieldbyname('PRODN2PERCDESP').IsNull then
        xInconsistencias := xInconsistencias + #13#10 +
                            'Produto: '+SQLListaPRODICOD.AsString+'. Percentual OUTRAS DESP está Nulo!';
      if dm.sqlConsulta.fieldbyname('PRODN2PERCDIFICM').IsNull then
        xInconsistencias := xInconsistencias + #13#10 +
                            'Produto: '+SQLListaPRODICOD.AsString+'. Percentual DIF.ICMS está Nulo!';

      SQLLista.next;
      if xInconsistencias <> '' then
        xInconsistencias := xInconsistencias + #13#10 + '---------------------------------------------------------';
    end;
  dm.sqlConsulta.close;  
  if xInconsistencias <> '' then
    begin
      showmessage(xInconsistencias);
      Abort;
      Exit;
    end;

  if not Pergunta('NAO','Atenção! Esta rotina irá atualizar o Preço de Venda e Margem dos Produtos! Deseja Prosseguir?') then
    begin
      Abort;
      Exit;
    end;

  SQLLista.First;
  while not SQLLista.eof do
    begin
      try
        dm.SQLTemplate.Close;
        dm.SQLTemplate.sql.Clear;
        dm.SQLTemplate.sql.Add('Update PRODUTO Set Pendente=''S'', PRODN3PERCMARGLUCR = '+ ConvFloatToStr(SQLListaPERCMGVAREJO.Value));
        if SQLListaPERCMGVAREJO.Value > 0 then
          dm.SQLTemplate.sql.Add(', PRODN3PERCMGLVFIXA = '+ ConvFloatToStr(SQLListaPERCMGVAREJO.Value));

        if SQLListaPERCMGATACADO.Value > 0 then
          begin
            dm.SQLTemplate.sql.Add(', PRODN3PERCMARGLUC2 = '+ ConvFloatToStr(SQLListaPERCMGATACADO.Value));
            dm.SQLTemplate.sql.Add(', PRODN3PERCMGLAFIXA = '+ ConvFloatToStr(SQLListaPERCMGATACADO.Value));
          end;

        dm.SQLTemplate.sql.Add(', PRODN3VLRCOMPRA = '+ ConvFloatToStr(SQLListaVLRCOMPRA.Value));
        dm.SQLTemplate.sql.Add(', PRODN3VLRCUSTO  = '+ ConvFloatToStr(SQLListaVLRCUSTO.Value));
        dm.SQLTemplate.sql.Add(', PRODN2PERCIPIENTRADA  = '+ ConvFloatToStr(SQLListaPERCIPIENTRADA.Value));
        dm.SQLTemplate.sql.Add(', PRODN2PERCSUBST  = '+ ConvFloatToStr(SQLListaPERCICMSST.Value));
        dm.SQLTemplate.sql.Add(', PRODN2PERCFRETE  = '+ ConvFloatToStr(SQLListaPERCFRETE.Value));
        dm.SQLTemplate.sql.Add(', PRODN2PERCDESP  = '+ ConvFloatToStr(SQLListaPERCOUTRAS.Value));
        dm.SQLTemplate.sql.Add(', PRODN2PERCDIFICM  = '+ ConvFloatToStr(SQLListaPERCDIFICMS.Value));

        if SQLListaALTERAPRECO.Value = 'S' then
          begin
            if SQLListaVLRVENDA1.Value > 0 then
              dm.SQLTemplate.sql.Add(', PRODN3VLRVENDA = '+ ConvFloatToStr(SQLListaVLRVENDA1.Value));
            if SQLListaVLRVENDA2.Value > 0 then
              dm.SQLTemplate.sql.Add(', PRODN3VLRVENDA2 = '+ ConvFloatToStr(SQLListaVLRVENDA2.Value));
          end;

        {Atualiza o Custo medio}
        dm.sqlconsulta.Close;
        dm.sqlconsulta.sql.text := 'select sum(PSLDN3QTDE) as SaldoAtual from produtosaldo where prodicod='+SQLListaPRODICOD.AsString;
        dm.sqlconsulta.open;
        if not dm.sqlconsulta.FindField('SaldoAtual').IsNull then
          SaldoAtual := dm.sqlconsulta.findfield('SaldoAtual').value
        else
          SaldoAtual := 0 ;
        try
          NovoCustoMedio := (SQLListaVLRCUSTOATUAL.Value + (SQLListaQTDCOMPRA.AsFloat*SQLListaVLRCUSTO.Value))/
                            (SaldoAtual + SQLListaQTDCOMPRA.AsFloat) ;
        except
          NovoCustoMedio := 0;
          Application.ProcessMessages;
        end;
        if NovoCustoMedio > 0 then
          dm.SQLTemplate.sql.Add(', PRODN3VLRCUSTOMED = '+ ConvFloatToStr(NovoCustoMedio));

        dm.SQLTemplate.SQL.Add(', REGISTRO=''' + FormatDateTime('mm/dd/yyyy hh:mm:ss', Now) + '''') ; // REGISTRO
        dm.SQLTemplate.SQL.Add(', PRODDULTALTER=''' + FormatDateTime('mm/dd/yyyy', Now) + '''') ;     // DATA ULT ALTERACAO
        dm.SQLTemplate.sql.Add(' Where PRODIPRINCIPAL = '+ SQLLocate('PRODUTO','PRODICOD','PRODIPRINCIPAL',SQLListaPRODICOD.AsString));
        dm.SQLTemplate.ExecSQL;

        SQLLista.Edit;
        SQLListaSTATUS.Value := 'E';
      except
        SQLLista.Edit;
        SQLListaSTATUS.Value := 'A';
        Application.ProcessMessages;
        ShowMessage('Erro ao Tentar Atualizar Produtos!');
      end;
      SQLLista.Post;
      if SQLListaSTATUS.Value = 'E' then // signifca q conseguiu alterar o produto da vez. Entao alimenta o Reajuste
        begin
          LancaReajustePreco(SQLListaVLRVENDA1.AsFloat,
                             0,
                             SQLListaVLRCOMPRA.asFloat,
                             0,
                             SQLListaVLRCUSTO.asFloat,
                             0,
                             SQLlistaPRODICOD.AsInteger);

          {Envia para Tabela ProdutoPDVs}
          EnviaProdutoPDVs;

        end;

      // Atualiza Nota Compra para P, para nao entrar mais na lista de Precos.
      try
        dm.SQLTemplate.Close;
        dm.SQLTemplate.sql.Clear;
        dm.SQLTemplate.sql.Add('Update NOTACOMPRA Set NOCPCSTATUS=''P'', PENDENTE=''S'' ');
        dm.SQLTemplate.sql.Add('Where NOCPA13ID = '''+ SQLListaNOCPA13ID.AsString+'''');
        dm.SQLTemplate.ExecSQL;
      except
        Application.ProcessMessages;
        ShowMessage('Erro ao Tentar Atualizar Nota Compra!');
      end;
      SQLLista.Next;
    end;
  SQLLista.Close;
  SQLLista.MacroByName('MFiltro').Value := 'STATUS = ''A''';
  SQLLista.Open;
end;

procedure TFormTelaListaPreco.SpeedButton1Click(Sender: TObject);
var CdLista, I : integer;
var TotalNF, TotalItemNF : double;
begin
  inherited;
  dsLista.AutoEdit := True;

  // Pegar o Max e Alimentar Variavel
  CdLista := SQLMax('ListaPreco','LSPCICOD','LSPCICOD IS NOT NULL');

  // Filtrar Notas Compras em Aberto
  SQLPesquisa.Close;
  SQLPesquisa.SQL.Text := 'Select N.NOCPCSTATUS , P.PRODA60DESCR, P.PRODN3VLRCOMPRA, P.PRODN3VLRCUSTO, P.PRODN3VLRVENDA, P.PRODN3VLRVENDA2, P.PRODN3PERCMGLVFIXA, P.PRODN3PERCMGLAFIXA, P.PRODN2ALIQPIS, P.PRODN2ALIQCOFINS, P.PRODN2PERCDIFICM, P.PRODA60REFER, P.UNIDICOD, '+
  ' I.*, N.FORNICOD, N.NOCPA30NRO, N.NOCPDRECEBIMENTO, N.NOCPN3TOTITENS From NOTACOMPRAITEM I '+
  'LEFT JOIN PRODUTO P ON P.PRODICOD = I.PRODICOD '+
  'LEFT JOIN NOTACOMPRA N ON N.NOCPA13ID = I.NOCPA13ID '+
  'LEFT JOIN OPERACAOESTOQUE O ON O.OPESICOD = N.OPESICOD '+
  'Where %Filtro and %NroNF and %Periodo';
  SQLPesquisa.Prepare;
  SQLPesquisa.MacroByName('Filtro').AsString := 'N.NOCPCSTATUS = ''A'' and OPESCGERAFINANCEIRO=''S'' and OPESCENTRADASAIDA=''E''';

  if EDTNF.Text <> '' then
    SQLPesquisa.MacroByName('NroNF').AsString  := 'N.NOCPA30NRO  = '''+ EDTNF.Text + ''''
  else
    SQLPesquisa.MacroByName('NroNF').AsString  := '0=0';

  if ( (de.Date > 0) and (ate.date>0) ) then
    SQLPesquisa.MacrobyName('Periodo').Value   := 'N.NOCPDRECEBIMENTO >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                  'N.NOCPDRECEBIMENTO <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ''''
  else
    SQLPesquisa.MacrobyName('Periodo').Value   := '0=0';

  SQLPesquisa.Open;
  if SQLPesquisa.IsEmpty then
    begin
      ShowMessage('Não foi encontrado nenhum Produto a ser incluido pelas Notas de Compra!');
      Abort;
      Exit;
    end;

  // Popular Registros na tabela ListaPreco
  I := 1;
  MakeWindow(SQLPesquisa.RecordCount, 'Aguarde, Executando Filtro!');
  SQLPesquisa.First;
  SQLPesquisa.DisableControls;
  SQLLista.Open;
  SQLLista.DisableConstraints;
  While not SQLPesquisa.eof do
    begin
      SetProgress(I);
      I := I+1;

      SQLTeste.Close;
      SQLTeste.SQL.Text := 'Select PRODICOD From LISTAPRECO where PRODICOD = ' + SQLPesquisa.FieldByName('PRODICOD').AsString +
                           ' and STATUS=''A''';
      SQLTeste.Open;
      if SQLTeste.IsEmpty then
        begin
          SQLLista.Append;
          SQLListaLSPCICOD.Value            := CdLista;
          SQLListaDATA.Value                := SQLPesquisa.FieldByName('NOCPDRECEBIMENTO').Value;
          SQLListaSTATUS.Value              := 'A';
          SQLListaALTERAPRECO.Value         := 'N';
          SQLListaREMOVEITEM.Value          := 'N';

          SQLListaNOCPA13ID.Value           := SQLPesquisa.FieldByName('NOCPA13ID').Value;
          SQLListaNRONF.Value               := SQLPesquisa.FieldByName('NOCPA30NRO').Value;
          SQLListaQTDCOMPRA.Value           := SQLPesquisa.FieldByName('NOCIN3QTDEMBAL').Value;
          SQLListaFORNECEDOR.Asstring       := SQLLocate('FORNECEDOR','FORNICOD','FORNA60RAZAOSOC',SQLPesquisa.FieldByName('FORNICOD').Asstring);
          SQLListaUNIDADE.Asstring          := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLPesquisa.FieldByName('UNIDICOD').Asstring);

          SQLListaPRODICOD.Value            := SQLPesquisa.FieldByName('PRODICOD').Value;
          SQLListaDESCRICAO.Value           := SQLPesquisa.FieldByName('PRODA60DESCR').Value;
          SQLListaREFFABRIC.AsVariant       := SQLPesquisa.FieldByName('PRODA60REFER').AsVariant;

          SQLListaVLRCOMPRAATUAL.AsString   := SQLPesquisa.FieldByName('PRODN3VLRCOMPRA').AsString;
          SQLListaVLRCUSTOATUAL.AsString    := SQLPesquisa.FieldByName('PRODN3VLRCUSTO').AsString;
          SQLListaVLRVENDA1ATUAL.AsString   := SQLPesquisa.FieldByName('PRODN3VLRVENDA').AsString;
          SQLListaVLRVENDA2ATUAL.AsString   := SQLPesquisa.FieldByName('PRODN3VLRVENDA2').AsString;

          TotalItemNF := 0;
          TotalItemNF := (SQLPesquisa.FieldByName('NOCIN3VLREMBAL').AsFloat*SQLPesquisa.FieldByName('NOCIN3QTDEMBAL').asFloat)-SQLPesquisa.FieldByName('NOCIN3VLRDESC').AsFloat;
          SQLListaVLRCOMPRA.Value  := SQLPesquisa.FieldByName('NOCIN3VLREMBAL').Value / SQLPesquisa.FieldByName('NOCIN3CAPEMBAL').Value;

          if SQLPesquisa.FieldByName('NOCIN3PERCIPI').AsFloat > 0 then
            SQLListaPERCIPIENTRADA.Value := SQLPesquisa.FieldByName('NOCIN3PERCIPI').Value
          else
            SQLListaPERCIPIENTRADA.Value := 0;

          if SQLPesquisa.FieldByName('NOCIN3VLRSUBST').AsFloat > 0 then
            begin
              // Calculo para achar o Percentual de ST proporcional do produto
              SQLListaPERCICMSST.Value := (SQLPesquisa.FieldByName('NOCIN3VLRSUBST').Value/TotalItemNF)  * 100;
            end
          else
            SQLListaPERCICMSST.Value     := 0;

          if SQLPesquisa.FieldByName('NOCIN3PERCFRETE').Value > 0 then
            SQLListaPERCFRETE.Value := SQLPesquisa.FieldByName('NOCIN3PERCFRETE').Value
          else
            if SQLPesquisa.FieldByName('NOCIN3VLRFRETE').Value > 0 then
              SQLListaPERCFRETE.Value      := (SQLPesquisa.FieldByName('NOCIN3VLRFRETE').Value/TotalItemNF)  * 100;

          if SQLListaPERCFRETE.IsNull then SQLListaPERCFRETE.Value := 0;

          if SQLPesquisa.FieldByName('NOCIN2PERCDESP').AsString <> '' then
            SQLListaPERCOUTRAS.Value := SQLPesquisa.FieldByName('NOCIN2PERCDESP').Value
          else
            SQLListaPERCOUTRAS.Value     := 0;

          if SQLPesquisa.FieldByName('PRODN2PERCDIFICM').AsString <> '' then
            SQLListaPERCDIFICMS.Value := SQLPesquisa.FieldByName('PRODN2PERCDIFICM').Value
          else
            SQLListaPERCDIFICMS.Value    := 0;

          if SQLListaPERCDIFICMS.IsNull then SQLListaPERCDIFICMS.Value := 0;

          if SQLPesquisa.FieldByName('NOCIN3PERCDESC').Asfloat = 0 then
            begin
              if SQLPesquisa.FieldByName('NOCIN3VLRDESC').Asfloat>0 then
                SQLListaPERCDESC.Value := (SQLPesquisa.FieldByName('NOCIN3VLRDESC').Asfloat/SQLListaVLRCOMPRA.Value) * 100
              else
                SQLListaPERCDESC.Value := 0;
            end
          else
            SQLListaPERCDESC.Value := SQLPesquisa.FieldByName('NOCIN3PERCDESC').Asfloat;

          if SQLPesquisa.FieldByName('PRODN3PERCMGLVFIXA').AsString <> '' then
            SQLListaPERCMGVAREJO.Value := SQLPesquisa.FieldByName('PRODN3PERCMGLVFIXA').Value
          else
            SQLListaPERCMGVAREJO.Value   := 0;

          if SQLPesquisa.FieldByName('PRODN3PERCMGLAFIXA').AsString <> '' then
            SQLListaPERCMGATACADO.Value := SQLPesquisa.FieldByName('PRODN3PERCMGLAFIXA').Value
          else
            SQLListaPERCMGATACADO.Value  := 0;

          // O reajuste do campo Vlr Venda esta na funcao Change do campo Margem Varejo
          CalculaCusto;

          SQLLista.Post;
        end;
      SQLPesquisa.Next;
      CdLista := CdLista + 1;
    end;
  DestroyWindow;
  SQLPesquisa.EnableControls;
  SQLLista.EnableControls;
  SQLLista.Close;
  SQLLista.MacroByName('MFiltro').Value := 'STATUS = ''A''';
  SQLLista.Open;
end;

procedure TFormTelaListaPreco.btnRemoveClick(Sender: TObject);
begin
  inherited;
  SQLLista.First;
  while not SQLLista.eof do
    begin
      if SQLListaREMOVEITEM.Value = 'S' then
        begin
          dm.SQLTemplate.Close;
          dm.SQLTemplate.sql.Clear;
          dm.SQLTemplate.sql.Add('Delete From LISTAPRECO');
          dm.SQLTemplate.sql.Add('Where PRODICOD = '+SQLListaPRODICOD.AsString+' and REMOVEITEM=''S''');
          dm.SQLTemplate.ExecSQL;
        end;
      SQLLista.Next;
    end;
  SQLLista.Close;
  SQLLista.Open;
end;

procedure TFormTelaListaPreco.btnRemoveAllClick(Sender: TObject);
begin
  inherited;
  SQLLista.First;
  while not SQLLista.eof do
    begin
      dm.SQLTemplate.Close;
      dm.SQLTemplate.sql.Clear;
      dm.SQLTemplate.sql.Add('Delete From LISTAPRECO');
      dm.SQLTemplate.sql.Add('Where PRODICOD = '+SQLListaPRODICOD.AsString);
      dm.SQLTemplate.ExecSQL;
      SQLLista.Next;
    end;
  SQLLista.Close;
  SQLLista.Open;
end;

procedure TFormTelaListaPreco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  //  Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFormTelaListaPreco.CalculaCusto;
begin
  if SQLListaVLRCOMPRA.Value = 0 then exit;

  if SQLListaPERCDESC.Value > 0 then
    VlrDesc := SQLListaVLRCOMPRA.Value * (SQLListaPERCDESC.Value/100) else VlrDesc := 0;
  if SQLListaPERCIPIENTRADA.Value > 0 then
    VlrIPI := SQLListaVLRCOMPRA.Value * (SQLListaPERCIPIENTRADA.Value/100) else VlrIPI := 0;
  if SQLListaPERCICMSST.Value > 0 then
    VlrICMSST := SQLListaVLRCOMPRA.Value * (SQLListaPERCICMSST.Value/100) else VlrICMSST := 0;
  if SQLListaPERCFRETE.Value > 0 then
    VlrFrete := SQLListaVLRCOMPRA.Value * (SQLListaPERCFRETE.Value/100) else VlrFrete := 0;
  if SQLListaPERCOUTRAS.Value > 0 then
    VlrOutras := SQLListaVLRCOMPRA.Value * (SQLListaPERCOUTRAS.Value/100) else VlrOutras := 0;
  if SQLListaPERCDIFICMS.Value > 0 then
    VlrDifIcms := SQLListaVLRCOMPRA.Value * (SQLListaPERCDIFICMS.Value/100) else VlrDifIcms := 0;
  if PercEncargosOper > 0 then
    VlrEncargosOper := SQLListaVLRCOMPRA.Value * (PercEncargosOper/100) else VlrEncargosOper := 0;

  SQLListaVLRCUSTO.Value := SQLListaVLRCOMPRA.Value + VlrIPI + VlrICMSST + VlrFrete + VlrOutras + VlrDifIcms + VlrEncargosOper - VlrDesc;

  if SQLListaPERCMGVAREJO.Value > 0 then
    SQLListaVLRVENDA1.AsString := FormatFloat('##0.00',SQLListaVLRCUSTO.Value + (SQLListaVLRCUSTO.Value * (SQLListaPERCMGVAREJO.Value/100)));

  if SQLListaPERCMGATACADO.Value > 0 then
    SQLListaVLRVENDA2.AsString := FormatFloat('##0.00',SQLListaVLRCUSTO.Value + (SQLListaVLRCUSTO.Value * (SQLListaPERCMGATACADO.Value/100)));
end;

procedure TFormTelaListaPreco.SQLListaPERCIPIENTRADAChange(Sender: TField);
begin
  inherited;
  if not Bloqueado then
    CalculaCusto;
end;

procedure TFormTelaListaPreco.SQLListaVLRVENDA2Change(Sender: TField);
begin
  inherited;
  if (SQLListaVLRVENDA2ATUAL.Value <> SQLListaVLRVENDA2.Value) then
    SQLListaALTERAPRECO.Value         := 'S'
  else
    SQLListaALTERAPRECO.Value         := 'N';
end;

procedure TFormTelaListaPreco.DBEdit16Enter(Sender: TObject);
begin
  inherited;
  VlrVendaTeste := SQLListaVLRVENDA1.Value;
  DBEdit16.SelectAll;
end;

procedure TFormTelaListaPreco.DBEdit16Exit(Sender: TObject);
begin
  inherited;
  if VlrVendaTeste <> SQLListaVLRVENDA1.Value then
    begin
      Bloqueado := True;
      SQLListaPERCMGVAREJO.Value := ((SQLListaVLRVENDA1.Value / SQLListaVLRCUSTO.Value) -1) * 100;
      Bloqueado := False;
      try
        SQLLista.Post;
      except
        Application.ProcessMessages;
      end;
    end;
end;

procedure TFormTelaListaPreco.DBEdit17Exit(Sender: TObject);
begin
  inherited;
  if VlrVendaTeste <> SQLListaVLRVENDA2.Value then
    begin
      Bloqueado := True;
      SQLListaPERCMGVAREJO.Value := ((SQLListaVLRVENDA2.Value / SQLListaVLRCUSTO.Value) -1) * 100;
      Bloqueado := False;
      try
        SQLLista.Post;
      except
        Application.ProcessMessages;
      end;
    end;
end;

procedure TFormTelaListaPreco.DBEdit17Enter(Sender: TObject);
begin
  inherited;
  DBEdit17.SelectAll;
  VlrVendaTeste := SQLListaVLRVENDA2.Value;
end;

procedure TFormTelaListaPreco.BTListaEClick(Sender: TObject);
begin
  inherited;
  dsLista.AutoEdit := True;
  SQLLista.Close;
  SQLLista.MacroByName('MFiltro').Value := 'STATUS = ''E''';
  if EDTNF.Text <> '' then
    SQLLista.MacroByName('MNF').Value     := 'NRONF = '''+EDTNF.Text+''''
  else
  SQLLista.MacroByName('MNF').Value := '0=0';

  if (de.Text <> '  /  /    ') then
    SQLLista.MacroByName('MData').Value := 'DATA >= ''' + FormatDateTime('mm/dd/yyyy', De.Date)  + ''' and ' +
                                           'DATA <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ''''
  else
    SQLLista.MacroByName('MData').Value := '0=0';

  SQLLista.Open;
end;

procedure TFormTelaListaPreco.btComprasVendasClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormTelaPedidoCompraHistoricoComprasVendasProduto,FormTelaPedidoCompraHistoricoComprasVendasProduto);
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLNotasCompra.Close;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLNotasCompra.MacroByName('MProduto').Value := 'NotaCompraItem.PRODICOD = '+SQLListaPRODICOD.AsString;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLNotasCompra.Open;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLVendas.Close;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLVendas.MacroByName('MProduto').Value  := 'CUPOMITEM.PRODICOD = ' + SQLListaPRODICOD.AsString;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLVendas.MacroByName('MProduto1').Value := 'NOTAFISCALITEM.PRODICOD = ' + SQLListaPRODICOD.AsString;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLVendas.Open;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.LBProduto.Caption := 'Produto => '+SQLListaDESCRICAO.Value;
  FormTelaPedidoCompraHistoricoComprasVendasProduto.ShowModal;
end;

procedure TFormTelaListaPreco.CircularPrecosClick(Sender: TObject);
var Linha, vCol, Pag : Integer;
begin
  inherited;
  Linha := 1;
  try
    TblItenscomPrecosAlterados.Close;
    TblItenscomPrecosAlterados.DeleteTable;
    TblItenscomPrecosAlterados.CreateTable;
  except
    TblItenscomPrecosAlterados.CreateTable;
  end;
  TblItenscomPrecosAlterados.AddIndex('PR','CDBarras',[IxPrimary]);
  TblItenscomPrecosAlterados.AddIndex('Indice','NOCICALTPRECO;CdBarras',[ixCaseInsensitive]);
  TblItenscomPrecosAlterados.IndexName := 'Indice';
  TblItenscomPrecosAlterados.Open;

  SQLLista.First;
  while not SQLLista.Eof do
    begin
      if SQLListaALTERAPRECO.Value = 'S' then
        begin
          TblItenscomPrecosAlterados.Append;
          if SQLListaVLRVENDA1.Value > SQLListaVLRVENDA1ATUAL.Value then
            TblItenscomPrecosAlteradosNOCICALTPRECO.Value := 'A'
          else
            TblItenscomPrecosAlteradosNOCICALTPRECO.Value := 'B';

          TblItenscomPrecosAlteradosPRODICOD.value      := SQLListaPRODICOD.Value;
          TblItenscomPrecosAlteradosPRODA60DESCR.value  := SQLListaDESCRICAO.Value;
          TblItenscomPrecosAlteradosQUANT.value         := 1;
          TblItenscomPrecosAlteradosVLRVENDA.value      := SQLListaVLRVENDA1.Value;
          TblItenscomPrecosAlteradosCDBarras.value      := dm.SQLLocate('Produto','Prodicod','Proda60CodBar',SQLListaPRODICOD.AsString);
          if TblItenscomPrecosAlteradosCDBarras.value = '' then
            TblItenscomPrecosAlteradosCDBarras.value := SQLListaPRODICOD.AsString;
          try
            TblItenscomPrecosAlterados.Post;
          except
            TblItenscomPrecosAlterados.Cancel;
          end;
          SQLCodBarras.Close;
          SQLCodBarras.MacroByName('MFiltro').Value := 'PRODICOD = ' + SQLListaPRODICOD.AsString;
          SQLCodBarras.Open;
          if not SQLCodBarras.IsEmpty then
            begin
              while not SQLCodBarras.eof do
                begin
                  if SQLListaALTERAPRECO.Value = 'S' then
                    begin
                      TblItenscomPrecosAlterados.Append;
                      if SQLListaVLRVENDA1.Value > SQLListaVLRVENDA1ATUAL.Value then
                        TblItenscomPrecosAlteradosNOCICALTPRECO.Value := 'A'
                      else
                        TblItenscomPrecosAlteradosNOCICALTPRECO.Value := 'B';
                      TblItenscomPrecosAlteradosPRODICOD.value      := SQLListaPRODICOD.Value;
                      TblItenscomPrecosAlteradosPRODA60DESCR.value  := SQLListaDESCRICAO.Value;
                      TblItenscomPrecosAlteradosQUANT.value         := 1;
                      TblItenscomPrecosAlteradosVLRVENDA.value      := SQLListaVLRVENDA1.Value;
                      TblItenscomPrecosAlteradosCDBarras.value      := SQLCodBarrasPRBAA15BARRAS.Value;
                      if TblItenscomPrecosAlteradosCDBarras.value = '' then
                        TblItenscomPrecosAlteradosCDBarras.value := SQLListaPRODICOD.AsString;
                      try
                        TblItenscomPrecosAlterados.Post;
                      except
                        TblItenscomPrecosAlterados.Cancel;
                      end;
                    end;
                  SQLCodBarras.next;
                end;
            end;
        end;
      SQLLista.Next;
    end;
  TblItenscomPrecosAlterados.First;
  RDPrintRelDep.TitulodoRelatorio := 'Circular de Preços Alterados';
  Pag   := 1;
  RDPrintRelDep.PortaComunicacao := '';
  RDPrintRelDep.Abrir;
  RDPrintRelDep.ImpF(Linha,1,'Circular de Preços Alterados',[Expandido, Normal]);   Inc(Linha,2);
  RDPrintRelDep.Imp(Linha,1,'Data Emissao => '+ FormatDateTime('dd/mm/yyyy hh:nn:ss',now)); Inc(Linha);
  RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
  RDPrintRelDep.Imp(Linha,1,'Cod    Descricao                                  Cd.Barras     Vlr.Venda Status'); Inc(Linha);
  RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
  While not TblItenscomPrecosAlterados.eof do
    begin
      if linha > 60 then
        begin
          Linha := 1;
          RDPrintRelDep.Novapagina;
          RDPrintRelDep.ImpF(Linha,1,'Circular de Preços Alterados',[Expandido, Normal]);   Inc(Linha,2);
          RDPrintRelDep.Imp(Linha,1,'Data Emissao => '+ FormatDateTime('dd/mm/yyyy hh:nn:ss',now)); Inc(Linha);
          RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
          RDPrintRelDep.Imp(Linha,1,'Cod    Descricao                                  Cd.Barras     Vlr.Venda Status'); Inc(Linha);
          RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
        end;
      RDPrintRelDep.Imp(Linha, 1,FormatFloat('######000000',TblItenscomPrecosAlteradosPRODICOD.Value));
      RDPrintRelDep.Imp(Linha,10,copy(TblItenscomPrecosAlteradosPRODA60DESCR.AsString,1,39));
      RDPrintRelDep.Imp(Linha,48,TblItenscomPrecosAlteradosCDBarras.AsString);
      RDPrintRelDep.ImpVal(Linha,66,'#,##0.00',TblItenscomPrecosAlteradosVLRVENDA.Value,[]);
      RDPrintRelDep.Imp(Linha,77,TblItenscomPrecosAlteradosNOCICALTPRECO.AsString);
      Inc(Linha);
      TblItenscomPrecosAlterados.Next;
    end;
  RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
  RDPrintRelDep.Imp(Linha,1,'Verificado Por: _______________');
  RDPrintRelDep.Fechar;
  TblItenscomPrecosAlterados.Close;
  SQLLista.First;
end;

procedure TFormTelaListaPreco.EtiquetasGondolasClick(Sender: TObject);
begin
  inherited;
  // Gravar na tabela temp de etiquetas
  TblEtiquetas.Close;
  try
    TblEtiquetas.DeleteTable ;
  except
    Application.ProcessMessages;
  end ;
  TblEtiquetas.CreateTable ;
  TblEtiquetas.Open ;

  SQLLista.First;
  while not SQLLista.Eof do
    begin
      if SQLListaALTERAPRECO.Value = 'S' then
        begin
          TblEtiquetas.Append;
          TblEtiquetasProdutoCodigo.Value     := SQLListaPRODICOD.value ;
          TblEtiquetasDescricao.Value         := dm.SQLLocate('Produto','Prodicod','PRODA60DESCR',SQLListaPRODICOD.AsString) ;
          TblEtiquetasDescricaoReduzida.Value := dm.SQLLocate('Produto','Prodicod','PRODA30ADESCRREDUZ',SQLListaPRODICOD.AsString) ;
          TblEtiquetasCodigoBarras.value      := dm.SQLLocate('Produto','Prodicod','Proda60CodBar',SQLListaPRODICOD.AsString) ;
          TblEtiquetasQuant.Value             := 1 ;
          TblEtiquetasPreco.Value             := SQLListaVLRVENDA1.value ;
          try
            TblEtiquetas.Post;
          except
            TblEtiquetas.Cancel;
          end;
        end;
      SQLLista.Next;
    end;
  SQLLista.First;
  TblEtiquetas.Close;

  // Chamar Executavel de Etiquetas para Gondola
  if FileExists('EtiquetasGondola.exe') then
    WinExec(PChar('EtiquetasGondola.exe'), SW_SHOW)
  else
    ShowMessage('O programa de impressão de etiquetas para Gondola não foi encontrado!') ;
end;

procedure TFormTelaListaPreco.ListagemConferenciaClick(Sender: TObject);
var I, Linha, vCol, Pag : Integer;
  vCor, vMarca, vUnidade, Chave, Apresentacao : String;
begin
  inherited;
  if EDTNF.Text = '' then
    begin
      ShowMessage('É preciso filtrar por um Nro de Nota Fiscal!');
      Abort;
      Exit;
    end;
  try
    TblNotaCompraItem.Close;
    TblNotaCompraItem.DeleteTable;
    TblNotaCompraItem.CreateTable;
  except
    TblNotaCompraItem.CreateTable;
  end;
  TblNotaCompraItem.AddIndex('Pr','NOCPA13ID;NOCIIITEM',[ixPrimary]);
  TblNotaCompraItem.AddIndex('Indice','NOCICALTPRECO;PRODICOD',[ixCaseInsensitive]);
  TblNotaCompraItem.IndexName := 'Indice';

  TblNotaCompraItem.Open;

  SQLLista.First;
  while not SQLLista.Eof do
    begin
      TblNotaCompraItem.Append;
      TblNotaCompraItemNOCPA13ID.Value      := SQLListaNOCPA13ID.Value;
      TblNotaCompraItemNOCIIITEM.Value      := SQLListaPRODICOD.Value;
      TblNotaCompraItemPRODICOD.Value       := SQLListaPRODICOD.Value;
      TblNotaCompraItemPRODA60DESCR.Value   := SQLListaDESCRICAO.Value;
      TblNotaCompraItemPRODA60REFER.Value   := SQLListaREFFABRIC.Value;
      TblNotaCompraItemNOCIN3QTDEMBAL.Value := SQLListaQTDCOMPRA.Value;
      TblNotaCompraItemNOCIN2VLRVENDA.Value := SQLListaVLRVENDA1.Value;
      if SQLListaVLRVENDA1.Value > SQLListaVLRVENDA1ATUAL.Value then
        TblNotaCompraItemNOCICALTPRECO.value := 'A'
      else
        TblNotaCompraItemNOCICALTPRECO.value := 'B';
      if SQLListaVLRVENDA1.Value = SQLListaVLRVENDA1ATUAL.Value then
        TblNotaCompraItemNOCICALTPRECO.value := 'I';
      try
        TblNotaCompraItem.Post;
      except
        TblNotaCompraItem.Cancel;
      end;
      SQLLista.Next;
    end;

    Linha := 1;
    Pag   := 1;
    RDPrintRelDep.PortaComunicacao := '';
    RDPrintRelDep.Abrir;
    RDPrintRelDep.ImpF(Linha, 1,'Conferencia de Entrada no Estoque',[Expandido, Normal]);   Inc(Linha,2);
    RDPrintRelDep.Imp(Linha, 1,'Dt Entrada: '  + SQLListaDATA.AsString);
    RDPrintRelDep.Imp(Linha,30,'ID Nota.: '    + SQLListaNOCPA13ID.AsString);
    RDPrintRelDep.Imp(Linha,60,'N.Fiscal: '    + SQLListaNRONF.AsString);         Inc(Linha);
    RDPrintRelDep.Imp(Linha, 1,'Fornecedor: '  + SQLListaFORNECEDOR.AsString);    Inc(Linha);
    RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
    RDPrintRelDep.ImpF(Linha,1,'Cod    Apresentacao Cd.Barras       Descricao/Un/Cor                                        Referencia      Marca             Quant      Vlr.Venda         ST',[Comp20]); Inc(Linha);
    RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
    TblNotaCompraItem.First;
    While not TblNotaCompraItem.eof Do
      Begin
        vCor := '';
        vMarca := '';
        if linha > 60 then
          begin
            Linha := 1;
            RDPrintRelDep.Novapagina;
            RDPrintRelDep.ImpF(Linha,1,'Conferencia de Entrada no Estoque',[Expandido, Normal]);   Inc(Linha,2);
            RDPrintRelDep.Imp(Linha, 1,'Dt Entrada: '  + SQLListaDATA.AsString);
            RDPrintRelDep.Imp(Linha,30,'ID Nota.: '    + SQLListaNOCPA13ID.AsString);
            RDPrintRelDep.Imp(Linha,60,'N.Fiscal: '    + SQLListaNRONF.AsString);         Inc(Linha);
            RDPrintRelDep.Imp(Linha, 1,'Fornecedor: '  + SQLListaFORNECEDOR.AsString);    Inc(Linha);
            RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
            RDPrintRelDep.ImpF(Linha,1,'Cod    Apresentacao Cd.Barras       Descricao/Un/Cor                                        Referencia      Marca             Quant      Vlr.Venda         ST',[Comp20]); Inc(Linha);
            RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
          end;
        Apresentacao := SQLLocate('PRODUTO','PRODICOD','PRODN3CAPACEMBAL',TblNotaCompraItemPRODICOD.AsString);
        RDPrintRelDep.ImpF(Linha, 1,FormatFloat('#####00000',TblNotaCompraItemPRODICOD.Value),[Comp20]);
        RDPrintRelDep.ImpF(Linha, 6,Apresentacao,[Comp20]);
        RDPrintRelDep.ImpF(Linha,11,SQLLocate('PRODUTO','PRODICOD','PRODA60CODBAR',TblNotaCompraItemPRODICOD.AsString),[Comp20]);

        vUnidade := SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLLocate('PRODUTO','PRODICOD','UNIDICOD',TblNotaCompraItemPRODICOD.AsString));
        vCor := SQLLocate('PRODUTO','PRODICOD','CORICOD',TblNotaCompraItemPRODICOD.AsString);
        if vCor <> '' then
        vCor := SQLLocate('COR','CORICOD','CORA30DESCR',vCor);
        if vCor <> '' then
          RDPrintRelDep.ImpF(Linha, 19,copy(TblNotaCompraItemPRODA60DESCR.AsString,1,40)+'/'+vUnidade+'/'+copy(vCor,1,6),[Comp20])
        else
          RDPrintRelDep.ImpF(Linha, 19,copy(TblNotaCompraItemPRODA60DESCR.AsString,1,50)+'/'+vUnidade,[Comp20]);

        RDPrintRelDep.ImpF(Linha,47,copy(TblNotaCompraItemPRODA60REFER.value,1,10),[Comp20]);

        vMarca := SQLLocate('MARCA','MARCICOD','MARCA60DESCR', SQLLocate('PRODUTO','PRODICOD','MARCICOD',TblNotaCompraItemPRODICOD.AsString));
        if vMarca <> '' then
          RDPrintRelDep.ImpF(Linha,55,copy(vMarca,1,8),[Comp20]);

        RDPrintRelDep.ImpVal(Linha,63,'##0.000',TblNotaCompraItemNOCIN3QTDEMBAL.Value,[Comp20]);
        RDPrintRelDep.ImpVal(Linha,70,'#,##0.00',TblNotaCompraItemNOCIN2VLRVENDA.Value,[Comp20]);
        RDPrintRelDep.ImpF(Linha,79,TblNotaCompraItemNOCICALTPRECO.value,[Comp20]);
        Inc(Linha);
        TblNotaCompraItem.Next;
      End;
    RDPrintRelDep.Imp(Linha,1,'--------------------------------------------------------------------------------'); Inc(Linha);
    RDPrintRelDep.Imp(Linha, 1,'Recebido Por: _______________');
    RDPrintRelDep.Imp(Linha,32,'Cd.Barras ( )');
    RDPrintRelDep.Imp(Linha,46,'Etiquetas ( )');
    RDPrintRelDep.Imp(Linha,60,'Mostruario ( )'); Inc(Linha);
    RDPrintRelDep.Imp(Linha,32,'Precos ( )');
    RDPrintRelDep.Imp(Linha,46,'Deposito ( )');
    RDPrintRelDep.Fechar;
end;

procedure TFormTelaListaPreco.FormCreate(Sender: TObject);
begin
  inherited;
  if not Dm.SQLConfigVenda.Active then Dm.SQLConfigVenda.Open;
  if Dm.SQLConfigVenda.FieldByName('CFVEN2PERCENCARG').AsString <> '' then
    PercEncargosOper := Dm.SQLConfigVenda.FieldByName('CFVEN2PERCENCARG').Value;

  LbEncargos.Caption := FloatToStr(PercEncargosOper)+'% Encargos Administrativos'
end;

procedure TFormTelaListaPreco.DBEdit14Enter(Sender: TObject);
begin
  inherited;
  DBEdit14.SelectAll;
end;

procedure TFormTelaListaPreco.DBEdit9Enter(Sender: TObject);
begin
  inherited;
  Bloqueado := False;
  DBEdit9.SelectAll;
end;

procedure TFormTelaListaPreco.DBEdit11Enter(Sender: TObject);
begin
  inherited;
  Bloqueado := False;
  DBEdit11.SelectAll;
end;

procedure TFormTelaListaPreco.DBEdit12Enter(Sender: TObject);
begin
  inherited;
  Bloqueado := False;
  DBEdit12.SelectAll;
end;

procedure TFormTelaListaPreco.DBEdit13Enter(Sender: TObject);
begin
  inherited;
  Bloqueado := False;
  DBEdit13.SelectAll;
end;

procedure TFormTelaListaPreco.DBEdit3Enter(Sender: TObject);
begin
  inherited;
  Bloqueado := False;
  DBEdit3.SelectAll;
end;

procedure TFormTelaListaPreco.DBEdit4Enter(Sender: TObject);
begin
  inherited;
  Bloqueado := False;
  DBEdit4.SelectAll;
end;

function TFormTelaListaPreco.EnviaProdutoPDVs : boolean ;
var i : integer;
begin
  {Atualiza a tabela ProdutoPDVs}
  sqlprodutoaux.close;
  sqlprodutoaux.MacroByName('MFiltro').Value := 'PRODICOD='+SQLListaPRODICOD.AsString;
  sqlprodutoaux.open;

  {Filtra Terminais que devem receber carga}
  dm.sqlconsulta.Close;
  dm.sqlconsulta.sql.clear;
  dm.sqlconsulta.sql.Text := 'Select Termicod from Terminal where TERMA60NOMECOMPUT <> '''' and TERMCTIPO=''C''';
  dm.sqlconsulta.Open;
  if not dm.sqlconsulta.IsEmpty then
    begin
      while not dm.sqlconsulta.eof do
        begin
          SQLProdutoPdvs.close;
          SQLProdutoPdvs.MacroByName('MFiltro').Value := 'PRODICOD='+SQLListaPRODICOD.AsString+' and TERMICOD='+dm.sqlconsulta.fieldbyname('TERMICOD').AsString;
          SQLProdutoPdvs.Open;
          if SQLProdutoPdvs.IsEmpty then
            SQLProdutoPdvs.append
          else
            SQLProdutoPdvs.edit;

          {Alimenta Campos}
          for i := 0 to sqlprodutoaux.FieldCount - 1 do
            begin
              try
                SQLProdutoPdvs.FieldByName(sqlprodutoaux.Fields[i].FieldName).AsVariant := sqlprodutoaux.Fields[i].AsVariant ;
              except
                Application.ProcessMessages;
              end;
            end;

          {Campo Fixo}
          SQLProdutoPdvs.FieldByName('TERMICOD').AsString := dm.SQLConsulta.fieldbyname('TERMICOD').AsString;
          SQLProdutoPdvs.FieldByName('EXCLUIR').AsString  := 'N';

          SQLProdutoPdvs.Post;

          {PULA Terminal}
          dm.sqlconsulta.next;
        end;
    end;
end;

procedure TFormTelaListaPreco.dsListaDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (not sqllista.IsEmpty) then
    if not (sqlLista.State in dsEditModes) then
    sqllista.edit;
end;

end.
