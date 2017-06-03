unit TelaConsultaPrevenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaConsultaTemplate, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, DB, DBTables, RxQuery, Buttons, Grids,
  DBGrids, StdCtrls, Mask, ExtCtrls;

type
  TFormTelaConsultaPreVenda = class(TFormTelaConsultaTemplate)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaPreVenda: TFormTelaConsultaPreVenda;

implementation

{$R *.dfm}

end.
