unit TelaConsultaRapidaDependente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, jpeg, ExtCtrls, RxQuery,
  RXCtrls, DBActns, ActnList, EWall, Serial;

type
  TFormTelaConsultaRapidaDependente = class(TForm)
    SQLDependentes: TRxQuery;
    SQLDependentesCLIEA13ID: TStringField;
    SQLDependentesCLDPA60NOME: TStringField;
    SQLDependentesCLDPA15PARENTESCO: TStringField;
    SQLDependentesCLDPCAUTORIZADO: TStringField;
    DSSQLDependentes: TDataSource;
    SQLDependentesAutorizadoCalcField: TStringField;
    LblTituloTela: TRxLabel;
    DBGridLista: TDBGrid;
    SQLDependentesCLDPICOD: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  FormTelaConsultaRapidaDependente: TFormTelaConsultaRapidaDependente;

implementation

uses TelaFechamentoVenda, UnitLibrary, DataModulo;

{$R *.DFM}

procedure TFormTelaConsultaRapidaDependente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end ;

procedure TFormTelaConsultaRapidaDependente.DBGridListaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
    begin
      ClienteDependente     := SQLDependentesCLDPICOD.AsString;
      ClienteDependenteNome := SQLDependentesCLDPA60NOME.Value;
      FormTelaConsultaRapidaDependente.ModalResult := MrOK;
    end;
end;

procedure TFormTelaConsultaRapidaDependente.FormCreate(Sender: TObject);
begin
  SQLDependentes.Open ;
end;

procedure TFormTelaConsultaRapidaDependente.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Escape then
    begin
      ClienteDependente := '';
      Close ;
    end;
end;

end.
