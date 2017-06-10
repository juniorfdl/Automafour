unit CadastroTrocasItem;

interface

uses
  FormResources, VarSYS, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, ppCtrls, ppVar, ppPrnabl, ppClass, ppDB,
  ppBands, ppCache, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, Placemnt,
  ToolEdit, CurrEdit, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel ;

type
  TFormCadastroTrocasItem = class(TFormCadastroTEMPLATE)
    SQLTemplateMOVDA13ID: TStringField;
    SQLTemplateMVDIIITEM: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateMVDIN3QTD: TFloatField;
    SQLTemplateProdutoLookup: TStringField;
    MnImprimirItens: TMenuItem;
    SQLProduto: TRxQuery;
    GroupBox1: TGroupBox;
    AcessaProduto: TSpeedButton;
    DBEdit11: TDBEdit;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoCORICOD: TIntegerField;
    DSSQLProduto: TDataSource;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODA60REFER: TStringField;
    EditCdProduto: TEdit;
    DBGrid1: TDBGrid;
    SQLItens: TRxQuery;
    DSSQLItens: TDataSource;
    SQLItensMOVDA13ID: TStringField;
    SQLItensMVDIIITEM: TIntegerField;
    SQLItensPRODICOD: TIntegerField;
    SQLItensProdutoLookup: TStringField;
    SQLItensMVDIN3QTD: TFloatField;
    SQLItensPRODIAGRUPGRADE: TIntegerField;
    Label5: TLabel;
    FormStorage1: TFormStorage;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLItensPRODA60REFER: TStringField;
    SQLItensPRODA60CODBAR: TStringField;
    LSaldo: TLabel;
    SaldoAtual: TCurrencyEdit;
    SQLGeral: TRxQuery;
    SQLTemplateMVDIN3VLRCUSTO: TFloatField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label50: TLabel;
    Label49: TLabel;
    EditReferencia: TEdit;
    Label1: TLabel;
    MnImportarProdutosColetor: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure AcessaProdutoClick(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure MnImportaritensdocoletorClick(Sender: TObject);
    procedure SQLTemplatePRODICODChange(Sender: TField);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure EditCdProdutoEnter(Sender: TObject);
    procedure SQLItensCalcFields(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure DBEdit2Exit(Sender: TObject);
    procedure EditReferenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure MnImportarProdutosColetorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTrocasItem: TFormCadastroTrocasItem;

implementation

uses DataModulo, CadastroProdutos, UnitLibrary, TelaImportaItens, SearchLibrary,
  TelaConsultaProdutoGeral;
{$R *.dfm}

procedure TFormCadastroTrocasItem.FormCreate(
  Sender: TObject);
begin
  inherited;
  Tabela := 'MOVIMENTODIVERSOITEM' ;
  if not SQLProduto.Active then SQLProduto.Open;
  if not SQLItens.Active then SQLItens.Open; 
end;

procedure TFormCadastroTrocasItem.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if Dm.GerandoMovtoDiverso then exit;
  if DataSet.FieldByName('PRODICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) then
        DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant
      else
        DataSet.FieldByName('ProdutoLookup').asString        := MensagemLookUp;
    end
  else
    DataSet.FieldByName('ProdutoLookup').AsVariant       := Null;
end;

procedure TFormCadastroTrocasItem.AcessaProdutoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,False,'');
end;

procedure TFormCadastroTrocasItem.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('MOVDA13ID').Value    := DataSet.DataSource.DataSet.FindField('MOVDA13ID').Value ;
  DataSet.FindField('MVDIN3QTD').AsFloat           := 1;
  DataSet.FindField('MVDIN3VLRCUSTO').AsFloat      := 0;
  EditCdProduto.Clear;
end ;

procedure TFormCadastroTrocasItem.MnImportaritensdocoletorClick(
  Sender: TObject);
begin
  inherited;
  if DSMasterTemplate.DataSet.FieldByName('MOVDCCONLUIDO').AsString = 'N' then
    begin
      Application.CreateForm(TFormTelaImportaItens,FormTelaImportaItens);
      FormTelaImportaItens.SetParams(SQLTemplate,'MVDIN3QTD',
      SQLTemplate.DataSource.DataSet.FieldByName('EMPRICOD').AsInteger,
      1,
      SQLTemplate.DataSource.DataSet.FieldByName('MOVDDMOVIMENTO').AsDateTime );
      FormTelaImportaItens.ShowModal;
    end
  else
    begin
      Informa('Este movimento já foi encerrado, não é possível incluir produtos !');
      Abort;
    end;
end;

procedure TFormCadastroTrocasItem.SQLTemplatePRODICODChange(
  Sender: TField);
begin
  inherited;
  EditCdProduto.Text := (Sender as TField).AsString;
  if SQLTemplatePRODICOD.AsVariant <> Null then
    begin
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
      SQLTemplateMVDIN3VLRCUSTO.Value := dm.SQLTemplate.fieldbyname('PRODN3VLRCUSTO').value;
    end;
end;

procedure TFormCadastroTrocasItem.DSTemplateStateChange(
  Sender: TObject);
begin
  inherited;
  if (DSMasterTemplate.DataSet.FindField('MOVDCCONLUIDO').AsString = 'S') or
     ((UsuarioCorrente <>  DSMasterTemplate.DataSet.FieldByName('USUAICOD').AsInteger) and (DSMasterTemplate.DataSet.FieldByName('USUAICOD').AsVariant <> null)) then
       DesabilitarBotoes(True,True,True,True,True);
end;

procedure TFormCadastroTrocasItem.EditCdProdutoEnter(
  Sender: TObject);
begin
  inherited;
  EditCdProduto.SelectAll;
end;

procedure TFormCadastroTrocasItem.SQLItensCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('PRODICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) then
        begin
          DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;
        end
      else
        begin
          DataSet.FieldByName('ProdutoLookup').asString        := MensagemLookUp;
        end;
    end
  else
    begin
      DataSet.FieldByName('ProdutoLookup').AsVariant       := Null;
    end;
end;

procedure TFormCadastroTrocasItem.SQLTemplateAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  SQLItens.Close;
  SQLItens.Open;
  if (Application.FindComponent('FormCadastroTrocasItem') <> nil) then
     if Pergunta('SIM','Deseja Incluir outro Item?') then
       SQLtemplate.Append
     else
       Close;
end;

procedure TFormCadastroTrocasItem.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if DSTemplate.State = dsInsert then
    begin
      try
        SQLtemplate.Post;
      except
        Application.ProcessMessages;
      end;
    end;
end;

procedure TFormCadastroTrocasItem.EditReferenciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  ProdutoDescricao  := '';
  ProdutoReferencia := '';
  if Key = VK_F2 then
    AcessaProduto.Click;
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
          if FindProduct(EditCdProduto,SQLTemplate.FieldByName('PRODICOD')) then
            begin
              // Testa se o Produto ja foi incluido
              SQLGeral.Close ;
              SQLGeral.SQL.Clear ;
              SQLGeral.SQL.Add('Select PRODICOD From MOVIMENTODIVERSOITEM') ;
              SQLGeral.SQL.Add(' Where MOVDA13ID = ''' + SQLTemplateMOVDA13ID.AsString+'''') ;
              SQLGeral.SQL.Add(' And   PRODICOD = ' + SQLTemplatePRODICOD.AsString) ;
              SQLGeral.Open ;
              if not SQLGeral.IsEmpty then
                begin
                  ShowMessage('Este produto ja foi incluido nessa movimentação de troca!');
                  EditCdProduto.SetFocus;
                  SQLTemplate.Cancel;
                end;
              SQLGeral.Close;
            end;
        end;
    end;
end;

procedure TFormCadastroTrocasItem.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplatePRODICOD.AsString = '' then
    begin
      ShowMessage('Operação Cancelada! Não foi informado nenhum produto!');
      Abort;
      Exit;
    end;
end;

procedure TFormCadastroTrocasItem.MnImportarProdutosColetorClick(
  Sender: TObject);
begin
  inherited;
  if DSMasterTemplate.DataSet.FieldByName('MOVDCCONLUIDO').AsString = 'N' then
    begin
      Application.CreateForm(TFormTelaImportaItens,FormTelaImportaItens);
      FormTelaImportaItens.SetParams(SQLTemplate,'MVDIN3QTD',
      SQLTemplate.DataSource.DataSet.FieldByName('EMPRICOD').AsInteger,
      1,
      SQLTemplate.DataSource.DataSet.FieldByName('MOVDDMOVIMENTO').AsDateTime );
      FormTelaImportaItens.ShowModal;
    end
  else
    begin
      Informa('Este movimento já foi encerrado, não é possível incluir produtos !');
      Abort;
    end;
end;

end.
