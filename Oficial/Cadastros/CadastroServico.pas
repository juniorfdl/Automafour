unit CadastroServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  DBTables, DBActns, ActnList, DB, RxQuery, Menus, StdCtrls, Mask,
  AdvPanel, Grids, DBGrids, ComCtrls, RXCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TFormCadastroServico = class(TFormCadastroTEMPLATE)
    SQLTemplateID_SERVICO: TIntegerField;
    SQLTemplateNOME_SERVICO: TStringField;
    SQLTemplateDESCRICAO_SERVICO: TBlobField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroServico: TFormCadastroServico;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormCadastroServico.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'SERVICO';
end;

procedure TFormCadastroServico.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateNOME_SERVICO.Value = '' Then
    begin
      Beep ;
      Informa('O campo Descrição deve ser preenchido!') ;
      Abort ;
    end;

end;

end.
