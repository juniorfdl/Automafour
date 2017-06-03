
unit CadastroProfExterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBTables, DBActns, ActnList,
  ImgList, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  RXCtrls, ExtCtrls, Buttons, jpeg, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroProfExterno = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplatePROFA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplatePROFICOD: TIntegerField;
    SQLTemplatePROFA60NOME: TStringField;
    SQLTemplatePROFA15FONE1: TStringField;
    SQLTemplatePROFA15FONE2: TStringField;
    SQLTemplatePROFA60CATEG: TStringField;
    SQLTemplatePROFA200OBS: TStringField;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    Label40: TLabel;
    DBEdit19: TDBEdit;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    SQLTemplatePROFICODINTERNET: TIntegerField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProfExterno: TFormCadastroProfExterno;

implementation

{$R *.dfm}

procedure TFormCadastroProfExterno.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'Profissional';
end;

end.
