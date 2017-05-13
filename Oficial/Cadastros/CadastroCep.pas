unit CadastroCep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroCep = class(TFormCadastroTEMPLATE)
    SQLTemplateCEPA60LOGRADOURO: TStringField;
    SQLTemplateCEPA4TIPOLOGRADOURO: TStringField;
    SQLTemplateCEPA60BAIRRO1: TStringField;
    SQLTemplateCEPA60BAIRRO2: TStringField;
    SQLTemplateCEPA60CIDADE: TStringField;
    SQLTemplateCEPA2ESTADO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    SQLTemplateCEPA8CEP: TStringField;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    SQLTemplateCEPICODMUNICIPIO: TIntegerField;
    procedure LabelRetornarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCep: TFormCadastroCep;

implementation

{$R *.dfm}

procedure TFormCadastroCep.LabelRetornarClick(Sender: TObject);
begin
  inherited;
  ModalResult := Mrok;
end;

procedure TFormCadastroCep.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CEP';
  if not SQLTemplate.Active then SQLTemplate.Open;
  LabelTitulo.Caption := (Sender as TForm).Caption; 
end;

end.
