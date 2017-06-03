unit CadastroProdutoFornecedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, DBActns, ActnList, ImgList, Db, DBTables, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls, RXCtrls,
  VarSYS, FormResources, Buttons, jpeg, DBCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroProdutoFornecedor = class(TFormCadastroTEMPLATE)
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateFORNICOD: TIntegerField;
    SQLTemplatePRFOA30REFERENCIA: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    AcessaFornecedor: TSpeedButton;
    DBEdit12: TDBEdit;
    SQLTemplateFornecedorLookup: TStringField;
    SQLFornecedor: TTable;
    SQLFornecedorFORNICOD: TIntegerField;
    SQLFornecedorFORNA60RAZAOSOC: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure AcessaFornecedorClick(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProdutoFornecedor: TFormCadastroProdutoFornecedor;

implementation

uses CadastroFornecedor, DataModulo;

{$R *.DFM}

procedure TFormCadastroProdutoFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRODUTOFORNECEDOR' ;
end;

procedure TFormCadastroProdutoFornecedor.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  TRxQuery(DataSet).FieldByName('PRODICOD').Value := TrxQuery(DataSet).DataSource.DataSet.FieldByName('PRODICOD').Value ;
end;

procedure TFormCadastroProdutoFornecedor.AcessaFornecedorClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('FORNICOD');
  FieldOrigem := 'FORNICOD' ;
  CriaFormulario(TFormCadastroFornecedor,'FormCadastroFornecedor',False,True,False,'') ;
end;

procedure TFormCadastroProdutoFornecedor.DBEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    AcessaFornecedor.Click;
end;

end.
