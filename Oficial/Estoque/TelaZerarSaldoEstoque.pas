unit TelaZerarSaldoEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, DB, DBTables, RxQuery, Buttons, jpeg,
  ExtCtrls, DBCtrls, StdCtrls, RxLookup, Grids, DBGrids, ComCtrls, VarSys,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvSmoothProgressBar,
  ppCtrls, ppDB, ppBands, ppPrnabl, ppClass, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, ppDBBDE, ppParameter;

type
  TFormTelaZeraSaldoEstoque = class(TFormTelaGeralTEMPLATE)
    SQLEmpresa: TRxQuery;
    SQLGrupo: TRxQuery;
    SQLSubGrupo: TRxQuery;
    SQLVariacao: TRxQuery;
    SQLMarca: TRxQuery;
    DSSQLGrupo: TDataSource;
    DSSQLSubGrupo: TDataSource;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    SQLGrupoPENDENTE: TStringField;
    SQLGrupoREGISTRO: TDateTimeField;
    SQLSubGrupoGRUPICOD: TIntegerField;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    SQLSubGrupoPENDENTE: TStringField;
    SQLSubGrupoREGISTRO: TDateTimeField;
    SQLVariacaoGRUPICOD: TIntegerField;
    SQLVariacaoSUBGICOD: TIntegerField;
    SQLVariacaoVARIICOD: TIntegerField;
    SQLVariacaoVARIA60DESCR: TStringField;
    SQLVariacaoPENDENTE: TStringField;
    SQLVariacaoREGISTRO: TDateTimeField;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    SQLMarcaPENDENTE: TStringField;
    SQLMarcaREGISTRO: TDateTimeField;
    ComboEmpresa: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    ComboGrupo: TRxDBLookupCombo;
    Label3: TLabel;
    ComboSubgrupo: TRxDBLookupCombo;
    Label4: TLabel;
    ComboVariacao: TRxDBLookupCombo;
    Label5: TLabel;
    ComboMarca: TRxDBLookupCombo;
    DSSQLEmpresa: TDataSource;
    DSSQLVariacao: TDataSource;
    DSSQLMarca: TDataSource;
    DBGridLista: TDBGrid;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLProdutoPRODA15CODANT: TStringField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODN3VLRCOMPRA: TFloatField;
    SQLProdutoPRODN3VLRCUSTO: TFloatField;
    DSSQLProduto: TDataSource;
    SQLProdutoPSLDN3QTDE: TFloatField;
    SQLConfigInventario: TRxQuery;
    SQLOperacaoEstoque: TRxQuery;
    SQLConfigInventarioOPESICODENTRADA: TIntegerField;
    SQLConfigInventarioOPESICODSAIDA: TIntegerField;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    SQLOperacaoEstoqueSERIA5COD: TStringField;
    SQLOperacaoEstoqueCFOPA5CODDENTROUF: TStringField;
    SQLOperacaoEstoqueCFOPA5CODFORAUF: TStringField;
    SQLOperacaoEstoqueOPESCENTRADASAIDA: TStringField;
    SQLOperacaoEstoqueOPESCORIGEMDESTINO: TStringField;
    SQLOperacaoEstoquePENDENTE: TStringField;
    SQLOperacaoEstoqueREGISTRO: TDateTimeField;
    SQLOperacaoEstoqueOPESA18CAMPOIMP: TStringField;
    SQLOperacaoEstoqueOPESCCALCIPI: TStringField;
    SQLOperacaoEstoqueOPESCCALCICMS: TStringField;
    SQLOperacaoEstoquePDVDA13ID: TStringField;
    DSSQLConfigInventario: TDataSource;
    SQLProdutoSaldo: TRxQuery;
    DSSQLProdutoDescricao: TDataSource;
    SQLProdutoDescricao: TRxQuery;
    SQLProdutoDescricaoPRODA60REFER: TStringField;
    ComboProdutoReferencia: TRxDBLookupCombo;
    Label7: TLabel;
    CKSaldoNeg: TCheckBox;
    SQLMovimentoEstoque: TRxQuery;
    SQLMovimentoEstoqueEMPRICOD: TIntegerField;
    SQLMovimentoEstoqueMVESDMOV: TDateTimeField;
    SQLMovimentoEstoqueMVESICOD: TIntegerField;
    SQLMovimentoEstoquePRODICOD: TIntegerField;
    SQLMovimentoEstoqueOPESICOD: TIntegerField;
    SQLMovimentoEstoqueMVESN3QTDENTRADA: TFloatField;
    SQLMovimentoEstoqueMVESN3QTDSAIDA: TFloatField;
    SQLMovimentoEstoqueCUPOA13ID: TStringField;
    SQLMovimentoEstoqueMOVDA13ID: TStringField;
    SQLMovimentoEstoqueNOCPA13ID: TStringField;
    SQLMovimentoEstoquePENDENTE: TStringField;
    SQLMovimentoEstoqueREGISTRO: TDateTimeField;
    SQLMovimentoEstoqueNOFIA13ID: TStringField;
    SQLMovimentoEstoquePDVDA13ID: TStringField;
    SQLMovimentoEstoqueLOTEA30NRO: TStringField;
    DSSQLMovimentoEstoque: TDataSource;
    UpdateSQLMovEstoque: TUpdateSQL;
    Label8: TLabel;
    EdCodProd: TEdit;
    BtnSelecionarDoc: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Progresso: TAdvSmoothProgressBar;
    BtListagem: TSpeedButton;
    PipeProdutos: TppBDEPipeline;
    PipeProdutosppField1: TppField;
    PipeProdutosppField2: TppField;
    PipeProdutosppField3: TppField;
    PipeProdutosppField4: TppField;
    PipeProdutosppField5: TppField;
    PipeProdutosppField6: TppField;
    PipeProdutosppField7: TppField;
    PipeProdutosppField8: TppField;
    ReportSaldo: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppFooterBand1: TppFooterBand;
    procedure FormCreate(Sender: TObject);
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtListagemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaZeraSaldoEstoque: TFormTelaZeraSaldoEstoque;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaZeraSaldoEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  if not UsuarioMaster then
    SQLEmpresa.MacroByName('MEmpresa').AsString := 'EMPRICOD = ' + IntToStr(EmpresaCorrente)
  else
    SQLEmpresa.MacroByName('MEmpresa').AsString := '0=0';

  SQLEmpresa.Open;
  SQLMarca.Open;
  SQLGrupo.Open;
  SQLSubGrupo.Open;
  SQLVariacao.Open;
  SQLProdutoDescricao.Open;
  ComboEmpresa.Value := EmpresaPadrao;
end;

procedure TFormTelaZeraSaldoEstoque.BtnSelecionarDocClick(Sender: TObject);
begin
  inherited;
  if ComboEmpresa.Value = '' then
    begin
      ShowMessage('Você deve selecionar uma empresa para continuar !');
      ComboEmpresa.SetFocus;
      Abort;
    end;
  SQLProduto.Close;
  SQLProduto.MacroByName('MEmpresa').Value := 'ProdutoSaldo.EMPRICOD = ' + ComboEmpresa.Value;

  if ComboMarca.Value <> '' then
    SQLProduto.MacroByName('MMarca').Value := 'Produto.MARCICOD = ' + ComboMarca.Value
  else
    SQLProduto.MacroByName('MMarca').Value := '0=0';

  if ComboGrupo.Value <> '' then
    SQLProduto.MacroByName('MGrupo').Value := 'Produto.GRUPICOD = ' + ComboGrupo.Value
  else
    SQLProduto.MacroByName('MGrupo').Value := '0=0';

  if ComboSubgrupo.Value <> '' then
    SQLProduto.MacroByName('MSubGrupo').Value := 'Produto.SUBGICOD = ' + ComboSubgrupo.Value
  else
    SQLProduto.MacroByName('MSubGrupo').Value := '0=0';

  if ComboVariacao.Value <> '' then
    SQLProduto.MacroByName('MVariacao').Value := 'Produto.VARIICOD = ' + ComboVariacao.Value
  else
    SQLProduto.MacroByName('MVariacao').Value := '0=0';

  if ComboProdutoReferencia.Value <> '' then
    SQLProduto.MacroByName('MReferencia').Value := 'Produto.PRODA60REFER = ' +''''+ComboProdutoReferencia.Value+''''
  else
    SQLProduto.MacroByName('MReferencia').Value := '0=0';

  if EdCodProd.Text <> '' then
    SQLProduto.MacroByName('MProduto').Value := 'Produto.PRODICOD = ' + EdCodProd.Text
  else
    SQLProduto.MacroByName('MProduto').Value := '0=0';

  if CKSaldoNeg.Checked then
    SQLProduto.MacroByName('MSaldoNeg').Value := 'ProdutoSaldo.PSLDN3QTDE < 0'
  else
    SQLProduto.MacroByName('MSaldoNeg').Value := 'ProdutoSaldo.PSLDN3QTDE <> 0';
  SQLProduto.Open;

end;

procedure TFormTelaZeraSaldoEstoque.SpeedButton1Click(Sender: TObject);
var
  QtdeSaida, QtdeEntrada : Double;
  CodOperacaoEstoque : integer;
  EntradaSaida : String;
begin
  inherited;
  if SQLProduto.IsEmpty then
    begin
      Informa('Você deve selecionar os produtos antes de zerar o saldo!');
      Abort;
    end;
  SQLConfigInventario.Close;
  SQLConfigInventario.Open;
  if SQLConfigInventario.IsEmpty then
    begin
      Informa('Você deve configurar as operações de estoque para entrada e saída, nas configurações de inventário para completar esta operação !');
      Abort;
    end;
  SQLOperacaoEstoque.Close;
  SQLOperacaoEstoque.Open;
  if SQLOperacaoEstoqueOPESCENTRADASAIDA.AsString = '' then
    begin
      Informa('A operação de estoque configurada está incompleta verifique o cadastro de operações de estoque !');
      Abort;
    end;
  SQLProduto.First;

  SQLMovimentoEstoque.Close;
  SQLMovimentoEstoque.Open;

  Progresso.Minimum      := 0;
  Progresso.Position     := 0;
  Progresso.Maximum      := SQLProduto.RecordCount;
  Progresso.Update;

  DM.DB.StartTransaction;
  while not SQLProduto.Eof do
    begin
      if SQLProdutoPSLDN3QTDE.AsFloat > 0 then
        QtdeSaida   := ABS(SQLProdutoPSLDN3QTDE.AsFloat)
      else
        QtdeSaida   := 0;
      if SQLProdutoPSLDN3QTDE.AsFloat < 0 then
        QtdeEntrada := abs(SQLProdutoPSLDN3QTDE.AsFloat)
      else
        QtdeEntrada := 0;

      if QtdeEntrada > 0 then
        begin
          CodOperacaoEstoque := SQLConfigInventarioOPESICODENTRADA.AsInteger;
          EntradaSaida := 'E';
        end
      else
        begin
          CodOperacaoEstoque := SQLConfigInventarioOPESICODSAIDA.AsInteger;
          EntradaSaida := 'S';
        end;

      // Cria Movimento Estoque
      SQLMovimentoEstoque.Append;
      SQLMovimentoEstoqueEMPRICOD.AsInteger       := ComboEmpresa.KeyValue;
      SQLMovimentoEstoqueMVESDMOV.AsString        := FormatDateTime('dd/mm/yyyy',Now);
      SQLMovimentoEstoqueMVESICOD.AsVariant       := DM.ProximoCodigoUnico('MOVIMENTOESTOQUE',SQLMovimentoEstoque,DSSQLMovimentoEstoque,2);
      SQLMovimentoEstoqueMVESN3QTDENTRADA.AsFloat := QtdeEntrada;
      SQLMovimentoEstoqueMVESN3QTDSAIDA.AsFloat   := QtdeSaida;

      if QtdeEntrada > 0 then
        SQLMovimentoEstoqueOPESICOD.AsInteger     := SQLConfigInventarioOPESICODENTRADA.AsInteger
      else
        SQLMovimentoEstoqueOPESICOD.AsInteger     := SQLConfigInventarioOPESICODSAIDA.AsInteger;

      SQLMovimentoEstoquePRODICOD.AsInteger       := SQLProdutoPRODICOD.AsInteger;
      SQLMovimentoEstoqueMOVDA13ID.Value          := 'ZI.'+FormatDateTime('dd/mm/yy', Now);
      SQLMovimentoEstoqueLOTEA30NRO.AsString      := '';
      SQLMovimentoEstoquePENDENTE.AsString        := 'S';
      SQLMovimentoEstoqueREGISTRO.AsDateTime      := Now;
      SQLMovimentoEstoque.Post;
      SQLMovimentoEstoque.ApplyUpdates;

      SQLProdutoSaldo.Close;
      SQLProdutoSaldo.ParamByName('EMPRICOD').Value := ComboEmpresa.Value;
      SQLProdutoSaldo.ParamByName('PRODICOD').Value := SQLProdutoPRODICOD.AsString;
      SQLProdutoSaldo.ExecSQL;

      SQLProduto.Next;
      Progresso.Position := Progresso.Position + 1;
      Progresso.Update;
    end;
    try
      SQLMovimentoEstoque.CommitUpdates;
      if Dm.Db.InTransaction then
        Dm.Db.Commit;
      MessageDlg('Saldo Estoque atualizado com sucesso!', mtInformation, [mbOK], 0);
    except
      on E:Exception do
        begin
          SQLMovimentoEstoque.CancelUpdates;
          Dm.Db.Rollback;
          MessageDlg('Problemas ao atualizar saldo de estoque, ANOTE O ERRO: ' + #13 + E.Message, mtError, [mbOK], 0);
          Application.ProcessMessages;
        end;
    end;
    SQLProduto.Close;
end;

procedure TFormTelaZeraSaldoEstoque.BtListagemClick(Sender: TObject);
begin
  inherited;
  ReportSaldo.Print;
end;

end.
