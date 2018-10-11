unit CadastroProdutoSabores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  DBTables, DBActns, ActnList, DB, RxQuery, Menus, StdCtrls, Mask, VarSYS,
  AdvPanel, Grids, DBGrids, ComCtrls, RXCtrls, Buttons, ExtCtrls, DBCtrls,
  EDBNum, FormResources;

type
  TFormCadastroProdutoSabores = class(TFormCadastroTEMPLATE)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEditProduto: TDBEdit;
    BtnProduto: TSpeedButton;
    DBEdit11: TDBEdit;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateID_SABOR: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLSabores: TTable;
    SQLSaboresID_SABOR: TIntegerField;
    SQLSaboresDESCRICAO: TStringField;
    SQLTemplateSaboresLookup: TStringField;
    procedure BtnProdutoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DBEditProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProdutoSabores: TFormCadastroProdutoSabores;

implementation

uses CadastroSabores;

{$R *.dfm}

procedure TFormCadastroProdutoSabores.BtnProdutoClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('ID_SABOR');
  FieldOrigem := 'ID_SABOR';
  CriaFormulario(TFormCadastroSabores,'FormCadastroSabores',False,True,False,'');

end;

procedure TFormCadastroProdutoSabores.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'PRODUTO_SABORES';
end;

procedure TFormCadastroProdutoSabores.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('PRODICOD').Value   := DataSet.DataSource.DataSet.FindField('PRODICOD').Value;

end;

procedure TFormCadastroProdutoSabores.DBEditProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnProduto.Click;
end;

end.
