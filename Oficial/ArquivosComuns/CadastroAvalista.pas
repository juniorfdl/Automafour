unit CadastroAvalista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBCtrls, DB, DBTables, DBActns, ActnList,
  ImgList, RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls,
  ExtCtrls, RXCtrls, Buttons, jpeg, ToolEdit, RXDBCtrl, RxDBComb, EDBNum, VarSys,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroAvalista = class(TFormCadastroTEMPLATE)
    SQLTemplateAVALA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateAVALICOD: TIntegerField;
    SQLTemplateAVALA5FISJURID: TStringField;
    SQLTemplateAVALA14CGC: TStringField;
    SQLTemplateAVALA20IE: TStringField;
    SQLTemplateAVALA11CPF: TStringField;
    SQLTemplateAVALA10RG: TStringField;
    SQLTemplateAVALA60RAZAOSOC: TStringField;
    SQLTemplateAVALA60CONTATO: TStringField;
    SQLTemplateAVALA15FONE1: TStringField;
    SQLTemplateAVALA15FONE2: TStringField;
    SQLTemplateAVALA15FAX: TStringField;
    SQLTemplateAVALA60ENDRES: TStringField;
    SQLTemplateAVALA60BAIRES: TStringField;
    SQLTemplateAVALA60CIDRES: TStringField;
    SQLTemplateAVALA2UFRES: TStringField;
    SQLTemplateAVALA8CEPRES: TStringField;
    SQLTemplateAVALA60EMAIL: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEditNome: TDBEdit;
    PanelTop: TPanel;
    PanelDocFis: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label80: TLabel;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    PanelDocJur: TPanel;
    LabelCgc_CPF: TLabel;
    LabelIE_RG: TLabel;
    DBEditCgc: TDBEdit;
    DBEditIE: TDBEdit;
    Label3: TLabel;
    DBDateEdit2: TDBDateEdit;
    SQLTemplateAVALDNASC: TDateTimeField;
    SQLTemplateAVALDFUND: TDateTimeField;
    SQLTemplateAVALA60NOMEPAI: TStringField;
    SQLTemplateAVALA60NOMEMAE: TStringField;
    SQLTemplateAVALN2RENDA: TBCDField;
    PanelFisica: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    PanelBody: TPanel;
    Label41: TLabel;
    ButtonCep: TSpeedButton;
    Label40: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label49: TLabel;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    DBEditEnd: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    ComboUFRes: TRxDBComboBox;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit32: TDBEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    RadioFisJur: TDBRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure RadioFisJurClick(Sender: TObject);
    procedure ButtonCepClick(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroAvalista: TFormCadastroAvalista;

implementation

uses CadastroCep, FormResources;

{$R *.dfm}

procedure TFormCadastroAvalista.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'AVALISTA';
end;

procedure TFormCadastroAvalista.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if DSTemplate.DataSet.FieldByName('AVALA5FISJURID').AsString <> '' then
    begin
      PanelFisica.Visible  := DSTemplate.DataSet.FieldByName('AVALA5FISJURID').AsString[1] = 'F';
      PanelDocFis.Visible  := DSTemplate.DataSet.FieldByName('AVALA5FISJURID').AsString[1] = 'F';
      PanelDocJur.Visible  := DSTemplate.DataSet.FieldByName('AVALA5FISJURID').AsString[1] = 'J';
    end;
end;

procedure TFormCadastroAvalista.RadioFisJurClick(Sender: TObject);
begin
  inherited;
  PanelDocFis.Visible        := RadioFisJur.ItemIndex = 0;
  PanelDocJur.Visible        := RadioFisJur.ItemIndex = 1;
  PanelFisica.Visible        := RadioFisJur.ItemIndex = 0;
end;

procedure TFormCadastroAvalista.ButtonCepClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('AVALA8CEPRES');
  FieldOrigem := 'CEPA8CEP' ;
  Application.CreateForm(TFormCadastroCep,FormCadastroCep);
  FormCadastroCep.EditProcura.Text := '*' + SQLTemplateAVALA60ENDRES.AsString;
  FormCadastroCep.ShowModal;
  if FormCadastroCep.ModalResult = MrOK then
    begin
      SQLTemplateAVALA60ENDRES.AsString  := FormCadastroCep.SQLTemplateCEPA60LOGRADOURO.AsString;
      SQLTemplateAVALA60BAIRES.AsString  := FormCadastroCep.SQLTemplateCEPA60BAIRRO1.AsString;
      SQLTemplateAVALA60CIDRES.AsString  := FormCadastroCep.SQLTemplateCEPA60CIDADE.AsString;
      SQLTemplateAVALA2UFRES.AsString    := FormCadastroCep.SQLTemplateCEPA2ESTADO.AsString;
      DBEditEnd.SetFocus;
      DBEditEnd.SelStart := Length(DBEditEnd.Text) + 1;
    end;

end;

procedure TFormCadastroAvalista.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateAVALA5FISJURID.AsString := 'J';
  SQLTemplateAVALA2UFRES.AsString    := 'RS';
end;

end.
