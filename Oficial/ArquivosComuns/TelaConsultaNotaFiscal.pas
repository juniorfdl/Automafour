unit TelaConsultaNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaConsultaTemplate, DB, DBTables, RxQuery, Grids, DBGrids,
  StdCtrls, Mask, Buttons, jpeg, ExtCtrls, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaNotaFiscal = class(TFormTelaConsultaTemplate)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaNotaFiscal: TFormTelaConsultaNotaFiscal;

implementation

{$R *.dfm}

end.
