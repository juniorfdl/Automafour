unit VinculoCfopOperacaoEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, Buttons, jpeg, ExtCtrls, StdCtrls,
  DBCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, DBTables, RxQuery;

type
  TFormVinculoCfopOperacaoEstoque = class(TFormTelaGeralModalTemplate)
    GroupBox1: TGroupBox;
    dblkcbbCfop: TDBLookupComboBox;
    dsCfop: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    lblOpEstoque: TLabel;
    lblCFOPOrigem: TLabel;
    SpeedButton1: TSpeedButton;
    SQLCFOP: TRxQuery;
    SQLCFOPCFOPA5COD: TStringField;
    SQLCFOPCFOPA60DESCR: TStringField;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FOperacaoEstoque: Integer;
    FCfopOrigem: Integer;
    procedure SetCfopOrigem(const Value: Integer);
    procedure SetOperacaoEstoque(const Value: Integer);
    { Private declarations }
    function getInformacoesCFOP(aIdCfop: Integer): String;
    function getInformacoesOpEstoque(aIdOpEstoque: Integer): String;
  public
    { Public declarations }
    property OperacaoEstoque: Integer read FOperacaoEstoque write SetOperacaoEstoque;
    property CfopOrigem: Integer read FCfopOrigem write SetCfopOrigem;
  end;

var
  FormVinculoCfopOperacaoEstoque: TFormVinculoCfopOperacaoEstoque;

implementation

uses DataModulo, DataModuloTemplate;

{$R *.dfm}

{ TFormTelaGeralModalTemplate1 }

function TFormVinculoCfopOperacaoEstoque.getInformacoesCFOP(
  aIdCfop: Integer): String;
var qry: TQuery;
begin
  qry := TQuery.Create(DM);
  qry.DatabaseName := 'DB';
  try
    qry.SQL.Add('Select CFOPA60DESCR from CFOP');
    qry.SQL.Add('where CFOPA5COD = :CFOPA5COD');
    qry.ParamByName('CFOPA5COD').AsString := IntToStr(aIdCfop);
    qry.Open;
    Result := qry.FieldbyName('CFOPA60DESCR').AsString;
  finally
    qry.Free;
  end;
end;

function TFormVinculoCfopOperacaoEstoque.getInformacoesOpEstoque(
  aIdOpEstoque: Integer): String;
var qry: TQuery;
begin
  qry := TQuery.Create(DM);
  qry.DatabaseName := 'DB';
  try
    qry.SQL.Add('Select OPESA60DESCR from OPERACAOESTOQUE');
    qry.SQL.Add('where OPESICOD = :OPESICOD');
    qry.ParamByName('OPESICOD').AsString := IntToStr(aIdOpEstoque);
    qry.Open;
    Result := qry.FieldbyName('OPESA60DESCR').AsString;
  finally
    qry.Free;
  end;
end;

procedure TFormVinculoCfopOperacaoEstoque.SetCfopOrigem(const Value: Integer);
begin
  FCfopOrigem := Value;
  lblCFOPOrigem.Caption := getInformacoesCFOP(FCfopOrigem);
end;

procedure TFormVinculoCfopOperacaoEstoque.SetOperacaoEstoque(const Value: Integer);
begin
  FOperacaoEstoque := Value;
  lblOpEstoque.Caption := getInformacoesOpEstoque(FOperacaoEstoque);
end;

procedure TFormVinculoCfopOperacaoEstoque.FormShow(Sender: TObject);
begin
  inherited;
  sqlCfop.Open;
end;

procedure TFormVinculoCfopOperacaoEstoque.SpeedButton1Click(
  Sender: TObject);
var qry: TQuery;
begin
  qry := TQuery.Create(DM);
  qry.DatabaseName := 'DB';
  try
    qry.SQL.Add('INSERT INTO operacaoestoqueconversor (opesicod, cfop, cfopconverte)');
    qry.SQL.Add('  VALUES (:opesicod, :cfop, :cfopconverte)');
    qry.ParamByName('opesicod').AsInteger := FOperacaoEstoque;
    qry.ParamByName('cfop').AsString := IntToStr(FCfopOrigem);
    qry.ParamByName('cfopconverte').AsString := IntToStr(dblkcbbCfop.KeyValue);
    try
      qry.ExecSQL;
    except
      on e: Exception do
        MessageDlg('Erro ao incluir o vinculo de CFOP. '+e.Message,mtError, [mbOK],0);
    end;
  finally
    qry.Free;
  end;
  Close;
end;

end.
