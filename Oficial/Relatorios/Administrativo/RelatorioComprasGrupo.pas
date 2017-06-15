unit RelatorioComprasGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, TeEngine,
  TeeFunci, Series, TeeProcs, Chart, DbChart, UCrpe32, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormRelatorioComprasGrupo = class(TFormRelatorioTEMPLATE)
    SQLCompraGrupo: TRxQuery;
    TblTemporariaGRUPICOD: TIntegerField;
    TblTemporariaGRUPA60DESCR: TStringField;
    TblTemporariaTOTAL: TFloatField;
    Report: TCrpe;
    TblTemporariaQTDETOTAL: TFloatField;
    SQLCompraGrupoGRUPICOD: TIntegerField;
    SQLCompraGrupoGRUPA60DESCR: TStringField;
    SQLCompraGrupoQTDETOTAL: TFloatField;
    SQLCompraGrupoTOTAL: TFloatField;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
  GraficoVendaGrupo : Boolean
    { Public declarations }
  end;

var
  FormRelatorioComprasGrupo: TFormRelatorioComprasGrupo;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioComprasGrupo.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLCompraGrupo.Close ;
  //Nota Compra
  SQLCompraGrupo.MacroByName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTACOMPRA', 'EMPRICODDESTCOMPRA') ;
  SQLCompraGrupo.MacrobyName('MData').Value    := 'NOTACOMPRA.NOCPDRECEBIMENTO >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                  'NOTACOMPRA.NOCPDRECEBIMENTO <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' ;
  SQLCompraGrupo.Open ;

  if SQLCompraGrupo.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  SQLCompraGrupo.First;

  While not SQLCompraGrupo.Eof do
    begin
      if (TblTemporaria.Locate('GRUPA60DESCR',SQLCompraGrupo.FieldByName('GRUPA60DESCR').AsString,[])) then
        begin
          TblTemporaria.Edit;
          TblTemporaria.FieldByName('TOTAL').AsFloat      := TblTemporaria.FieldByName('TOTAL').AsFloat +
                                                             SQLCompraGrupo.FieldByName('TOTAL').AsFloat;
          TblTemporaria.FieldByName('QTDETOTAL').AsFloat  := TblTemporaria.FieldByName('QTDETOTAL').AsFloat +
                                                             SQLCompraGrupo.FieldByName('QTDETOTAL').AsFloat;
          TblTemporaria.Post;
        end
      else
        begin
          TblTemporaria.Append;
          if SQLCompraGrupo.FieldByName('GRUPICOD').AsString <> '' then
            TblTemporaria.FieldByName('GRUPICOD').AsString      := SQLCompraGrupo.FieldByName('GRUPICOD').AsString
          else
            TblTemporaria.FieldByName('GRUPICOD').AsString      := '0';

          TblTemporaria.FieldByName('GRUPA60DESCR').AsString  := SQLCompraGrupo.FieldByName('GRUPA60DESCR').AsString;
          TblTemporaria.FieldByName('TOTAL').AsFloat          := SQLCompraGrupo.FieldByName('TOTAL').AsFloat;
          TblTemporaria.FieldByName('QTDETOTAL').AsFloat      := SQLCompraGrupo.FieldByName('QTDETOTAL').AsFloat;
          TblTemporaria.Post;
        end;
      SQLCompraGrupo.Next;
    end;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Compras Por Grupo.rpt' ;
  Report.ReportTitle       := 'Relatório de Compras Por Grupo' ;
  Report.WindowStyle.Title := 'Relatório de Compras Por Grupo' ;
  //SETAR LEGENDA DE FILTROS NO RPT\\
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Periodo' ;
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                        FormatDateTime('dd/mm/yyyy', Ate.Date) + '''' ;
  Report.Formulas.Send;
  Report.Execute;
end;

end.
