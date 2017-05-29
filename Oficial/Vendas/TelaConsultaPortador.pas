unit TelaConsultaPortador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaConsultaTemplate, DB, DBTables, RxQuery, Grids, DBGrids,
  StdCtrls, Mask, Buttons, jpeg, ExtCtrls, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaPortador = class(TFormTelaConsultaTemplate)
    SQLTemplatePORTICOD: TIntegerField;
    SQLTemplatePORTA60DESCR: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaPortador: TFormTelaConsultaPortador;

implementation

{$R *.dfm}

end.
