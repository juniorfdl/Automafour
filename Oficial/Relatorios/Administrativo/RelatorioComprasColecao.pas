unit RelatorioComprasColecao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, TeEngine,
  TeeFunci, Series, TeeProcs, Chart, DbChart, UCrpe32;

type
  TFormRelatorioComprasColecao = class(TFormRelatorioTEMPLATE)
    SQLComprasColecao: TRxQuery;
    Report: TCrpe;
    SQLComprasColecaoCOLEICOD: TIntegerField;
    SQLComprasColecaoCOLEA60DESCR: TStringField;
    SQLComprasColecaoQTDETOTAL: TFloatField;
    SQLComprasColecaoTOTAL: TFloatField;
    TblTemporariaCOLEICOD: TIntegerField;
    TblTemporariaCOLEA60DESCR: TStringField;
    TblTemporariaQTDETOTAL: TFloatField;
    TblTemporariaTOTAL: TFloatField;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
  GraficoVendaMarca : Boolean
    { Public declarations }
  end;

var
  FormRelatorioComprasColecao: TFormRelatorioComprasColecao;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioComprasColecao.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLComprasColecao.Close ;
  //NOTA DE COMPRA
  SQLComprasColecao.MacroByName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'NOTACOMPRA', 'EMPRICODDESTCOMPRA') ;
  SQLComprasColecao.MacrobyName('MData').Value    := 'NOTACOMPRA.NOCPDRECEBIMENTO >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                                     'NOTACOMPRA.NOCPDRECEBIMENTO <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  SQLComprasColecao.Open ;

  if SQLComprasColecao.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  SQLComprasColecao.First;

  While not SQLComprasColecao.Eof do
    begin
      if (TblTemporaria.Locate('COLEA60DESCR',SQLComprasColecao.FieldByName('COLEA60DESCR').AsString,[])) then
        begin
          TblTemporaria.Edit;
          TblTemporaria.FieldByName('TOTAL').AsFloat       := TblTemporaria.FieldByName('TOTAL').AsFloat +
                                                              SQLComprasColecao.FieldByName('TOTAL').AsFloat;
          TblTemporaria.FieldByName('QTDETOTAL').AsFloat   := TblTemporaria.FieldByName('QTDETOTAL').AsFloat +
                                                              SQLComprasColecao.FieldByName('QTDETOTAL').AsFloat;
          TblTemporaria.Post;
        end
      else
        begin
          TblTemporaria.Append;
          if SQLComprasColecao.FieldByName('COLEICOD').AsString <> '' then
            TblTemporaria.FieldByName('COLEICOD').AsString      := SQLComprasColecao.FieldByName('COLEICOD').AsString
          else
            TblTemporaria.FieldByName('COLEICOD').AsString      := '0';

          TblTemporaria.FieldByName('COLEA60DESCR').AsString  := SQLComprasColecao.FieldByName('COLEA60DESCR').AsString;
          TblTemporaria.FieldByName('TOTAL').AsFloat          := SQLComprasColecao.FieldByName('TOTAL').AsFloat;
          TblTemporaria.FieldByName('QTDETOTAL').AsFloat      := SQLComprasColecao.FieldByName('QTDETOTAL').AsFloat;
          TblTemporaria.Post;
        end;
      SQLComprasColecao.Next;
    end;

  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Compras Por Colecao.rpt' ;
  Report.ReportTitle       := 'Relatório de Compras Por Coleção' ;
  Report.WindowStyle.Title := 'Relatório de Compras Por Coleção' ;
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
