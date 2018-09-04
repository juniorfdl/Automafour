unit CadastroProdutoAcougue;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, AdvOfficeStatusBar,VarSys, Grids, DBGrids,
  DBCtrls, AdvOfficeStatusBarStylers, DBTables, DBActns, ActnList, RxQuery,
  Menus, StdCtrls, Mask, AdvPanel, ComCtrls, RXCtrls, Buttons, ExtCtrls,
  EDBNum, FormResources;

type
  TFormCadastroProdutoAcougue = class(TFormCadastroTEMPLATE)
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePRODICODFILHO: TIntegerField;
    SQLTemplatePERCENTUAL: TFloatField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SQLTemplateProdutoLookUp: TStringField;
    Label9: TLabel;
    DBEditProduto: TDBEdit;
    DBEdit11: TDBEdit;
    Label1: TLabel;
    EditQuant: TEvDBNumEdit;
    BtnProduto: TSpeedButton;
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure BtnProdutoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProdutoAcougue: TFormCadastroProdutoAcougue;

implementation

uses DataModulo, TelaConsultaProduto;

{$R *.dfm}

procedure TFormCadastroProdutoAcougue.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FieldByName('PRODICODFILHO').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICODFILHO').AsString],1) Then
        begin
          DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;
        end
      Else
        DataSet.FieldByName('ProdutoLookup').asString     := MensagemLookUp;

    End
  Else
    DataSet.FieldByName('ProdutoLookup').AsVariant  := Null;

end;

procedure TFormCadastroProdutoAcougue.BtnProdutoClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRODICODFILHO');
  FieldOrigem := 'PRODICOD';
  CriaFormulario(TFormTelaConsultaProduto,'FormTelaConsultaProduto',False,True,True,'');
end;

procedure TFormCadastroProdutoAcougue.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'PRODUTO_ACOUGUE';

end;

procedure TFormCadastroProdutoAcougue.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('PRODICOD').Value   := DataSet.DataSource.DataSet.FindField('PRODICOD').Value;
  DataSet.FindField('PERCENTUAL').Value := 0;

end;

end.
