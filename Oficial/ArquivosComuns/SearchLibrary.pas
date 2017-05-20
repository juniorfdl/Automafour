unit SearchLibrary;

interface

uses
  Windows, DB, DBTables, DBActns, ExtCtrls, StdCtrls, DBCtrls, FormResources,
  DataModulo, TelaConsultaProdutoGeral, VarSys, UnitLibrary, SysUtils, Forms, Controls,
  Variants;

  function FindProduct(Edit : TEdit; FieldSender : TField) : boolean;
  function ProcuraProdutoPorCodigoAntigo(CodAntigo : String): Integer;
  function ProcuraProdutoPorReferencia(CodReferencia : String): Integer;

implementation

uses TelaRetornoPesquisaProduto, Grids;

{EFETUA PESQUISA DE PRODUTOS, FIZ ALGUMAS ADAPTAÇÕES PARA REDUZIR LINHAS DE
CÓDIGO NAS CHAMADAS. PODE-SE DIZER QUE É UMA ESPECIALIZAÇÃO DA ENCONTROUPRODUTO}
function FindProduct(Edit : TEdit; FieldSender : TField) : boolean;
var
  Query : TQuery;
begin
  Result := False;
  Query := TQuery.Create(Query);
  Query.DatabaseName := DM.DB.DatabaseName;
  Query.RequestLive := False;
  if ((Edit.Text = '') or
    (not EncontrouProduto(Edit.Text,Query))) then
    begin
      FieldLookup := FieldSender;
      FieldOrigem := FieldSender.FieldName;
      if Edit.Text <> '' then
        ProdutoDescricao := Edit.Text;
      Application.CreateForm(TFormTelaConsultaProdutoGeral,FormTelaConsultaProdutoGeral);
      FormTelaConsultaProdutoGeral.ShowModal;
      if FormTelaConsultaProdutoGeral.ModalResult = 2 then
        begin
          // ProdutoReferencia = Pega o Cod Interno da tela de consulta de produtos acima
          FieldSender.AsString := ProdutoReferencia;
          ProdutoReferencia    := '';
          Result := True;
        end;
    end
  else
    begin
      if Query.Active then
        begin
          FieldSender.AsString := Query.FieldByName('PRODICOD').AsString;
          Result := True;
        end;
    end;
  if Query.Active then
    Query.Close;
  Query.Free;
end;

function ProcuraProdutoPorCodigoAntigo(CodAntigo : String): Integer;
var
  Query : TQuery;
  I : Integer;
begin
  if CodAntigo <> '' then
    begin
      Query := TQuery.Create(DM);
      Query.DatabaseName := 'DB';
      Query.SQL.Clear;
      Query.SQL.ADD('SELECT PRODICOD, PRODA60DESCR, PRODA60REFER, PRODA15CODANT FROM PRODUTO WHERE PRODA15CODANT = "' + CodAntigo + '"');
      Query.SQL.ADD(' AND PRODICOD = PRODIAGRUPGRADE');
      Query.Open;
      Query.Last;
      Query.First;
      if Query.RecordCount > 1 then
        begin
          Application.CreateForm(TFormTelaRetornoPesquisaProduto,FormTelaRetornoPesquisaProduto);
          with FormTelaRetornoPesquisaProduto do
            begin
              Grid.RowCount := Query.RecordCount + 1;
              Grid.Cells[0,0] := 'Código';
              Grid.Cells[1,0] := 'Descrição';
              Grid.Cells[2,0] := 'Referência';
              Grid.Cells[3,0] := 'Cód. Antigo';
              I := 1;
              while not Query.Eof do
                begin
                  Grid.Cells[0,I] := Query.FieldByName('PRODICOD').AsString;
                  Grid.Cells[1,I] := Query.FieldByName('PRODA60DESCR').AsString;
                  Grid.Cells[2,I] := Query.FieldByName('PRODA60REFER').AsString;
                  Grid.Cells[3,I] := Query.FieldByName('PRODA15CODANT').AsString;
                  Inc(I);
                  Query.Next;
                end;
            end;
          FormTelaRetornoPesquisaProduto.ShowModal;
          if FormTelaRetornoPesquisaProduto.ModalResult = MrOk then
            begin
              Result := StrToInt(FormTelaRetornoPesquisaProduto.Grid.Cells[0,FormTelaRetornoPesquisaProduto.Grid.Row]);
            end;

          FormTelaRetornoPesquisaProduto.Destroy;
        end
      else
        begin
          if not Query.IsEmpty then
            Result := Query.FieldByName('PRODICOD').AsInteger;
        end;

      Query.Close;
      Query.Destroy;
    end;
end;

function ProcuraProdutoPorReferencia(CodReferencia : String): Integer;
var
  Query : TQuery;
  I : Integer;
begin
  if CodReferencia <> '' then
    begin
      Query := TQuery.Create(DM);
      Query.DatabaseName := 'DB';
      Query.SQL.Clear;
      Query.SQL.ADD('SELECT PRODICOD, PRODA60DESCR, PRODA60REFER, PRODA15CODANT FROM PRODUTO WHERE PRODA60REFER = "' + CodReferencia + '"');
      Query.SQL.ADD(' AND PRODICOD = PRODIAGRUPGRADE');
      Query.Open;
      Query.Last;
      Query.First;
      if Query.RecordCount > 1 then
        begin
          Application.CreateForm(TFormTelaRetornoPesquisaProduto,FormTelaRetornoPesquisaProduto);
          with FormTelaRetornoPesquisaProduto do
            begin
              Grid.RowCount := Query.RecordCount + 1;
              Grid.Cells[0,0] := 'Código';
              Grid.Cells[1,0] := 'Descrição';
              Grid.Cells[2,0] := 'Referência';
              Grid.Cells[3,0] := 'Cód. Antigo';
              I := 1;
              while not Query.Eof do
                begin
                  Grid.Cells[0,I] := Query.FieldByName('PRODICOD').AsString;
                  Grid.Cells[1,I] := Query.FieldByName('PRODA60DESCR').AsString;
                  Grid.Cells[2,I] := Query.FieldByName('PRODA60REFER').AsString;
                  Grid.Cells[3,I] := Query.FieldByName('PRODA15CODANT').AsString;
                  Inc(I);
                  Query.Next;
                end;
            end;
          FormTelaRetornoPesquisaProduto.ShowModal;
          if FormTelaRetornoPesquisaProduto.ModalResult = MrOk then
            begin
              Result := StrToInt(FormTelaRetornoPesquisaProduto.Grid.Cells[0,FormTelaRetornoPesquisaProduto.Grid.Row]);
            end;

          FormTelaRetornoPesquisaProduto.Destroy;
        end
      else
        begin
          if not Query.IsEmpty then
            Result := Query.FieldByName('PRODICOD').AsInteger;
        end;

      Query.Close;
      Query.Destroy;
    end;
end;

end.
