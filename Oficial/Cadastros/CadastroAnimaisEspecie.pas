unit CadastroAnimaisEspecie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBTables, DBActns, ActnList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls,
  Buttons, ExtCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroAnimais_especie = class(TFormCadastroTEMPLATE)
    SQLTemplateESPEICOD: TIntegerField;
    SQLTemplateESPEA50TIPO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroAnimais_especie: TFormCadastroAnimais_especie;

implementation

{$R *.dfm}

procedure TFormCadastroAnimais_especie.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ANIMAIS_ESPECIE';
end;

end.
