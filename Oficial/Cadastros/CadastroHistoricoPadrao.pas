unit CadastroHistoricoPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxDBComb, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroHistoricoPadrao = class(TFormCadastroTEMPLATE)
    SQLTemplateHTPDICOD: TIntegerField;
    SQLTemplateHTPDA100HISTORICO: TStringField;
    SQLTemplateHTPDCTIPO: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    ComboTipo: TRxDBComboBox;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroHistoricoPadrao: TFormCadastroHistoricoPadrao;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormCadastroHistoricoPadrao.FormCreate(Sender: TObject);
begin
  if TipoHistoricoPadrao <>  '' then
    Case TipoHistoricoPadrao[1] of
      'C' : SQLTemplate.MacroByName('Tipo').AsString := 'HTPDCTIPO = "C"';
      'D' : SQLTemplate.MacroByName('Tipo').AsString := 'HTPDCTIPO = "D"';
    end;
  inherited;
  Tabela := 'HISTORICOPADRAO';
end;

procedure TFormCadastroHistoricoPadrao.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  if TipoHistoricoPadrao <> '' then
    if TipoHistoricoPadrao = 'C' then
      SQLTemplate.FieldByName('HTPDCTIPO').AsString := 'C'
    else
      if TipoHistoricoPadrao = 'D' then
        SQLTemplate.FieldByName('HTPDCTIPO').AsString := 'D';
end;

end.
