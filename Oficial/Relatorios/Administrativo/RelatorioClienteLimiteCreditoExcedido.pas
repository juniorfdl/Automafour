unit RelatorioClienteLimiteCreditoExcedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery, Grids,
  DBGrids, RXDBCtrl, UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioClienteLimiteCreditoExcedido = class(TFormRelatorioTEMPLATE)
    SQLClienteGeral: TRxQuery;
    SQLClienteGeralCLIEA13ID: TStringField;
    SQLClienteGeralCLIEA60RAZAOSOC: TStringField;
    TblTemporariaLIMITEORIGINAL: TFloatField;
    TblTemporariaCOMPRASPRAZO: TFloatField;
    TblTemporariaLIMITEFINAL: TFloatField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    SQLClienteGeralCLIEN2LIMITECRED: TFloatField;
    SQLLimiteCliente: TRxQuery;
    SQLLimiteParcelas: TRxQuery;
    SQLParcelas: TRxQuery;
    Report: TCrpe;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioClienteLimiteCreditoExcedido: TFormRelatorioClienteLimiteCreditoExcedido;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioClienteLimiteCreditoExcedido.ExecutarBtnClick(
  Sender: TObject);
var Debito : Double;
begin
  inherited;
  Debito := 0;
  TblTemporaria.Close;
  TblTemporaria.Open;
  SQLClienteGeral.Close;
  SQLClienteGeral.Open;
  if SQLClienteGeral.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;
  SQLClienteGeral.First;
  While not SQLClienteGeral.eof do
    begin
      TblTemporaria.Append;
      TblTemporariaCLIEA13ID.Value       := SQLClienteGeralCLIEA13ID.Value;
      TblTemporariaCLIEA60RAZAOSOC.Value := SQLClienteGeralCLIEA60RAZAOSOC.Value;
      TblTemporariaLIMITEORIGINAL.Value  := SQLClienteGeralCLIEN2LIMITECRED.Value;

      SQLParcelas.Close;
      SQLParcelas.SQL.Clear;
      SQLParcelas.SQL.Add('Select sum(CTRCN2VLR-CTRCN2TOTREC) from CONTASRECEBER where CLIEA13ID = '+ '''' + SQLClienteGeralCLIEA13ID.Value + '''' +  ' AND CTRCN2VLR > CTRCN2TOTREC');
      SQLParcelas.SQL.Add('AND (CTRCA5TIPOPADRAO NOT IN (''CRT'',''CONV'') or CTRCA5TIPOPADRAO is null) ');
      SQLParcelas.SQL.Add(' And (CTRCCSTATUS = ''A'' OR CTRCCSTATUS = ''N'')') ;
      SQLParcelas.SQL.Add(' And (CTRCCTIPOREGISTRO = ''N'' OR CTRCCTIPOREGISTRO is Null) And (PDVDA13ID = '''' OR PDVDA13ID is Null)') ;
      SQLParcelas.Open;
      if not SQLParcelas.IsEmpty then
        Debito := SQLParcelas.FieldByName('SUM').AsFloat;
      if Debito > 0 then
        TblTemporariaCOMPRASPRAZO.Value := Debito;
      TblTemporariaLIMITEFINAL.Value     := CalculaLimiteCredito(SQLClienteGeralCLIEA13ID.AsString,0,SQLLimiteParcelas,SQLLimiteCliente);
      TblTemporaria.Post;
      SQLClienteGeral.Next;
    end;
  TblTemporaria.Close;
  TblTemporaria.Open;
  Report.ReportName  := Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '/Limite Credito por Cliente.rpt';
  Report.ReportTitle := 'Limite de Credito por Clientes';
  Report.Execute;

end;

end.
