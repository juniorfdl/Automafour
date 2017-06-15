unit RelatorioClienteBloqueado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DB, DBTables, Placemnt, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioClienteBloqueado = class(TFormRelatorioTEMPLATE)
    SQLMotivoBloqueio: TQuery;
    SQLMotivoBloqueioMTBLICOD: TIntegerField;
    SQLMotivoBloqueioMTBLA60DESCR: TStringField;
    SQLMotivoBloqueioPENDENTE: TStringField;
    SQLMotivoBloqueioREGISTRO: TDateTimeField;
    SQLCliente: TRxQuery;
    DSSQLMotivoBloqueio: TDataSource;
    GroupMotivo: TGroupBox;
    ComboMotivo: TRxDBLookupCombo;
    RadioOrdem: TRadioGroup;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteMTBLICOD: TIntegerField;
    SQLClienteMTBLA60DESCR: TStringField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaMTBLICOD: TIntegerField;
    TblTemporariaMTBLA60DESCR: TStringField;
    Report: TCrpe;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioClienteBloqueado: TFormRelatorioClienteBloqueado;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioClienteBloqueado.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLCliente.Close;
  SQLCliente.MacroByName('EMPRESA').Value          := SQLDeLista(ComboEmpresa,ListaEmpresas,'','CLIENTE','');
  if ComboMotivo.Value <> '' then
    SQLCliente.MacroByName('MOTIVOBLOQUEIO').Value := 'CLIENTE.MTBLICOD = ' + ComboMotivo.Value
  else
    SQLCliente.MacroByName('MOTIVOBLOQUEIO').Value := '0=0';

  case RadioOrdem.ItemIndex of
    0 : SQLCliente.MacroByName('ORDEM').Value := 'CLIENTE.CLIEA13ID';
    1 : SQLCliente.MacroByName('ORDEM').Value := 'CLIENTE.CLIEA60RAZAOSOC';
    2 : SQLCliente.MacroByName('ORDEM').Value := 'CLIENTE.MTBLICOD';
  end;
  SQLCliente.Open;
  if SQLCliente.IsEmpty then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;
  BatchExec(SQLCliente,TblTemporaria);
  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Clientes Bloqueados.rpt' ;

  Report.ReportTitle       := 'Relatório de Clientes Bloqueados' ;
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '''' ;
  //--------------------------------------------------------------------------\\
  if ComboMotivo.Value <> '' then
    begin
      Report.Formulas.Name         := 'MotivoBloqueio' ;
      Report.Formulas.Formula.Text := '''' + ComboMotivo.DisplayValue +'''' ;
    end;
  Report.Formulas.Send;
  Report.Execute ;
end;

procedure TFormRelatorioClienteBloqueado.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLMotivoBloqueio.Active then SQLMotivoBloqueio.Open;
end;

end.
