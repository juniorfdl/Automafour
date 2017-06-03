unit TelaConsultaVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaConsultaTemplate, DB, DBTables, RxQuery, Grids, DBGrids,
  StdCtrls, Mask, Buttons, jpeg, ExtCtrls, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaVendedor = class(TFormTelaConsultaTemplate)
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplateVENDA60NOME: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaVendedor: TFormTelaConsultaVendedor;

implementation

{$R *.dfm}

end.
