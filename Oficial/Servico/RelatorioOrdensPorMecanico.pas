unit RelatorioOrdensPorMecanico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TRelatorioOrdPorMecanico = class(TFormRelatorioTEMPLATE)
    GroupBox2: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    SQLMecanico: TRxQuery;
    IDMECANICO: TIntegerField;
    ORDMECA40NOME: TStringField;
    DSSQLMecanico: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelatorioOrdPorMecanico: TRelatorioOrdPorMecanico;

implementation

uses RelatorioServicosPorMecanico;

{$R *.dfm}

procedure TRelatorioOrdPorMecanico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  SQLMecanico.Close;
end;

procedure TRelatorioOrdPorMecanico.FormCreate(Sender: TObject);
begin
  inherited;
  SQLMecanico.Open;
end;

procedure TRelatorioOrdPorMecanico.ExecutarBtnClick(Sender: TObject);
begin
  inherited;

  if ComboCliente.Text = '' then
  begin
    ShowMessage('Selecione o Mecanico');
    Exit;
  end;

  FormRelatorioServicosPorMecanico:= TFormRelatorioServicosPorMecanico.Create(Self);
  with FormRelatorioServicosPorMecanico do
  begin

    SQLOrdItens.SQL.Text := 'Select o.Data, c.cliea60razaosoc, i.*, (i.oritn2vlrunit * i.oritn3quant) as valorItem, '+
    '(i.oritn2vlrunit * i.oritn3quant) * (i.oritn2perccomis/100) as comissao                     '+
    'from ord_mec_itens i                                                                        '+
    'left join ord_mecanica o on o.ordid = i.ordid                                               '+
    'left join cliente c on c.cliea13id = o.cliea13id                                            '+
    'where (i.idMecanico = :nMecanico) and (o.Data >= :De and o.Data <= :Ate)                    ';

    SQLOrdItens.Prepare;
    SQLOrdItens.ParamByName('de').AsDateTime      := StrToDateTime(de.Text +' '+'00:00:00');
    SQLOrdItens.ParamByName('Ate').AsDateTime     := StrToDateTime(Ate.Text+' '+'23:59:59');
    SQLOrdItens.ParamByName('nMecanico').AsInteger:= SQLMecanico.fieldbyName('idMecanico').AsInteger;
    SQLOrdItens.Open;
    QRLabel3.Caption := de.Text;
    QRLabel5.Caption := ate.Text;
    Mecanico.Caption := ComboCliente.Text;
  end;
  FormRelatorioServicosPorMecanico.QuickRep1.Preview;
  FormRelatorioServicosPorMecanico.Free;

end;

end.
