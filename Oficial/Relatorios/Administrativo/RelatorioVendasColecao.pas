unit RelatorioVendasColecao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, TeEngine,
  TeeFunci, Series, TeeProcs, Chart, DbChart, UCrpe32;

type
  TFormRelatorioVendasColecao = class(TFormRelatorioTEMPLATE)
    SQLVendaColecao: TRxQuery;
    Report: TCrpe;
    SQLVendaColecaoCOLEICOD: TIntegerField;
    SQLVendaColecaoCOLEA60DESCR: TStringField;
    SQLVendaColecaoTOTAL: TFloatField;
    TblTemporariaCOLEICOD: TIntegerField;
    TblTemporariaCOLEA60DESCR: TStringField;
    TblTemporariaTOTAL: TFloatField;
    TblTemporariaQTDETOTAL: TFloatField;
    SQLVendaColecaoQTDETOTAL: TBCDField;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
  GraficoVendaMarca : Boolean
    { Public declarations }
  end;

var
  FormRelatorioVendasColecao: TFormRelatorioVendasColecao;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioVendasColecao.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLVendaColecao.Close ;
  //CUPOM
  SQLVendaColecao.MacroByName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '') ;
  SQLVendaColecao.MacrobyName('MData').Value    := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                 'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  //NOTAFISCAL
  SQLVendaColecao.MacrobyName('MEmpresanf').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTAFISCAL', '') ;
  SQLVendaColecao.MacrobyName('MDatanf').Value    := 'NOTAFISCAL.NOFIDEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                   'NOTAFISCAL.NOFIDEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  SQLVendaColecao.Open ;
  SQLVendaColecao.First;

  While not SQLVendaColecao.Eof do
    begin
      if (TblTemporaria.Locate('COLEA60DESCR',SQLVendaColecao.FieldByName('COLEA60DESCR').AsString,[])) then
        begin
          TblTemporaria.Edit;
          TblTemporaria.FieldByName('TOTAL').AsFloat       := TblTemporaria.FieldByName('TOTAL').AsFloat +
                                                              SQLVendaColecao.FieldByName('TOTAL').AsFloat;
          TblTemporaria.FieldByName('QTDETOTAL').AsFloat   := TblTemporaria.FieldByName('QTDETOTAL').AsFloat +
                                                              SQLVendaColecao.FieldByName('QTDETOTAL').AsFloat;
          TblTemporaria.Post;
        end
      else
        begin
          TblTemporaria.Append;
          if SQLVendaColecao.FieldByName('COLEICOD').AsString <> '' then
            TblTemporaria.FieldByName('COLEICOD').AsString      := SQLVendaColecao.FieldByName('COLEICOD').AsString
          else
            TblTemporaria.FieldByName('COLEICOD').AsString      := '0';

          TblTemporaria.FieldByName('COLEA60DESCR').AsString  := SQLVendaColecao.FieldByName('COLEA60DESCR').AsString;
          TblTemporaria.FieldByName('TOTAL').AsFloat          := SQLVendaColecao.FieldByName('TOTAL').AsFloat;
          TblTemporaria.FieldByName('QTDETOTAL').AsFloat      := SQLVendaColecao.FieldByName('QTDETOTAL').AsFloat;
          TblTemporaria.Post;
        end;
      SQLVendaColecao.Next;
    end;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Vendas Por Colecao.rpt' ;
  Report.ReportTitle       := 'Relatório de Vendas Por Coleção' ;
  Report.WindowStyle.Title := 'Relatório de Vendas Por Coleção' ;
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
