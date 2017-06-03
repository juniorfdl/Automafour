unit CadastroImportaDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, VarSys, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroImportaDados = class(TFormCadastroTEMPLATE)
    SQLTemplateIMDAICOD: TIntegerField;
    SQLTemplateIMDAA30TABELA: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    ComboTabela: TDBComboBox;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroImportaDados: TFormCadastroImportaDados;

implementation

uses CadastroImportaDadosCampos, FormResources;

{$R *.dfm}

procedure TFormCadastroImportaDados.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'IMPORTADADOS';
end;

procedure TFormCadastroImportaDados.Button3Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  CriaFormulario(TFormCadastroImportaDadosCampos,'FormCadastroImportaDadosCampos',True,False,True,SQLTemplateIMDAA30TABELA.AsString);
end;

end.
