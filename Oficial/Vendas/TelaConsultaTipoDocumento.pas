unit TelaConsultaTipoDocumento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaConsultaTemplate, DB, DBTables, RxQuery, Grids, DBGrids,
  StdCtrls, Mask, Buttons, jpeg, ExtCtrls, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaTipoDocumento = class(TFormTelaConsultaTemplate)
    SQLTemplateTPDCICOD: TIntegerField;
    SQLTemplateTPDCA60DESCR: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaTipoDocumento: TFormTelaConsultaTipoDocumento;

implementation

{$R *.dfm}

end.
