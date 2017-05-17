unit CadastroObsNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBTables, DBActns, ActnList,
  ImgList, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, jpeg, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroObsNotaFiscal = class(TFormCadastroTEMPLATE)
    SQLTemplateOBSNICOD: TIntegerField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    SQLTemplateOBSNA255DESC: TMemoField;
    DBMemo1: TDBMemo;
    SQLTemplateNOFIA50DESC: TStringField;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroObsNotaFiscal: TFormCadastroObsNotaFiscal;

implementation

{$R *.dfm}

procedure TFormCadastroObsNotaFiscal.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'OBSNF';
end;

end.
