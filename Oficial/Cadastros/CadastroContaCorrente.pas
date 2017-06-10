unit CadastroContaCorrente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, EDBNum, VarSYS, FormResources, RxLookup,
  ToolEdit, RXDBCtrl, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroContaCorrente = class(TFormCadastroTEMPLATE)
    SQLTemplateCTCRICOD: TIntegerField;
    SQLTemplateBANCA5COD: TStringField;
    SQLTemplateCTCRA15AGENCIA: TStringField;
    SQLTemplateCTCRA15NUMERO: TStringField;
    SQLTemplateCTCRA60TITULAR: TStringField;
    SQLTemplateCTCRDABERTURA: TDateTimeField;
    SQLTemplateCTCRN2LIMITE: TFloatField;
    SQLTemplateCTCRN2SALDOATUAL: TFloatField;
    SQLTemplateTMBCICOD: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    RetornaBanco: TSpeedButton;
    DBEdit33: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TEvDBNumEdit;
    Label6: TLabel;
    SQLTemplateBancoCalcField: TStringField;
    EvDBNumEdit1: TDBEdit;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    ComboEmpresa: TRxDBLookupCombo;
    Label7: TLabel;
    DSSQLEmpresa: TDataSource;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateCTCRDULTALTSALDO: TDateTimeField;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    Label9: TLabel;
    SQLTemplateCTCRA30CODCONTABIL: TStringField;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    SQLTemplateCTCRA15CEDENTECOD: TStringField;
    SQLTemplateCTCRA15CEDENTEDIGCOD: TStringField;
    SQLTemplateCTCRA15DIGAGENCIA: TStringField;
    SQLTemplateCTCRA15DIGCONTA: TStringField;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    SQLTemplateCTCRA15CARTEIRACOD: TStringField;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    SQLTemplateCTCRA15DIGBANCO: TStringField;
    SQLTemplateCTCRA15POSTO: TStringField;
    SQLTemplateCTCRA150LOGOBANCO: TStringField;
    SQLTemplateCTCRINOSSONUMERO: TIntegerField;
    SQLTemplateCTCRA15CARTEIRAVARIACAO: TStringField;
    dbedtCTCRA15CARTEIRAVARIACAO: TDBEdit;
    Label19: TLabel;
    dbedtCTCRA15NUMEROCONVENIO: TDBEdit;
    Label20: TLabel;
    SQLTemplateCTCRA15NUMEROCONVENIO: TStringField;
    SQLTemplateLOTEREMESSABANCO: TIntegerField;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure RetornaBancoClick(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroContaCorrente: TFormCadastroContaCorrente;

implementation

uses UnitLibrary, CadastroBanco;

{$R *.dfm}

procedure TFormCadastroContaCorrente.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CONTACORRENTE';
  SQLEmpresa.Open;
end;

procedure TFormCadastroContaCorrente.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateBancoCalcField.AsString := SQLLocate('BANCO', 'BANCA5COD', 'BANCA60NOME', '''' + SQLTemplateBANCA5COD.AsString + '''') ;
end;

procedure TFormCadastroContaCorrente.RetornaBancoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('BANCA5COD') ;
  FieldOrigem := 'BANCA5COD' ;
  CriaFormulario(TFormCadastroBanco, 'FormCadastroBanco',False,True,True,'');
end;

procedure TFormCadastroContaCorrente.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateCTCRN2SALDOATUAL.Value := 0 ;
end;

procedure TFormCadastroContaCorrente.DBEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaBanco.Click;
end;

end.
