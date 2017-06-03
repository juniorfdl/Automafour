unit CadastroRota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, ImgList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroRota = class(TFormCadastroTEMPLATE)
    SQLTemplateROTAICOD: TIntegerField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    SQLTemplateROTAA60NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroRota: TFormCadastroRota;

implementation

{$R *.dfm}

procedure TFormCadastroRota.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ROTA';
end;

procedure TFormCadastroRota.SQLTemplateBeforePost(DataSet: TDataSet);
var TrocouTag : Boolean;
begin
  if SQLTemplateROTAICOD.AsString <> '' then
    begin
      TrocouTag := True;
      SQLTemplate.Tag := 0;
      SQLTemplateROTAICOD.Tag := 0;
    end;
  inherited;
  if TrocouTag then
    begin
      TrocouTag := False;
      SQLTemplate.Tag := 1;
      SQLTemplateROTAICOD.Tag := 1;
    end;
end;

end.
