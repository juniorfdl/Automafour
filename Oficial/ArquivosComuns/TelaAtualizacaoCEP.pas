unit TelaAtualizacaoCEP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, DB, ADODB, Buttons, jpeg, ExtCtrls, StdCtrls,
  Grids, DBGrids, DBTables, Gauges, DbPrgrss, RxLookup, RxQuery,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaAtualizacaoCEP = class(TFormTelaGeralTEMPLATE)
    BtnSelecionarDoc: TSpeedButton;
    DSQueryCEP: TDataSource;
    DatabaseCEP: TDatabase;
    DBProgress: TDBProgress;
    Gauge: TGauge;
    SQLCEP: TQuery;
    SQLCEPCEPA8CEP: TStringField;
    SQLCEPCEPA60LOGRADOURO: TStringField;
    SQLCEPCEPA4TIPOLOGRADOURO: TStringField;
    SQLCEPCEPA60BAIRRO1: TStringField;
    SQLCEPCEPA60BAIRRO2: TStringField;
    SQLCEPCEPA60CIDADE: TStringField;
    SQLCEPCEPA2ESTADO: TStringField;
    Label1: TLabel;
    DBGridLista: TDBGrid;
    DSSQLCEP: TDataSource;
    SQLEstado: TQuery;
    DSSQLEstado: TDataSource;
    ComboEstado: TRxDBLookupCombo;
    Label2: TLabel;
    SQLCEPCorreios: TRxQuery;
    SQLCEPCorreiosCEP: TStringField;
    SQLCEPCorreiosLOG_NOME: TStringField;
    SQLCEPCorreiosUFE_SG: TStringField;
    SQLCEPCorreiosLOG_TIPO_LOGRADOURO: TStringField;
    SQLCEPCorreiosLOC_NO: TStringField;
    SQLCEPCorreiosBAIRRO1: TStringField;
    SQLCEPCorreiosBAIRRO2: TStringField;
    SQLEstadoUFE_SG: TStringField;
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaAtualizacaoCEP: TFormTelaAtualizacaoCEP;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaAtualizacaoCEP.BtnSelecionarDocClick(Sender: TObject);
begin
  inherited;
  DatabaseCEP.Open;

  SQLCEP.Close;
  SQLCEP.Open;

  SQLCEPCorreios.Close;

  if ComboEstado.Value <> '' then
    SQLCEPCorreios.MacroByName('Estado').Value := 'LOG_LOGRADOURO.UFE_SG = ' + '''' + ComboEstado.Value + ''''
  else
    SQLCEPCorreios.MacroByName('Estado').Value := '0=0';

  SQLCEPCorreios.Open;
  SQLCEPCorreios.Last;
  SQLCEPCorreios.First;
  SQLCEP.DisableControls;
  Gauge.MinValue := SQLCEPCorreios.RecNo;
  Gauge.MaxValue := SQLCEPCorreios.RecordCount;
  Gauge.Progress := 0;
  while not SQLCEPCorreios.Eof do
    begin
      if not SQLCEP.Locate('CEPA8CEP',SQLCEPCorreiosCEP.AsString,[]) then
        begin
          SQLCEP.Append;
          SQLCEPCEPA8CEP.AsString            :=  UpperCase(SQLCEPCorreiosCEP.AsString);
          SQLCEPCEPA60LOGRADOURO.AsString    :=  UpperCase(SQLCEPCorreiosLOG_NOME.AsString);
          SQLCEPCEPA4TIPOLOGRADOURO.AsString :=  UpperCase(SQLCEPCorreiosLOG_TIPO_LOGRADOURO.AsString);
          SQLCEPCEPA60BAIRRO1.AsString       :=  UpperCase(SQLCEPCorreiosBAIRRO1.AsString);
          SQLCEPCEPA60BAIRRO2.AsString       :=  UpperCase(SQLCEPCorreiosBAIRRO2.AsString);
          SQLCEPCEPA60CIDADE.AsString        :=  UpperCase(SQLCEPCorreiosLOG_NOME.AsString);
          SQLCEP.Post;
        end;
        SQLCEPCorreios.Next;
        Gauge.Progress := Gauge.Progress + 1; 
        Gauge.Update;
    end;
  ShowMessage('Atualização efetuada com sucesso !');
  SQLCEPCorreios.Close;
  SQLCEP.EnableControls;
  SQLCEP.Close;
  SQLCEP.Open;
end;

procedure TFormTelaAtualizacaoCEP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DatabaseCEP.Free; 
end;

procedure TFormTelaAtualizacaoCEP.FormCreate(Sender: TObject);
begin
  inherited;
  SQLEstado.Open;
end;

end.
