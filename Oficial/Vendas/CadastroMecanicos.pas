unit CadastroMecanicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, DBCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroMecanicos = class(TFormCadastroTEMPLATE)
    SQLTemplateIDMECANICO: TIntegerField;
    SQLTemplateORDMECA40NOME: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure LabelRetornarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroMecanicos: TFormCadastroMecanicos;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormCadastroMecanicos.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ORD_MECANICOS';
end;

procedure TFormCadastroMecanicos.LabelRetornarClick(Sender: TObject);
begin
BEEP;
  inherited;

end;

end.
