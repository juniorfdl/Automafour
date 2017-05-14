unit CadastroAnimaisRaca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBTables, DBActns, ActnList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls,
  Buttons, ExtCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroAnimaisRaca = class(TFormCadastroTEMPLATE)
    SQLTemplateRACAICOD: TIntegerField;
    SQLTemplateRACAA50RACA: TStringField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroAnimaisRaca: TFormCadastroAnimaisRaca;

implementation

{$R *.dfm}

procedure TFormCadastroAnimaisRaca.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ANIMAIS_RACA';
end;

end.
