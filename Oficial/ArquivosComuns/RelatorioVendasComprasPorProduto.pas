unit RelatorioVendasComprasPorProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, OleCtrls,
  UnitLibrary, UCrpe32, Grids, DBGrids, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormRelatorioVendasComprasPorProduto = class(TFormRelatorioTEMPLATE)
    SQLRelVendasPorProduto: TRxQuery;
    SQLRelComprasPorProduto: TRxQuery;
    SQLRelSaldo: TRxQuery;
    TblTemporariaSaldo: TTable;
    SQLRelVendasPorProdutoPRODICOD: TIntegerField;
    SQLRelVendasPorProdutoTOTVENDA: TFloatField;
    TblTemporariaPRODICOD: TIntegerField;
    SQLRelComprasPorProdutoPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    SQLRelComprasPorProdutoTOTCOMPRA: TFloatField;
    SQLRelVendasPorProdutoQTDEVENDA: TIntegerField;
    TblTemporariaTOTVENDA: TFloatField;
    TblTemporariaQTDEVENDA: TIntegerField;
    TblTemporariaTOTCOMPRA: TFloatField;
    SQLRelComprasPorProdutoQTDECOMPRA: TIntegerField;
    TblTemporariaQTDECOMPRA: TIntegerField;
    SQLRelSaldoPRODICOD: TIntegerField;
    SQLRelSaldoVENDA: TFloatField;
    SQLRelSaldoCOMPRA: TFloatField;
    SQLRelSaldoCUSTO: TFloatField;
    SQLRelSaldoSALDO: TFloatField;
    SQLRelSaldoTOTALVENDA: TFloatField;
    SQLRelSaldoTOTALCOMPRA: TFloatField;
    SQLRelSaldoTOTALCUSTO: TFloatField;
    TblTemporariaSaldoPRODICOD: TIntegerField;
    TblTemporariaSaldoVENDA: TFloatField;
    TblTemporariaSaldoCOMPRA: TFloatField;
    TblTemporariaSaldoCUSTO: TFloatField;
    TblTemporariaSaldoSALDO: TFloatField;
    TblTemporariaSaldoTOTALVENDA: TFloatField;
    TblTemporariaSaldoTOTALCOMPRA: TFloatField;
    TblTemporariaSaldoTOTALCUSTO: TFloatField;
    Report: TCrpe;
    TblTemporariaSaldoPRODA60DESCR: TStringField;
    procedure BtnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioVendasComprasPorProduto: TFormRelatorioVendasComprasPorProduto;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioVendasComprasPorProduto.BtnVisualizarClick(
  Sender: TObject);
begin
  inherited;

  if TblTemporaria.TableName <> '' then
  begin                  
    if TblTemporaria.Active then TblTemporaria.Close ;
    try
      TblTemporaria.DeleteTable ;
    except
    end ;
    TblTemporaria.CreateTable ;
  end;

  if TblTemporariaSaldo.TableName <> '' then
  begin
    if TblTemporariaSaldo.Active then TblTemporariaSaldo.Close ;
    try
      TblTemporariaSaldo.DeleteTable ;
    except
    end ;
    TblTemporariaSaldo.CreateTable ;
  end;

  SQLRelVendasPorProduto.Close;
  SQLRelComprasPorProduto.Close;
  SQLRelSaldo.Close;

  SQLRelVendasPorProduto.MacroByName('MDataInicial').Value  := 'CP.CUPODEMIS >= ' + '"' + FormatDateTime('mm/dd/yyyy',De.Date) + '"';
  SQLRelVendasPorProduto.MacroByName('MDataFinal').Value    := 'CP.CUPODEMIS <= ' + '"' + FormatDateTime('mm/dd/yyyy',Ate.Date)+ '"';
  SQLRelVendasPorProduto.MacroByName('MEmpresa').Value      := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM','') ;

  SQLRelComprasPorProduto.MacroByName('MDataInicial').Value := 'NC.NOCPDRECEBIMENTO >= ' + '"' + FormatDateTime('mm/dd/yyyy',De.Date)  + '"';
  SQLRelComprasPorProduto.MacroByName('MDataFinal').Value   := 'NC.NOCPDRECEBIMENTO <= ' + '"' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '"';
  SQLRelComprasPorProduto.MacroByName('MEmpresa').Value     := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTACOMPRA','') ;

  SQLRelSaldo.MacroByName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'PRODUTOSALDO','') ;

  SQLRelVendasPorProduto.Open;
  SQLRelComprasPorProduto.Open;
  SQLRelSaldo.Open;

  // Gravando resultado do SQL de vendas
  TblTemporaria.Open;
  While not SQLRelVendasPorProduto.Eof do
    begin
      if TblTemporaria.Locate('PRODICOD',SQLRelVendasPorProduto.FieldByName('PRODICOD').AsInteger,[]) then
        begin
          TblTemporaria.Edit;
          TblTemporaria.FieldByName('TotVenda').AsFloat  := SQLRelVendasPorProduto.FieldByName('TotVenda').AsFloat;
          TblTemporaria.FieldByName('QtdeVenda').AsFloat := SQLRelVendasPorProduto.FieldByName('QtdeVenda').AsFloat;
          TblTemporaria.Post;
        end
      else
        begin
          TblTemporaria.Append;
          TblTemporaria.FieldByName('PRODICOD').AsInteger     := SQLRelVendasPorProduto.FieldByName('PRODICOD').AsInteger;
          TblTemporaria.FieldByName('PRODA60DESCR').AsString  := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLRelVendasPorProduto.FieldByName('PRODICOD').AsString);
          TblTemporaria.FieldByName('TotVenda').AsFloat       := SQLRelVendasPorProduto.FieldByName('TotVenda').AsFloat;
          TblTemporaria.FieldByName('QtdeVenda').AsFloat      := SQLRelVendasPorProduto.FieldByName('QtdeVenda').AsFloat;
          TblTemporaria.Post;
        end;
      SQLRelVendasPorProduto.Next;
    end;

  // Gravando resultado do SQL de compras

  While not SQLRelComprasPorProduto.Eof do
    begin
      if TblTemporaria.Locate('PRODICOD',SQLRelComprasPorProduto.FieldByName('PRODICOD').AsInteger,[]) then
        begin
          TblTemporaria.Edit;
          TblTemporaria.FieldByName('TotCompra').AsFloat      := SQLRelComprasPorProduto.FieldByName('TotCompra').AsFloat;
          TblTemporaria.FieldByName('QtdeCompra').AsFloat     := SQLRelComprasPorProduto.FieldByName('QtdeCompra').AsFloat;
          TblTemporaria.Post;
        end
      else
        begin
          TblTemporaria.Append ;
          TblTemporaria.FieldByName('PRODICOD').AsInteger     := SQLRelComprasPorProduto.FieldByName('PRODICOD').AsInteger ;
          TblTemporaria.FieldByName('PRODA60DESCR').AsString  := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLRelComprasPorProduto.FieldByName('PRODICOD').AsString);
          TblTemporaria.FieldByName('TotCompra').AsFloat      := SQLRelComprasPorProduto.FieldByName('TotCompra').AsFloat ;
          TblTemporaria.FieldByName('QtdeCompra').AsFloat     := SQLRelComprasPorProduto.FieldByName('QtdeCompra').AsFloat ;
          TblTemporaria.Post ;
        end;
      SQLRelComprasPorProduto.Next ;
    end;

  TblTemporariaSaldo.open;
  While not SQLRelSaldo.Eof do
    begin
      TblTemporariaSaldo.Append;
      TblTemporariaSaldoPRODICOD.Value    := SQLRelSaldoPRODICOD.Value;
      TblTemporariaSaldoPRODA60DESCR.AsString  := SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLRelSaldoPRODICOD.AsString);
      TblTemporariaSaldoCOMPRA.Value      := SQLRelSaldoCOMPRA.Value;
      TblTemporariaSaldoCUSTO.Value       := SQLRelSaldoCUSTO.Value;
      TblTemporariaSaldoSALDO.Value       := SQLRelSaldoSALDO.Value;
      TblTemporariaSaldoTOTALCOMPRA.Value := SQLRelSaldoTOTALCOMPRA.Value;
      TblTemporariaSaldoTOTALCUSTO.Value  := SQLRelSaldoTOTALCUSTO.Value;
      TblTemporariaSaldoTOTALVENDA.Value  := SQLRelSaldoTOTALVENDA.Value;
      TblTemporariaSaldo.Post;

      SQLRelSaldo.Next;
    end;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Vendas Compras Por Produto.rpt' ;
  Report.ReportTitle := 'Relatório de Vendas e Compras Por Produto';
  Report.WindowStyle.Title := 'Relatório de Vendas e Compras Por Produto';
  Report.Execute ;
end;

end.
