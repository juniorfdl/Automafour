unit CadastroClienteExtintor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, DBCtrls, ToolEdit, RXDBCtrl, RxLookup, ppVar, ppCtrls,
  ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppDBPipe, ppDBBDE, ppComm,
  ppRelatv, ppProd, ppReport, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroClienteExtintor = class(TFormCadastroTEMPLATE)
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateCLEXICOD: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateCLEXA30VISTORIADOR: TStringField;
    SQLTemplateCLEXA30LOCALIZACAO: TStringField;
    SQLTemplateCLEXA30OBS: TStringField;
    SQLTemplateCLEXA15RECIPIENTE: TStringField;
    SQLTemplateCLEXA15SELOIMETRO: TStringField;
    SQLTemplateCLEXIEXIGIDO: TIntegerField;
    SQLTemplateCLEXIEEXISTENTE: TIntegerField;
    SQLTemplateCLEXIEX_AP_AG: TIntegerField;
    SQLTemplateCLEXIEX_ES: TIntegerField;
    SQLTemplateCLEXIEX_PQS: TIntegerField;
    SQLTemplateCLEXIEX_CO2: TIntegerField;
    SQLTemplateCLEXIEX_CARROCAVEL: TIntegerField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label19: TLabel;
    SQLProdutos: TRxQuery;
    SQLProdutosPRODICOD: TIntegerField;
    SQLProdutosPRODA60DESCR: TStringField;
    SQLProdutosPRODN3VLRVENDA: TFloatField;
    SQLProdutosPRODN3VLRVENDAPROM: TFloatField;
    SQLProdutosPRODDINIPROMO: TDateTimeField;
    SQLProdutosPRODDFIMPROMO: TDateTimeField;
    SQLProdutosPRODN3VLRVENDA2: TFloatField;
    dsSQLProdutos: TDataSource;
    Label20: TLabel;
    SQLTemplateProdutoLookup: TStringField;
    SQLTemplateCLEXA05CAPACIDADE: TStringField;
    ComboProdutos: TRxDBLookupCombo;
    DBEdit6: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    SQLTemplateCLEXDCAD: TDateTimeField;
    SQLTemplateCLEXDSELOVALIDADE: TStringField;
    SQLTemplateCLEXDCARGA: TStringField;
    SQLTemplateCLEXDINSPECAO: TDateTimeField;
    SQLTemplateCLEXDRETESTE: TStringField;
    SQLTemplateCLEXDREVISAO: TStringField;
    ImpressodeLaudoTcnico1: TMenuItem;
    ppReport1: TppReport;
    PipeItens: TppBDEPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppShape2: TppShape;
    ppLabel8: TppLabel;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel11: TppLabel;
    ppLine5: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine6: TppLine;
    ppLabel14: TppLabel;
    ppLine7: TppLine;
    ppLabel15: TppLabel;
    ppLine8: TppLine;
    ppLabel16: TppLabel;
    ppLine9: TppLine;
    ppLabel17: TppLabel;
    ppLine10: TppLine;
    ppLabel18: TppLabel;
    ppShape3: TppShape;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppVariable1: TppVariable;
    ppLine11: TppLine;
    ppLabel28: TppLabel;
    ppLine12: TppLine;
    ppLabel29: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppRazao: TppLabel;
    ppEnd: TppLabel;
    ppBairro: TppLabel;
    ppCidade: TppLabel;
    SQLTemplateCLEXA60RESPONSAVEL: TStringField;
    DBEdit19: TDBEdit;
    Label21: TLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppDBText20: TppDBText;
    PipeItensppField26: TppField;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLabel30: TppLabel;
    pplbTipo: TppLabel;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    SQLTemplateCLEXINRORDEM: TIntegerField;
    PipeItensppField27: TppField;
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ImpressodeLaudoTcnico1Click(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroClienteExtintor: TFormCadastroClienteExtintor;

implementation

uses DataModulo, DataModuloTemplate;

{$R *.dfm}

procedure TFormCadastroClienteExtintor.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CLIENTEEXTINTOR' ;
end;

procedure TFormCadastroClienteExtintor.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  TRxQuery(DataSet).FieldByName('CLIEA13ID').Value := TrxQuery(DataSet).DataSource.DataSet.FieldByName('CLIEA13ID').Value;
end;

procedure TFormCadastroClienteExtintor.ImpressodeLaudoTcnico1Click(
  Sender: TObject);
begin
  inherited;
  // Impressao de Laudo
  if not sqltemplate.IsEmpty then
    ppReport1.Print;
end;

procedure TFormCadastroClienteExtintor.ppHeaderBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  ppRazao.Caption    := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"'+SQLTemplateCLIEA13ID.Value+'"');
  ppEnd.Caption      := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60ENDRES','"'+SQLTemplateCLIEA13ID.Value+'"');
  ppBairro.Caption   := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60BAIRES','"'+SQLTemplateCLIEA13ID.Value+'"');
  ppCidade.Caption   := dm.SQLLocate('CLIENTE','CLIEA13ID','CLIEA60CIDRES','"'+SQLTemplateCLIEA13ID.Value+'"');
end;

procedure TFormCadastroClienteExtintor.ppDetailBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  pplbTipo.Caption := ComboProdutos.Text;
end;

end.
