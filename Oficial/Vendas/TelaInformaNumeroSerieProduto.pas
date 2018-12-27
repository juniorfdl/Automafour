unit TelaInformaNumeroSerieProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, RXCtrls, Grids, DBGrids, ExtCtrls,
  RxQuery, RxMemDS, DBClient;

type
  TFormTelaInformaNumeroSerieProduto = class(TForm)
    SQLConsulta: TQuery;
    LblNomeSistema: TRxLabel;
    SQLProdutoSerie: TRxQuery;
    DSSQLProdutoSerie: TDataSource;
    SQLProdutoSeriePRODICOD: TIntegerField;
    SQLProdutoSeriePRSEA60NROSERIE: TStringField;
    SQLProdutoSerieEMPRICOD: TIntegerField;
    Panel1: TPanel;
    DBGridLista: TDBGrid;
    RXSerie: TRxMemoryData;
    RXSerieNumeroSerie: TStringField;
    RXSerieItem: TIntegerField;
    edtNumeroSerie: TEdit;
    btnInserir: TBitBtn;
    gridProdutoNovo: TDBGrid;
    cdsProdutoNovo: TClientDataSet;
    dsProdutoNovo: TDataSource;
    cdsProdutoNovoPRODICOD: TIntegerField;
    cdsProdutoNovoPRSEA60NROSERIE: TStringField;
    cdsProdutoNovoEMPRICOD: TStringField;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
  private
    { Private declarations }
    CdProduto: string;
    procedure prc_Abrir_Tabela_Serie(Produto, Empresa, Status: string);
  public
    NumeroItens : Integer;
    Valida_Qtde : Boolean;
    codGravaProduto : Integer;
    { Public declarations }
  end;

var
  FormTelaInformaNumeroSerieProduto: TFormTelaInformaNumeroSerieProduto;

implementation

uses
  UnitLibrary;

{$R *.dfm}

procedure TFormTelaInformaNumeroSerieProduto.BitBtn1Click(Sender: TObject);
begin
  if (RXSerie.RecordCount <> NumeroItens) and (Valida_Qtde) then
  begin
    MessageDlg('Número de itens selecionado não corresponde a quantidade informado na nota',mtInformation,[mbOK],0);
    Exit;
  end;
//  SQLConsulta.Close;
//  SQLConsulta.SQL.Clear;
//  SQLConsulta.SQL.Add('SELECT * FROM PRODUTOSERIE WHERE PRSEA60NROSERIE = ''' + EditNroSerie.Text + '''');
//  SQLConsulta.SQL.Add('and PRODICOD = ' + CodigoProduto);
//  SQLConsulta.Open;
//  if SQLConsulta.IsEmpty then
//  begin
//    ShowMessage('Número de série não encontrado! Digite outro número!');
//    EditNroSerie.Clear;
//    EditNroSerie.SetFocus;
//  end;
//  if (not SQLConsulta.IsEmpty) and (SQLConsulta.FieldByName('PRSECSTATUS').Value = 'I') then
//  begin
//    ShowMessage('Número de série INDISPONIVEL! Digite outro número!');
//    EditNroSerie.Clear;
//    EditNroSerie.SetFocus;
//  end;
  FormTelaInformaNumeroSerieProduto.ModalResult := MrOK
end;

procedure TFormTelaInformaNumeroSerieProduto.prc_Abrir_Tabela_Serie(Produto, Empresa, Status: string);
begin
  SQLProdutoSerie.Close;
  SQLProdutoSerie.ParamByName('PRODUTO').AsString := Produto;
  SQLProdutoSerie.ParamByName('EMPRESA').AsString := Empresa;
  SQLProdutoSerie.MacroByName('STATUS').AsString := Status;
  SQLProdutoSerie.Open;
end;

procedure TFormTelaInformaNumeroSerieProduto.FormCreate(Sender: TObject);
begin
  prc_Abrir_Tabela_Serie(CodigoProduto, EmpresaPadrao,Status);
end;

procedure TFormTelaInformaNumeroSerieProduto.DBGridListaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Item : Integer;
begin
  Item := 0;
  if Key = vk_space then
  begin
    Item := Item + 1;
    if RXSerie.Locate('NumeroSerie', SQLProdutoSeriePRSEA60NROSERIE.Text, []) then
      RXSerie.Delete;
    RXSerie.Append;
    RXSerieNumeroSerie.AsString := SQLProdutoSeriePRSEA60NROSERIE.Text;
    RXSerieItem.AsInteger       := Item;
    RXSerie.Post;
    SQLProdutoSerie.Next;
  end;

end;

procedure TFormTelaInformaNumeroSerieProduto.DBGridListaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if RXSerie.Locate('NumeroSerie',SQLProdutoSeriePRSEA60NROSERIE.Text,[]) Then
    DbgridLista.Canvas.Font.Color:= clRed // coloque aqui a cor desejada
 Else
    DbgridLista.Canvas.Font.Color:= clBlack; // coloque aqui a cor desejada
 DbgridLista.DefaultDrawDataCell(Rect, dbgridLista.columns[datacol].field, State);

end;

procedure TFormTelaInformaNumeroSerieProduto.BitBtn2Click(Sender: TObject);
begin
   RXSerie.EmptyTable;
   Close;
end;

procedure TFormTelaInformaNumeroSerieProduto.FormShow(Sender: TObject);
begin
  RXSerie.EmptyTable;
  cdsProdutoNovo.EmptyDataSet;
  RXSerie.Open;
  DBGridLista.SetFocus;
  edtNumeroSerie.Visible := (codGravaProduto > 0);
  btnInserir.Visible := edtNumeroSerie.Visible;
  gridProdutoNovo.Visible := edtNumeroSerie.Visible;
end;

procedure TFormTelaInformaNumeroSerieProduto.btnInserirClick(
  Sender: TObject);
begin
  if edtNumeroSerie.Text = '' then
  begin
    ShowMessage('Informe um número de série!');
    edtNumeroSerie.SetFocus;
    Exit;
  end;
  try
   try
    cdsProdutoNovo.Insert;
    cdsProdutoNovoPRSEA60NROSERIE.AsString := edtNumeroSerie.Text;
    cdsProdutoNovoPRODICOD.AsInteger       := codGravaProduto;
    cdsProdutoNovo.Post;
   except
     on e: Exception do
       raise Exception.Create(e.Message);
   end;
  finally
    edtNumeroSerie.Clear;

    if cdsProdutoNovo.state = dsinsert then
      cdsProdutoNovo.cancel;

  end;
  edtNumeroSerie.SetFocus;
end;

end.

