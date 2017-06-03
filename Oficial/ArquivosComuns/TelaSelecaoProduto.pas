unit TelaSelecaoProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, StdCtrls, Mask, DBCtrls, DB, Grids,
  DBGrids, ConerBtn;

type
  TFormTelaSelecaoProduto = class(TForm)
    ScrollBoxFundo: TScrollBox;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelCentral: TPanel;
    DBGridProduto: TDBGrid;
    dsSQLProduto: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Panel2: TPanel;
    btOk: TConerBtn;
    ConerBtn2: TConerBtn;
    procedure DBGridProdutoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaSelecaoProduto: TFormTelaSelecaoProduto;

implementation

{$R *.dfm}

procedure TFormTelaSelecaoProduto.DBGridProdutoDblClick(
  Sender: TObject);
begin
   btOk.Click;
end;

end.
