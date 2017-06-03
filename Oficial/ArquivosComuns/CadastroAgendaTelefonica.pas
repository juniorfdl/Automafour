unit CadastroAgendaTelefonica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBTables, DBActns, ActnList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls,
  Buttons, ExtCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroAgendaTelefonica = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    MemoOBS: TDBMemo;
    Label21: TLabel;
    Panel4: TPanel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBMemo1: TDBMemo;
    SQLTemplateAGFOA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateAGFOICOD: TIntegerField;
    SQLTemplateAGFOA60NOME: TStringField;
    SQLTemplateAGFOA15FONE1: TStringField;
    SQLTemplateAGFOA15FONE2: TStringField;
    SQLTemplateAGFOA60END: TStringField;
    SQLTemplateAGFOA60BAI: TStringField;
    SQLTemplateAGFOA60CID: TStringField;
    SQLTemplateAGFOA8CEP: TStringField;
    SQLTemplateAGFOA2UF: TStringField;
    SQLTemplateAGFOA254OBS: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroAgendaTelefonica: TFormCadastroAgendaTelefonica;

implementation

{$R *.dfm}

procedure TFormCadastroAgendaTelefonica.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'AgendaTelef';
end;

end.
