unit DataModulo;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDM = class(TDataModule)
    DB: TDatabase;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
