unit CadastroMecExecutaEm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, DBCtrls, RxDBComb, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroMecExecutaEm = class(TFormCadastroTEMPLATE)
    SQLTemplateORDEXEID: TIntegerField;
    SQLTemplateORDA25EXECUTAEM: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label37: TLabel;
    ComboTipoImpr: TRxDBComboBox;
    SQLTemplateTIPOSERVICO: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroMecExecutaEm: TFormCadastroMecExecutaEm;

implementation

{$R *.dfm}

procedure TFormCadastroMecExecutaEm.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ORD_EXECUTAREM'
end;

end.
