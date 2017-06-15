unit RelatorioVendasMarca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, TeEngine,
  TeeFunci, Series, TeeProcs, Chart, DbChart, UCrpe32, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormRelatorioVendasMarca = class(TFormRelatorioTEMPLATE)
    SQLVendaMarca: TRxQuery;
    Report: TCrpe;
    SQLVendaMarcaMARCICOD: TIntegerField;
    SQLVendaMarcaMARCA60DESCR: TStringField;
    SQLVendaMarcaTOTAL: TFloatField;
    TblTemporariaMARCICOD: TIntegerField;
    TblTemporariaMARCA60DESCR: TStringField;
    TblTemporariaTOTAL: TFloatField;
    TblTemporariaQTDETOTAL: TFloatField;
    SQLVendaMarcaQTDETOTAL: TFloatField;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
  GraficoVendaMarca : Boolean
    { Public declarations }
  end;

var
  FormRelatorioVendasMarca: TFormRelatorioVendasMarca;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioVendasMarca.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLVendaMarca.Close ;
  //CUPOM
  SQLVendaMarca.MacroByName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '') ;
  SQLVendaMarca.MacrobyName('MData').Value    := 'CUPOM.CUPODEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                 'CUPOM.CUPODEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' ;
  //NOTAFISCAL
  SQLVendaMarca.MacrobyName('MEmpresanf').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTAFISCAL', '') ;
  SQLVendaMarca.MacrobyName('MDatanf').Value    := 'NOTAFISCAL.NOFIDEMIS >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                   'NOTAFISCAL.NOFIDEMIS <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' ;
  SQLVendaMarca.Open ;
  SQLVendaMarca.First;

  While not SQLVendaMarca.Eof do
    begin
      if (TblTemporaria.Locate('MARCA60DESCR',SQLVendaMarca.FieldByName('MARCA60DESCR').AsString,[])) then
        begin
          TblTemporaria.Edit;
          TblTemporaria.FieldByName('TOTAL').AsFloat       := TblTemporaria.FieldByName('TOTAL').AsFloat +
                                                              SQLVendaMarca.FieldByName('TOTAL').AsFloat;
          TblTemporaria.FieldByName('QTDETOTAL').AsFloat   := TblTemporaria.FieldByName('QTDETOTAL').AsFloat +
                                                              SQLVendaMarca.FieldByName('QTDETOTAL').AsFloat;
          TblTemporaria.Post;
        end
      else
        begin
          TblTemporaria.Append;
          if SQLVendaMarca.FieldByName('MARCICOD').AsString <> '' then
            TblTemporaria.FieldByName('MARCICOD').AsString      := SQLVendaMarca.FieldByName('MARCICOD').AsString
          else
            TblTemporaria.FieldByName('MARCICOD').AsString      := '0';

          TblTemporaria.FieldByName('MARCA60DESCR').AsString  := SQLVendaMarca.FieldByName('MARCA60DESCR').AsString;
          TblTemporaria.FieldByName('TOTAL').AsFloat          := SQLVendaMarca.FieldByName('TOTAL').AsFloat;
          TblTemporaria.FieldByName('QTDETOTAL').AsFloat      := SQLVendaMarca.FieldByName('QTDETOTAL').AsFloat;
          TblTemporaria.Post;
        end;
      SQLVendaMarca.Next;
    end;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Vendas Por Marca.rpt' ;
  Report.ReportTitle       := 'Relatório de Vendas Por Marca' ;
  Report.WindowStyle.Title := 'Relatório de Vendas Por Marca' ;
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
