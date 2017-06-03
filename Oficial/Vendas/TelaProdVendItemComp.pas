unit TelaProdVendItemComp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, Grids, DBGrids, Buttons, jpeg, ExtCtrls,
  StdCtrls, ComCtrls, ImgList, Menus, Mask, DBCtrls, RxLookup, VarSys, UnitLibrary;

type
  TFormTelaProdVendItemComp = class(TForm)
    PanelCentral: TPanel;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    Image1: TImage;
    BtnFecharTela: TSpeedButton;
    SQLComposicaoItemPedido: TRxQuery;
    DSSQLComposicaoItemPedido: TDataSource;
    SQLComposicaoItemPedidoPRODICOD: TIntegerField;
    SQLComposicaoItemPedidoPRODICODFILHO: TIntegerField;
    SQLComposicaoItemPedidoPVCON3QUANT: TFloatField;
    SQLComposicaoItemPedidoPVCON2VLRUNIT: TFloatField;
    SQLComposicaoItemPedidoPVCON2VLRDESC: TFloatField;
    SQLComposicaoItemPedidoPVCOA254OBS: TStringField;
    SQLComposicaoItemPedidoREGISTRO: TDateTimeField;
    SQLComposicaoItemPedidoPENDENTE: TStringField;
    LabelGravar: TSpeedButton;
    PopupMenuItemCompPedVenda: TPopupMenu;
    mnRemoverItem: TMenuItem;
    PageControl: TPageControl;
    TabSheetPrincipal: TTabSheet;
    DBGridLista: TDBGrid;
    SQLProdutos: TRxQuery;
    DSSQLProdutos: TDataSource;
    SQLProdutosPRODICOD: TIntegerField;
    SQLProdutosPRODA60DESCR: TStringField;
    SQLProdutosPRODN3VLRVENDA: TFloatField;
    Panel2: TPanel;
    DSMaster: TDataSource;
    SQLSoma: TRxQuery;
    SQLComposicaoProduto: TRxQuery;
    SQLComposicaoProdutoPRODICOD: TIntegerField;
    SQLComposicaoProdutoPRODICODFILHO: TIntegerField;
    SQLComposicaoProdutoPRODN3QTDE: TFloatField;
    SQLComposicaoProdutoPENDENTE: TStringField;
    SQLComposicaoProdutoREGISTRO: TDateTimeField;
    SQLComposicaoProdutoPRODN3VLRTOTAL: TFloatField;
    SQLComposicaoItemPedidoPDVDA13ID: TStringField;
    SQLComposicaoItemPedidoPVITIITEM: TIntegerField;
    SQLComposicaoItemPedidoPRODA60DESCFILHO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DSSQLSoma: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SQLComposicaoItemPedidoPVCOICOD: TIntegerField;
    SQLCount: TRxQuery;
    UpdateSQLPedidoItemCompos: TUpdateSQL;
    SQLComposicaoItemPedidoPVCON2PERCDESC: TFloatField;
    SQLComposicaoProdutoPRODN3VLRVENDA: TFloatField;
    SQLSomaTOTALQTDE: TFloatField;
    SQLSomaTOTALVALOR: TFloatField;
    SQLSomaTOTALPERCDESC: TFloatField;
    SQLSomaTOTALDESC: TFloatField;
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure LabelGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SQLComposicaoItemPedidoAfterOpen(DataSet: TDataSet);
    procedure SQLComposicaoItemPedidoNewRecord(DataSet: TDataSet);
    procedure SQLComposicaoItemPedidoBeforePost(DataSet: TDataSet);
    procedure mnRemoverItemClick(Sender: TObject);
    procedure SQLComposicaoItemPedidoAfterPost(DataSet: TDataSet);
    procedure SQLComposicaoItemPedidoPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SQLComposicaoItemPedidoPVCON2PERCDESCChange(Sender: TField);
    procedure SQLComposicaoItemPedidoPVCON2VLRDESCChange(Sender: TField);
    procedure DBGridListaColEnter(Sender: TObject);
    procedure SQLComposicaoItemPedidoPVCON2VLRUNITChange(Sender: TField);
    procedure SQLComposicaoItemPedidoPRODICODFILHOChange(Sender: TField);
    procedure SQLComposicaoItemPedidoPVCON3QUANTChange(Sender: TField);
    procedure AtualizaSoma;
    procedure VerificaAutorizacaoValor(CampoVerificacao:TField; ValorAntigo:Double);
    procedure SQLComposicaoItemPedidoAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    Posicao : Pointer;
    Ocupado, Autenticado, PermiteAlterarValorVenda : Boolean;
    ValorAnterior :Double;
  public
    { Public declarations }
  end;

var
  FormTelaProdVendItemComp: TFormTelaProdVendItemComp;

implementation

uses CadastroPedidoVendaItem, DataModulo, DataModuloTemplate;

{$R *.dfm}

procedure TFormTelaProdVendItemComp.BtnFecharTelaClick(Sender: TObject);
begin
    Self.ModalResult := mrCancel;
    SQLComposicaoItemPedido.Cancel;
end;

procedure TFormTelaProdVendItemComp.LabelGravarClick(Sender: TObject);
begin
    SQLComposicaoItemPedido.ApplyUpdates;
    SQLComposicaoItemPedido.CommitUpdates;
    Self.ModalResult := mrOk;
end;

procedure TFormTelaProdVendItemComp.FormCreate(Sender: TObject);
begin
    if DSMasterSys <> nil then
       DSMaster := DSMasterSys;                                                 //Pega os Dados do Pedido

    if not SQLProdutos.Active then SQLProdutos.Active := True;                  //Tabela pra consulta dos PRODICOD e PRODICODFILHO

//Carrega a composição do Produto do Pedido
    SQLComposicaoProduto.Close;
    SQLComposicaoProduto.MacroByName('MProduto').AsString := 'PRODUTOCOMPOSICAO.PRODICOD = ' + DSMaster.DataSet.FieldByName('PRODICOD').AsString;
    SQLComposicaoProduto.Open;

    SQLComposicaoProduto.First;

    PermiteAlterarValorVenda := True;

    if not SQLComposicaoItemPedido.Active then SQLComposicaoItemPedido.Open;

    if DSMaster.State in [dsInsert] then
       begin
         while not SQLComposicaoProduto.Eof do
           begin
             SQLComposicaoItemPedido.Append;
             SQLComposicaoItemPedidoPRODICODFILHO.AsString    := SQLComposicaoProdutoPRODICODFILHO.AsString;
             if (SQLComposicaoProdutoPRODN3QTDE.IsNull) or (SQLComposicaoProdutoPRODN3QTDE.AsFloat = 0) then
                SQLComposicaoItemPedidoPVCON3QUANT.AsFloat := 1
             else
                SQLComposicaoItemPedidoPVCON3QUANT.AsFloat    := SQLComposicaoProdutoPRODN3QTDE.AsFloat;
             SQLComposicaoItemPedidoPVCON2VLRUNIT.AsFloat     := SQLComposicaoProdutoPRODN3VLRVENDA.AsFloat;
             SQLComposicaoItemPedidoPVCON2VLRDESC.AsInteger   := 0;
             SQLComposicaoItemPedidoPVCON2PERCDESC.AsInteger  := 0;
             SQLComposicaoItemPedido.Post;
             SQLComposicaoProduto.Next;
           end;
       end;
   SQLComposicaoProduto.Close;
   PermiteAlterarValorVenda := False;
//

   SQLComposicaoItemPedido.Close;
   SQLComposicaoItemPedido.MacroByName('MFiltro').AsString := ' PDVDA13ID = :PDVDA13ID and PVITIITEM = :PVITIITEM ';
   SQLComposicaoItemPedido.Open;
end;

procedure TFormTelaProdVendItemComp.SQLComposicaoItemPedidoAfterOpen(
  DataSet: TDataSet);
begin
   if (Self.ModalResult <> mrOk) then
     if (DSMaster.DataSet.FieldByName('PDVDA13ID').AsString <> '') then
        begin
           SQLSoma.Close;
           SQLSoma.MacroByName('MFiltro').AsString := ' PDVDA13ID = ''' + DSMaster.DataSet.FieldByName('PDVDA13ID').AsString + ''' and PVITIITEM = ' + DSMaster.DataSet.FieldByName('PVITIITEM').AsString + '';
           SQLSoma.Open;
        end;
end;

procedure TFormTelaProdVendItemComp.SQLComposicaoItemPedidoNewRecord(
  DataSet: TDataSet);
begin
   SQLComposicaoItemPedidoPDVDA13ID.AsString        := DSMaster.DataSet.FieldByName('PDVDA13ID').AsString;
   SQLComposicaoItemPedidoPVITIITEM.AsString        := DSMaster.DataSet.FieldByName('PVITIITEM').AsString;
   SQLComposicaoItemPedidoPRODICOD.AsInteger        := DSMaster.DataSet.FieldByName('PRODICOD').AsInteger;
   if not SQLComposicaoProduto.Active then
      begin
        PermiteAlterarValorVenda := True;
        SQLComposicaoItemPedidoPVCON3QUANT.AsFloat       := 1;
        SQLComposicaoItemPedidoPVCON2PERCDESC.AsInteger  := 0;
        SQLComposicaoItemPedidoPVCON2VLRDESC.AsInteger   := 0;
        PermiteAlterarValorVenda := False;
      end;
end;

procedure TFormTelaProdVendItemComp.SQLComposicaoItemPedidoBeforePost(
  DataSet: TDataSet);
begin
   if DataSet.State in [DSInsert] then
     begin
       SQLComposicaoItemPedidoPVCOICOD.AsInteger   := DM.ProximoCodigoUnico('PEDVENDITEMCOMP',DataSet,DSSQLComposicaoItemPedido,2);
       SQLComposicaoItemPedidoREGISTRO.AsDateTime  := Now;
       SQLComposicaoItemPedidoPENDENTE.AsString    := 'S';
     end;
end;

procedure TFormTelaProdVendItemComp.mnRemoverItemClick(Sender: TObject);
begin
  if Application.MessageBox('Tem certeza que deseja excluir este item?','Atenção',MB_YESNO+MB_SYSTEMMODAL+MB_ICONQUESTION) = idYes then
    SQLComposicaoItemPedido.Delete;
  SQLComposicaoItemPedido.ApplyUpdates;
  SQLComposicaoItemPedido.CommitUpdates;
  AtualizaSoma;
end;

procedure TFormTelaProdVendItemComp.SQLComposicaoItemPedidoAfterPost(
  DataSet: TDataSet);
begin
   SQLComposicaoItemPedido.ApplyUpdates;
   SQLComposicaoItemPedido.CommitUpdates;
   AtualizaSoma;
end;

procedure TFormTelaProdVendItemComp.AtualizaSoma;
begin
   SQLSoma.Close;
   SQLSoma.MacroByName('MFiltro').AsString := ' PDVDA13ID = ''' + DSMaster.DataSet.FieldByName('PDVDA13ID').AsString + ''' and PVITIITEM = ' + DSMaster.DataSet.FieldByName('PVITIITEM').AsString + '';
   SQLSoma.Open;
end;

procedure TFormTelaProdVendItemComp.SQLComposicaoItemPedidoPostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  if DataSet.State in [DsInsert] then
    begin
      SQLComposicaoItemPedidoPVCOICOD.AsInteger   := DM.ProximoCodigoUnico('PEDVENDITEMCOMP',DataSet,nil,2) + 1;
      Action :=  daRetry;
    end;
end;

procedure TFormTelaProdVendItemComp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DSMaster    := nil;
  DSMasterSys := nil;
end;

procedure TFormTelaProdVendItemComp.SQLComposicaoItemPedidoPVCON2PERCDESCChange(
  Sender: TField);
begin
   VerificaAutorizacaoValor(Sender, ValorAnterior);
   if not Ocupado then
      begin
        Ocupado := True;
        SQLComposicaoItemPedidoPVCON2VLRDESC.AsFloat := SQLComposicaoItemPedidoPVCON2VLRUNIT.AsFloat * (SQLComposicaoItemPedidoPVCON2PERCDESC.AsFloat / 100);
        Ocupado := False;
      end;

end;

procedure TFormTelaProdVendItemComp.SQLComposicaoItemPedidoPVCON2VLRDESCChange(
  Sender: TField);
begin
   VerificaAutorizacaoValor(Sender, ValorAnterior);
   if not Ocupado and (SQLComposicaoItemPedidoPVCON2VLRUNIT.AsFloat <> 0) then
      begin
        Ocupado := True;
        SQLComposicaoItemPedidoPVCON2PERCDESC.AsFloat :=  (SQLComposicaoItemPedidoPVCON2VLRDESC.AsFloat / SQLComposicaoItemPedidoPVCON2VLRUNIT.AsFloat) * 100;
        Ocupado := False;
      end;
   AtualizaSoma;
end;

procedure TFormTelaProdVendItemComp.DBGridListaColEnter(Sender: TObject);
begin
   if DBGridLista.SelectedField.Tag = 1 then
      ValorAnterior := DBGridLista.SelectedField.AsFloat;
end;

procedure TFormTelaProdVendItemComp.SQLComposicaoItemPedidoPVCON2VLRUNITChange(
  Sender: TField);
begin
  VerificaAutorizacaoValor(Sender, ValorAnterior);
end;

procedure TFormTelaProdVendItemComp.VerificaAutorizacaoValor(CampoVerificacao:TField; ValorAntigo:Double);
var RetornoUser: TInfoRetornoUser;
begin
//Verifica se o usuario pode alterar o vlr do item
  if not UsuarioMaster then
      if not PermiteAlterarValorVenda then
          if not Autenticado then
            if (DM.SQLConfigVenda.Fieldbyname('CFVECSOLSENHAALTVLR').AsString = 'S') and not PermiteAlterarValorVenda then
              if AutenticaUsuario(UsuarioAtualNome,'USUAA60LOGIN',RetornoUser) <> 'S' then
                begin
                  Autenticado := True;
                  if DM.SQLUsuario.Locate('USUAICOD', RetornoUser.CodUsuarioAutenticado, [loCaseInsensitive]) then
                     if DM.SQLUsuario.FieldByName('USUACALTVLRVENDA').IsNull then
                        begin
                          Informa('Você não tem permissão para alterar valores neste módulo!');
                          PermiteAlterarValorVenda := True;
                          CampoVerificacao.AsFloat := ValorAntigo;
                          PermiteAlterarValorVenda := False;
                          Autenticado := False;
                        end
                     else
                        if DM.SQLUsuario.FieldByName('USUACALTVLRVENDA').AsString <> 'S' then
                            begin
                              Informa('Você não tem permissão para alterar valores neste módulo!');
                              PermiteAlterarValorVenda := True;
                              CampoVerificacao.AsFloat := ValorAntigo;
                              PermiteAlterarValorVenda := False;
                              Autenticado := False;
                            end;
                end;
   AtualizaSoma;
end;

procedure TFormTelaProdVendItemComp.SQLComposicaoItemPedidoPRODICODFILHOChange(
  Sender: TField);
begin
   if not SQLComposicaoProduto.Active then
      begin
        PermiteAlterarValorVenda := True;
        SQLComposicaoItemPedidoPVCON2VLRUNIT.AsFloat := SQLProdutosPRODN3VLRVENDA.AsFloat;
        PermiteAlterarValorVenda := False;
      end;
end;

procedure TFormTelaProdVendItemComp.SQLComposicaoItemPedidoPVCON3QUANTChange(
  Sender: TField);
begin
   AtualizaSoma;
end;

procedure TFormTelaProdVendItemComp.SQLComposicaoItemPedidoAfterScroll(
  DataSet: TDataSet);
begin
   if DBGridLista.SelectedField.Tag = 1 then
      ValorAnterior := DBGridLista.SelectedField.AsFloat;
end;

end.
