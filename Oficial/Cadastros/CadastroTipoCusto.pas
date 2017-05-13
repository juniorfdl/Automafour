unit CadastroTipoCusto;
                
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, DBActns, ActnList, ImgList, Db, DBTables, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls, RXCtrls,
  Buttons, jpeg, DBCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroTipoCusto = class(TFormCadastroTEMPLATE)
    SQLTemplateTPCUICOD: TIntegerField;
    SQLTemplateTPCUA60DESCR: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    SQLTemplateTPCUTFORMULACUSTO: TStringField;
    SQLTemplateTPCUTFORMULACOMPRA: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTipoCusto: TFormCadastroTipoCusto;

implementation

{$R *.DFM}

procedure TFormCadastroTipoCusto.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela:='TipoCusto';
end;

end.
