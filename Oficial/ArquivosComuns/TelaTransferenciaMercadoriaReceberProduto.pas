 unit TelaTransferenciaMercadoriaReceberProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, ConerBtn, Mask, DBCtrls, Grids, DBGrids,
  ExtCtrls;

type
  TFormTelaTransferenciaMercadoriaReceberProduto = class(TForm)
    ScrollBoxFundo: TScrollBox;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelCentral: TPanel;
    Panel2: TPanel;
    DBGridProduto: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    btOk: TConerBtn;
    btCancelar: TConerBtn;
    dsSQLItens: TDataSource;
    procedure btOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Divergencias : TStringList;
  end;

var
  FormTelaTransferenciaMercadoriaReceberProduto: TFormTelaTransferenciaMercadoriaReceberProduto;

implementation

uses TelaTransferenciaMercadoria, Types, VarSYS, UnitLibrary, DataModulo,
  WaitWindow;

{$R *.dfm}

procedure TFormTelaTransferenciaMercadoriaReceberProduto.btOkClick(
  Sender: TObject);
Var Item : Integer;
begin
   if dsSQLItens.DataSet.State in dsEditModes then
      dsSQLItens.DataSet.Post;

   dsSQLItens.DataSet.First;
   Item := 1;
   if Divergencias = Nil then
      Divergencias := TStringList.Create;

   MakeWindow(dsSQLItens.DataSet.RecordCount, 'Efetuando Entrada no Estoque');
   while not dsSQLItens.DataSet.Eof do
      begin
         if not DM.SQLConfigVenda.Active then DM.SQLConfigVenda.Active := True;

         if dsSQLItens.DataSet.FieldByName('TRITN3QTDEENVIADA').AsFloat > dsSQLItens.DataSet.FieldByName('TRITN3QTDERECEBIDA').AsFloat then
            begin
                dsSQLItens.DataSet.Edit;
                dsSQLItens.DataSet.FieldByName('TRITA254DIVERGENCIA').AsString := 'Qtde enviada Maior que Recebida. Dif: ' +
                                                                                  FormatFloat('#,###0.000', dsSQLItens.DataSet.FieldByName('TRITN3QTDEENVIADA').AsFloat - dsSQLItens.DataSet.FieldByName('TRITN3QTDERECEBIDA').AsFloat);
                dsSQLItens.DataSet.Post;
                Divergencias.Add(dsSQLItens.DataSet.FieldByName('PRODICOD').AsString + ' : ' + dsSQLItens.DataSet.FieldByName('TRITA254DIVERGENCIA').AsString);
            end;
         if dsSQLItens.DataSet.FieldByName('TRITN3QTDEENVIADA').AsFloat < dsSQLItens.DataSet.FieldByName('TRITN3QTDERECEBIDA').AsFloat then
            begin
                dsSQLItens.DataSet.Edit;
                dsSQLItens.DataSet.FieldByName('TRITA254DIVERGENCIA').AsString := 'Qtde Recebida Maior que Enviada. Dif: ' +
                                                                                  FormatFloat('#,###0.000', dsSQLItens.DataSet.FieldByName('TRITN3QTDERECEBIDA').AsFloat - dsSQLItens.DataSet.FieldByName('TRITN3QTDEENVIADA').AsFloat);
                dsSQLItens.DataSet.Post;
                Divergencias.Add(dsSQLItens.DataSet.FieldByName('PRODICOD').AsString + ' - ' + dsSQLItens.DataSet.FieldByName('TRITA254DIVERGENCIA').AsString);
            end;

         SetProgress(Item);
         // Entrada da Mercadoria da Empresa Destino
         GravaMovimentoEstoqueSimples(DM.SQLProduto, DM.SQLProdutoFilho, DM.SQLProdutoSaldo,
                      dsSQLItens.DataSet.DataSource.DataSet.FieldByName('TRFEIEMPRDEST').AsInteger,
                      dsSQLItens.DataSet.FieldByName('PRODICOD').AsInteger,
                      DM.SQLConfigGeral.FieldByName('OPESICODTRANSFENTR').AsInteger,
                      dsSQLItens.DataSet.FieldByName('TRITN3QTDERECEBIDA').AsFloat,
                      'E', FormatDateTime('mm/dd/yyyy', Now),
                      '0', 'TRANSFERENCIA', dsSQLItens.DataSet.FieldByName('TRFEA13ID').AsString, '');

         dsSQLItens.DataSet.Next;
         Item := Item + 1;
      end;

   dsSQLItens.DataSet.DataSource.DataSet.Edit;
   dsSQLItens.DataSet.DataSource.DataSet.FieldByName('TRFECRECEBIDO').AsString := 'S';
   dsSQLItens.DataSet.DataSource.DataSet.FieldByName('TRFEDRECEBIMENTO').AsString := FormatDateTime('dd/mm/yyyy',now);
   dsSQLItens.DataSet.DataSource.DataSet.FieldByName('TRFEA30USURECEB').AsString := UsuarioAtualNome;
   
   if Divergencias.Count > 0 then
     dsSQLItens.DataSet.DataSource.DataSet.FieldByName('TRFECDIVERG').AsString := 'S'
   else
     dsSQLItens.DataSet.DataSource.DataSet.FieldByName('TRFECDIVERG').AsString := 'N';

   dsSQLItens.DataSet.DataSource.DataSet.Post;


   DestroyWindow;
   if Divergencias.Count > 0 then
      Informa('Há divergências nas quantidades dos Produtos Recebidos: ' + #13 +
              Divergencias.Text);

   ModalResult := mrOk;
end;

procedure TFormTelaTransferenciaMercadoriaReceberProduto.FormCreate(
  Sender: TObject);
Var I : Integer;
begin
    dsSQLItens.DataSet.First;
    while not dsSQLItens.DataSet.Eof do
       begin
         dsSQLItens.DataSet.Edit;
         dsSQLItens.DataSet.FindField('TRITN3QTDERECEBIDA').AsFloat := dsSQLItens.DataSet.FindField('TRITN3QTDEENVIADA').AsFloat;
         dsSQLItens.DataSet.Post;
         dsSQLItens.DataSet.Next;
       end;
end;

end.
