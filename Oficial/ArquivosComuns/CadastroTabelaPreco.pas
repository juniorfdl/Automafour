unit CadastroTabelaPreco;

interface

uses
  VarSYS, FormResources, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroTabelaPreco = class(TFormCadastroTEMPLATE)
    SQLTemplateTPRCICOD: TIntegerField;
    SQLTemplateTPRCA60DESCR: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTabelaPreco: TFormCadastroTabelaPreco;

implementation

uses CadastroTabelaPrecoProduto;

{$R *.dfm}

procedure TFormCadastroTabelaPreco.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA:='TABELAPRECO';
end;

procedure TFormCadastroTabelaPreco.Button1Click(Sender: TObject);
begin
  inherited;
  if TRxSpeedButton(Sender).Name = 'Button3' then
    begin
      DSMasterSys := DSTemplate;
      CriaFormulario(TFormCadastroTabelaPrecoProduto,
                     'FormCadastroTabelaPrecoProduto',
                     True,
                     False,
                     True, '');
    end ;

end;

end.
