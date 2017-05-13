unit CadastroSubRamo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls,
  ExtCtrls, Buttons, jpeg, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroSubRamo = class(TFormCadastroTEMPLATE)
    SQLTemplateRAMOICOD: TIntegerField;
    SQLTemplateSRAMICOD: TIntegerField;
    SQLTemplateSRAMA30DESCR: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroSubRamo: TFormCadastroSubRamo;

implementation

{$R *.dfm}

procedure TFormCadastroSubRamo.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'SubRamo';
end;

procedure TFormCadastroSubRamo.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateRAMOICOD.Value := SqlTemplate.DataSource.DataSet.FieldByName('RAMOICOD').Value;
end;

end.
