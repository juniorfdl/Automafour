unit CadastroAnimaisVacinacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, DBCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroAnimaisVacinas = class(TFormCadastroTEMPLATE)
    SQLTemplateANVCICOD: TIntegerField;
    SQLTemplateANIICOD: TIntegerField;
    SQLTemplateANVCDDATA: TDateTimeField;
    SQLTemplateANVCA100VACINA: TStringField;
    SQLTemplateANVCA60VETERINARIO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroAnimaisVacinas: TFormCadastroAnimaisVacinas;

implementation

{$R *.dfm}

procedure TFormCadastroAnimaisVacinas.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  TRxQuery(DataSet).FieldByName('ANIICOD').Value := TrxQuery(DataSet).DataSource.DataSet.FieldByName('ANIICOD').Value ;
end;

procedure TFormCadastroAnimaisVacinas.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'Animais_vacinacao';
end;

end.
