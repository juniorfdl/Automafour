unit CadastroProdutoSerie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, RxDBComb, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroProdutoSerie = class(TFormCadastroTEMPLATE)
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePRSEA60NROSERIE: TStringField;
    SQLTemplatePRSECSTATUS: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateEMPRICODDEST: TIntegerField;
    SQLTemplateFORNICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateNOCPA13ID: TStringField;
    SQLTemplateNOFIA13ID: TStringField;
    SQLTemplateCUPOA13ID: TStringField;
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplateOSA13ID: TStringField;
    SQLTemplateMOVDA13ID: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateProdutoLookup: TStringField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    Label4: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProdutoSerie: TFormCadastroProdutoSerie;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormCadastroProdutoSerie.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRODUTOSERIE';
end;

procedure TFormCadastroProdutoSerie.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePRODICOD.AsInteger   := DSMasterTemplate.DataSet.FieldByName('PRODICOD').AsInteger;
  SQLTemplatePRSECSTATUS.AsString := 'D';
  SQLTemplateEMPRICOD.AsInteger   := StrToInt(EmpresaPadrao);
end;

procedure TFormCadastroProdutoSerie.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  if SQLTemplate.State in [DsInsert] then
    if DM.ProcuraRegistro('PRODUTOSERIE',['PRODICOD','PRSEA60NROSERIE'],[SQLTemplatePRODICOD.AsString,SQLTemplatePRSEA60NROSERIE.AsString],2) then
      begin
        Application.MessageBox('Número de série já cadastrado, a operação será cancelada!','Atenção',MB_OK + MB_ICONEXCLAMATION + MB_SETFOREGROUND + MB_SYSTEMMODAL);
        Abort;
      end;
  inherited;
end;

procedure TFormCadastroProdutoSerie.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateProdutoLookup.Value := dm.SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLTemplatePRODICOD.AsString);
end;

end.
