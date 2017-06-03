 unit TelaConsultaConsignacoesPendentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, RxQuery, Grids, DBGrids, Buttons, jpeg, ExtCtrls,
  DBCtrls, StdCtrls;

type
  TFormTelaConsultaConsignacoesPendentes = class(TForm)
    PanelCabecalho: TPanel;
    Panel2: TPanel;
    LabelRegistros: TLabel;
    Panel3: TPanel;
    DBNavigatorTemplate: TDBNavigator;
    Panel1: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    Image1: TImage;
    BtnFecharTela: TSpeedButton;
    LabelRetornar: TSpeedButton;
    PanelCentral: TPanel;
    DBGridLista: TDBGrid;
    SQLTemplate: TRxQuery;
    DSTemplate: TDataSource;
    SQLTemplateCUPOA13ID: TStringField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplateCUPODEMIS: TDateTimeField;
    SQLTemplateCUPOCTIPOPADRAO: TStringField;
    SQLTemplateCUPOCCONSIG: TStringField;
    SQLTemplateCUPODPAGTOCONSIG: TDateTimeField;
    SQLTemplateCUPON2TOTITENS: TFloatField;
    SQLTemplateSALDO: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure LabelRetornarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaConsignacoesPendentes: TFormTelaConsultaConsignacoesPendentes;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormTelaConsultaConsignacoesPendentes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaConsultaConsignacoesPendentes.FormCreate(Sender : TObject);
begin
  if Application.FindComponent('FormTelaItens') <> nil then
    begin
      (Sender as TForm).Top    := (Application.FindComponent('FormTelaItens') as TForm).Top ;
      (Sender as TForm).Left   := (Application.FindComponent('FormTelaItens') as TForm).Left ;
      (Sender as TForm).Height := (Application.FindComponent('FormTelaItens') as TForm).Height ;
      (Sender as TForm).Width  := (Application.FindComponent('FormTelaItens') as TForm).Width ;
    end ;
end;

procedure TFormTelaConsultaConsignacoesPendentes.LabelRetornarClick(
  Sender: TObject);
begin
  CupomVendaConsig := SQLTemplateCUPOA13ID.Value ;

  Close;
end;

end.
