
unit CadastroMotivoBloqueio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, DBActns, ActnList, ImgList, Db, DBTables, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls, RXCtrls,
  Buttons, jpeg, DBCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroMotivoBloqueio = class(TFormCadastroTEMPLATE)
    SQLTemplateMTBLICOD: TIntegerField;
    SQLTemplateMTBLA60DESCR: TStringField;
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
  FormCadastroMotivoBloqueio: TFormCadastroMotivoBloqueio;

implementation

{$R *.DFM}

procedure TFormCadastroMotivoBloqueio.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'MOTIVOBLOQUEIO' ;
end;

end.
