unit TelaConsultaMovNumeroSerie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaConsultaTemplate, DB, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, DBTables, RxQuery, Buttons, Grids, DBGrids,
  StdCtrls, Mask, ExtCtrls;

type
  TFormTelaConsultaMovNumeroSerie = class(TFormTelaConsultaTemplate)
    SQLTemplateID_MOVIMENTO: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePRSEA60NROSERIE: TStringField;
    SQLTemplateENTRADA_SAIDA: TStringField;
    SQLTemplateDOCUMENTOORIGEM: TStringField;
    SQLTemplateCLIENTE_FORNECEDOR: TStringField;
    SQLTemplateDATA_MOVIMENTO: TDateTimeField;
    SQLTemplateORIGEM: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaMovNumeroSerie: TFormTelaConsultaMovNumeroSerie;

implementation

{$R *.dfm}

end.
