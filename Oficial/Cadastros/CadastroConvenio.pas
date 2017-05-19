unit CadastroConvenio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBActns, ActnList, ImgList,
  DBTables, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, jpeg, ToolEdit, RXDBCtrl, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroConvenio = class(TFormCadastroTEMPLATE)
    SQLTemplateCONVICOD: TIntegerField;
    SQLTemplateCONVA60DESCR: TStringField;
    SQLTemplateCONVN2DESC: TFloatField;
    SQLTemplateCONVN2TAXA: TFloatField;
    SQLTemplateCONVDVENC: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    SQLTemplateCONVDFIMCOMPRA: TDateTimeField;
    SQLTemplateCONVDINICIOCOMPRA: TDateTimeField;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label7: TLabel;
    DBDateEdit2: TDBDateEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroConvenio: TFormCadastroConvenio;

implementation

{$R *.dfm}

procedure TFormCadastroConvenio.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CONVENIO';
end;

end.
