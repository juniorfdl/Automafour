unit CadastroMesa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBTables, DBActns, ActnList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls,
  Buttons, ExtCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroMesa = class(TFormCadastroTEMPLATE)
    SQLTemplateMESAICOD: TIntegerField;
    SQLTemplateMESAICAPAC: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    SQLTemplateMESACSTATUS: TStringField;
    SQLTemplateMESADABERTURA: TDateTimeField;
    SQLTemplateMESADFECHAMENTO: TDateTimeField;
    SQLTemplateMESADULTPED: TDateTimeField;
    SQLTemplateVENDICOD: TIntegerField;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    SQLTemplateMESAN3VLRTOTAL: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroMesa: TFormCadastroMesa;

implementation

{$R *.dfm}

procedure TFormCadastroMesa.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'Mesa';
end;

procedure TFormCadastroMesa.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateMESACSTATUS.Value := 'F';
end;

end.
