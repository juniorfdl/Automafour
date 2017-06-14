unit RelatorioApuracaoPISCOFINS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DB, RxQuery, DBTables, Placemnt, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, ppPrnabl,
  ppClass, ppCtrls, ppBands, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, ppViewr, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormRelatorioApuracaoPisCofins = class(TFormRelatorioTEMPLATE)
    SQLVendas: TRxQuery;
    SQLVendasVLRTOTALITEM: TFloatField;
    SQLVendasPRODA2CSTPIS: TStringField;
    SQLVendasPRODN2ALIQPIS: TFloatField;
    SQLVendasPRODA2CSTCOFINS: TStringField;
    SQLVendasPRODN2ALIQCOFINS: TFloatField;
    TblTemporariaTotalPIS: TFloatField;
    TblTemporariaTotalCOFINS: TFloatField;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppValorVenda: TppLabel;
    ppPis: TppLabel;
    ppCofins: TppLabel;
    ppEmpresa: TppLabel;
    ppData: TppLabel;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TotVendas, TotPis, TotCofins : Double;
  end;

var
  FormRelatorioApuracaoPisCofins: TFormRelatorioApuracaoPisCofins;

implementation

{$R *.dfm}

procedure TFormRelatorioApuracaoPisCofins.ExecutarBtnClick(
  Sender: TObject);
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

  TotVendas := 0;
  TotPis    := 0;
  TotCofins := 0;
  SQLVendas.First ;
  while not SQLVendas.Eof do
    begin
      TotVendas := TotVendas + SQLVendasVLRTOTALITEM.Value;
      if (SQLVendasVLRTOTALITEM.Value>0) and (SQLVendasPRODN2ALIQPIS.Value>0) then
        TotPis := TotPis + ((SQLVendasVLRTOTALITEM.Value * SQLVendasPRODN2ALIQPIS.Value)/100);
      if (SQLVendasVLRTOTALITEM.Value>0) and (SQLVendasPRODN2ALIQCOFINS.Value>0) then
        TotCofins := TotCofins + ((SQLVendasVLRTOTALITEM.Value * SQLVendasPRODN2ALIQCOFINS.Value)/100);
      SQLVendas.Next ;
    end ;

  ppReport1.Print;

end;

procedure TFormRelatorioApuracaoPisCofins.ppHeaderBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppEmpresa.Caption    := ComboEmpresa.Text;
  ppData.Caption       := 'De ' + FormatDateTime('dd/mm/yyyy',De.Date) + ' até ' + FormatDateTime('dd/mm/yyyy',Ate.Date); 
  ppValorVenda.Caption := FormatFloat('##0.00',TotVendas);
  ppPis.Caption        := FormatFloat('##0.00',TotPis);
  ppCofins.Caption     := FormatFloat('##0.00',TotCofins);
end;


procedure TFormRelatorioApuracaoPisCofins.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppReport1.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage := 100;
end;

end.
