unit CadastroFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxDBComb, DBCtrls, VarSys, FormResources,
  ToolEdit, RXDBCtrl, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroFuncionario = class(TFormCadastroTEMPLATE)
    SQLTemplateFUNCA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateFUNCICOD: TIntegerField;
    SQLTemplateFUNCA60NOME: TStringField;
    SQLTemplateFUNCCAUTONOMO: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SQLTemplateFUNCN2PERCCOMISSAO: TFloatField;
    SQLTemplateFUNCA11CPF: TStringField;
    SQLTemplateFUNCA14CNPJ: TStringField;
    SQLTemplateFUNCA15INSS: TStringField;
    SQLTemplateFUNCA60ENDRES: TStringField;
    SQLTemplateVEICA13ID: TStringField;
    Label5: TLabel;
    TblVeiculo: TTable;
    SQLTemplateVeiculoLookup: TStringField;
    SQLTemplateFUNCCTIPO: TStringField;
    CboTipo: TRxDBComboBox;
    Label10: TLabel;
    SQLTemplateFUNCA30RG: TStringField;
    SQLTemplateFUNCA15ORGEMISSOR: TStringField;
    SQLTemplateFUNCA15CNH: TStringField;
    SQLTemplateFUNCA30TITELEITOR: TStringField;
    SQLTemplateFUNCA30NACIONALIDADE: TStringField;
    SQLTemplateFUNCA30NATURALIDADE: TStringField;
    SQLTemplateFUNCA15CERTRESERVISTA: TStringField;
    SQLTemplateFUNCA30EMAIL: TStringField;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    SQLTemplateFUNCA30BAIRRO: TStringField;
    SQLTemplateFUNCA8CEP: TStringField;
    SQLTemplateFUNCA60CIDADE: TStringField;
    SQLTemplateFUNCA10FONE1: TStringField;
    SQLTemplateFUNCA10FONE2: TStringField;
    SQLTemplateFUNCA10CELULAR: TStringField;
    SQLTemplateFUNCA30RECADO: TStringField;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    Label23: TLabel;
    DBEdit21: TDBEdit;
    Label24: TLabel;
    DBEdit22: TDBEdit;
    Label25: TLabel;
    DBEdit23: TDBEdit;
    SQLTemplateFUNCDADMISSAO: TDateTimeField;
    SQLTemplateFUNCDDEMISSAO: TDateTimeField;
    SQLTemplateFUNCA60DEPARTFILIAL: TStringField;
    SQLTemplateFUNCA60ENDFUNC: TStringField;
    SQLTemplateFUNCA15SETOR: TStringField;
    SQLTemplateFUNCA15DEPARTAMENTO: TStringField;
    SQLTemplateFUNCA15CARGOFUNCAO: TStringField;
    SQLTemplateFUNCA30HORARIOTRABALHO: TStringField;
    GroupBox3: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit26: TDBEdit;
    Label29: TLabel;
    DBEdit27: TDBEdit;
    Label30: TLabel;
    DBEdit28: TDBEdit;
    Label31: TLabel;
    DBEdit29: TDBEdit;
    Label32: TLabel;
    DBEdit30: TDBEdit;
    Label33: TLabel;
    DBEdit31: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    SQLTemplateFUNCCTIPOREMUN: TStringField;
    SQLTemplateFUNCN3VLRREMUN: TFloatField;
    SQLTemplateFUNCA30SISTEMATIC: TStringField;
    Label6: TLabel;
    ComboAutonomoFuncionario: TRxDBComboBox;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    SQLTemplateFUNCNVLRVT: TFloatField;
    SQLTemplateFUNCNVLRVR: TFloatField;
    SQLTemplateFUNCNVLRRANCHO: TFloatField;
    Label40: TLabel;
    DBEdit35: TDBEdit;
    SQLTemplateFUNCA2UF: TStringField;
    TabSheetDados2: TTabSheet;
    GroupBox5: TGroupBox;
    Label47: TLabel;
    DBEdit42: TDBEdit;
    GroupBox6: TGroupBox;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    DBEdit4: TDBEdit;
    Label44: TLabel;
    SQLTemplateFUNCA60NOMEFANT: TStringField;
    SQLTemplateFUNCA15INSCEST: TStringField;
    SQLTemplateFUNCA15INSMUN: TStringField;
    SQLTemplateFUNCA30URL: TStringField;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    GroupBox8: TGroupBox;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    DBEdit43: TDBEdit;
    Label61: TLabel;
    DBEdit53: TDBEdit;
    Label62: TLabel;
    DBEdit54: TDBEdit;
    Label63: TLabel;
    DBEdit55: TDBEdit;
    SQLTemplateFUNCDCONSTITICAO: TDateTimeField;
    SQLTemplateFUNCDALTCONTRAT: TDateTimeField;
    DBDateEdit3: TDBDateEdit;
    DBDateEdit4: TDBDateEdit;
    RxSpeedButton1: TRxSpeedButton;
    TabSheetDadosBancarios: TTabSheet;
    GroupBox10: TGroupBox;
    Label64: TLabel;
    AcessaBanco: TSpeedButton;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBDateEdit5: TDBDateEdit;
    SQLTemplateBANCA5COD: TStringField;
    SQLTemplateFUNC5AGENCIA: TStringField;
    SQLTemplateFUNCA10CONTA: TStringField;
    SQLTemplateFUNCDABERTCONTA: TDateTimeField;
    SQLTemplateFUNCA60TITULAR: TStringField;
    SQLTemplateBancoLookup: TStringField;
    SQLBanco: TTable;
    SQLTemplateFUNCN2PERCENCARGOS: TFloatField;
    GroupBox7: TGroupBox;
    Label9: TLabel;
    ButtonVeiculo: TSpeedButton;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit33: TDBEdit;
    GroupBox4: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label69: TLabel;
    DBEdit25: TDBEdit;
    DBEdit24: TDBEdit;
    RxDBComboBox2: TRxDBComboBox;
    DBEdit61: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure ButtonVeiculoClick(Sender: TObject);
    procedure CboTipoChange(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure RxSpeedButton1Click(Sender: TObject);
    procedure AcessaBancoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFuncionario: TFormCadastroFuncionario;

implementation

uses CadastroFuncionarioContaCorrente, CadastroVeiculo, UnitLibrary,
  CadastroBanco;

{$R *.dfm}

procedure TFormCadastroFuncionario.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'FUNCIONARIO';
end;

procedure TFormCadastroFuncionario.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FUNCCAUTONOMO').AsString := 'A';
  DataSet.FieldByName('FUNCN2PERCCOMISSAO').AsFloat := 0;
end;

procedure TFormCadastroFuncionario.Button3Click(Sender: TObject);
begin
  inherited;
  TabSheetDadosBancarios.Show;
end;

procedure TFormCadastroFuncionario.ButtonVeiculoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplate.FieldByName('VEICA13ID');
  FieldOrigem := 'VEICA13ID';
  CriaFormulario(TFormCadastroVeiculo,'FormCadastroVeiculo',False,True,True,'');
end;

procedure TFormCadastroFuncionario.CboTipoChange(Sender: TObject);
begin
  inherited;
  if CboTipo.ItemIndex = 0 then
     TabSheetDadosPrincipais.Show
  else if CboTipo.ItemIndex = 1 then
     TabSheetDados2.Show;

end;

procedure TFormCadastroFuncionario.SQLTemplateBeforePost(
  DataSet: TDataSet);
Var I : Integer;
begin
  inherited;
  if CboTipo.ItemIndex = 0 then // Fisica
        for I := 0 to SQLTemplate.FieldCount - 1 do
           begin
             if SQLTemplate.Fields.Fields[I].Tag = 8 then
                begin
                  if (SQLTemplate.Fields[I].IsNull) or (Trim(SQLTemplate.Fields[I].AsString) = '') then
                   begin
                     SQLTemplate.Fields[I].FocusControl;
                     if SQLTemplate.Fields[I].Tag = 8 then
                       raise Exception.Create ('O campo ''' +
                         SQLTemplate.Fields[I].DisplayLabel + ''' deve ser preenchido.')
                     else
                       raise Exception.Create (SQLTemplate.Fields[I].ConstraintErrorMessage);
                   end;
                end;
           end
  else if CboTipo.ItemIndex = 1 then   //Juridica
     begin
        for I := 0 to SQLTemplate.FieldCount - 1 do
           begin
             if SQLTemplate.Fields.Fields[I].Tag = 9 then
                begin
                  if (SQLTemplate.Fields[I].IsNull) or (Trim(SQLTemplate.Fields[I].AsString) = '') then
                   begin
                     SQLTemplate.Fields[I].FocusControl;
                     if SQLTemplate.Fields[I].Tag = 9 then
                       raise Exception.Create ('O campo ''' +
                         SQLTemplate.Fields[I].DisplayLabel + ''' deve ser preenchido.')
                     else
                       raise Exception.Create (SQLTemplate.Fields[I].ConstraintErrorMessage);
                   end;
                end;
           end;
     end;
end;

procedure TFormCadastroFuncionario.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (CboTipo.ItemIndex = 0) and (TabSheetDadosPrincipais.Showing or TabSheetDados2.Showing) then
     TabSheetDadosPrincipais.Show
  else if (CboTipo.ItemIndex = 1) and (TabSheetDadosPrincipais.Showing or TabSheetDados2.Showing) then
     TabSheetDados2.Show;
end;

procedure TFormCadastroFuncionario.RxSpeedButton1Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DsTemplate;
  CriaFormulario(TFormCadastroFuncionarioContaCorrente,'FormCadastroFuncionarioContaCorrente',True,False,True,DSTemplate.DataSet.FieldByName('FUNCA60NOME').AsString);
end;

procedure TFormCadastroFuncionario.AcessaBancoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('BANCA5COD');
  FieldOrigem := 'BANCA5COD' ;
  CriaFormulario(TFormCadastroBanco,'FormCadastroBanco', False,True,True,'Cliente ' + SQLTemplateFUNCA60NOME.Value) ;
end;

end.
