unit CadastroTipoDocumento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, DBActns,
  ActnList, ImgList, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroTipoDocumento = class(TFormCadastroTEMPLATE)
    SQLTemplateTPDCICOD: TIntegerField;
    SQLTemplateTPDCA60DESCR: TStringField;
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
  FormCadastroTipoDocumento: TFormCadastroTipoDocumento;

implementation

{$R *.DFM}

procedure TFormCadastroTipoDocumento.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'TIPODOCUMENTO' ;
end;

end.
