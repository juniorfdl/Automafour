unit udlgConfEmailBoleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, Buttons, StdCtrls, ExtCtrls, DB, DBTables,
  RxQuery, Mask, DBCtrls;

type
  TfdlgConfEmailBoleto = class(TFormTelaGeralTEMPLATE)
    dsConfigEmail: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    tConfigEmail: TTable;
    tConfigEmailASSUNTO: TStringField;
    tConfigEmailMENSAGEM: TMemoField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

procedure TfdlgConfEmailBoleto.FormCreate(Sender: TObject);
begin
  inherited;
  tConfigEmail.Open;
end;

procedure TfdlgConfEmailBoleto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if tConfigEmail.State in [dsedit, dsinsert] then
    tConfigEmail.Post;
end;

end.
