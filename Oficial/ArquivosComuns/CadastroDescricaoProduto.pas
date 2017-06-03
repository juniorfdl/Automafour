unit CadastroDescricaoProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, DB, DBTables, RxQuery, Buttons, jpeg,
  ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  TFormCadastroDescricaoProduto = class(TFormTelaGeralModalTemplate)
    SQLProdutoDescricao: TRxQuery;
    DSSQLProdutoDescricao: TDataSource;
    DBEdit1: TDBEdit;
    SQLProdutoDescricaoPRODICOD: TIntegerField;
    SQLProdutoDescricaoPRDCIPOSICAO: TIntegerField;
    SQLProdutoDescricaoPRDCA13DOC: TStringField;
    SQLProdutoDescricaoPRDCA60DESCR: TStringField;
    SQLProdutoDescricaoPRDCA2TIPODOC: TStringField;
    SQLProdutoDescricaoPENDENTE: TStringField;
    SQLProdutoDescricaoREGISTRO: TDateTimeField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    SQLProdutoDescricaoPRODA60DESCR: TStringField;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure SQLProdutoDescricaoCalcFields(DataSet: TDataSet);
    procedure SQLProdutoDescricaoNewRecord(DataSet: TDataSet);
    procedure SQLProdutoDescricaoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
  TipoDoc : String;
    { Public declarations }
  end;

var
  FormCadastroDescricaoProduto: TFormCadastroDescricaoProduto;

implementation

uses UnitLibrary, DataModulo, FormResources;

{$R *.dfm}

procedure TFormCadastroDescricaoProduto.SQLProdutoDescricaoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if SQLProdutoDescricaoPRODICOD.AsVariant <> null then
    begin
      if DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[SQLProdutoDescricaoPRODICOD.AsString],1) then
        SQLProdutoDescricaoPRODA60DESCR.AsString := DM.SQLTemplate.FieldByName('PRODA60DESCR').AsString
      else
        SQLProdutoDescricaoPRODA60DESCR.AsString := 'Produto não encontrado!';
    end;
end;

procedure TFormCadastroDescricaoProduto.SQLProdutoDescricaoNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLProdutoDescricaoPRDCA2TIPODOC.AsString := TipoDoc;
end;

procedure TFormCadastroDescricaoProduto.SQLProdutoDescricaoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  SQLProdutoDescricaoPENDENTE.AsString    := 'S';
  SQLProdutoDescricaoREGISTRO.AsDateTime  :=  Now;
end;

end.
