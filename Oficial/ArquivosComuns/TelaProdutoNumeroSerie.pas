unit TelaProdutoNumeroSerie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, Buttons, jpeg, ExtCtrls, StdCtrls, DB,
  DBTables, Grids, DBGrids, RxQuery, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaGeralModalCadastroProdutoNumeroSerie = class(TFormTelaGeralModalTemplate)
    DSSQLProdutoSerie: TDataSource;
    DBGridLista: TDBGrid;
    SQLProdutoSerie: TRxQuery;
    SQLProdutoSeriePRODICOD: TIntegerField;
    SQLProdutoSeriePRSEA60NROSERIE: TStringField;
    SQLProdutoSerieEMPRICOD: TIntegerField;
    SQLProdutoSerieFORNICOD: TIntegerField;
    SQLProdutoSerieCLIEA13ID: TStringField;
    SQLProdutoSerieNOCPA13ID: TStringField;
    SQLProdutoSerieNOFIA13ID: TStringField;
    SQLProdutoSerieCUPOA13ID: TStringField;
    SQLProdutoSeriePDVDA13ID: TStringField;
    SQLProdutoSerieOSA13ID: TStringField;
    SQLProdutoSeriePENDENTE: TStringField;
    SQLProdutoSerieREGISTRO: TDateTimeField;
    SQLProdutoSerieMOVDA13ID: TStringField;
    BtnOK: TSpeedButton;
    SQLProdutoSeriePRSECSTATUS: TStringField;
    SQLProdutoSerieEMPRICODDEST: TIntegerField;
    procedure SQLProdutoSerieNewRecord(DataSet: TDataSet);
    procedure SQLProdutoSerieBeforeInsert(DataSet: TDataSet);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure SQLProdutoSerieAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    GerandoNS : Boolean;
  public
    CodProduto, QtdeSerie   : Integer;
    Status, Destino, IDNotaCompra, IDCliente, IDPedidoVenda, IDNotaFiscal, IDOS, IDMovDiverso, CodFornecedor, CodEmpresa : String;
    { Public declarations }
  end;

var
  FormTelaGeralModalCadastroProdutoNumeroSerie: TFormTelaGeralModalCadastroProdutoNumeroSerie;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerieNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLProdutoSeriePENDENTE.AsString    := 'S';
  SQLProdutoSerieREGISTRO.Value       := Now;
  SQLProdutoSeriePRSECSTATUS.AsString := Status; // Status I = Indisponivel, Status D = Disponivel
  SQLProdutoSeriePRODICOD.AsInteger   := CodProduto;
  SQLProdutoSerieEMPRICOD.AsString    := EmpresaPadrao;
  case Destino[1] of
    'C' : SQLProdutoSerieCLIEA13ID.AsString := IDCliente;
    'E' : SQLProdutoSerieEMPRICOD.AsString  := CodEmpresa;
    'F' : SQLProdutoSerieFORNICOD.AsString  := CodFornecedor;
  end;
  if IDNotaCompra  <> '' then
    SQLProdutoSerieNOCPA13ID.AsString := IDNotaCompra;
  if IDPedidoVenda <> '' then
    SQLProdutoSeriePDVDA13ID.AsString := IDPedidoVenda;
  if IDOS <> '' then
    SQLProdutoSerieOSA13ID.AsString   := IDOS;
  if IDNotaFiscal  <> '' then
    SQLProdutoSerieNOFIA13ID.AsString := IDNotaFiscal;
  if IDMovDiverso  <> '' then
    SQLProdutoSerieMOVDA13ID.AsString := IDMovDiverso;
  if CodEmpresa    <> '' then
    SQLProdutoSerieEMPRICODDEST.AsString := CodEmpresa;
end;

procedure TFormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerieBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
{  if not GerandoNS then
    Abort; }
end;

procedure TFormTelaGeralModalCadastroProdutoNumeroSerie.BtnFecharTelaClick(
  Sender: TObject);
begin
  inherited;
  FormTelaGeralModalCadastroProdutoNumeroSerie.ModalResult := MrCancel;
end;

procedure TFormTelaGeralModalCadastroProdutoNumeroSerie.BtnOKClick(
  Sender: TObject);
begin
  inherited;
  FormTelaGeralModalCadastroProdutoNumeroSerie.ModalResult := MrOK;
end;

procedure TFormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerieAfterPost(
  DataSet: TDataSet);
var
  Posicao : TBookMark;
begin
  inherited;
  //  Posicao := DataSet.GetBookmark;
  SQLProdutoSerie.Close;
  SQLProdutoSerie.Open;
  {  DBGridLista.DataSource.DataSet.GotoBookmark(Posicao);
  Posicao := Nil;}
end;

procedure TFormTelaGeralModalCadastroProdutoNumeroSerie.FormShow(
  Sender: TObject);
var
 I : Integer;
begin
  inherited;
  DBGridLista.SelectedIndex := 1;
  GerandoNS := True;
  if QtdeSerie > 0 then
    begin
      for I:=1 to QtdeSerie do
        begin
          SQLProdutoSerie.Append;
          SQLProdutoSeriePRSEA60NROSERIE.AsString := IDNotaCompra + IntToStr(I);
          SQLProdutoSerie.Post;
        end;
    end;
  GerandoNS := False;
end;

end.
