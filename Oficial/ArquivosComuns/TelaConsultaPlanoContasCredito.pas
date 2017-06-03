unit TelaConsultaPlanoContasCredito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaConsultaTemplate, DB, DBTables, RxQuery, Grids, DBGrids,
  StdCtrls, Mask, Buttons, jpeg, ExtCtrls, DBCtrls;

type
  TFormTelaConsultaPlanoContasCredito = class(TFormTelaConsultaTemplate)
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplatePLCTICODREDUZ: TIntegerField;
    SQLTemplatePLCTA30CODEDIT: TStringField;
    SQLTemplatePLCTA60DESCR: TStringField;
    SQLTemplatePLCTCANALSINT: TStringField;
    SQLTemplatePLCTCTIPOSALDO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaPlanoContasCredito: TFormTelaConsultaPlanoContasCredito;

implementation

{$R *.dfm}

end.
