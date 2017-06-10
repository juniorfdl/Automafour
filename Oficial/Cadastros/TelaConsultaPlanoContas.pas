unit TelaConsultaPlanoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaConsultaTemplate, DB, DBTables, RxQuery, Grids, DBGrids,
  StdCtrls, Mask, Buttons, jpeg, ExtCtrls, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaPlanoContas = class(TFormTelaConsultaTemplate)
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplatePLCTA30CODEDIT: TStringField;
    SQLTemplatePLCTA60DESCR: TStringField;
    SQLTemplateDescricaoNivelAnterior: TStringField;
    SQLTemplatePLCTA15CODPAI: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaPlanoContas: TFormTelaConsultaPlanoContas;

implementation

uses DataModulo, UnitLibrary, DataModuloTemplate;

{$R *.dfm}

procedure TFormTelaConsultaPlanoContas.FormCreate(Sender: TObject);
begin
  if TipoPlanoContas <>  '' then
    Case TipoPlanoContas[1] of
      'C' : SQLTemplate.MacroByName('DebitoCredito').AsString := 'PLCTCTIPOSALDO = ''C'' OR PLCTCTIPOSALDO = ''A''';
      'D' : SQLTemplate.MacroByName('DebitoCredito').AsString := 'PLCTCTIPOSALDO = ''D'' OR PLCTCTIPOSALDO = ''A''';
    end;
  inherited;

end;

procedure TFormTelaConsultaPlanoContas.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateDescricaoNivelAnterior.Value := SQLLocate('PLANODECONTAS','PLCTA15COD','PLCTA60DESCR', ''''+SQLTemplatePLCTA15CODPAI.Value+'''');
end;

end.
