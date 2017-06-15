unit FormRelatorioServicosPorTipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, StdCtrls, DBTables, Placemnt, DB, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioOrdPorTipoServico = class(TFormRelatorioTEMPLATE)
    GroupBox3: TGroupBox;
    CheckTodas: TCheckBox;
    CheckAbertas: TCheckBox;
    CheckEncerradas: TCheckBox;
    CheckFinalizadas: TCheckBox;
    CheckProntas: TCheckBox;
    CheckCanceladas: TCheckBox;
    SQLTipoServico: TRxQuery;
    DSSQLTipoServico: TDataSource;
    GroupBox2: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    SQLTipoServicoORMCTIPOSERVICOID: TIntegerField;
    SQLTipoServicoORMCA30TIPOSERVICO: TStringField;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioOrdPorTipoServico: TFormRelatorioOrdPorTipoServico;

implementation

uses RelatorioOrdensServicosPorTipo;

{$R *.dfm}

procedure TFormRelatorioOrdPorTipoServico.ExecutarBtnClick(
  Sender: TObject);
var Txt: String;
begin
  inherited;
  RelatorioOrdensServicoPorTipo:= TRelatorioOrdensServicoPorTipo.Create(Self);
  with RelatorioOrdensServicoPorTipo do
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


    SQLOrdItens.SQL.Text := 'Select e.ORMCA30TIPOSERVICO, c.cliea60razaosoc, o.Data, i.*, '+
    '(i.oritn2vlrunit * i.oritn3quant) as valorItem,                                      '+
    '(i.oritn2vlrunit * i.oritn3quant) * (i.oritn2perccomis/100) as comissao              '+
    'from ord_mec_itens i                                                                 '+
    'left join ord_mecanica o on o.ordid = i.ordid                                        '+
    'left join cliente c on c.cliea13id = o.cliea13id                                     '+
    'left join ord_mec_tiposervico e on e.ORMCTIPOSERVICOID = i.ORMCTIPOSERVICOID         '+
    'where (o.Data >= :De and o.Data <= :Ate)  '+ Txt ;
    if ComboCliente.Text <> '' then
      SQLOrdItens.SQL.Text := SQLOrdItens.SQL.Text + 'and (o.Tipo = :nTipo) ';
    SQLOrdItens.SQL.Text := SQLOrdItens.SQL.Text + ' order by i.ORMCTIPOSERVICOID ';

    SQLOrdItens.Prepare;
    SQLOrdItens.ParamByName('de').AsDateTime      := StrToDateTime(de.Text +' '+'00:00:00');
    SQLOrdItens.ParamByName('Ate').AsDateTime     := StrToDateTime(Ate.Text+' '+'23:59:59');
    if ComboCliente.Text <> '' then
      SQLOrdItens.ParamByName('nTipo').AsInteger:= SQLTipoServico.fieldbyName('ORMCTIPOSERVICOID').AsInteger;
    SQLOrdItens.Open;
    QRLabel3.Caption := de.Text;
    QRLabel5.Caption := ate.Text;
  end;
  RelatorioOrdensServicoPorTipo.QuickRep1.Preview;
  RelatorioOrdensServicoPorTipo.Free;


end;

procedure TFormRelatorioOrdPorTipoServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  SQLTipoServico.Close;
end;

procedure TFormRelatorioOrdPorTipoServico.FormCreate(Sender: TObject);
begin
  inherited;
  SQLTipoServico.Open;
end;

end.
