unit TelaConsultaTabelaPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaConsultaTemplate, DB, DBTables, RxQuery, Grids, DBGrids,
  StdCtrls, Mask, Buttons, jpeg, ExtCtrls, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaTabelaPreco = class(TFormTelaConsultaTemplate)
    SQLTemplateTPRCICOD: TIntegerField;
    SQLTemplateTPRCA60DESCR: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaTabelaPreco: TFormTelaConsultaTabelaPreco;

implementation

{$R *.dfm}

end.
