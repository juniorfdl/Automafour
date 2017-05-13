unit CadastroBanco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, DBActns,
  ActnList, ImgList, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroBanco = class(TFormCadastroTEMPLATE)
    SQLTemplateBANCA5COD: TStringField;
    SQLTemplateBANCA60NOME: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplatePENDENTE: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroBanco: TFormCadastroBanco;

implementation

uses UnitLibrary;

{$R *.DFM}

procedure TFormCadastroBanco.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'BANCO';
end;

end.
