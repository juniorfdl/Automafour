unit TelaConsultaEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaConsultaTemplate, DB, DBTables, RxQuery, Grids, DBGrids,
  StdCtrls, Mask, Buttons, jpeg, ExtCtrls, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaEmpresa = class(TFormTelaConsultaTemplate)
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateEMPRA60RAZAOSOC: TStringField;
    SQLTemplateEMPRA60NOMEFANT: TStringField;
    SQLTemplateEMPRCMATRIZFILIAL: TStringField;
    SQLTemplateEMPRA20FONE: TStringField;
    SQLTemplateEMPRA20FAX: TStringField;
    SQLTemplateEMPRA60END: TStringField;
    SQLTemplateEMPRA60BAI: TStringField;
    SQLTemplateEMPRA60CID: TStringField;
    SQLTemplateEMPRA2UF: TStringField;
    SQLTemplateEMPRA8CEP: TStringField;
    SQLTemplateEMPRCFISJURID: TStringField;
    SQLTemplateEMPRA14CGC: TStringField;
    SQLTemplateEMPRA20IE: TStringField;
    SQLTemplateEMPRA11CPF: TStringField;
    SQLTemplateEMPRA10RG: TStringField;
    SQLTemplateEMPRA60EMAIL: TStringField;
    SQLTemplateEMPRA60URL: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaEmpresa: TFormTelaConsultaEmpresa;

implementation

{$R *.dfm}

end.
