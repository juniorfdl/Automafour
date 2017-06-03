 unit TelaImpressaoTermicaCodBar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppPrnabl, ppClass, ppStrtch, ppMemo, ppBands, ppRelatv, ppCache,
  StdCtrls, Buttons, ppComm, ppProd, ppReport, ppCtrls, ppDB, Db, ppDBPipe,
  ppDBBDE, DBTables, MemTable;

type
  TFormTelaImpressaoTermicaCodBar = class(TForm)
    ppReport1: TppReport;
    ppDetailBand1: TppDetailBand;
    ppHeaderBand1: TppHeaderBand;
    MemTable: TMemoryTable;
    ppBDEPipeline1: TppBDEPipeline;
    DSMemTable: TDataSource;
    MemTableLinha: TStringField;
    ppDBText1: TppDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaImpressaoTermicaCodBar: TFormTelaImpressaoTermicaCodBar;

implementation

{$R *.DFM}

procedure TFormTelaImpressaoTermicaCodBar.FormCreate(Sender: TObject);
begin
  MemTable.Open ;
end;

end.
