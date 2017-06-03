unit TelaGeralExecutarSQL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  DB, DBTables, RxQuery, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaGeralExecutarSQL = class(TFormTelaGeralTEMPLATE)
    SQLGeral: TRxQuery;
    MemoSQL: TMemo;
    OpenDialog: TOpenDialog;
    BtnExecutar: TSpeedButton;
    btnProcurar: TSpeedButton;
    procedure btnProcurarClick(Sender: TObject);
    procedure BtnExecutarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaGeralExecutarSQL: TFormTelaGeralExecutarSQL;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaGeralExecutarSQL.btnProcurarClick(Sender: TObject);
begin
  inherited;
  OpenDialog.Execute ;
  MemoSQL.Lines.LoadFromFile(OpenDialog.FileName);
  if OpenDialog.FileName <> '' then
  begin
    {Com esse loadfromfile funciona apenas importando do txt}
    // SQLGeral.SQL.LoadFromFile(OpenDialog.FileName);
    BtnExecutar.Enabled := true ;
  end
end;

procedure TFormTelaGeralExecutarSQL.BtnExecutarClick(Sender: TObject);
begin
  inherited;
  DM.DB.StartTransaction ;
  SQLGeral.SQL.Text := memoSQL.Lines.Text;
  try
    SQLGeral.ExecSQL ;
  except
    on E: Exception do
      begin
        DM.DB.Rollback ;
        Informa(E.Message) ;
        exit ;
      end ;
  end ;

  if DM.DB.InTransaction then
    DM.DB.Commit ;

  Informa('SQL executado com sucesso !') ;
end;

procedure TFormTelaGeralExecutarSQL.FormCreate(Sender: TObject);
begin
  inherited;
  //OpenDialog.InitialDir := Application.GetNamePath ;
end;

end.
