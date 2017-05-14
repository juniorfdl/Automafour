unit CadastroTipoCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, DBCtrls, Db, DBTables, RxQuery, Menus, StdCtrls, Mask,
  Grids, DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBActns,
  ActnList, ImgList, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroTipoCliente = class(TFormCadastroTEMPLATE)
    SQLTemplateTPCLICOD: TIntegerField;
    SQLTemplateTPCLA30DESCR: TStringField;
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
  FormCadastroTipoCliente: TFormCadastroTipoCliente;

implementation

{$R *.DFM}

procedure TFormCadastroTipoCliente.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'TIPOCLIENTE';
end;

end.
