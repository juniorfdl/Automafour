unit CadastroPlanoPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, VarSys, FormResources,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;
type
  TFormCadastroPlanoPagamento = class(TFormCadastroTEMPLATE)
    SQLTemplatePLPGICOD: TIntegerField;
    SQLTemplatePLPGA60DESCR: TStringField;
    SQLTemplatePLPGN3TXJURO: TFloatField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroPlanoPagamento: TFormCadastroPlanoPagamento;

implementation

uses CadastroPlanoPagamentoParcela;

{$R *.dfm}

procedure TFormCadastroPlanoPagamento.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'PLANOPAGAMENTO';
end;

procedure TFormCadastroPlanoPagamento.Button3Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DsTemplate;
  CriaFormulario(TFormCadastroPlanoPagamentoParcela,'FormCadastroPlanoPagamentoParcela',True,False,True,'Plano ' + SQLTemplatePLPGA60DESCR.Value);
end;

end.
