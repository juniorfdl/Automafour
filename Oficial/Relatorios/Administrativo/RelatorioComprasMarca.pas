unit RelatorioComprasMarca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, TeEngine,
  TeeFunci, Series, TeeProcs, Chart, DbChart, UCrpe32;

type
  TFormRelatorioComprasMarca = class(TFormRelatorioTEMPLATE)
    SQLCompraMarca: TRxQuery;
    Report: TCrpe;
    TblTemporariaMARCICOD: TIntegerField;
    TblTemporariaMARCA60DESCR: TStringField;
    TblTemporariaTOTAL: TFloatField;
    TblTemporariaQTDETOTAL: TFloatField;
    SQLCompraMarcaMARCICOD: TIntegerField;
    SQLCompraMarcaMARCA60DESCR: TStringField;
    SQLCompraMarcaQTDETOTAL: TFloatField;
    SQLCompraMarcaTOTAL: TFloatField;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    GraficoCompraMarca : Boolean
    { Public declarations }
  end;

var
  FormRelatorioComprasMarca: TFormRelatorioComprasMarca;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioComprasMarca.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLCompraMarca.Close ;
  //Nota Compra
  SQLCompraMarca.MacroByName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTACOMPRA', 'EMPRICODDESTCOMPRA') ;
  SQLCompraMarca.MacrobyName('MData').Value    := 'NOTACOMPRA.NOCPDRECEBIMENTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                  'NOTACOMPRA.NOCPDRECEBIMENTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  SQLCompraMarca.Open ;
  if SQLCompraMarca.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  SQLCompraMarca.First;

  While not SQLCompraMarca.Eof do
    begin
      if (TblTemporaria.Locate('MARCA60DESCR',SQLCompraMarca.FieldByName('MARCA60DESCR').AsString,[])) then
        begin
          TblTemporaria.Edit;
          TblTemporaria.FieldByName('TOTAL').AsFloat       := TblTemporaria.FieldByName('TOTAL').AsFloat +
                                                              SQLCompraMarca.FieldByName('TOTAL').AsFloat;
          TblTemporaria.FieldByName('QTDETOTAL').AsFloat   := TblTemporaria.FieldByName('QTDETOTAL').AsFloat +
                                                              SQLCompraMarca.FieldByName('QTDETOTAL').AsFloat;
          TblTemporaria.Post;
        end
      else
        begin
          TblTemporaria.Append;
          if SQLCompraMarca.FieldByName('MARCICOD').AsString <> '' then
            TblTemporaria.FieldByName('MARCICOD').AsString      := SQLCompraMarca.FieldByName('MARCICOD').AsString
          else
            TblTemporaria.FieldByName('MARCICOD').AsString      := '0';

          TblTemporaria.FieldByName('MARCA60DESCR').AsString  := SQLCompraMarca.FieldByName('MARCA60DESCR').AsString;
          TblTemporaria.FieldByName('TOTAL').AsFloat          := SQLCompraMarca.FieldByName('TOTAL').AsFloat;
          TblTemporaria.FieldByName('QTDETOTAL').AsFloat      := SQLCompraMarca.FieldByName('QTDETOTAL').AsFloat;
          TblTemporaria.Post;
        end;
      SQLCompraMarca.Next;
    end;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Compras Por Marca.rpt' ;
  Report.ReportTitle       := 'Relatório de Compras Por Marca' ;
  Report.WindowStyle.Title := 'Relatório de Compras Por Marca' ;
  //SETAR LEGENDA DE FILTROS NO RPT\\
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Periodo' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                        FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
  Report.Formulas.Send;
  Report.Execute;
end;

end.
