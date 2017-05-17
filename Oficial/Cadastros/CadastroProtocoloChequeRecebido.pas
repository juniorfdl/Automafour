unit CadastroProtocoloChequeRecebido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBTables, DBActns, ActnList,
  ImgList, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  RXCtrls, ExtCtrls, Buttons, jpeg, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroProtocoloChequeRecebido = class(TFormCadastroTEMPLATE)
    SQLTemplatePRCHICOD: TIntegerField;
    SQLTemplatePRCHA30NOME: TStringField;
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
  FormCadastroProtocoloChequeRecebido: TFormCadastroProtocoloChequeRecebido;

implementation

{$R *.dfm}

procedure TFormCadastroProtocoloChequeRecebido.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PROTOCOLOCHEQ';
end;

end.
