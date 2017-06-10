unit CadastroMecTipoServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, DBCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroMecTipoServico = class(TFormCadastroTEMPLATE)
    SQLTemplateORMCTIPOSERVICOID: TIntegerField;
    SQLTemplateORMCA30TIPOSERVICO: TStringField;
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
  FormCadastroMecTipoServico: TFormCadastroMecTipoServico;

implementation

{$R *.dfm}

procedure TFormCadastroMecTipoServico.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'ORD_MEC_TIPOSERVICO' ;
end;

end.
