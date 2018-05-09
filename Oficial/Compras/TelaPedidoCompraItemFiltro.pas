unit TelaPedidoCompraItemFiltro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, Grids, DBGrids, StdCtrls, ToolEdit,
  RxLookup, Buttons, Mask, DBCtrls, Placemnt, DB, DBTables, RxQuery, jpeg,
  ExtCtrls, FMTBcd, SqlExpr, IBCustomDataSet, IBQuery, MemTable, RxMemDS,
  {AbstractRODataset, ZDataset, ZAbstractDataset,}ppCtrls, ppPrnabl, ppViewr,
  ppClass, ppBands, ppCache, ppDB, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaPedidoCompraItemFiltro = class(TFormTelaGeralModalTemplate)
    SQLMarca: TRxQuery;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    DSSQLMarca: TDataSource;
    SQLFornecedor: TRxQuery;
    SQLFornecedorFORNICOD: TIntegerField;
    SQLFornecedorFORNA60RAZAOSOC: TStringField;
    SQLFornecedorFORNCSIMPLES: TStringField;
    DSSQLFornecedor: TDataSource;
    SQLSubGrupo: TRxQuery;
    SQLSubGrupoGRUPICOD: TIntegerField;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    DSSQLSubGrupo: TDataSource;
    SQLGrupo: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    DSSQLGrupo: TDataSource;
    SQLMarcaAux: TRxQuery;
    SQLMarcaAuxMARCICOD: TIntegerField;
    SQLMarcaAuxMARCA60DESCR: TStringField;
    SQLCorAux: TRxQuery;
    SQLCorAuxCORICOD: TIntegerField;
    SQLCorAuxCORA30DESCR: TStringField;
    SQLUnidadeAux: TRxQuery;
    SQLUnidadeAuxUNIDICOD: TIntegerField;
    SQLUnidadeAuxUNIDA5DESCR: TStringField;
    SQLUnidadeAuxPENDENTE: TStringField;
    SQLUnidadeAuxREGISTRO: TDateTimeField;
    SQLUnidadeAuxUNIDA15DESCR: TStringField;
    SQLUnidadeAuxUNIDCFRAC: TStringField;
    DSTblTempComprados: TDataSource;
    TblTempComprados: TTable;
    TblTempCompradosPRODICOD: TIntegerField;
    TblTempCompradosPRODA60DESCR: TStringField;
    TblTempCompradosQTDEMBAL: TIntegerField;
    TblTempCompradosPRODN3VLRCOMPRA: TFloatField;
    TblTempCompradosPRODN3VLRVENDA: TFloatField;
    TblTempCompradosQTDECOMPRADO: TFloatField;
    TblTempCompradosIPIPERC: TFloatField;
    TblTempCompradosCor: TStringField;
    TblTempCompradosRef: TStringField;
    TblTempCompradosMarca: TStringField;
    TblTempCompradosUltVlrCusto: TFloatField;
    TblTempCompradosSALDO: TFloatField;
    TblTempCompradosQTDETOTVENDA: TFloatField;
    TblTempCompradosQTDEULTCOMPRA: TFloatField;
    TblTempCompradosDATAULTCOMPRA: TDateField;
    TblTempCompradosPRODDULTVENDA: TDateField;
    TblTempCompradosPRODDPREVCOMPRA: TDateTimeField;
    DSTblTemporaria: TDataSource;
    DSSQLTotal: TDataSource;
    SQLTotal: TRxQuery;
    SQLTotalValorTotal: TFloatField;
    FormStorage1: TFormStorage;
    Label19: TLabel;
    DBEdit3: TDBEdit;
    Label14: TLabel;
    Label24: TLabel;
    ImageProduto: TImage;
    BtSugestao: TBitBtn;
    BTGravar: TBitBtn;
    BTFiltrar: TBitBtn;
    GroupFiltro: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label50: TLabel;
    Label49: TLabel;
    lbSimples: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    ComboGrupo: TRxDBLookupCombo;
    ComboSubGrupo: TRxDBLookupCombo;
    ComboFornecedor: TRxDBLookupCombo;
    ComboMarca: TRxDBLookupCombo;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    DE: TDateEdit;
    ATE: TDateEdit;
    CkPeriodoVendas: TCheckBox;
    EditProduto: TEdit;
    EditReferencia: TEdit;
    CKNegativo: TCheckBox;
    CKOrdemMarcaDescr: TCheckBox;
    EditCdPrincipal: TEdit;
    Panel3: TPanel;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label27: TLabel;
    DeCompras: TDateEdit;
    AteCompras: TDateEdit;
    ckPeriodoCompras: TCheckBox;
    TblTemporaria: TRxMemoryData;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaQTDEMBAL: TIntegerField;
    TblTemporariaPRODN3VLRCOMPRA: TFloatField;
    TblTemporariaPRODN3VLRVENDA: TFloatField;
    TblTemporariaQTDECOMPRADO: TFloatField;
    TblTemporariaSALDO: TFloatField;
    TblTemporariaDATAULTCOMPRA: TDateField;
    TblTemporariaIPIPERC: TFloatField;
    TblTemporariaQTDEULTCOMPRA: TFloatField;
    TblTemporariaQTDETOTVENDA: TFloatField;
    TblTemporariaReferencia: TStringField;
    TblTemporariaCor: TStringField;
    TblTemporariaMarca: TStringField;
    TblTemporariaUltVlrCusto: TFloatField;
    TblTemporariaPRODDULTVENDA: TDateField;
    TblTemporariaPRODDPREVCOMPRA: TDateTimeField;
    TblTemporariaPRODBIMAGEM: TBlobField;
    dsCompras: TDataSource;
    BTListagem: TBitBtn;
    PipePrincipal: TppDBPipeline;
    ppListagem: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLbEmpresa: TppLabel;
    pplbData: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText5: TppDBText;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    lbDCompra1: TppLabel;
    lbQCompra1: TppLabel;
    lbVCompra1: TppLabel;
    lbDCompra2: TppLabel;
    lbQCompra2: TppLabel;
    lbVCompra2: TppLabel;
    lbDCompra3: TppLabel;
    lbQCompra3: TppLabel;
    lbVCompra3: TppLabel;
    ppShape5: TppShape;
    ppLabel18: TppLabel;
    pplbEstoqueAtual: TppLabel;
    ppLabel9: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    pplbQtdeTotalCompras: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    dsProdSaldo: TDataSource;
    Label3: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Panel1: TPanel;
    LbProdEscolhidosCompra: TLabel;
    GridProdutosFiltrados: TDBGrid;
    Label29: TLabel;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    DBEdit10: TDBEdit;
    Label32: TLabel;
    DBEdit9: TDBEdit;
    Label31: TLabel;
    DBEdit7: TDBEdit;
    Label30: TLabel;
    DBEdit8: TDBEdit;
    Label33: TLabel;
    Panel5: TPanel;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit13: TDBEdit;
    Label21: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Label28: TLabel;
    DBEdit30: TDBEdit;
    Label1: TLabel;
    Label11: TLabel;
    lbProdFiltrados: TLabel;
    DBGrid1: TDBGrid;
    DBGrid3: TDBGrid;
    Panel9: TPanel;
    Label15: TLabel;
    lbQtdTotalCompras: TLabel;
    lbQtdTotalVendas: TLabel;
    lbQtdTotalSaldo: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    ppLabel5: TppLabel;
    ppDBText8: TppDBText;
    TblTemporariaBarrasPrincipal: TStringField;
    PipePrincipalppField19: TppField;
    ckComprasTodasFiliais: TCheckBox;
    zProdutos: TQuery;
    zProdSaldo: TQuery;
    zCompras: TQuery;
    zComprasNOCPDRECEBIMENTO: TDateTimeField;
    zComprasNOCIN3VLRUNIT: TFloatField;
    zComprasQTDCompra: TFloatField;
    zComprasOPESA60DESCR: TStringField;
    zComprasNOCPA30NRO: TStringField;
    sqlEmpresa: TRxQuery;
    dsEmpresa: TDataSource;
    sqlEmpresaEMPRICOD: TIntegerField;
    sqlEmpresaEMPRA60NOMEFANT: TStringField;
    Label34: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    procedure BTFiltrarClick(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure BtSugestaoClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GridProdutosFiltradosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DSSQLFornecedorDataChange(Sender: TObject; Field: TField);
    procedure TblTempCompradosBeforeDelete(DataSet: TDataSet);
    procedure TblTempCompradosAfterDelete(DataSet: TDataSet);
    procedure TblTempCompradosAfterPost(DataSet: TDataSet);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboSubGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridProdutosFiltradosExit(Sender: TObject);
    procedure GridProdutosFiltradosEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DSTblTemporariaDataChange(Sender: TObject; Field: TField);
    procedure TblTemporariaAfterPost(DataSet: TDataSet);
    procedure BTListagemClick(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppListagemPreviewFormCreate(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    NotaCompraID : string;
    FiltrandoItens : Boolean;
  end;

var
  FormTelaPedidoCompraItemFiltro: TFormTelaPedidoCompraItemFiltro;

implementation

uses DataModulo, WaitWindow, TelaPedidoCompraHistoricoComprasVendasProduto,
     CadastroPedidoCompraItem, CadastroProdutos, UnitLibrary, TelaFotoExpandida;

{$R *.dfm}

procedure TFormTelaPedidoCompraItemFiltro.BTFiltrarClick(Sender: TObject);
var Item, vtamanho, I, vRecord : integer;
    Clausula, vProduto, SQL : String;
begin
  inherited;
  FiltrandoItens := True;
  zCompras.Close;

  sql := 'Select PRODUTO.PRODICOD, PRODUTO.PRODA60REFER, PRODUTO.PRODA60DESCR, PRODUTO.PRODN3VLRVENDA, PRODUTO.PRODN3VLRCOMPRA, PRODUTO.PRODN3VLRCUSTO, ' +
                'PRODUTO.PRODN3CAPACEMBAL, PRODUTO.PRODN3PERCIPI, PRODUTO.PRODDULTCOMPRA, PRODUTO.PRODDULTVENDA, PRODUTO.PRODN3QTDULTCOMPRA, PRODUTO.PRODA60CODBAR, ' +
                'PRODUTO.PRODDPREVCOMPRA, PRODUTO.PRODBIMAGEM, COR.CORA30DESCR, MARCA.MARCA60DESCR ' ;

  sql := sql +  'From PRODUTO  left outer join COR   on PRODUTO.CORICOD  = COR.CORICOD ' +
                '              left outer join MARCA on PRODUTO.MARCICOD = MARCA.MARCICOD ' +
                'Where PRODUTO.PRODCATIVO = ''S'' ' ;

  if EditProduto.Text <> '' then
    begin
      vtamanho         := length(EditProduto.Text)+1;
      EditProduto.Text := Trim(EditProduto.Text)+' ';
      vProduto      := '%';
      For I := 1 to vtamanho do
        begin
          If Copy(EditProduto.Text,I,1)=' ' then
            vProduto := vProduto+'%'
          else
            vProduto := vProduto+copy(EditProduto.Text,I,1);
        end;
    end;

  if vProduto <> '' then
    sql := sql + ' and PRODA60DESCR LIKE ''' + vProduto + '''';

  if EditReferencia.Text <> '' then
    begin
      if Copy(EditReferencia.Text,1,1) = '*' then
        sql := sql + ' and PRODA60REFER LIKE ''%' + Copy(EditReferencia.Text,2,Length(EditReferencia.Text)-1) + '%'''
      else
        sql := sql + ' and PRODA60REFER LIKE ''' + EditReferencia.Text + '%''';
    end;

  if EditCdPrincipal.Text <> '' then
    sql := sql + ' and PRODUTO.PRODICOD = ' + EditCdPrincipal.Text;

  if ComboMarca.Value <> '' then
    sql := sql + ' and PRODUTO.MARCICOD = ' + ComboMarca.Value;

  if ComboGrupo.Value <> '' then
    sql := sql + ' and PRODUTO.GRUPICOD = ' + ComboGrupo.Value;

  if (ComboGrupo.Value <> '') and (ComboSubGrupo.Value <> '') then
    sql := sql + ' and PRODUTO.SUBGICOD = ' + ComboSubGrupo.Value;

  if ComboFornecedor.Value <> '' then
    sql := sql + ' and PRODUTO.PRODICOD in (select PRODICOD from ProdutoFornecedor where FORNICOD = ' + ComboFornecedor.KeyValue + ')';

  if CKNegativo.Checked then
  begin
    if EmpresaPadraoPedidosCompra = '0' then
      sql := sql + ' and PRODUTO.PRODICOD in (select PRODICOD from PRODUTOSALDO where PRODUTOSALDO.PRODICOD = PRODUTO.PRODICOD and PRODUTOSALDO.PSLDN3QTDE <= 0)'
    else
      sql := sql + ' and PRODUTO.PRODICOD in (select PRODICOD from PRODUTOSALDO where EMPRICOD = ' + EmpresaPadraoPedidosCompra +
                                      ' and PRODUTOSALDO.PRODICOD = PRODUTO.PRODICOD and PRODUTOSALDO.PSLDN3QTDE <= 0)';
  end
  else
  begin
    if EmpresaPadraoPedidosCompra = '0' then
      sql := sql + ' and PRODUTO.PRODICOD in (select PRODICOD from PRODUTOSALDO)'
    else
      sql := sql + ' and PRODUTO.PRODICOD in (select PRODICOD from PRODUTOSALDO where EMPRICOD = ' + EmpresaPadraoPedidosCompra +')';
  end;

  if not CKOrdemMarcaDescr.Checked then
    sql := sql + ' Order By PRODUTO.PRODA60DESCR, PRODUTO.PRODA60REFER'
  else
    sql := sql + ' Order By MARCA.MARCA60DESCR, PRODUTO.PRODA60DESCR, PRODUTO.PRODA60REFER';

  zProdutos.Close;
  zProdutos.sql.Clear;
  zProdutos.sql.Add(sql);
  zProdutos.Open;
  vRecord := zProdutos.RowsAffected;

  if zProdutos.IsEmpty then
    begin
      ShowMessage('Nenhum Produto Encontrado! Verifique Filtros!');
      Abort;
      Exit;
    end;

  TblTemporaria.Close ;
  TblTemporaria.Open ;

  Item := 1;
  DSTblTemporaria.OnDataChange := nil;
  TblTemporaria.DisableControls;
  MakeWindow(vRecord, 'Aguarde, Executando Filtro!');
  while not zProdutos.Eof do
    begin
      Application.ProcessMessages;
      SetProgress(Item);
      inc(Item);
      TblTemporaria.Append;
      try
        TblTemporariaPRODICOD.AsVariant           := zProdutos.fieldbyname('PRODICOD').AsVariant;
        TblTemporariaPRODA60DESCR.AsVariant       := zProdutos.fieldbyname('PRODA60DESCR').AsVariant;
        TblTemporariaPRODN3VLRVENDA.AsVariant     := zProdutos.fieldbyname('PRODN3VLRVENDA').AsVariant;
        TblTemporariaPRODN3VLRCOMPRA.AsVariant    := zProdutos.fieldbyname('PRODN3VLRCOMPRA').AsVariant *
                                                     zProdutos.fieldbyname('PRODN3CAPACEMBAL').AsVariant;
        TblTemporariaQTDEMBAL.AsVariant           := zProdutos.fieldbyname('PRODN3CAPACEMBAL').AsVariant;
        TblTemporariaIPIPERC.AsVariant            := zProdutos.fieldbyname('PRODN3PERCIPI').AsVariant;
        TblTemporariaPRODDPREVCOMPRA.AsString     := zProdutos.fieldbyname('PRODDPREVCOMPRA').AsString;
        TblTemporariaPRODDPREVCOMPRA.AsString     := zProdutos.fieldbyname('PRODDPREVCOMPRA').AsString;
        TblTemporariaDATAULTCOMPRA.AsVariant      := zProdutos.fieldbyname('PRODDULTCOMPRA').AsVariant;
        TblTemporariaReferencia.AsVariant         := zProdutos.fieldbyname('PRODA60REFER').AsVariant;
        TblTemporariaMarca.AsVariant              := zProdutos.fieldbyname('MARCA60DESCR').AsVariant;
        TblTemporariaCor.AsVariant                := zProdutos.fieldbyname('CORA30DESCR').AsVariant;
        TblTemporariaPRODBIMAGEM.AsVariant        := zProdutos.fieldbyname('PRODBIMAGEM').AsVariant;
        TblTemporariaBarrasPrincipal.AsVariant    := zProdutos.fieldbyname('PRODA60CODBAR').AsVariant;
        TblTemporariaQTDETOTVENDA.Value           := 0;

        // Saldo de Estoque
        dm.zConsulta.Close;
        dm.zConsulta.Sql.Clear;
        if EmpresaPadraoPedidosCompra = '0' then
          dm.zConsulta.Sql.Add('Select PSLDN3QTDE from PRODUTOSALDO Where PRODICOD = '+zProdutos.fieldbyname('PRODICOD').AsString)
        else
          dm.zConsulta.Sql.Add('Select PSLDN3QTDE from PRODUTOSALDO Where PRODICOD = '+zProdutos.fieldbyname('PRODICOD').AsString+' and EMPRICOD = ' + EmpresaPadraoPedidosCompra);
        dm.zConsulta.Open;
        try
          TblTemporariaSALDO.AsString := FormatFloat('##0.000',dm.zConsulta.fieldbyname('PSLDN3QTDE').AsVariant);
        except
          Application.ProcessMessages;
        end;

        if not CkPeriodoVendas.Checked then
          begin
            // Alimenta a qtd total de venda.
            {sql := 'Select SUM(CPITN3QTD) from CUPOMITEM where (CPITCSTATUS=''A'') and (CPITN3QTD>0) and (EMPRICOD='+EmpresaPadraoPedidosCompra+')'+
                   ' and (PRODICOD='+TblTemporariaPRODICOD.AsString+') and (REGISTRO>= '''+FormatDateTime('mm/dd/yyyy',DE.Date)+''' and CUPOMITEM.REGISTRO<='''+FormatDateTime('mm/dd/yyyy',ATE.Date)+''')';
            dm.zConsulta.Close;
            dm.zConsulta.Sql.Clear;
            dm.zConsulta.Sql.Add(sql);
            dm.zConsulta.Open;
            if not dm.zConsulta.IsEmpty then
              TblTemporariaQTDETOTVENDA.AsVariant := dm.zConsulta.fieldbyname('SUM').AsVariant;}

            // Alimenta quantidade vendida e data da ultima venda.
            sql := 'select CPITN3QTD, REGISTRO from CUPOMITEM where (CPITCSTATUS<>''C'') and (CPITN3QTD>0) and (PRODICOD='+TblTemporariaPRODICOD.AsString+')';
            if EmpresaPadraoPedidosCompra = '0' then
              sql := sql + ' and 0 = 0'
            else
              sql := sql + 'and (EMPRICOD='+EmpresaPadraoPedidosCompra+')';
            sql := sql + ' and (REGISTRO>='''+FormatDateTime('mm/dd/yyyy',De.Date)+''' and REGISTRO<='''+FormatDateTime('mm/dd/yyyy',ATE.Date)+' 23:59:59'') order by REGISTRO DESC';
            dm.zConsulta.Close;
            dm.zConsulta.Sql.Clear;
            dm.zConsulta.Sql.Add(sql);
            addLog(sql, ExtractFilePath(Application.ExeName) + 'LogSqlQTDTOTALVENDA.txt'); 
            dm.zConsulta.Open;
            sql := '';
            if not dm.zConsulta.IsEmpty then
              TblTemporariaPRODDULTVENDA.AsVariant  := dm.zConsulta.fieldbyname('REGISTRO').AsVariant;
            if not dm.zConsulta.IsEmpty then
              begin
                while not dm.zConsulta.eof do
                  begin
                    TblTemporariaQTDETOTVENDA.AsVariant := TblTemporariaQTDETOTVENDA.AsVariant + dm.zConsulta.fieldbyname('CPITN3QTD').AsVariant;
                    dm.zConsulta.next;
                  end;
              end;
          end;

        TblTemporaria.Post;
      except
        Application.ProcessMessages;
      end;
      zProdutos.Next;
    end;
  DestroyWindow;
  TblTemporaria.EnableControls;
  DSTblTemporaria.OnDataChange := DSTblTemporariaDataChange;
  FiltrandoItens := False;
  lbProdFiltrados.Caption := 'Total Produtos Filtrados => '  + inttostr(TblTemporaria.RecordCount) + ' Registros Encontrados...';
  lbProdFiltrados.Update;
  TblTemporaria.First;
  DBGrid1.SetFocus;
end;

procedure TFormTelaPedidoCompraItemFiltro.BtnFecharTelaClick(Sender: TObject);
begin
  inherited;
  If Application.MessageBox(PCHAR('Não esqueca de gravar o seu pedido!'+CHR(13)+'Tem certeza que deseja fechar a tela?'),'Atenção',MB_YesNo+MB_IconQuestion+MB_SYSTEMMODAL)=Id_Yes Then
    inherited;
end;

procedure TFormTelaPedidoCompraItemFiltro.BtSugestaoClick(Sender: TObject);
begin
  inherited;
  if CkPeriodoVendas.Checked then
    begin
      ShowMessage('Atenção! A Sugestão não pode ser usada sem informar um período de vendas'+chr(13)+
                  'para analise da quantidade a ser sugerida para compra!' );
      Exit;
    end;

  TblTemporaria.first;
  while not TblTemporaria.Eof do
    begin
      if (TblTemporariaQTDETOTVENDA.Value > TblTemporariaSALDO.Value) or
         (TblTemporariaQTDETOTVENDA.Value = TblTemporariaSALDO.Value) then
        begin
          TblTempComprados.Close;
          TblTempComprados.Open;
          TblTempComprados.Last;
          TblTempComprados.Append;
          TblTempCompradosPRODICOD.Value        := TblTemporariaPRODICOD.Value;
          TblTempCompradosPRODA60DESCR.Value    := TblTemporariaPRODA60DESCR.Value;
          TblTempCompradosQTDEMBAL.Value        := TblTemporariaQTDEMBAL.Value;
          if (TblTemporariaQTDETOTVENDA.Value > TblTemporariaSALDO.Value) then
            TblTempCompradosQTDECOMPRADO.Value    := (TblTemporariaQTDETOTVENDA.Value - TblTemporariaSALDO.Value)/TblTemporariaQTDEMBAL.Value;
          if (TblTemporariaQTDETOTVENDA.Value = TblTemporariaSALDO.Value) then
            TblTempCompradosQTDECOMPRADO.Value     := TblTemporariaQTDETOTVENDA.Value/TblTemporariaQTDEMBAL.Value;
          TblTempCompradosPRODN3VLRCOMPRA.Value    := TblTemporariaPRODN3VLRCOMPRA.Value;
          TblTempCompradosPRODN3VLRVENDA.Value     := TblTemporariaPRODN3VLRVENDA.Value;
          TblTempCompradosUltVlrCusto.Value        := TblTemporariaUltVlrCusto.Value;
          TblTempCompradosIPIPERC.Value            := TblTemporariaIPIPERC.Value;
          TblTempCompradosCor.Value                := TblTemporariaCor.Value;
          TblTempCompradosRef.Value                := TblTemporariaReferencia.Value;
          TblTempCompradosMarca.Value              := TblTemporariaMarca.Value;
          TblTempCompradosSALDO.Value              := TblTemporariaSALDO.Value;
          TblTempCompradosDATAULTCOMPRA.AsString   := TblTemporariaDATAULTCOMPRA.AsString;
          TblTempCompradosQTDEULTCOMPRA.Value      := TblTemporariaQTDEULTCOMPRA.Value;
          TblTempCompradosQTDETOTVENDA.Value       := TblTemporariaQTDETOTVENDA.Value;
          TblTempCompradosPRODDULTVENDA.AsVariant  := TblTemporariaPRODDULTVENDA.AsVariant;
          TblTempComprados.Post;
        end;
      TblTemporaria.Next;
    end;
  TblTemporaria.first;
end;

procedure TFormTelaPedidoCompraItemFiltro.DBGrid1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
   if gdSelected in State then
      DBGrid1.Canvas.Brush.Color := $00E0C8B0
   else
      begin
        if Odd(tbltemporaria.RecNo) then
          DBGrid1.Canvas.Brush.Color := $00F7F0EA
        else
          DBGrid1.Canvas.Brush.Color := DBGrid1.Color;
      end;

 DBGrid1.Canvas.font.Color := clBlack;
 DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormTelaPedidoCompraItemFiltro.GridProdutosFiltradosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if gdSelected in State then
    GridProdutosFiltrados.Canvas.Brush.Color := $00E0C8B0
  else
    begin
      if Odd(TblTempComprados.RecNo) then
        GridProdutosFiltrados.Canvas.Brush.Color := $00F7F0EA
      else
        GridProdutosFiltrados.Canvas.Brush.Color := GridProdutosFiltrados.Color;
    end;

  GridProdutosFiltrados.Canvas.font.Color := clBlack;
  GridProdutosFiltrados.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormTelaPedidoCompraItemFiltro.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  FormTelaPedidoCompraItemFiltro.KeyPreview := False;
end;

procedure TFormTelaPedidoCompraItemFiltro.DSSQLFornecedorDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if SQLFornecedor.FieldByName('FORNCSIMPLES').Value = 'S' then
    lbSimples.Visible := True
  else
    lbSimples.Visible := False;

  lbSimples.Update;
end;

procedure TFormTelaPedidoCompraItemFiltro.TblTempCompradosBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  dm.SQLTemplate.Close;
  dm.SQLTemplate.SQL.Clear;
  dm.SQLTemplate.SQL.add('Delete From PedidoCompraItem Where PRODICOD = ' + TblTempCompradosPRODICOD.AsString +
                         ' and PDCPA13ID = ''' + NotaCompraID + '''');
  dm.SQLTemplate.ExecSQL;
  LbProdEscolhidosCompra.Caption := ' Produtos Escolhidos para Compra => '+ IntToStr(TblTempComprados.RecordCount)+' Registros Encontrados... ';
  LbProdEscolhidosCompra.Update;
end;

procedure TFormTelaPedidoCompraItemFiltro.TblTempCompradosAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  SQLTotal.Close;
  SQLTotal.Open;
end;

procedure TFormTelaPedidoCompraItemFiltro.TblTempCompradosAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  SQLTotal.Close;
  SQLTotal.Open;
end;

procedure TFormTelaPedidoCompraItemFiltro.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  BlobStream : TStream;
  JPEGImage  : TJPEGImage;
begin
  inherited;
  if Key = VK_F8 then
    begin
      // Mostra Imagem Associada ao Produto
      if TblTemporariaPRODBIMAGEM.BlobSize <> 0 then
      begin
        BlobStream:= TblTemporaria.CreateBlobStream(TblTemporariaPRODBIMAGEM,bmRead);
        JPEGImage := TJPEGImage.Create;
        try
          JPEGImage.LoadFromStream(BlobStream);
          ImageProduto.Picture.Assign(JPEGImage);
        finally
          BlobStream.Free;
          JPEGImage.Free;
        end;
      end
      else
        ImageProduto.Picture:=nil;

      Application.CreateForm(TFormTelaFotoExpandida,FormTelaFotoExpandida);
      FormTelaFotoExpandida.Foto.Picture.Assign(ImageProduto.Picture);
      FormTelaFotoExpandida.ShowModal;
    end;
  if Key = VK_F9 then
    begin
      Application.CreateForm(TFormTelaPedidoCompraHistoricoComprasVendasProduto,FormTelaPedidoCompraHistoricoComprasVendasProduto);
      FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLNotasCompra.Close;
      FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLNotasCompra.MacroByName('MEmpresa').Value := 'NotaCompra.EMPRICODDESTCOMPRA = '+EmpresaPadraoPedidosCompra;
      FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLNotasCompra.MacroByName('MProduto').Value := 'NotaCompraItem.PRODICOD = '+TblTemporariaPRODICOD.AsString;
      FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLNotasCompra.Open;

      FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLVendas.Close;
      FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLVendas.MacroByName('MEmpresa').Value  := 'CUPOM.EMPRICOD = '+EmpresaPadraoPedidosCompra;
      FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLVendas.MacroByName('MEmpresa1').Value := 'NOTAFISCAL.EMPRICOD = '+EmpresaPadraoPedidosCompra;
      FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLVendas.MacroByName('MProduto').Value  := 'CUPOMITEM.PRODICOD = '+TblTemporariaPRODICOD.AsString;
      FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLVendas.MacroByName('MProduto1').Value := 'NOTAFISCALITEM.PRODICOD = '+TblTemporariaPRODICOD.AsString;
      FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLVendas.MacroByName('MFiltro').Value   := 'CUPOM.CUPODEMIS > '''+FormatDateTime('mm/dd/yyyy',Date-90)+'''';
      FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLVendas.MacroByName('MFiltro1').Value  := 'NOTAFISCAL.NOFIDEMIS > '''+FormatDateTime('mm/dd/yyyy',Date-90)+'''';
      FormTelaPedidoCompraHistoricoComprasVendasProduto.SQLVendas.Open;
      FormTelaPedidoCompraHistoricoComprasVendasProduto.LBProduto.Caption := 'Produto => '+TblTemporariaPRODICOD.AsString+'-'+TblTemporariaPRODA60DESCR.Value;
      FormTelaPedidoCompraHistoricoComprasVendasProduto.ShowModal;
    end;
end;

procedure TFormTelaPedidoCompraItemFiltro.ComboFornecedorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  case key of
    VK_RETURN : begin
                  If (Sender as TRxDBLookupCombo).IsDropDown Then
                    begin
                      (Sender as TRxDBLookUpCombo).CloseUp(True);
                      Application.ProcessMessages;
                    end;
                end;
  end;
end;

procedure TFormTelaPedidoCompraItemFiltro.ComboSubGrupoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  case key of
    VK_RETURN : begin
                  If (Sender as TRxDBLookupCombo).IsDropDown Then
                    begin
                      (Sender as TRxDBLookUpCombo).CloseUp(True);
                      Application.ProcessMessages;
                    end;
                end;
  end;
end;

procedure TFormTelaPedidoCompraItemFiltro.ComboGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  case key of
    VK_RETURN : begin
                  If (Sender as TRxDBLookupCombo).IsDropDown Then
                    begin
                      (Sender as TRxDBLookUpCombo).CloseUp(True);
                      Application.ProcessMessages;
                    end;
                end;
  end;
end;

procedure TFormTelaPedidoCompraItemFiltro.ComboMarcaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  case key of
    VK_RETURN : begin
                  If (Sender as TRxDBLookupCombo).IsDropDown Then
                    begin
                      (Sender as TRxDBLookUpCombo).CloseUp(True);
                      Application.ProcessMessages;
                    end;
                end;
  end;
end;

procedure TFormTelaPedidoCompraItemFiltro.GridProdutosFiltradosExit(
  Sender: TObject);
begin
  inherited;
  FormTelaPedidoCompraItemFiltro.KeyPreview := True;
end;

procedure TFormTelaPedidoCompraItemFiltro.GridProdutosFiltradosEnter(
  Sender: TObject);
begin
  inherited;
  FormTelaPedidoCompraItemFiltro.KeyPreview := False;
end;

procedure TFormTelaPedidoCompraItemFiltro.FormShow(Sender: TObject);
begin
  inherited;
  de.SetFocus;
end;

procedure TFormTelaPedidoCompraItemFiltro.FormCreate(Sender: TObject);
begin
  inherited;
  top   := 0;
  Left  := 0;
  Height := screen.Height;
  Width  := screen.Width;

  de.Date  := now-30;
  ATE.Date := now;
  DeCompras.Date  := now-30;
  AteCompras.Date := now;

  TblTempComprados.Close ;
  try
    TblTempComprados.DeleteTable ;
    TblTempComprados.CreateTable ;
  except
    on E:Exception do
      begin
        if pos('Table is busy',E.Message) > 0 then
          ShowMessage('A tabela já está sendo usada por outro módulo, por favor verifique e tente novamente.');
        TblTempComprados.CreateTable ;
      end;
  end ;
  TblTempComprados.Open;
  SQLMarca.Open;
  SQLGrupo.Open;
  SQLSubGrupo.Open;
  SQLFornecedor.Open;
  sqlEmpresa.Open;
  RxDBLookupCombo1.Value := 'Todas';
  RxDBLookupCombo1Change(sender);
//  RxDBLookupCombo1.Value := sqlEmpresaEMPRICOD.AsString;
end;

procedure TFormTelaPedidoCompraItemFiltro.DSTblTemporariaDataChange(
  Sender: TObject; Field: TField);
var sql : string;
var vQtdeCompraTtotal : double;
var i : integer;
begin
  inherited;
  if FiltrandoItens then exit;

  vQtdeCompraTtotal := 0;

  if not FiltrandoItens and (TblTemporariaPRODICOD.AsString <> '') then
    begin
      zProdSaldo.Close;
      zProdSaldo.sql.Clear;
      zProdSaldo.sql.Add('Select EMPRICOD, PSLDN3QTDE, PSLDN3QTDMIN from PRODUTOSALDO where PRODICOD='+TblTemporariaPRODICOD.AsString);
      zProdSaldo.Open;
    end;

  if ( not ckPeriodoCompras.Checked) and (TblTemporariaPRODICOD.AsString <> '') then
    begin
      //     ' and N.EMPRICODDESTCOMPRA = '+EmpresaPadraoPedidosCompra +

      sql := ' Select N.NOCPA30NRO, N.NOCPDRECEBIMENTO, I.NOCIN3VLRUNIT, I.NOCIN3QTDEMBAL*I.NOCIN3CAPEMBAL as QTDCompra, E.OPESA60DESCR ' +
             ' From NotaCompraItem I left join NotaCompra N on N.nocpa13id = I.nocpa13id ' +
             ' left join OPERACAOESTOQUE E on E.OPESICOD = N.OPESICOD ' +
             ' Where (N.NOCPCSTATUS<>''C'')' ;
      if not ckComprasTodasFiliais.Checked then
        sql := sql + ' and N.EMPRICODDESTCOMPRA = '+EmpresaPadraoPedidosCompra ;

      sql := sql + ' and I.PRODICOD = '+TblTemporariaPRODICOD.AsString + ' and N.NOCPDRECEBIMENTO >= '''+
                   FormatDateTime('mm/dd/yyyy',DeCompras.Date)+''' and N.NOCPDRECEBIMENTO <= '''+FormatDateTime('mm/dd/yyyy',AteCompras.Date)+''' ' +
                   ' Order by N.NOCPDRECEBIMENTO DESC';

      zCompras.Close;
      zCompras.SQL.Clear;
      zCompras.SQL.Add(sql);
      zCompras.Open;
      if not zCompras.IsEmpty then
        begin
          zCompras.First;
          while not zCompras.eof do
            begin
              if zCompras.fieldbyname('QTDCompra').AsFloat>0 then
                vQtdeCompraTtotal := vQtdeCompraTtotal + zCompras.fieldbyname('QTDCompra').AsFloat;
              zcompras.Next;
            end;
          zCompras.First;
        end;
      // atualiza totais resumo
      lbQtdTotalCompras.Caption := FormatFloat('##0.000',vQtdeCompraTtotal);
      lbQtdTotalVendas.Caption  := FormatFloat('##0.000',TblTemporariaQTDETOTVENDA.Value);
      lbQtdTotalSaldo.Caption   := FormatFloat('##0.000',vQtdeCompraTtotal-TblTemporariaQTDETOTVENDA.Value);
      lbQtdTotalCompras.update;
      lbQtdTotalVendas.update;
      lbQtdTotalSaldo.update;
    end;
end;

procedure TFormTelaPedidoCompraItemFiltro.TblTemporariaAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  if (TblTemporariaQTDECOMPRADO.Value > 0) and (TblTemporariaPRODN3VLRCOMPRA.Value > 0) then
    begin
      TblTempComprados.Close;
      TblTempComprados.Open;
      TblTempComprados.First;
      if TblTempComprados.Locate('PRODICOD',TblTemporariaPRODICOD.AsString,[]) then
        begin
          if Pergunta('NAO','Atenção! Este Produto já foi incluído na lista de compra! Deseja Prosseguir?') then
            begin
              TblTempComprados.Last;
              TblTempComprados.Append;
              TblTempCompradosPRODICOD.Value           := TblTemporariaPRODICOD.Value;
              TblTempCompradosPRODA60DESCR.Value       := TblTemporariaPRODA60DESCR.Value;
              TblTempCompradosQTDEMBAL.Value           := TblTemporariaQTDEMBAL.Value;
              TblTempCompradosQTDECOMPRADO.Value       := TblTemporariaQTDECOMPRADO.Value;
              TblTempCompradosPRODN3VLRCOMPRA.Value    := TblTemporariaPRODN3VLRCOMPRA.Value;
              TblTempCompradosPRODN3VLRVENDA.Value     := TblTemporariaPRODN3VLRVENDA.Value;
              TblTempCompradosUltVlrCusto.Value        := TblTemporariaUltVlrCusto.Value;
              TblTempCompradosIPIPERC.Value            := TblTemporariaIPIPERC.Value;
              TblTempCompradosCor.Value                := TblTemporariaCor.Value;
              TblTempCompradosRef.Value                := TblTemporariaReferencia.Value;
              TblTempCompradosMarca.Value              := TblTemporariaMarca.Value;
              TblTempCompradosSALDO.Value              := TblTemporariaSALDO.Value;
              TblTempCompradosDATAULTCOMPRA.AsString   := TblTemporariaDATAULTCOMPRA.AsString;
              TblTempCompradosQTDEULTCOMPRA.Value      := TblTemporariaQTDEULTCOMPRA.Value;
              TblTempCompradosQTDETOTVENDA.Value       := TblTemporariaQTDETOTVENDA.Value;
              TblTempCompradosPRODDULTVENDA.AsVariant  := TblTemporariaPRODDULTVENDA.AsVariant;
              TblTempCompradosPRODDPREVCOMPRA.AsString := TblTemporariaPRODDPREVCOMPRA.AsString;
              TblTempComprados.Post;
            end;
        end
      else
        begin
          TblTempComprados.Last;
          TblTempComprados.Append;
          TblTempCompradosPRODICOD.Value           := TblTemporariaPRODICOD.Value;
          TblTempCompradosPRODA60DESCR.Value       := TblTemporariaPRODA60DESCR.Value;
          TblTempCompradosQTDEMBAL.Value           := TblTemporariaQTDEMBAL.Value;
          TblTempCompradosQTDECOMPRADO.Value       := TblTemporariaQTDECOMPRADO.Value;
          TblTempCompradosPRODN3VLRCOMPRA.Value    := TblTemporariaPRODN3VLRCOMPRA.Value;
          TblTempCompradosPRODN3VLRVENDA.Value     := TblTemporariaPRODN3VLRVENDA.Value;
          TblTempCompradosUltVlrCusto.Value        := TblTemporariaUltVlrCusto.Value;
          TblTempCompradosIPIPERC.Value            := TblTemporariaIPIPERC.Value;
          TblTempCompradosCor.Value                := TblTemporariaCor.Value;
          TblTempCompradosRef.Value                := TblTemporariaReferencia.Value;
          TblTempCompradosMarca.Value              := TblTemporariaMarca.Value;
          TblTempCompradosSALDO.Value              := TblTemporariaSALDO.Value;
          TblTempCompradosDATAULTCOMPRA.AsString   := TblTemporariaDATAULTCOMPRA.AsString;
          TblTempCompradosQTDEULTCOMPRA.Value      := TblTemporariaQTDEULTCOMPRA.Value;
          TblTempCompradosQTDETOTVENDA.Value       := TblTemporariaQTDETOTVENDA.Value;
          TblTempCompradosPRODDULTVENDA.AsVariant  := TblTemporariaPRODDULTVENDA.AsVariant;
          TblTempCompradosPRODDPREVCOMPRA.AsString := TblTemporariaPRODDPREVCOMPRA.AsString;
          TblTempComprados.Post;
        end;
      LbProdEscolhidosCompra.Caption := ' Produtos Escolhidos para Compra => '+ IntToStr(TblTempComprados.RecordCount)+' Registros Encontrados... ';
      LbProdEscolhidosCompra.Update;
    end;
end;

procedure TFormTelaPedidoCompraItemFiltro.BTListagemClick(Sender: TObject);
begin
  inherited;
  // Montar Listagem para apoio a Compras
  FiltrandoItens := True;
  if not zProdutos.IsEmpty then
    ppListagem.Print
  else
    ShowMessage('Nenhum Registro Encontrado!');
  FiltrandoItens := False;  
end;

procedure TFormTelaPedidoCompraItemFiltro.ppDetailBand1BeforePrint(
  Sender: TObject);
var sql, Teste : String;
var qCompras : double;
begin
  inherited;
  qCompras := 0;

  if ( not ckPeriodoCompras.Checked) and (TblTemporariaPRODICOD.AsString <> '') then
    begin
      sql := ' Select FIRST 3 N.NOCPA30NRO, N.NOCPDRECEBIMENTO, I.NOCIN3VLRUNIT, I.NOCIN3QTDEMBAL*I.NOCIN3CAPEMBAL as QTDCompra, E.OPESA60DESCR ' +
             ' From NotaCompraItem I left join NotaCompra N on N.nocpa13id = I.nocpa13id ' +
             ' left join OPERACAOESTOQUE E on E.OPESICOD = N.OPESICOD ' +
             ' Where (N.NOCPCSTATUS<>''C'')' +
             ' and N.EMPRICODDESTCOMPRA = '+EmpresaPadraoPedidosCompra +
             ' and I.PRODICOD = '+TblTemporariaPRODICOD.AsString + ' and N.NOCPDRECEBIMENTO >= '''+
              FormatDateTime('mm/dd/yyyy',DeCompras.Date)+''' and N.NOCPDRECEBIMENTO <= '''+FormatDateTime('mm/dd/yyyy',AteCompras.Date)+''' ' +
             ' Order by N.NOCPDRECEBIMENTO DESC';

      zCompras.Close;
      zCompras.SQL.Clear;
      zCompras.SQL.Add(sql);
      zCompras.Open;
      if not zCompras.IsEmpty then
        begin
          zcompras.First;
          while not zCompras.eof do
            begin
              if zCompras.RecNo = 1 then
                begin
                  lbDcompra1.Caption := zComprasNOCPDRECEBIMENTO.AsString;
                  lbQcompra1.Caption := zComprasQTDCompra.AsString;
                  lbVcompra1.Caption := zComprasNOCIN3VLRUNIT.AsString;
                  qCompras := qCompras + zComprasQTDCompra.Value;
                end;
              if zCompras.RecNo = 2 then
                begin
                  lbDcompra2.Caption := zComprasNOCPDRECEBIMENTO.AsString;
                  lbQcompra2.Caption := zComprasQTDCompra.AsString;
                  lbVcompra2.Caption := zComprasNOCIN3VLRUNIT.AsString;
                  qCompras := qCompras + zComprasQTDCompra.Value;
                end;
              if zCompras.RecNo = 3 then
                begin
                  lbDcompra3.Caption := zComprasNOCPDRECEBIMENTO.AsString;
                  lbQcompra3.Caption := zComprasQTDCompra.AsString;
                  lbVcompra3.Caption := zComprasNOCIN3VLRUNIT.AsString;
                  qCompras := qCompras + zComprasQTDCompra.Value;
                end;
              zcompras.Next;
            end;
          pplbQtdeTotalCompras.Caption := FormatFloat('##0.000',qCompras);
          pplbEstoqueAtual.Caption := FormatFloat('##0.000',qCompras-TblTemporariaQTDETOTVENDA.Value);
        end
      else
        begin
          lbDcompra1.Caption := '';
          lbQcompra1.Caption := '';
          lbVcompra1.Caption := '';
          lbDcompra2.Caption := '';
          lbQcompra2.Caption := '';
          lbVcompra2.Caption := '';
          lbDcompra3.Caption := '';
          lbQcompra3.Caption := '';
          lbVcompra3.Caption := '';
          pplbQtdeTotalCompras.Caption := '0,00';
          pplbEstoqueAtual.Caption := FormatFloat('##0.000',TblTemporariaQTDETOTVENDA.Value);
        end;
    end;
end;

procedure TFormTelaPedidoCompraItemFiltro.ppHeaderBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppLbEmpresa.Caption := 'Empresa: '+ SQLLocate('empresa','empricod','EMPRA60NOMEFANT',EmpresaPadraoPedidosCompra);
  pplbData.Caption    := 'Data: ' + FormatDateTime('dd/mm/yyyy',now);
end;

procedure TFormTelaPedidoCompraItemFiltro.ppListagemPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppListagem.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppListagem.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormTelaPedidoCompraItemFiltro.RxDBLookupCombo1Change(
  Sender: TObject);
begin
  inherited;
  if RxDBLookupCombo1.Value = 'Todas' then
    EmpresaPadraoPedidosCompra := '0'
  else
    EmpresaPadraoPedidosCompra := sqlEmpresaEMPRICOD.AsString;
end;

end.

