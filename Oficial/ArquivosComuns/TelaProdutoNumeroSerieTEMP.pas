unit TelaProdutoNumeroSerieTEMP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, Buttons, jpeg, ExtCtrls, StdCtrls, DB,
  DBTables, Grids, DBGrids, RxQuery, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaGeralModalCadastroProdutoNumeroSerieTEMP = class(TFormTelaGeralModalTemplate)
    DSSQLProdutoSerie: TDataSource;
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
    UpdateSQL1: TUpdateSQL;
    DBGridSerie: TDBGrid;
    procedure SQLProdutoSerieAfterPost(DataSet: TDataSet);
    procedure SQLProdutoSerieNewRecord(DataSet: TDataSet);
    procedure SQLProdutoSerieBeforeInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
  private
    { Private declarations }
    GerandoNS : Boolean;
  public
    CodProduto, QtdeSerie   : Integer;
    Destino, IDNotaCompra, IDCliente, IDPedidoVenda, IDNotaFiscal, IDOS, IDMovDiverso, CodFornecedor, CodEmpresa : String;
    { Public declarations }
  end;

var
  FormTelaGeralModalCadastroProdutoNumeroSerieTEMP: TFormTelaGeralModalCadastroProdutoNumeroSerieTEMP;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormTelaGeralModalCadastroProdutoNumeroSerieTEMP.SQLProdutoSerieAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  SQLProdutoSerie.Last;
end;

procedure TFormTelaGeralModalCadastroProdutoNumeroSerieTEMP.SQLProdutoSerieNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLProdutoSeriePRSECSTATUS.AsString       := 'I'; // Status I = Indisponivel                                     
  SQLProdutoSeriePRODICOD.AsInteger         := CodProduto;
  SQLProdutoSerieEMPRICOD.AsString          := EmpresaPadrao;
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

procedure TFormTelaGeralModalCadastroProdutoNumeroSerieTEMP.SQLProdutoSerieBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if not GerandoNS then
    Abort;
end;

procedure TFormTelaGeralModalCadastroProdutoNumeroSerieTEMP.FormActivate(
  Sender: TObject);
var
 I : Integer;
begin
  inherited;
  DBGridSerie.SelectedIndex := 1;
  GerandoNS := True;
  if QtdeSerie > 0 then
    begin
      for I:=1 to QtdeSerie do
        begin
          SQLProdutoSerie.Append;
          SQLProdutoSeriePRSEA60NROSERIE.AsString := IntToStr(I);
          SQLProdutoSeriePENDENTE.Value           := 'S';
          SQLProdutoSerieREGISTRO.Value           := Now;
          SQLProdutoSerie.Post;
        end;
    end;
  GerandoNS := False;
end;

procedure TFormTelaGeralModalCadastroProdutoNumeroSerieTEMP.FormCreate(
  Sender: TObject);
begin
  inherited;
  if not SQLProdutoSerie.Active then
    SQLProdutoSerie.Open;
end;

procedure TFormTelaGeralModalCadastroProdutoNumeroSerieTEMP.BtnOKClick(
  Sender: TObject);
var
  Status : String;
begin
  inherited;
  SQLProdutoSerie.First;
  while not SQLProdutoSerie.Eof do
    begin
      Status := VerificaNumeroSerie(SQLProdutoSeriePRSEA60NROSERIE.AsString,SQLProdutoSeriePRODICOD.AsString);
      if Status <> '' then
        case Status[1] of
          'I' : Informa('Número de série indisponível:'   + #13 + SQLProdutoSeriePRSEA60NROSERIE.AsString + #13 + 'Operação Cancelada!');
          'N' : Informa('Número de série não encontrado:' + #13 + SQLProdutoSeriePRSEA60NROSERIE.AsString + #13 + 'Operação Cancelada!');
          'U' : Informa('Este número de série já está sendo utilizado:' + #13 + SQLProdutoSeriePRSEA60NROSERIE.AsString + #13 + 'Operação Cancelada!');
        end;
      if Status <> 'D' then
        Abort;

      SQLProdutoSerie.Next;
    end;
  if SQLProdutoSerie.UpdatesPending then
    begin
      SQLProdutoSerie.ApplyUpdates;
      SQLProdutoSerie.CommitUpdates;
    end;
  SQLProdutoSerie.First;
  while not SQLProdutoSerie.Eof do
    begin
      GravaSaidaNroSerieProduto(SQLProdutoSeriePRSEA60NROSERIE.AsString,
                                SQLProdutoSeriePRODICOD.AsString,
                                'U',
                                CodEmpresa,
                                IDCliente,
                                '',
                                IDPedidoVenda,
                                IDNotaFiscal,
                                IDMovDiverso);
      SQLProdutoSerie.Next;
    end;
  SQLProdutoSerie.Close;
  FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.ModalResult := MrOK;
end;

procedure TFormTelaGeralModalCadastroProdutoNumeroSerieTEMP.BtnFecharTelaClick(
  Sender: TObject);
begin
  inherited;
  SQLProdutoSerie.CancelUpdates;
  SQLProdutoSerie.Close;
  FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.ModalResult := mrCancel;
end;

end.
