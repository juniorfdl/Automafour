unit TelaInformaNumeroSerieProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, RXCtrls, Grids, DBGrids, ExtCtrls,
  RxQuery, RxMemDS;

type
  TFormTelaInformaNumeroSerieProduto = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
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
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    CdProduto: string;
    procedure prc_Abrir_Tabela_Serie(Produto, Empresa: string);
  public
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

procedure TFormTelaInformaNumeroSerieProduto.prc_Abrir_Tabela_Serie(Produto, Empresa: string);
begin
  SQLProdutoSerie.Close;
  SQLProdutoSerie.ParamByName('PRODUTO').AsString := Produto;
  SQLProdutoSerie.ParamByName('EMPRESA').AsString := Empresa;
  SQLProdutoSerie.Open;
end;

procedure TFormTelaInformaNumeroSerieProduto.FormCreate(Sender: TObject);
begin
  prc_Abrir_Tabela_Serie(CodigoProduto, EmpresaPadrao);
  RXSerie.EmptyTable;
  RXSerie.Open;
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
  DBGridLista.SetFocus;
end;

end.

