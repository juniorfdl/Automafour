unit TelaConsultaPlanoRecebimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaConsultaTemplate, DB, DBTables, RxQuery, Grids, DBGrids,
  StdCtrls, Mask, Buttons, jpeg, ExtCtrls, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaPlanoRecebimento = class(TFormTelaConsultaTemplate)
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplatePLRCA60DESCR: TStringField;
    SQLTemplatePLRCN2TXJURO: TFloatField;
    SQLTemplatePLRCN2TXMULTA: TFloatField;
    SQLTemplatePLRCN2TXCRED: TFloatField;
    SQLTemplatePLRCN2PERCDESC: TFloatField;
    SQLTemplatePLRCCDFIX: TStringField;
    SQLTemplatePLRCIDFIXNROPARC: TIntegerField;
    SQLTemplatePLRCDFIXDVENC: TIntegerField;
    SQLTemplatePLRCCDFIXENTR: TStringField;
    SQLTemplatePLRCN2DESC: TFloatField;
    SQLTemplatePLRCCATIVO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaPlanoRecebimento: TFormTelaConsultaPlanoRecebimento;

implementation

{$R *.dfm}

end.
