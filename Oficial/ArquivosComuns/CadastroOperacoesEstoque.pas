unit CadastroOperacoesEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, RxDBComb,
  DBActns, ActnList, ImgList, FormResources, VarSys;

type
  TFormCadastroOperacoesEstoque = class(TFormCadastroTEMPLATE)
    SQLTemplateOPESICOD: TIntegerField;
    SQLTemplateOPESA60DESCR: TStringField;
    SQLTemplateSERIA5COD: TStringField;
    SQLTemplateCFOPA5CODDENTROUF: TStringField;
    SQLTemplateCFOPA5CODFORAUF: TStringField;
    SQLTemplateOPESCENTRADASAIDA: TStringField;
    SQLTemplateOPESCORIGEMDESTINO: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    AcessaSeries: TSpeedButton;
    DBEdit12: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBEdit6: TDBEdit;
    SpeedButton3: TSpeedButton;
    DBEdit8: TDBEdit;
    SQLTemplateSERIELookup: TStringField;
    SQLTemplateCFOPDENTROLookup: TStringField;
    SQLTemplateCFOPFORALookup: TStringField;
    SQLTemplateOPESA18CAMPOIMP: TStringField;
    SQLTemplateOPESCCALCIPI: TStringField;
    SQLTemplateOPESCCALCICMS: TStringField;
    SQLSerie: TTable;
    GroupEstoque: TGroupBox;
    Label7: TLabel;
    DBEdit7: TRxDBComboBox;
    Label6: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    Label11: TLabel;
    RxDBComboBox5: TRxDBComboBox;
    SQLTemplateOPESCGERAFINANCEIRO: TStringField;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    RxDBComboBox3: TRxDBComboBox;
    RxDBComboBox4: TRxDBComboBox;
    SQLCFOP: TTable;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure AcessaSeriesClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroOperacoesEstoque: TFormCadastroOperacoesEstoque;

implementation

uses DataModulo, CadastroSerie, CadastroCodigoFiscalOperacao;

{$R *.DFM}

procedure TFormCadastroOperacoesEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'OPERACAOESTOQUE' ;
end;

procedure TFormCadastroOperacoesEstoque.AcessaSeriesClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('SERIA5COD');
  FieldOrigem := 'SERIA5COD';
  CriaFormulario(TFormCadastroSerie,'FormCadastroSerie',False,True,'');
end;

procedure TFormCadastroOperacoesEstoque.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CFOPA5CODDENTROUF');
  FieldOrigem := 'CFOPA5COD';
  CriaFormulario(TFormCadastroCodigoFiscalOperacao,'FormCadastroCodigoFiscalOperacao',False,True,'');
end;

procedure TFormCadastroOperacoesEstoque.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CFOPA5CODFORAUF');
  FieldOrigem := 'CFOPA5COD';
  CriaFormulario(TFormCadastroCodigoFiscalOperacao,'FormCadastroCodigoFiscalOperacao',False,True,'');
end;

procedure TFormCadastroOperacoesEstoque.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateOPESCGERAFINANCEIRO.AsString := 'S';
end;

end.
