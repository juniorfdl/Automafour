 unit TelaConsultaNumerario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaConsultaTemplate, DB, DBTables, RxQuery, Grids, DBGrids,
  StdCtrls, Mask, Buttons, jpeg, ExtCtrls, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaNumerario = class(TFormTelaConsultaTemplate)
    SQLTemplateNUMEICOD: TIntegerField;
    SQLTemplateNUMEA30DESCR: TStringField;
    SQLTemplateNUMECVISTAPRAZO: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaNumerario: TFormTelaConsultaNumerario;

implementation

{$R *.dfm}

procedure TFormTelaConsultaNumerario.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLTemplate.Active then SQLTemplate.Open; 
end;

end.
