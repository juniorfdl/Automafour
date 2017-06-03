unit CadastroClasseUsuario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, DBTables, Db, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, DBCtrls, Buttons, ExtCtrls, VarSys, FormResources,
  RXCtrls, jpeg, DBActns, ActnList, ImgList, Variants, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroClasseUsuario = class(TFormCadastroTemplate)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    BtnUsuario: TSpeedButton;
    SQLTemplateCLASSICOD: TIntegerField;
    SQLTemplateUSUAICOD: TIntegerField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    SQLUsuario: TTable;
    SQLUsuarioUSUAICOD: TIntegerField;
    SQLUsuarioUSUAA60LOGIN: TStringField;
    SQLTemplateUsuarioLookup: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    procedure BtnUsuarioClick(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroClasseUsuario: TFormCadastroClasseUsuario;

implementation

uses CadastroUsuario, DataModulo;

{$R *.DFM}

procedure TFormCadastroClasseUsuario.BtnUsuarioClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DSTemplate.DataSet.FieldByName('USUAICOD');
  FieldOrigem := 'USUAICOD';
  CriaFormulario(TFormCadastroUsuario,'FormCadastroUsuario',False,True,True,'');
end;

procedure TFormCadastroClasseUsuario.DBEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnUsuario.Click;
end;

procedure TFormCadastroClasseUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'CLASSEUSUARIO';
  if not SQLUsuario.Active then SQLUsuario.Open;
end;

procedure TFormCadastroClasseUsuario.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CLASSICOD').Value:= DSMasterTemplate.DataSet.FieldByName('CLASSICOD').Value;
end;

procedure TFormCadastroClasseUsuario.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  Dm.SQLTemplate.Close;
  Dm.SQLTemplate.SQL.Clear;
  Dm.SQLTemplate.SQL.Add('Select USUAICOD from CLASSEUSUARIO where USUAICOD = ' + SQLTemplateUSUAICOD.AsString);
  Dm.SQLTemplate.Open;
  if not Dm.SQLTemplate.IsEmpty then
    begin
      Application.MessageBox('Este usuário já pertence a uma classe de usuários, portanto não poderá ser incluido novamente !','Classe de Usuários',MB_OK + MB_SYSTEMMODAL + MB_ICONINFORMATION);
      Abort;
    end;

end;

end.
