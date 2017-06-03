unit RelatorioVendasGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, TeEngine,
  TeeFunci, Series, TeeProcs, Chart, DbChart, UCrpe32;

type
  TFormRelatorioVendasGrupo = class(TFormRelatorioTEMPLATE)
    SQLVendaGrupo: TRxQuery;
    SQLVendaGrupoGRUPICOD: TIntegerField;
    SQLVendaGrupoGRUPA60DESCR: TStringField;
    SQLVendaGrupoTOTAL: TFloatField;
    TblTemporariaGRUPICOD: TIntegerField;
    TblTemporariaGRUPA60DESCR: TStringField;
    TblTemporariaTOTAL: TFloatField;
    Report: TCrpe;
    TblTemporariaQTDETOTAL: TFloatField;
    SQLVendaGrupoQTDETOTAL: TBCDField;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
  GraficoVendaGrupo : Boolean
    { Public declarations }
  end;

var
  FormRelatorioVendasGrupo: TFormRelatorioVendasGrupo;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioVendasGrupo.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLVendaGrupo.Close ;
  //CUPOM
  SQLVendaGrupo.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '') ;
  SQLVendaGrupo.MacrobyName('MData').Value    := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                 'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  //NOTAFISCAL
  SQLVendaGrupo.MacrobyName('MEmpresanf').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTAFISCAL', '') ;
  SQLVendaGrupo.MacrobyName('MDatanf').Value    := 'NOTAFISCAL.NOFIDEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                   'NOTAFISCAL.NOFIDEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  SQLVendaGrupo.Open ;
  SQLVendaGrupo.First;

  While not SQLVendaGrupo.Eof do
    begin
      if (TblTemporaria.Locate('GRUPA60DESCR',SQLVendaGrupo.FieldByName('GRUPA60DESCR').AsString,[])) then
        begin
          TblTemporaria.Edit;
          TblTemporaria.FieldByName('TOTAL').AsFloat      := TblTemporaria.FieldByName('TOTAL').AsFloat +
                                                             SQLVendaGrupo.FieldByName('TOTAL').AsFloat;
          TblTemporaria.FieldByName('QTDETOTAL').AsFloat  := TblTemporaria.FieldByName('QTDETOTAL').AsFloat +
                                                             SQLVendaGrupo.FieldByName('QTDETOTAL').AsFloat;
          TblTemporaria.Post;
        end
      else
        begin
          TblTemporaria.Append;
          if SQLVendaGrupo.FieldByName('GRUPICOD').AsString <> '' then
            TblTemporaria.FieldByName('GRUPICOD').AsString      := SQLVendaGrupo.FieldByName('GRUPICOD').AsString
          else
            TblTemporaria.FieldByName('GRUPICOD').AsString      := '0';

          TblTemporaria.FieldByName('GRUPA60DESCR').AsString  := SQLVendaGrupo.FieldByName('GRUPA60DESCR').AsString;
          TblTemporaria.FieldByName('TOTAL').AsFloat          := SQLVendaGrupo.FieldByName('TOTAL').AsFloat;
          TblTemporaria.FieldByName('QTDETOTAL').AsFloat      := SQLVendaGrupo.FieldByName('QTDETOTAL').AsFloat;
          TblTemporaria.Post;
        end;
      SQLVendaGrupo.Next;
    end;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Vendas Por Grupo.rpt' ;
  Report.ReportTitle       := 'Relatório de Vendas Por Grupo' ;
  Report.WindowStyle.Title := 'Relatório de Vendas Por Grupo' ;
  //SETAR LEGENDA DE FILTROS NO RPT\\
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Periodo' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                        FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' +ComboEmpresa.Text+'"';
  Report.Formulas.Send;
  Report.Execute;                                
end;

end.
