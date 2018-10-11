unit CadastroSabores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  DBTables, DBActns, ActnList, DB, RxQuery, Menus, StdCtrls, Mask, VarSYS,
  AdvPanel, Grids, DBGrids, ComCtrls, RXCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TFormCadastroSabores = class(TFormCadastroTEMPLATE)
    SQLSabores: TRxQuery;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplateID_SABOR: TIntegerField;
    SQLTemplateDESCRICAO: TStringField;
    SQLSaboresID_SABOR: TIntegerField;
    SQLSaboresDESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroSabores: TFormCadastroSabores;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormCadastroSabores.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'SABORES' ;
end;

procedure TFormCadastroSabores.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateDESCRICAO.Value = '' Then
    begin
      Beep ;
      Informa('O campo Descrição deve ser preenchido!') ;
      Abort ;
    end;
  // Testar se o Sabor ja existe!!!
  SQLSabores.Close;
  SQLSabores.MacroByName('Descricao').Value := 'DESCRICAO = ' + '''' + SQLTemplateDESCRICAO.Value + '''';
  SQLSabores.Open;
  If not SQLSabores.IsEmpty Then
    Begin
      Beep ;
      ShowMessage('Este Sabor já está cadastrado!');
      Abort;
    End;
end;

end.
