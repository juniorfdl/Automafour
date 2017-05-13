unit CadastroColecao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  XPMan, AdvPanel;

type
  TFormCadastroColecao = class(TFormCadastroTEMPLATE)
    SQLTemplateCOLEICOD: TIntegerField;
    SQLTemplateCOLEA60DESCR: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroColecao: TFormCadastroColecao;

implementation

{$R *.dfm}

procedure TFormCadastroColecao.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'Colecao';
end;

end.
