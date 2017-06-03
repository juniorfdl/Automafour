unit TelaSaldoPorLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables, RxQuery;

type
  TFormTelaSaldoPorLote = class(TForm)
    DBGridLista: TDBGrid;
    DSSQLLoteSaldo: TDataSource;
    SQLLoteSaldo: TRxQuery;
    SQLLoteSaldoSALDO: TFloatField;
    SQLLoteSaldoLOTEA30NRO: TStringField;
    SQLLoteSaldoDataVecto: TDateField;
    SQLLote: TRxQuery;
    SQLLoteLOTEA30NRO: TStringField;
    SQLLoteLOTEDVECTO: TDateTimeField;
    SQLLoteREGISTRO: TDateTimeField;
    SQLLotePENDENTE: TStringField;
    SQLNotaFiscalitem: TRxQuery;
    SQLNotaFiscalitemPRODICOD: TIntegerField;
    SQLNotaFiscalitemLOTEA30NRO: TStringField;
    SQLLoteSaldoQtdeNF: TFloatField;
    SQLNotaFiscalitemQTDENF: TFloatField;
    SQLLoteSaldoSaldoDisponivel: TFloatField;
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLLoteSaldoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaSaldoPorLote: TFormTelaSaldoPorLote;

implementation

{$R *.dfm}

procedure TFormTelaSaldoPorLote.DBGridListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
    begin
      FormTelaSaldoPorLote.ModalResult := MrOK;
    end;
  if Key = VK_Escape then
    begin
      FormTelaSaldoPorLote.ModalResult := MrCancel;
    end;
end;

procedure TFormTelaSaldoPorLote.SQLLoteSaldoCalcFields(DataSet: TDataSet);
begin
  if SQLNotaFiscalitem.Locate('LOTEA30NRO',SQLLoteSaldoLOTEA30NRO.AsString,[]) then
    SQLLoteSaldoQtdeNF.AsFloat := SQLNotaFiscalitemQTDENF.AsFloat;
  SQLLoteSaldoSaldoDisponivel.AsFloat := SQLLoteSaldoSALDO.AsFloat - SQLLoteSaldoQtdeNF.AsFloat;
end;

end.
