unit uDlgComparaNotaPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBClient, DBTables, UnitLibrary, StdCtrls,
  Buttons, Grids, DBGrids;

type
  TfDlgComparaNotaPedido = class(TForm)
    pnlPrincipal: TPanel;
    pnlTopo: TPanel;
    cdsDados: TClientDataSet;
    cdsDadosCodigoProduto: TIntegerField;
    cdsDadosNomeProduto: TStringField;
    cdsDadosQtdePedido: TFloatField;
    cdsDadosQtdeNota: TFloatField;
    cdsDadosValorUniPedido: TFloatField;
    cdsDadosValorUnitNota: TFloatField;
    cdsDadosValorTotalItemPedido: TFloatField;
    cdsDadosValorTotalItemNota: TFloatField;
    dsDados: TDataSource;
    Label1: TLabel;
    lblNumNota: TLabel;
    Label2: TLabel;
    lblNumPedido: TLabel;
    Label3: TLabel;
    lblNomeFornecedor: TLabel;
    Shape1: TShape;
    Label4: TLabel;
    Shape2: TShape;
    Label5: TLabel;
    btnFechar: TBitBtn;
    DBGrid1: TDBGrid;
    procedure cxGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    procedure MontaDados(NumeroNota, NumeroPedido: string);

    { Public declarations }
  end;

var
  fDlgComparaNotaPedido: TfDlgComparaNotaPedido;

implementation

uses DataModulo;

{$R *.dfm}

{ TfDlgComparaNotaPedido }

procedure TfDlgComparaNotaPedido.MontaDados(NumeroNota,
  NumeroPedido: string);
var
  SQLNota, SQLPedido: TQuery;
begin

  SQLNota := TQuery.Create(DM);
  SQLPedido := TQuery.Create(DM);
  try
    if (NumeroNota <> '') and (NumeroPedido <> '') then
    begin
      if DM.DataBaseName = '' then
        SQLNota.DatabaseName := 'DB'
      else
        SQLNota.DatabaseName := DM.DataBaseName;
      SQLNota.Close;
      SQLNota.SQL.Clear;
      SQLNota.SQL.Add('select * from notacompraitem');
      SQLNota.SQL.Add('where NOCPA13ID = ' + NumeroNota);
      SQLNota.Open;
      if DM.DataBaseName = '' then
        SQLPedido.DatabaseName := 'DB'
      else
        SQLPedido.DatabaseName := DM.DataBaseName;
      SQLPedido.Close;
      SQLPedido.SQL.Clear;
      SQLPedido.SQL.Add('select * from pedidocompraitem');
      SQLPedido.SQL.Add('where PDCPA13ID = ' + NumeroPedido);
      SQLPedido.Open;
      if (SQLNota.IsEmpty) or (SQLPedido.IsEmpty) then
        exit;
      SQLNota.First;
      while not SQLNota.Eof do
      begin
        if cdsDados.Locate('CodigoProduto', SQLNota.FieldByName('PRODICOD').AsInteger,[loCaseInsensitive]) then
          cdsDados.Edit
        else
          cdsDados.Insert;
        cdsDadosCodigoProduto.AsInteger    := SQLNota.FieldByName('PRODICOD').AsInteger;
        cdsDadosNomeProduto.AsString       := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',cdsDadosCodigoProduto.AsString);
        cdsDadosQtdeNota.AsFloat           := SQLNota.FieldByName('NOCIN3CAPEMBAL').AsFloat;
        cdsDadosValorUnitNota.AsFloat      := SQLNota.FieldByName('NOCIN3VLRUNIT').AsFloat;
        cdsDadosValorTotalItemNota.AsFloat := SQLNota.FieldByName('NOCIN3VLRUNIT').AsFloat * SQLNota.FieldByName('NOCIN3CAPEMBAL').AsFloat;
        cdsDados.Post;
        SQLNota.Next;
      end;

      SQLPedido.First;
      while not SQLPedido.Eof do
      begin
        if cdsDados.Locate('CodigoProduto', SQLPedido.FieldByName('PRODICOD').AsInteger,[loCaseInsensitive]) then
          cdsDados.Edit
        else
          cdsDados.Insert;
        cdsDadosCodigoProduto.AsInteger      := SQLPedido.FieldByName('PRODICOD').AsInteger;
        cdsDadosNomeProduto.AsString         := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',cdsDadosCodigoProduto.AsString);
        cdsDadosQtdePedido.AsFloat           := SQLPedido.FieldByName('PCITN3CAPEMBAL').AsFloat;
        cdsDadosValorUniPedido.AsFloat       := SQLPedido.FieldByName('PCITN3VLRUNIT').AsFloat;
        cdsDadosValorTotalItemPedido.AsFloat := SQLPedido.FieldByName('PCITN3VLRUNIT').AsFloat * SQLPedido.FieldByName('PCITN3CAPEMBAL').AsFloat;
        cdsDados.Post;
        SQLPedido.Next;
      end;
    end;
  finally
    SQLNota.Destroy;
    SQLPedido.Destroy;
  end;

end;

procedure TfDlgComparaNotaPedido.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if cdsDadosQtdeNota.AsFloat = 0 then
    ACanvas.Brush.Color := clGreen;
  if cdsDadosQtdePedido.AsFloat = 0 then
    ACanvas.Brush.Color := clYellow;

end;

procedure TfDlgComparaNotaPedido.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfDlgComparaNotaPedido.FormShow(Sender: TObject);
begin
  btnFechar.SetFocus;
end;

procedure TfDlgComparaNotaPedido.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if cdsDadosQtdeNota.AsFloat = 0 then
  begin
    DBGrid1.Canvas.Brush.Color := clGreen;
    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[datacol].Field, State);
  end;
  if cdsDadosQtdePedido.AsFloat = 0 then
  begin
    DBGrid1.Canvas.Brush.Color := clYellow;
    DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[datacol].Field, State);
  end;
end;

end.
