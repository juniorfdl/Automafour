unit RelatorioInadimplenciaAnual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DB, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, DBTables, Placemnt, StdCtrls, Mask, ToolEdit,
  RxLookup, Buttons, ExtCtrls, ComCtrls, RxQuery;

type
  TFormRelatorioInadimplenciaAnual = class(TFormRelatorioTEMPLATE)
    TblTemporariaAno: TStringField;
    TblTemporariaMes: TStringField;
    TblTemporariaPerc_Inadimp: TFloatField;
    TblTemporariaVlr_Inadimp: TFloatField;
    TblTemporariaValorVenda: TFloatField;
    TblTemporariaEmpricod: TIntegerField;
    TblTemporariaEmpresaRazaoSoc: TStringField;
    SQLGeral: TRxQuery;
    sqlParadox: TRxQuery;
    TblTemporariaValorRecebido: TFloatField;
    TblTemporariaValorAReceber: TFloatField;
    sqlParadoxEmpricod: TIntegerField;
    sqlParadoxEmpresaRazaoSoc: TStringField;
    sqlParadoxAno: TStringField;
    sqlParadoxMes: TStringField;
    sqlParadoxValorVenda: TFloatField;
    sqlParadoxValorAReceber: TFloatField;
    sqlParadoxValorRecebido: TFloatField;
    sqlParadoxVlr_Inadimp: TFloatField;
    sqlParadoxPerc_Inadimp: TFloatField;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioInadimplenciaAnual: TFormRelatorioInadimplenciaAnual;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioInadimplenciaAnual.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;

  TblTemporaria.Close;
  TblTemporaria.Open;
  {SQL Venda Total ultimos meses}
  sqlgeral.close;
  sqlgeral.SQL.add('Select EXTRACT(YEAR FROM CUPODEMIS) as ano, EXTRACT(MONTH FROM CUPODEMIS) as mes, sum(CUPON2TOTITENS+CUPON3CREDTAXA+CUPON2ACRESC-CUPON2DESC-CUPON3BONUSTROCA) as VendaTotal From Cupom');
  if ComboEmpresa.Value = '' then
    sqlgeral.SQL.add('where CUPOCSTATUS = "A" and CUPOCTIPOPADRAO = "CRD" and CUPODEMIS >= "12/31/2008"')
  else
    sqlgeral.SQL.add('where CUPOCSTATUS = "A" and CUPOCTIPOPADRAO = "CRD" and CUPODEMIS >= "12/31/2008" and EMPRICOD='+ComboEmpresa.Value);
  sqlgeral.SQL.add('group by EXTRACT(YEAR FROM CUPODEMIS), EXTRACT(MONTH FROM CUPODEMIS)');
  sqlgeral.Open;
  While Not sqlgeral.Eof Do
    Begin
      TblTemporaria.Append;
      TblTemporariaEmpricod.Value           := 1;
      if TblTemporariaEmpricod.AsString = '' then
        TblTemporariaEmpresaRazaoSoc.Value    := 'Todas'
      else
        TblTemporariaEmpresaRazaoSoc.Value    := dm.SQLLocate('EMPRESA','EMPRICOD','EMPRA60RAZAOSOC','1');
      TblTemporariaValorVenda.Value           := sqlgeral.fieldbyname('VendaTotal').AsVariant;
      TblTemporariaAno.Value                  := sqlgeral.fieldbyname('ano').Value;
      TblTemporariaMes.Value                  := sqlgeral.fieldbyname('mes').Value;
      TblTemporaria.Post;
      sqlgeral.Next;
    End;
  TblTemporaria.Close;

  {SQL Contas a Receber ultimos 6 anos}
  sqlgeral.close;
  sqlgeral.sql.clear;
  sqlgeral.SQL.add('Select EXTRACT(YEAR FROM CTRCDVENC) as ano, EXTRACT(MONTH FROM CTRCDVENC) as mes, sum(CTRCN2VLR) as ValorAReceber, sum(CTRCN2TOTREC) as ValorRecebido From ContasReceber');
  if ComboEmpresa.Value = '' then
    sqlgeral.SQL.add('where CTRCCSTATUS = "A" and CTRCA5TIPOPADRAO = "CRD" and CTRCDEMIS >= "12/31/2008"')
  else
    sqlgeral.SQL.add('where CTRCCSTATUS = "A" and CTRCA5TIPOPADRAO = "CRD" and CTRCDEMIS >= "12/31/2008" and EMPRICOD = ' + ComboEmpresa.Value);
  sqlgeral.SQL.add('group by EXTRACT(YEAR FROM CTRCDVENC), EXTRACT(MONTH FROM CTRCDVENC)');
  sqlgeral.Open;
  While Not sqlgeral.Eof Do
    Begin
      sqlParadox.Close;
      sqlParadox.macrobyname('MFiltro').Value := 'Ano="'+sqlgeral.fieldbyname('ano').AsString+'" and mes="'+sqlgeral.fieldbyname('mes').AsString+'"';
      sqlParadox.Open;
      if sqlParadox.IsEmpty then
         begin
           sqlParadox.edit;
           sqlParadoxValorAReceber.Value := sqlgeral.fieldbyname('ValorAReceber').Value;
           sqlParadoxValorRecebido.Value := sqlgeral.fieldbyname('ValorRecebido').Value;
           sqlParadoxVlr_Inadimp.Value   := sqlgeral.fieldbyname('ValorAReceber').Value - sqlgeral.fieldbyname('ValorRecebido').Value;
           sqlParadoxPerc_Inadimp.Value  := (sqlParadoxValorAReceber.Value-sqlParadoxValorRecebido.Value)/sqlParadoxValorAReceber.Value*100;
           sqlParadox.post;
         end;
      sqlgeral.Next;
    End;
end;

end.
