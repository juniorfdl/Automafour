unit CadastroConfigRemessaBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, ImgList,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, ToolEdit, VarSys, FormResources,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroConfigRemessaBanco = class(TFormCadastroTEMPLATE)
    SQLTemplateCFRBA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateCFRBICOD: TIntegerField;
    SQLTemplateCFRBA20CODEMPRESA: TStringField;
    SQLTemplateCFRBA30NOMEMPRESA: TStringField;
    SQLTemplateCFRBA2CODCARTEIRA: TStringField;
    SQLTemplateCFRBA4CODAGENCIA: TStringField;
    SQLTemplateCFRBA6CONTACORRE: TStringField;
    SQLTemplateCFRBA1DIGCONTA: TStringField;
    SQLTemplateCFRBA1RATEIOCRED: TStringField;
    SQLTemplateBANCA5COD: TStringField;
    SQLTemplateCFRBTPATH: TMemoField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    TableBanco: TTable;
    SQLTemplateBANCA60NOME: TStringField;
    Label8: TLabel;
    AuxDirectory: TDirectoryEdit;
    DBMemo1: TDBMemo;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    ButtonCadastroBanco: TSpeedButton;
    SQLTemplateCFRBA60DESCR: TStringField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    SQLTemplateCFRBA2DIGAGENCIA: TStringField;
    SQLTemplateCFRBA2DIGEMPRESA: TStringField;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    SQLTemplateCFRBA15CODCONVENIO: TStringField;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure AuxDirectoryChange(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure ButtonCadastroBancoClick(Sender: TObject);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroConfigRemessaBanco: TFormCadastroConfigRemessaBanco;

implementation

uses CadastroBanco;

{$R *.dfm}

procedure TFormCadastroConfigRemessaBanco.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CONFIGREMESSABANCO';
end;

procedure TFormCadastroConfigRemessaBanco.AuxDirectoryChange(
  Sender: TObject);
begin
  inherited;
  if DsTemplate.DataSet.State in dsEditModes then
    DsTemplate.DataSet.FieldByName('CFRBTPATH').AsString := AuxDirectory.EditText;
end;

procedure TFormCadastroConfigRemessaBanco.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CFRBA1RATEIOCRED').AsString := 'N';
end;

procedure TFormCadastroConfigRemessaBanco.ButtonCadastroBancoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('BANCA5COD');
  FieldOrigem := 'BANCA5COD';
  CriaFormulario(TFormCadastroBanco,'FormCadastroBanco',False,True,True,'');
end;

procedure TFormCadastroConfigRemessaBanco.DBEdit8KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonCadastroBanco.Click;
end;

end.
