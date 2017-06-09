unit TelaConsultaOperacaoTesouraria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, DB, DBTables, RxQuery, Buttons, jpeg,
  ExtCtrls, StdCtrls, RxLookup, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaOperacaoTesouraria = class(TFormTelaGeralModalTemplate)
    SQLOperacaoTesouraria: TRxQuery;
    SQLOperacaoTesourariaOPTEICOD: TIntegerField;
    SQLOperacaoTesourariaOPTEA60DESCR: TStringField;
    DSSQLOperacaoTesouraria: TDataSource;
    ComboOperacaoTes: TRxDBLookupCombo;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure ComboOperacaoTesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaOperacaoTesouraria: TFormTelaConsultaOperacaoTesouraria;

implementation

{$R *.dfm}

procedure TFormTelaConsultaOperacaoTesouraria.FormCreate(Sender: TObject);
begin
  inherited;
//  if not SQLOperacaoTesouraria.Active then SQLOperacaoTesouraria.Open;
end;

procedure TFormTelaConsultaOperacaoTesouraria.ComboOperacaoTesKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value    <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
       (sender  as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.
