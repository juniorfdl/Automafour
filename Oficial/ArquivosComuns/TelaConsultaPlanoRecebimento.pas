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
    SQLTemplatePLRCN2TXJURO: TBCDField;
    SQLTemplatePLRCN2TXMULTA: TBCDField;
    SQLTemplatePLRCN2TXCRED: TBCDField;
    SQLTemplatePLRCN2PERCDESC: TBCDField;
    SQLTemplatePLRCCDFIX: TStringField;
    SQLTemplatePLRCIDFIXNROPARC: TIntegerField;
    SQLTemplatePLRCDFIXDVENC: TIntegerField;
    SQLTemplatePLRCCDFIXENTR: TStringField;
    SQLTemplatePLRCN2DESC: TBCDField;
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
