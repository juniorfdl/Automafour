unit RelatorioVendasComprasPorGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, OleCtrls,
  UnitLibrary, UCrpe32, Grids, DBGrids, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormRelatorioVendasComprasPorGrupo = class(TFormRelatorioTEMPLATE)
    SQLRelVendasPorGrupo: TRxQuery;
    SQLRelComprasPorGrupo: TRxQuery;
    SQLRelSaldoPorGrupo: TRxQuery;
    TblTemporariaSaldo: TTable;
    SQLRelVendasPorGrupoGRUPICOD: TIntegerField;
    SQLRelVendasPorGrupoTOTVENDA: TFloatField;
    TblTemporariaGRUPICOD: TIntegerField;
    SQLRelComprasPorGrupoGRUPICOD: TIntegerField;
    SQLRelVendasPorGrupoGRUPA60DESCR: TStringField;
    SQLRelComprasPorGrupoGRUPA60DESCR: TStringField;
    TblTemporariaGRUPA60DESCR: TStringField;
    SQLRelComprasPorGrupoTOTCOMPRA: TFloatField;
    SQLRelVendasPorGrupoQTDEVENDA: TIntegerField;
    TblTemporariaTOTVENDA: TFloatField;
    TblTemporariaQTDEVENDA: TIntegerField;
    TblTemporariaTOTCOMPRA: TFloatField;
    SQLRelComprasPorGrupoQTDECOMPRA: TIntegerField;
    TblTemporariaQTDECOMPRA: TIntegerField;
    SQLRelSaldoPorGrupoGRUPICOD: TIntegerField;
    SQLRelSaldoPorGrupoGRUPA60DESCR: TStringField;
    SQLRelSaldoPorGrupoVENDA: TFloatField;
    SQLRelSaldoPorGrupoCOMPRA: TFloatField;
    SQLRelSaldoPorGrupoCUSTO: TFloatField;
    SQLRelSaldoPorGrupoSALDO: TFloatField;
    SQLRelSaldoPorGrupoTOTALVENDA: TFloatField;
    SQLRelSaldoPorGrupoTOTALCOMPRA: TFloatField;
    SQLRelSaldoPorGrupoTOTALCUSTO: TFloatField;
    TblTemporariaSaldoGRUPICOD: TIntegerField;
    TblTemporariaSaldoGRUPA60DESCR: TStringField;
    TblTemporariaSaldoVENDA: TFloatField;
    TblTemporariaSaldoCOMPRA: TFloatField;
    TblTemporariaSaldoCUSTO: TFloatField;
    TblTemporariaSaldoSALDO: TFloatField;
    TblTemporariaSaldoTOTALVENDA: TFloatField;
    TblTemporariaSaldoTOTALCOMPRA: TFloatField;
    TblTemporariaSaldoTOTALCUSTO: TFloatField;
    Report: TCrpe;
    procedure BtnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioVendasComprasPorGrupo: TFormRelatorioVendasComprasPorGrupo;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioVendasComprasPorGrupo.BtnVisualizarClick(
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

  SQLRelVendasPorGrupo.Close;
  SQLRelComprasPorGrupo.Close;
  SQLRelSaldoPorGrupo.Close;

  SQLRelVendasPorGrupo.MacroByName('MDataInicial').Value  := 'CP.CUPODEMIS >= ' + '''' + FormatDateTime('mm/dd/yyyy',De.Date) + '''';
  SQLRelVendasPorGrupo.MacroByName('MDataFinal').Value    := 'CP.CUPODEMIS <= ' + '''' + FormatDateTime('mm/dd/yyyy',Ate.Date)+ '''';
  SQLRelVendasPorGrupo.MacroByName('MEmpresa').Value      := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM','') ;

  SQLRelComprasPorGrupo.MacroByName('MDataInicial').Value := 'NC.NOCPDRECEBIMENTO >= ' + '''' + FormatDateTime('mm/dd/yyyy',De.Date)  + '''';
  SQLRelComprasPorGrupo.MacroByName('MDataFinal').Value   := 'NC.NOCPDRECEBIMENTO <= ' + '''' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '''';
  SQLRelComprasPorGrupo.MacroByName('MEmpresa').Value     := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTACOMPRA','') ;

  SQLRelSaldoPorGrupo.MacroByName('MEmpresa').Value       := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'PRODUTOSALDO','') ;

  SQLRelVendasPorGrupo.Open;
  SQLRelComprasPorGrupo.Open;
  SQLRelSaldoPorGrupo.Open;

  // Gravando resultado do SQL de vendas
 TblTemporaria.Open;
  While not SQLRelVendasPorGrupo.Eof do
    begin
      if TblTemporaria.Locate('GRUPICOD',SQLRelVendasPorGrupo.FieldByName('GRUPICOD').AsInteger,[]) then
        begin
          TblTemporaria.Edit;
          TblTemporaria.FieldByName('TotVenda').AsFloat := SQLRelVendasPorGrupo.FieldByName('TotVenda').AsFloat;
          TblTemporaria.FieldByName('QtdeVenda').AsFloat := SQLRelVendasPorGrupo.FieldByName('QtdeVenda').AsFloat;
          TblTemporaria.Post;
        end
      else
        begin
          TblTemporaria.Append;
          TblTemporaria.FieldByName('GRUPICOD').AsInteger     := SQLRelVendasPorGrupo.FieldByName('GRUPICOD').AsInteger;
          TblTemporaria.FieldByName('GRUPA60DESCR').AsString  := SQLRelVendasPorGrupo.FieldByName('GRUPA60DESCR').AsString;
          TblTemporaria.FieldByName('TotVenda').AsFloat       := SQLRelVendasPorGrupo.FieldByName('TotVenda').AsFloat;
          TblTemporaria.FieldByName('QtdeVenda').AsFloat      := SQLRelVendasPorGrupo.FieldByName('QtdeVenda').AsFloat;
          TblTemporaria.Post;
        end;
      SQLRelVendasPorGrupo.Next;
    end;

  // Gravando resultado do SQL de compras

  While not SQLRelComprasPorGrupo.Eof do
    begin
      if TblTemporaria.Locate('GRUPICOD',SQLRelComprasPorGrupo.FieldByName('GRUPICOD').AsInteger,[]) then
        begin
          TblTemporaria.Edit;
          TblTemporaria.FieldByName('TotCompra').AsFloat      := SQLRelComprasPorGrupo.FieldByName('TotCompra').AsFloat;
          TblTemporaria.FieldByName('QtdeCompra').AsFloat     := SQLRelComprasPorGrupo.FieldByName('QtdeCompra').AsFloat;
          TblTemporaria.Post;
        end
      else
        begin
          TblTemporaria.Append ;
          TblTemporaria.FieldByName('GRUPICOD').AsInteger     := SQLRelComprasPorGrupo.FieldByName('GRUPICOD').AsInteger ;
          TblTemporaria.FieldByName('GRUPA60DESCR').AsString  := SQLRelComprasPorGrupo.FieldByName('GRUPA60DESCR').AsString ;
          TblTemporaria.FieldByName('TotCompra').AsFloat      := SQLRelComprasPorGrupo.FieldByName('TotCompra').AsFloat ;
          TblTemporaria.FieldByName('QtdeCompra').AsFloat     := SQLRelComprasPorGrupo.FieldByName('QtdeCompra').AsFloat ;
          TblTemporaria.Post ;
        end;
      SQLRelComprasPorGrupo.Next ;
    end;

  BatchExec(SQLRelSaldoPorGrupo,TblTemporariaSaldo);
  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Vendas Compras Por Grupo.rpt' ;
  Report.ReportTitle := 'Relatório de Vendas e Compras Por Grupo';
  Report.WindowStyle.Title := 'Relatório de Vendas e Compras Por Grupo';
  Report.Execute ;
end;

end.
