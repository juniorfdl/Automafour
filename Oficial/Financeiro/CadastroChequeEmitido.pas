unit CadastroChequeEmitido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxDBComb, ToolEdit, RXDBCtrl, DBCtrls, VarSys,
  RxLookup, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroChequeEmitido = class(TFormCadastroTEMPLATE)
    SQLTemplateCQEMA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateCQEMICOD: TIntegerField;
    SQLTemplateCTCRICOD: TIntegerField;
    SQLTemplateCQEMDEMIS: TDateTimeField;
    SQLTemplateCQEMDVENC: TDateTimeField;
    SQLTemplateCQEMN3VLR: TFloatField;
    SQLTemplateCQEMA60FAVORECIDO: TStringField;
    SQLTemplateCQEMINROCHEQUE: TIntegerField;
    SQLTemplateCQEMCCRUZADO: TStringField;
    SQLTemplateCQEMA60HIST: TStringField;
    SQLTemplateALINICOD: TIntegerField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    RxDBComboBox1: TRxDBComboBox;
    TblEmpresa: TTable;
    SQLTemplateEmpresaLookup: TStringField;
    DBEdit4: TDBEdit;
    SQLTemplateContaCorrente: TStringField;
    DBEdit5: TDBEdit;
    AcessaContaCorrente: TSpeedButton;
    RetornaSitCheques: TSpeedButton;
    DBDateEdit2: TDBDateEdit;
    Label12: TLabel;
    AcessaEmpresa: TSpeedButton;
    SQLTemplateCQEMDCOMP: TDateTimeField;
    SQLAlinea: TRxQuery;
    SQLAlineaALINICOD: TIntegerField;
    SQLAlineaALINA30DESCR: TStringField;
    ComboAlinea: TRxDBLookupCombo;
    DSSQLAlinea: TDataSource;
    SQLTemplateAlineaLookup: TStringField;
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure AcessaEmpresaClick(Sender: TObject);
    procedure AcessaContaCorrenteClick(Sender: TObject);
    procedure RetornaSitChequesClick(Sender: TObject);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroChequeEmitido: TFormCadastroChequeEmitido;

implementation

uses UnitLibrary, FormResources, TelaConsultaEmpresa, CadastroContaCorrente,
  CadastroSituacaoCheque;

{$R *.dfm}

procedure TFormCadastroChequeEmitido.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateContaCorrente.AsString  :='Banco: ' + SQLLocate('BANCO','BANCA5COD','BANCA60NOME',SQLLocate('CONTACORRENTE', 'CTCRICOD','BANCA5COD',SQLTemplateCTCRICOD.AsString))+
                                       ' - Agência: ' + SQLLocate('CONTACORRENTE', 'CTCRICOD',  'CTCRA15AGENCIA',  SQLTemplateCTCRICOD.AsString) +
                                       ' - C.C.: ' + SQLLocate('CONTACORRENTE', 'CTCRICOD',  'CTCRA15NUMERO',  SQLTemplateCTCRICOD.AsString);
end;

procedure TFormCadastroChequeEmitido.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CHEQUEEMITIDO';
  SQLAlinea.Open;
end;

procedure TFormCadastroChequeEmitido.AcessaEmpresaClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplate.FieldByName('EMPRICOD');
  FieldOrigem := 'EMPRICOD';
  CriaFormulario(TFormTelaConsultaEmpresa,'FormTelaConsultaEmpresa',False,True,False,'Cadastro de Cheques Emitidos');
end;

procedure TFormCadastroChequeEmitido.AcessaContaCorrenteClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplate.FieldByName('CTCRICOD');
  FieldOrigem := 'CTCRICOD';
  CriaFormulario(TFormCadastroContaCorrente,'FormCadastroContaCorrente',False,True,True,'Cadastro de Cheques Emitidos');
end;

procedure TFormCadastroChequeEmitido.RetornaSitChequesClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('ALINICOD');
  FieldOrigem := 'ALINICOD' ;
  DataSetLookup := SQLAlinea ;
  CriaFormulario(TFormCadastroSituacaoCheque, 'FormCadastroSituacaoCheque',False,True,True,'') ;
end;

procedure TFormCadastroChequeEmitido.DBEdit11KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaSitCheques.Click ;
end;

procedure TFormCadastroChequeEmitido.DBEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    AcessaContaCorrente.Click ;
end;

procedure TFormCadastroChequeEmitido.DBEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    AcessaEmpresa.Click ;
end;

end.
