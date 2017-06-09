unit RelatorioMediaComprasPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, StdCtrls, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery, EDBNum,
  Grids, DBGrids, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioMediaComprasPeriodo = class(TFormRelatorioTEMPLATE)
    DSSQLTotalQdte: TDataSource;
    Label6: TLabel;
    EvDBNumEdit2: TEvDBNumEdit;
    Label5: TLabel;
    EvDBNumEdit1: TEvDBNumEdit;
    SQLTotalQdte: TRxQuery;
    SQLTotalQdteVALORTOTALNF: TFloatField;
    SQLTotalQdteTOTALQTDEITEMMEDIA: TFloatField;
    SQLTotalQdteVALORTOTALNFMED: TFloatField;
    Label7: TLabel;
    EvDBNumEdit3: TEvDBNumEdit;
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioMediaComprasPeriodo: TFormRelatorioMediaComprasPeriodo;

implementation

{$R *.dfm}

procedure TFormRelatorioMediaComprasPeriodo.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  SQLTotalQdte.Close;
  SQLTotalQdte.MacroByName('MFiltro').Value   := 'REGISTRO >= ''' + FormatDateTime('mm/dd/yyyy 00:01:01', De.Date) + ''' and ' +
                                                 'REGISTRO <= ''' + FormatDateTime('mm/dd/yyyy 23:59:59', Ate.Date) + '''';
  SQLTotalQdte.Open;
end;

end.
