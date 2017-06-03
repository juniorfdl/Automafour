unit TelaConsultaPrevendaTablets;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RxMemDS, DB, DBTables, RxQuery, Buttons,
  AdvOfficeStatusBar, StdCtrls, ExtCtrls, AdvOfficeStatusBarStylers,
  RXCtrls;

type
  TFormConsultaPrevendaTablets = class(TForm)
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ScrollBoxTopo: TScrollBox;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    LabelRegistros: TLabel;
    PanelNavigator: TPanel;
    AdvPanelNavigator: TAdvOfficeStatusBar;
    BtnFecharTela: TSpeedButton;
    LabelRetornar: TSpeedButton;
    SQLTemplate: TRxQuery;
    DSTemplate: TDataSource;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplatePRVDICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplatePRVDN2TOTITENS: TBCDField;
    SQLTemplatePRVDN2DESC: TBCDField;
    SQLTemplatePRVDCIMPORT: TStringField;
    SQLTemplateCLIENTENOME: TStringField;
    SQLTemplatePDVDDHVENDA: TDateTimeField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplatePLACA: TStringField;
    DBGridLista: TDBGrid;
    BtnSelecionarDoc: TSpeedButton;
    BtnBaixarDocIntegrado: TSpeedButton;
    DBGrid1: TDBGrid;
    dsItens: TDataSource;
    sqlitens: TRxQuery;
    sqlitensTERMICOD: TIntegerField;
    sqlitensPRVDICOD: TIntegerField;
    sqlitensPVITIPOS: TIntegerField;
    sqlitensPRODICOD: TIntegerField;
    sqlitensPVITN3QTD: TBCDField;
    sqlitensPVITN3VLRUNIT: TBCDField;
    sqlitensPVITN3VLRCUSTUNIT: TBCDField;
    sqlitensPVITN2DESC: TBCDField;
    sqlitensDESCRICAO: TStringField;
    btExcluir: TSpeedButton;
    btImpressao: TRxSpeedButton;
    ckImportados: TCheckBox;
    SQLTemplateSITUACAO: TStringField;
    SQLTemplateOBS: TStringField;
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure LabelRetornarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnBaixarDocIntegradoClick(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure btExcluirClick(Sender: TObject);
    procedure btImpressaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaPrevendaTablets: TFormConsultaPrevendaTablets;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormConsultaPrevendaTablets.BtnSelecionarDocClick(
  Sender: TObject);
begin
  SQLTemplate.Close;
  SQLTemplate.macrobyname('MEmpresa').Value := 'EMPRICOD='+DM.SQLTerminalAtivoEMPRICOD.AsString;
  if ckImportados.Checked then
    SQLTemplate.macrobyname('MFiltro').Value := 'PRVDCIMPORT="S"'
  else
    SQLTemplate.macrobyname('MFiltro').Value := 'PRVDCIMPORT<>"S"';
  SQLTemplate.Open;
end;

procedure TFormConsultaPrevendaTablets.LabelRetornarClick(Sender: TObject);
begin
  DM.PrevendaTerminalStr := SQLTemplateTERMICOD.AsString;
  DM.PrevendaCodigoSTR   := SQLTemplatePRVDICOD.AsString;
  Close;
end;

procedure TFormConsultaPrevendaTablets.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TFormConsultaPrevendaTablets.BtnFecharTelaClick(Sender: TObject);
begin
  Close;
end;

procedure TFormConsultaPrevendaTablets.FormCreate(Sender: TObject);
begin
  SQLTemplate.close;
  SQLTemplate.macrobyname('MEmpresa').Value := 'EMPRICOD='+DM.SQLTerminalAtivoEMPRICOD.AsString;
  if ckImportados.Checked then
    SQLTemplate.macrobyname('MFiltro').Value := 'PRVDCIMPORT="S"'
  else
    SQLTemplate.macrobyname('MFiltro').Value := 'PRVDCIMPORT<>"S"';
  SQLTemplate.Open;
end;

procedure TFormConsultaPrevendaTablets.BtnBaixarDocIntegradoClick(
  Sender: TObject);
begin
  SQLTemplate.edit;
  SQLTemplatePRVDCIMPORT.Value := 'N';
  SQLTemplate.Post;
end;

procedure TFormConsultaPrevendaTablets.DSTemplateDataChange(
  Sender: TObject; Field: TField);
begin
  if (SQLTemplateTERMICOD.AsString<>'') and (SQLTemplatePRVDICOD.AsString<>'') then
    begin
      sqlitens.Close;
      sqlitens.MacroByName('MFiltro').Value := 'TERMICOD='+ SQLTemplateTERMICOD.AsString +' and PRVDICOD='+SQLTemplatePRVDICOD.AsString;
      sqlitens.Open;
    end;  
end;

procedure TFormConsultaPrevendaTablets.btExcluirClick(Sender: TObject);
var xObs : string;
begin
  {Apaga prevenda}
  SQLTemplate.edit;
  SQLTemplateSITUACAO.Value := 'CANCELADO';
  xObs := '';
  xObs := InputBox('Cancelamento do Pedido!','Informar Motivo?',xObs);
  if xObs <> '' then
    SQLTemplateOBS.Value := xObs;
  SQLTemplate.Post;
end;

procedure TFormConsultaPrevendaTablets.btImpressaoClick(Sender: TObject);
begin
  WinExec(Pchar('C:\Easy2Solutions\Gestao\ImpressaoViaParametro.EXE ' + SQLTemplate.FieldByName('termicod').AsString +' '+SQLTemplate.FieldByName('prvdicod').AsString),sw_Show);
end;

end.
