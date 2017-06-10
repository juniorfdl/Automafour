unit RelatorioCupomEmitidoPorEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DB, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, DBTables, Placemnt, StdCtrls, Mask, ToolEdit,
  RxLookup, Buttons, ExtCtrls, ComCtrls, RxQuery, UCrpe32;

type
  TFormRelatorioCupomEmitidoPorEmpresa = class(TFormRelatorioTEMPLATE)
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaEmpresaNome: TStringField;
    TblTemporariaCUPOA13ID: TStringField;
    TblTemporariaCUPODEMIS: TDateTimeField;
    TblTemporariaCUPODENTREGA: TDateField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaCPITTOBS: TStringField;
    TblTemporariaCPITN3QTD: TFloatField;
    TblTemporariaVENDICOD: TIntegerField;
    TblTemporariaVendedorNome: TStringField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaClienteNome: TStringField;
    TblTemporariaGRADICOD: TIntegerField;
    TblTemporariaGRTMICOD: TIntegerField;
    TblTemporariaCORICOD: TIntegerField;
    SQLVendas: TRxQuery;
    SQLVendasEMPRICOD: TIntegerField;
    SQLVendasCUPOA13ID: TStringField;
    SQLVendasCUPODEMIS: TDateTimeField;
    SQLVendasCUPODENTREGA: TDateTimeField;
    SQLVendasPRODICOD: TIntegerField;
    SQLVendasPRODA60DESCR: TStringField;
    SQLVendasGRADICOD: TIntegerField;
    SQLVendasGRTMICOD: TIntegerField;
    SQLVendasCORICOD: TIntegerField;
    SQLVendasCPITN3QTD: TFloatField;
    SQLVendasVENDICOD: TIntegerField;
    SQLVendasCLIEA13ID: TStringField;
    SQLVendasCPITTOBS: TStringField;
    TblTemporariaTamanho: TStringField;
    SQLVendasCLIENTENOME: TStringField;
    Report: TCrpe;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioCupomEmitidoPorEmpresa: TFormRelatorioCupomEmitidoPorEmpresa;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioCupomEmitidoPorEmpresa.ExecutarBtnClick(
  Sender: TObject);
var i : integer;
begin
  inherited;
  SQLVendas.Close ;
  SQLVendas.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'CUPOM', '') ;
  SQLVendas.MacrobyName('MData').Value    := 'CUPOM.CUPODEMIS >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                             'CUPOM.CUPODEMIS <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;

  SQLVendas.Open ;
  if SQLVendas.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Exit;
    end;

  TblTemporaria.Open ;
  SQLVendas.First ;
  while not SQLVendas.Eof do
    begin
      TblTemporaria.Append ;

      for i := 0 to SQLVendas.FieldCount-1 do
        if SQLVendas.Fields[i].AsString <> '' then
          TblTemporaria.FieldByName(SQLVendas.Fields[i].FieldName).AsVariant := SQLVendas.Fields[i].AsVariant ;
      TblTemporariaPRODA60DESCR.Value   := TblTemporariaPRODA60DESCR.Value+'/'+dm.SQLLocate('COR','CORICOD','CORA30DESCR',dm.SQLLocate('PRODUTO','PRODICOD','CORICOD',TblTemporariaPRODICOD.AsString));
      if(TblTemporariaGRADICOD.AsString <> '') and (TblTemporariaGRTMICOD.AsString <> '') then
        TblTemporariaPRODA60DESCR.Value   := TblTemporariaPRODA60DESCR.Value+'/'+RetornaTamanhoProduto(TblTemporariaGRADICOD.AsString,TblTemporariaGRTMICOD.AsString);
      TblTemporariaVendedorNome.Value      := dm.SQLLocate('VENDEDOR','VENDICOD','VENDA60NOME',TblTemporariaVENDICOD.AsString);
      if SQLVendasEMPRICOD.AsString <> '' then
        TblTemporariaEmpresaNome.Value       := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60NOMEFANT',TblTemporariaEMPRICOD.AsString);

      TblTemporaria.Post ;
      SQLVendas.Next ;
    end ;

  Report.ReportName        := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Produtos Vendidos Total Por Empresa.rpt' ;
  Report.ReportTitle       := 'Relatorio de Produtos Vendidos Totalizando por Empresa' ;
  Report.WindowStyle.Title := 'Relatorio de Produtos Vendidos Totalizando por Empresa' ;

  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '"' ;
  //--------------------------------------------------------------------------\\

  Report.Formulas.Send;
  Report.Execute ;
end;

end.
