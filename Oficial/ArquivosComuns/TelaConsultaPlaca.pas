unit TelaConsultaPlaca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TTelaConsultaPlacaCliente = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    SQLVeiculosCliente: TRxQuery;
    dtsVeiculosCliente: TDataSource;
    edtPlaca: TEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtPlacaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaConsultaPlacaCliente: TTelaConsultaPlacaCliente;

implementation

uses DataModulo;

{$R *.dfm}

procedure TTelaConsultaPlacaCliente.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
    IF Key = #13 Then
    begin
      SQLVeiculosCliente.Close;
      SQLVeiculosCliente.Prepare;
      SQLVeiculosCliente.parambyname('xPlaca').AsString := Trim(edtPlaca.Text);
      SQLVeiculosCliente.Open;
    end else if key = #27 then
      Close;
end;

procedure TTelaConsultaPlacaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SQLVeiculosCliente.Close;
  Action := caFree;
end;

procedure TTelaConsultaPlacaCliente.edtPlacaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (UpperCase(key) >= #65) and (UpperCase(key) <= #90) or
   (UpperCase(key) >= #48) and (UpperCase(key) <= #57) Or (key = #40) then
  begin
    if ((Length(edtplaca.text) = 3)) and (UpperCase(key) >= #48) and (UpperCase(key) <= #57)  then
      edtplaca.SelText :=  '-';
  end;
end;

end.
