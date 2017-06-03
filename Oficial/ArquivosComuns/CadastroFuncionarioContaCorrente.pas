unit CadastroFuncionarioContaCorrente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, VarSys, FormResources, ToolEdit,
  RXDBCtrl, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroFuncionarioContaCorrente = class(TFormCadastroTEMPLATE)
    SQLTemplateFUNCA13ID: TStringField;
    SQLTemplateFUCCICOD: TIntegerField;
    SQLTemplateFUCCN2VLRDEBITO: TFloatField;
    SQLTemplateFUCCN2VLRCREDITO: TFloatField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    QueryOperacaoFrete: TQuery;
    SQLTemplateOPFRA60DESCR: TStringField;
    SQLTemplateOPFRCTIPOOPERACAO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEditDebito: TDBEdit;
    DBEditCredito: TDBEdit;
    DBEdit18: TDBEdit;
    ButtonCadastroOperacaoFrete: TSpeedButton;
    SQLTemplateOPFUICOD: TIntegerField;
    SQLTemplateFUCCDULTREC: TDateTimeField;
    SQLTemplateFUCCN2VLRTOTREC: TFloatField;
    SQLTemplateFUCCN2VLRULTREC: TFloatField;
    SQLTemplateFUCCDLANCAMENTO: TDateTimeField;
    DBDateEdit1: TDBDateEdit;
    Label3: TLabel;
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ButtonCadastroOperacaoFreteClick(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure FormActivate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFuncionarioContaCorrente: TFormCadastroFuncionarioContaCorrente;

implementation

uses CadastroOperacaoFuncionario, DataModulo;

{$R *.dfm}

procedure TFormCadastroFuncionarioContaCorrente.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FUNCA13ID').AsVariant      := DataSet.DataSource.DataSet.FieldByName('FUNCA13ID').AsVariant;
  DataSet.FieldByName('FUCCN2VLRDEBITO').AsFloat  := 0;
  DataSet.FieldByName('FUCCN2VLRCREDITO').AsFloat := 0;
  DataSet.FieldByName('FUCCN2VLRTOTREC').AsFloat  := 0;
  DataSet.FieldByName('FUCCN2VLRULTREC').AsFloat  := 0;
  DataSet.FieldByName('FUCCDLANCAMENTO').AsString := FormatDateTime('dd/mm/yyyy',dm.DataBaseSistema);
end;

procedure TFormCadastroFuncionarioContaCorrente.FormCreate(
  Sender: TObject);
begin
  inherited;
  Tabela := 'FUNCIONARIOCONTACORRENTE';
end;

procedure TFormCadastroFuncionarioContaCorrente.ButtonCadastroOperacaoFreteClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('OPFUICOD');
  FieldOrigem := 'OPFUICOD';
  CriaFormulario(TFormCadastroOperacaoFuncionario,'FormCadastroOperacaoFuncionario',False,True,True,'');
end;

procedure TFormCadastroFuncionarioContaCorrente.DSTemplateDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  if Field <> nil then
    begin
      DBEditCredito.Visible := DsTemplate.DataSet.FieldByName('OPFUCTIPOOPERACAO').AsString = 'C';
      DBEditDebito.Visible := DsTemplate.DataSet.FieldByName('OPFUCTIPOOPERACAO').AsString = 'D';
    end;
end;

procedure TFormCadastroFuncionarioContaCorrente.FormActivate(
  Sender: TObject);
begin
  inherited;
  if QueryOperacaoFrete.Active then
    QueryOperacaoFrete.Close;
  QueryOperacaoFrete.Open;
end;

procedure TFormCadastroFuncionarioContaCorrente.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  case DataSet.FieldByName('OPFUCTIPOOPERACAO').AsString[1] of
    'C' : DataSet.FieldByName('FUCCN2VLRDEBITO').AsFloat := 0;
    'D' : DataSet.FieldByName('FUCCN2VLRCREDITO').AsFloat := 0;
  end
end;

procedure TFormCadastroFuncionarioContaCorrente.DBEdit1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F3 then
    ButtonCadastroOperacaoFrete.Click;
end;

end.

