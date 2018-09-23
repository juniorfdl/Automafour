unit TelaComparaPedidoNota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, AdvOfficeStatusBar, DBTables, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, DBClient, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  AdvOfficeStatusBarStylers, Buttons, StdCtrls, ExtCtrls;

type
  TFormTelaComparaPedidoNota = class(TFormTelaGeralTEMPLATE)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    cdsDadosCodigoProduto: TIntegerField;
    cdsDadosQtdePedido: TFloatField;
    cdsDadosQtdeNota: TFloatField;
    cdsDadosValorUniPedido: TFloatField;
    cdsDadosValorUnitNota: TFloatField;
    cdsDadosValorTotalItemPedido: TFloatField;
    cdsDadosValorTotalItemNota: TFloatField;
    cdsDadosNomeProduto: TStringField;
    cxGrid1DBTableView1CodigoProduto: TcxGridDBColumn;
    cxGrid1DBTableView1NomeProduto: TcxGridDBColumn;
    cxGrid1DBTableView1QtdePedido: TcxGridDBColumn;
    cxGrid1DBTableView1QtdeNota: TcxGridDBColumn;
    cxGrid1DBTableView1ValorUniPedido: TcxGridDBColumn;
    cxGrid1DBTableView1ValorUnitNota: TcxGridDBColumn;
    cxGrid1DBTableView1ValorTotalItemPedido: TcxGridDBColumn;
    cxGrid1DBTableView1ValorTotalItemNota: TcxGridDBColumn;
  private
    { Private declarations }
  public
    procedure MontaDados(NumeroNota, NumeroPedido: string);
    { Public declarations }
  end;

var
  FormTelaComparaPedidoNota: TFormTelaComparaPedidoNota;

implementation

uses
  DataModulo;

{$R *.dfm}

{ TFormTelaComparaPedidoNota }

procedure TFormTelaComparaPedidoNota.MontaDados(NumeroNota, NumeroPedido: string);
var
  SQLNota, SQLPedido: TQuery;
begin
  try
    if (NumeroNota <> '') and (NumeroPedido <> '') then
    begin
      SQLNota := TQuery.Create(DM);
      if DM.DataBaseName = '' then
        SQLNota.DatabaseName := 'DB'
      else
        SQLNota.DatabaseName := DM.DataBaseName;
      SQLNota.Close;
      SQLNota.SQL.Clear;
      SQLNota.SQL.Add('select * from notacompraitem');
      SQLNota.SQL.Add('where NOCPA13ID = ' + NumeroNota);
      SQLNota.Open;
      SQLPedido := TQuery.Create(DM);
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
        cdsDadosCodigoProduto.AsInteger    := SQLPedido.FieldByName('PRODICOD').AsInteger;
        cdsDadosQtdeNota.AsFloat           := SQLPedido.FieldByName('PCITN3CAPEMBAL').AsFloat;
        cdsDadosValorUnitNota.AsFloat      := SQLPedido.FieldByName('PCITN3VLRUNIT').AsFloat;
        cdsDadosValorTotalItemNota.AsFloat := SQLPedido.FieldByName('PCITN3VLRUNIT').AsFloat * SQLPedido.FieldByName('PCITN3CAPEMBAL').AsFloat;
        cdsDados.Post;
        SQLPedido.Next;
      end;
    end;
  finally
    SQLNota.Destroy;
    SQLPedido.Destroy;
  end;

end;

end.

