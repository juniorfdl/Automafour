unit TelaConsultaOperacaoEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaConsultaTemplate, DB, DBTables, RxQuery, Grids, DBGrids,
  StdCtrls, Mask, Buttons, jpeg, ExtCtrls, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaOperacaoEstoque = class(TFormTelaConsultaTemplate)
    SQLTemplateOPESICOD: TIntegerField;
    SQLTemplateOPESA60DESCR: TStringField;
    SQLTemplateSERIA5COD: TStringField;
    SQLTemplateCFOPA5CODDENTROUF: TStringField;
    SQLTemplateCFOPA5CODFORAUF: TStringField;
    SQLTemplateOPESCENTRADASAIDA: TStringField;
    SQLTemplateOPESCORIGEMDESTINO: TStringField;
    SQLTemplateOPESA18CAMPOIMP: TStringField;
    SQLTemplateOPESCCALCIPI: TStringField;
    SQLTemplateOPESCCALCICMS: TStringField;
    SQLTemplateOPESCGERAFINANCEIRO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaOperacaoEstoque: TFormTelaConsultaOperacaoEstoque;

implementation

{$R *.dfm}

end.
