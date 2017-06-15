unit RelatorioOrdensPorExecucao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TRelatorioOrdPorExecucao = class(TFormRelatorioTEMPLATE)
    GroupBox2: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    SQLExecutarem: TRxQuery;
    SQLExecutaremORDEXEID: TIntegerField;
    SQLExecutaremORDA25EXECUTAEM: TStringField;
    DSSQLExecutarem: TDataSource;
    GroupBox3: TGroupBox;
    CheckTodas: TCheckBox;
    CheckAbertas: TCheckBox;
    CheckEncerradas: TCheckBox;
    CheckFinalizadas: TCheckBox;
    CheckProntas: TCheckBox;
    CheckCanceladas: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure CheckTodasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelatorioOrdPorExecucao: TRelatorioOrdPorExecucao;

implementation

uses RelatorioOrdensExecucao;

{$R *.dfm}

procedure TRelatorioOrdPorExecucao.FormCreate(Sender: TObject);
begin
  inherited;
  SQLExecutarem.Open;
end;

procedure TRelatorioOrdPorExecucao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  SQLExecutarem.Close;
end;

procedure TRelatorioOrdPorExecucao.ExecutarBtnClick(Sender: TObject);
var Txt: String;
begin
  inherited;
  FormRelatoriOrdensPorExecucao:= TFormRelatoriOrdensPorExecucao.Create(Self);
  with FormRelatoriOrdensPorExecucao do
  begin
    Txt:= '';
    If CheckTodas.Checked       then txt := txt + ' and (o.Status <> ''C'') '
    else begin
      if CheckAbertas.Checked     then txt := txt + ' and (o.Status = ''A'') ';
      if CheckEncerradas.Checked  then txt := txt + ' and (o.Status = ''E'') ';
      if CheckFinalizadas.Checked then txt := txt + ' and (o.Status = ''F'') ';
      if CheckProntas.Checked     then txt := txt + ' and (o.Status = ''P'') ';
      if CheckCanceladas.Checked  then txt := txt + ' and (o.Status = ''C'') ';
    end;


    SQLOrdItens.SQL.Text := 'Select O.*, c.cliea60razaosoc, e.ORDA25EXECUTAEM from ord_mecanica o '+
    'left join ord_executarem e on e.ordexeid = o.tipo                         '+
    'left join cliente c on c.cliea13id = o.cliea13id                          '+
    'where (o.Data >= :De and o.Data <= :Ate)  '+ Txt ;
    if ComboCliente.Text <> '' then
      SQLOrdItens.SQL.Text := SQLOrdItens.SQL.Text + 'and (o.Tipo = :nTipo) ';
    SQLOrdItens.SQL.Text := SQLOrdItens.SQL.Text + ' order by tipo, data ';

    SQLOrdItens.Prepare;
    SQLOrdItens.ParamByName('de').AsDateTime      := StrToDateTime(de.Text +' '+'00:00:00');
    SQLOrdItens.ParamByName('Ate').AsDateTime     := StrToDateTime(Ate.Text+' '+'23:59:59');
    if ComboCliente.Text <> '' then
      SQLOrdItens.ParamByName('nTipo').AsInteger:= SQLExecutarem.fieldbyName('ORDEXEID').AsInteger;
    SQLOrdItens.Open;
    QRLabel3.Caption := de.Text;
    QRLabel5.Caption := ate.Text;
  end;
  FormRelatoriOrdensPorExecucao.QuickRep1.Preview;
  FormRelatoriOrdensPorExecucao.Free;

end;

procedure TRelatorioOrdPorExecucao.CheckTodasClick(Sender: TObject);
begin
  inherited;
  CheckCanceladas.Checked := not CheckTodas.Checked;
  CheckAbertas.Checked    := CheckTodas.Checked;
  CheckEncerradas.Checked := CheckTodas.Checked;
  CheckFinalizadas.Checked:= CheckTodas.Checked;
  CheckProntas.Checked    := CheckTodas.Checked;
end;

end.
