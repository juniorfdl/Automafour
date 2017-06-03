 unit TelaConsultaNotaCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaConsultaTemplate, DB, DBTables, RxQuery, Grids, DBGrids,
  StdCtrls, Mask, Buttons, jpeg, ExtCtrls, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaNotaCompra = class(TFormTelaConsultaTemplate)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaNotaCompra: TFormTelaConsultaNotaCompra;

implementation

{$R *.dfm}

end.
