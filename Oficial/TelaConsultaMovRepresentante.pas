unit TelaConsultaMovRepresentante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaConsultaTemplate, DB, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, DBTables, RxQuery, Buttons, Grids, DBGrids,
  StdCtrls, Mask, ExtCtrls;

type
  TFormTelaConsultaMovRepresentante = class(TFormTelaConsultaTemplate)
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePRODA60DESCR: TStringField;
    SQLTemplatePRSEA60NROSERIE: TStringField;
    SQLTemplateDATA_SAIDA: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaMovRepresentante: TFormTelaConsultaMovRepresentante;

implementation

{$R *.dfm}

end.
