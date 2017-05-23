unit CadastroClienteProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery, FormResources,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons, VarSYS,
  ExtCtrls, DBCtrls, EDBNum, RxDBComb, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroClienteProduto = class(TFormCadastroTEMPLATE)
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    AcessaProdutos: TSpeedButton;
    DBEdit6: TDBEdit;
    Label22: TLabel;
    EvDBNumEdit2: TEvDBNumEdit;
    TblProduto: TTable;
    TblProdutoPRODICOD: TIntegerField;
    TblProdutoPRODA30ADESCRREDUZ: TStringField;
    SQLTemplateProdutoLookup: TStringField;
    Label1: TLabel;
    Label3: TLabel;
    SQLTemplateCLPRA1DESCTOPOR: TStringField;
    ComboAtivo: TRxDBComboBox;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateCLPRN3PERCDESC: TFloatField;
    procedure AcessaProdutosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure EvDBNumEdit2Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroClienteProduto: TFormCadastroClienteProduto;

implementation

uses CadastroProdutos;

{$R *.dfm}

procedure TFormCadastroClienteProduto.AcessaProdutosClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PRODICOD');
  FieldOrigem := 'PRODICOD' ;
  DataSetLookup := TblProduto;
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,True,'Cliente ') ;
end;

procedure TFormCadastroClienteProduto.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CLIENTEPRODUTO';
end;

procedure TFormCadastroClienteProduto.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('CLIEA13ID').Value := DataSet.DataSource.DataSet.FindField('CLIEA13ID').Value;
end;

procedure TFormCadastroClienteProduto.EvDBNumEdit2Enter(Sender: TObject);
begin
  inherited;
  if SQLTemplateCLPRA1DESCTOPOR.AsString = 'C' then
    EvDBNumEdit2.Decimals := 3
  Else
    EvDBNumEdit2.Decimals := 2;
end;

end.
