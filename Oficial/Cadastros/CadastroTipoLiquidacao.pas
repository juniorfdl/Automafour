unit CadastroTipoLiquidacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxDBComb, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroTipoLiquidacao = class(TFormCadastroTEMPLATE)
    SQLTemplateTPLQICOD: TIntegerField;
    SQLTemplateTPLQA60DESCR: TStringField;
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
  FormCadastroTipoLiquidacao: TFormCadastroTipoLiquidacao;

implementation

{$R *.dfm}

procedure TFormCadastroTipoLiquidacao.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'TIPOLIQUIDACAO';
end;

end.
