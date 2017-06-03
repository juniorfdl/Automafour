unit TelaResumoFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, Grids, DBGrids, RXDBCtrl, StdCtrls,
  Buttons, ExtCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, RXCtrls;

type
  TFormTelaResumoFinanceiro = class(TForm)
    PanelResumoFin: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    EditPagarVencidas: TEdit;
    EditPagarHoje: TEdit;
    EditPagarAVencer: TEdit;
    EditRecAVencer: TEdit;
    EditRecHoje: TEdit;
    EditRecVencidas: TEdit;
    RxDBGrid1: TRxDBGrid;
    EditComprasDia: TEdit;
    EditVendaDia: TEdit;
    EditSaldoCC: TEdit;
    EditPagarAVencer15: TEdit;
    EditRecAVencer15: TEdit;
    EditTotalPagar: TEdit;
    EditTotalReceber: TEdit;
    SQLCC: TRxQuery;
    SQLCCCTCRICOD: TIntegerField;
    SQLCCBANCA5COD: TStringField;
    SQLCCCTCRA15AGENCIA: TStringField;
    SQLCCCTCRA15NUMERO: TStringField;
    SQLCCCTCRA60TITULAR: TStringField;
    SQLCCCTCRDABERTURA: TDateTimeField;
    SQLCCCTCRN2LIMITE: TFloatField;
    SQLCCCTCRN2SALDOATUAL: TFloatField;
    DSSQLCC: TDataSource;
    SQLSoma: TRxQuery;
    Label17: TLabel;
    Label18: TLabel;
    EditPagarAVencer30: TEdit;
    EditPagarAVencer45: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    EditRecAVencer30: TEdit;
    EditRecAVencer45: TEdit;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBar2: TAdvOfficeStatusBar;
    RxLabel1: TRxLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaResumoFinanceiro: TFormTelaResumoFinanceiro;

implementation

{$R *.dfm}

procedure TFormTelaResumoFinanceiro.FormActivate(Sender: TObject);
Var TotPagarVencidas, TotPagarHoje, TotPagarAPagar, TotPagarAPagar15, TotPagarAPagar30, TotPagarAPagar45,
    TotReceberVencidas, TotReceberHoje, TotReceberAReceber, TotReceberAReceber15, TotReceberAReceber30, TotReceberAReceber45,
    TotVendasDia, TotComprasDia, TotSaldoCC : Double;
begin
  inherited;
  TotPagarVencidas := 0; TotPagarHoje := 0; TotPagarAPagar := 0; TotPagarAPagar15 := 0; TotPagarAPagar30 := 0; TotPagarAPagar45 := 0;
  TotReceberVencidas := 0; TotReceberHoje := 0; TotReceberAReceber := 0; TotReceberAReceber15 := 0; TotReceberAReceber30 := 0; TotReceberAReceber45 := 0;
  TotSaldoCC := 0; TotVendasDia := 0; TotComprasDia := 0;
  // A Pagar Vencidas
  SQLSoma.Close;
  SQLSoma.SQl.Clear;
  SQLSoma.SQL.Add('SELECT sum(CTPGN3VLR - CTPGN2TOTPAG) as Total FROM CONTASPAGAR');
  SQLSoma.SQL.Add('WHERE CTPGDVENC < ' + '"' + FormatDateTime('mm/dd/yyy',Now) + '"');
  SQLSoma.Open;
  If not SQLSoma.IsEmpty then
    if SQLSoma.FieldByName('Total').Value > 0 then
      TotPagarVencidas := SQLSoma.FieldByName('Total').Value;
  // A Pagar Vencendo Hoje
  SQLSoma.Close;
  SQLSoma.SQl.Clear;
  SQLSoma.SQL.Add('SELECT sum(CTPGN3VLR - CTPGN2TOTPAG) as Total FROM CONTASPAGAR');
  SQLSoma.SQL.Add('WHERE CTPGDVENC = ' + '"' + FormatDateTime('mm/dd/yyy',Now) + '"');
  SQLSoma.Open;
  If not SQLSoma.IsEmpty then
    if SQLSoma.FieldByName('Total').Value > 0 then
      TotPagarHoje := SQLSoma.FieldByName('Total').Value;
  // A Pagar A Vencer 7 dias
  SQLSoma.Close;
  SQLSoma.SQl.Clear;
  SQLSoma.SQL.Add('SELECT sum(CTPGN3VLR - CTPGN2TOTPAG) as Total FROM CONTASPAGAR');
  SQLSoma.SQL.Add('WHERE CTPGDVENC > ' + '"' + FormatDateTime('mm/dd/yyy',Now) + '"');
  SQLSoma.SQL.Add('AND   CTPGDVENC < ' + '"' + FormatDateTime('mm/dd/yyy',Now+8) + '"');
  SQLSoma.Open;
  If not SQLSoma.IsEmpty then
    if SQLSoma.FieldByName('Total').Value > 0 then
      TotPagarAPagar := SQLSoma.FieldByName('Total').Value;

  // A Pagar A Vencer 15 dias
  SQLSoma.Close;
  SQLSoma.SQl.Clear;
  SQLSoma.SQL.Add('SELECT sum(CTPGN3VLR - CTPGN2TOTPAG) as Total FROM CONTASPAGAR');
  SQLSoma.SQL.Add('WHERE CTPGDVENC > ' + '"' + FormatDateTime('mm/dd/yyy',Now+7) + '"');
  SQLSoma.SQL.Add('AND   CTPGDVENC < ' + '"' + FormatDateTime('mm/dd/yyy',Now+16) + '"');
  SQLSoma.Open;
  If not SQLSoma.IsEmpty then
    if SQLSoma.FieldByName('Total').Value > 0 then
      TotPagarAPagar15 := SQLSoma.FieldByName('Total').Value;
  // A Pagar A Vencer 30 dias
  SQLSoma.Close;
  SQLSoma.SQl.Clear;
  SQLSoma.SQL.Add('SELECT sum(CTPGN3VLR - CTPGN2TOTPAG) as Total FROM CONTASPAGAR');
  SQLSoma.SQL.Add('WHERE CTPGDVENC > ' + '"' + FormatDateTime('mm/dd/yyy',Now+15) + '"');
  SQLSoma.SQL.Add('AND   CTPGDVENC < ' + '"' + FormatDateTime('mm/dd/yyy',Now+30) + '"');
  SQLSoma.Open;
  If not SQLSoma.IsEmpty then
    if SQLSoma.FieldByName('Total').Value > 0 then
      TotPagarAPagar30 := SQLSoma.FieldByName('Total').Value;
  // A Pagar A Vencer 45 dias
  SQLSoma.Close;
  SQLSoma.SQl.Clear;
  SQLSoma.SQL.Add('SELECT sum(CTPGN3VLR - CTPGN2TOTPAG) as Total FROM CONTASPAGAR');
  SQLSoma.SQL.Add('WHERE CTPGDVENC > ' + '"' + FormatDateTime('mm/dd/yyy',Now+30) + '"');
  SQLSoma.SQL.Add('AND   CTPGDVENC < ' + '"' + FormatDateTime('mm/dd/yyy',Now+46) + '"');
  SQLSoma.Open;
  If not SQLSoma.IsEmpty then
    if SQLSoma.FieldByName('Total').Value > 0 then
      TotPagarAPagar45 := SQLSoma.FieldByName('Total').Value;
  // A Receber Vencidas
  SQLSoma.Close;
  SQLSoma.SQl.Clear;
  SQLSoma.SQL.Add('SELECT sum(CTRCN2VLR - CTRCN2TOTREC) as Total FROM CONTASRECEBER');
  SQLSoma.SQL.Add('WHERE CTRCDVENC > ' + '"' + FormatDateTime('mm/dd/yyy',Now-61) + '" and ');
  SQLSoma.SQL.Add('CTRCDVENC < ' + '"' + FormatDateTime('mm/dd/yyy',Now) + '"');
  SQLSoma.Open;
  If not SQLSoma.IsEmpty then
    if SQLSoma.FieldByName('Total').Value > 0 then
      TotReceberVencidas := SQLSoma.FieldByName('Total').Value;
  // A Receber Vencendo Hoje
  SQLSoma.Close;
  SQLSoma.SQl.Clear;
  SQLSoma.SQL.Add('SELECT sum(CTRCN2VLR - CTRCN2TOTREC) as Total FROM CONTASRECEBER');
  SQLSoma.SQL.Add('WHERE CTRCDVENC = ' + '"' + FormatDateTime('mm/dd/yyy',Now) + '"');
  SQLSoma.Open;
  If not SQLSoma.IsEmpty then
    if SQLSoma.FieldByName('Total').Value > 0 then
      TotReceberHoje := SQLSoma.FieldByName('Total').Value;
  // A Receber A Vencer 7 dias
  SQLSoma.Close;
  SQLSoma.SQl.Clear;
  SQLSoma.SQL.Add('SELECT sum(CTRCN2VLR - CTRCN2TOTREC) as Total FROM CONTASRECEBER');
  SQLSoma.SQL.Add('WHERE CTRCDVENC > ' + '"' + FormatDateTime('mm/dd/yyy',Now) + '"');
  SQLSoma.SQL.Add('AND   CTRCDVENC < ' + '"' + FormatDateTime('mm/dd/yyy',Now+8) + '"');
  SQLSoma.Open;
  If not SQLSoma.IsEmpty then
    if SQLSoma.FieldByName('Total').Value > 0 then
      TotReceberAReceber := SQLSoma.FieldByName('Total').Value;
  // A Receber A Vencer 15 dias
  SQLSoma.Close;
  SQLSoma.SQl.Clear;
  SQLSoma.SQL.Add('SELECT sum(CTRCN2VLR - CTRCN2TOTREC) as Total FROM CONTASRECEBER');
  SQLSoma.SQL.Add('WHERE CTRCDVENC > ' + '"' + FormatDateTime('mm/dd/yyy',Now+7) + '"');
  SQLSoma.SQL.Add('AND   CTRCDVENC < ' + '"' + FormatDateTime('mm/dd/yyy',Now+16) + '"');
  SQLSoma.Open;
  If not SQLSoma.IsEmpty then
    if SQLSoma.FieldByName('Total').Value > 0 then
      TotReceberAReceber15 := SQLSoma.FieldByName('Total').Value;

  // A Receber A Vencer 30 dias
  SQLSoma.Close;
  SQLSoma.SQl.Clear;
  SQLSoma.SQL.Add('SELECT sum(CTRCN2VLR - CTRCN2TOTREC) as Total FROM CONTASRECEBER');
  SQLSoma.SQL.Add('WHERE CTRCDVENC > ' + '"' + FormatDateTime('mm/dd/yyy',Now+15) + '"');
  SQLSoma.SQL.Add('AND   CTRCDVENC < ' + '"' + FormatDateTime('mm/dd/yyy',Now+30) + '"');
  SQLSoma.Open;
  If not SQLSoma.IsEmpty then
    if SQLSoma.FieldByName('Total').Value > 0 then
      TotReceberAReceber30 := SQLSoma.FieldByName('Total').Value;

  // A Receber A Vencer 45 dias
  SQLSoma.Close;
  SQLSoma.SQl.Clear;
  SQLSoma.SQL.Add('SELECT sum(CTRCN2VLR - CTRCN2TOTREC) as Total FROM CONTASRECEBER');
  SQLSoma.SQL.Add('WHERE CTRCDVENC > ' + '"' + FormatDateTime('mm/dd/yyy',Now+30) + '"');
  SQLSoma.SQL.Add('AND   CTRCDVENC < ' + '"' + FormatDateTime('mm/dd/yyy',Now+46) + '"');
  SQLSoma.Open;
  If not SQLSoma.IsEmpty then
    if SQLSoma.FieldByName('Total').Value > 0 then
      TotReceberAReceber45 := SQLSoma.FieldByName('Total').Value;

  // Total de Vendas do Dia
  SQLSoma.Close;
  SQLSoma.SQl.Clear;
  SQLSoma.SQL.Add('SELECT sum(CUPON2TOTITENS + CUPON2ACRESC - CUPON2DESC - CUPON3BONUSTROCA) as Total FROM CUPOM');
  SQLSoma.SQL.Add('WHERE CUPODEMIS = ' + '"' + FormatDateTime('mm/dd/yyy',Now) + '" and CUPOCSTATUS = "A"');
  SQLSoma.Open;
  If not SQLSoma.IsEmpty then
    if SQLSoma.FieldByName('Total').Value > 0 then
      TotVendasDia := SQLSoma.FieldByName('Total').Value;

  // Total de Compras do Dia
  SQLSoma.Close;
  SQLSoma.SQl.Clear;
  SQLSoma.SQL.Add('SELECT sum(NOCPN3VLRTOTNOTA) as Total FROM NOTACOMPRA');
  SQLSoma.SQL.Add('WHERE NOCPDEMISSAO = ' + '"' + FormatDateTime('mm/dd/yyy',Now) + '"');
  SQLSoma.Open;
  If not SQLSoma.IsEmpty then
    if SQLSoma.FieldByName('Total').Value > 0 then
      TotComprasDia := SQLSoma.FieldByName('Total').Value;

  // Saldo Contas Correntes
  SQLCC.Open;
  SQLCC.First ;
  if not SQLCC.IsEmpty then
    begin
      // Total de Contas Correntes
      SQLSoma.Close;
      SQLSoma.SQl.Clear;
      SQLSoma.SQL.Add('SELECT sum(CTCRN2SALDOATUAL) as Total FROM CONTACORRENTE');
      SQLSoma.Open;
      If not SQLSoma.IsEmpty then
        if SQLSoma.FieldByName('Total').Value > 0 then
          begin
            TotSaldoCC := SQLSoma.FieldByName('Total').Value;
            EditSaldoCC.Text    := FormatFloat('##0.00',TotSaldoCC);
            EditSaldoCC.Update;
          end;
    end;

  EditVendaDia.Text    := FormatFloat('##0.00',TotVendasDia);
  EditComprasDia.Text  := FormatFloat('##0.00',TotComprasDia);
  EditVendaDia.Update; EditComprasDia.Update;

  EditPagarVencidas.Text  := FormatFloat('##0.00',TotPagarVencidas);
  EditPagarHoje.Text      := FormatFloat('##0.00',TotPagarHoje);
  EditPagarAVencer.Text   := FormatFloat('##0.00',TotPagarAPagar);
  EditPagarAVencer15.Text := FormatFloat('##0.00',TotPagarAPagar15);
  EditPagarAVencer30.Text := FormatFloat('##0.00',TotPagarAPagar30);
  EditPagarAVencer45.Text := FormatFloat('##0.00',TotPagarAPagar45);
  EditTotalPagar.Text     := FormatFloat('##0.00',(TotPagarVencidas+TotPagarHoje+TotPagarAPagar+TotPagarAPagar15+TotPagarAPagar30+TotPagarAPagar45));
  EditPagarVencidas.Update; EditPagarHoje.Update; EditPagarAVencer.Update; EditPagarAVencer15.Update; EditPagarAVencer30.Update; EditPagarAVencer45.Update; EditTotalPagar.Update;

  EditRecVencidas.Text  := FormatFloat('##0.00',TotReceberVencidas);
  EditRecHoje.Text      := FormatFloat('##0.00',TotReceberHoje);
  EditRecAVencer.Text   := FormatFloat('##0.00',TotReceberAReceber);
  EditRecAVencer15.Text := FormatFloat('##0.00',TotReceberAReceber15);
  EditRecAVencer30.Text := FormatFloat('##0.00',TotReceberAReceber30);
  EditRecAVencer45.Text := FormatFloat('##0.00',TotReceberAReceber45);
  EditTotalReceber.Text := FormatFloat('##0.00',(TotReceberVencidas+TotReceberHoje+TotReceberAReceber+TotReceberAReceber15+TotReceberAReceber30+TotReceberAReceber45));
  EditRecVencidas.Update; EditRecHoje.Update; EditRecAVencer.Update; EditRecAVencer15.Update; EditRecAVencer30.Update; EditRecAVencer45.Update; EditTotalReceber.Update;
end;

procedure TFormTelaResumoFinanceiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SQLCC.Close;
  SQLSoma.Close;
end;

end.
