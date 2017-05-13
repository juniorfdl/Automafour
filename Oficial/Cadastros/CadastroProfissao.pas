unit CadastroProfissao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, DBActns, ActnList, ImgList, Db, DBTables, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls, RXCtrls,
  Buttons, jpeg, DBCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroProfissao = class(TFormCadastroTEMPLATE)
    SQLTemplatePROFICOD: TIntegerField;
    SQLTemplatePROFA60DESCR: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLProfissaoAux: TRxQuery;
    SQLProfissaoAuxPROFICOD: TIntegerField;
    SQLProfissaoAuxPROFA60DESCR: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProfissao: TFormCadastroProfissao;

implementation

{$R *.DFM}

procedure TFormCadastroProfissao.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PROFISSAO' ;
end;

procedure TFormCadastroProfissao.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplatePROFA60DESCR.Value = '' Then
    begin
      Beep ;
      ShowMessage('O campo Descri��o deve ser preenchido!') ;
      Abort ;
    end;
  // Testar se a Profissao ja existe!!!
  SQLProfissaoAux.Close;
  SQLProfissaoAux.MacroByName('Descricao').Value := 'PROFA60DESCR = ' + '"' + SQLTemplatePROFA60DESCR.Value + '"';
  SQLProfissaoAux.Open;
  If not SQLProfissaoAux.IsEmpty Then
    Begin
      Beep ;
      ShowMessage('Esta Profissao j� est� cadastrada!');
      Abort;
    End;
end;

end.
