unit TelaComparaPedidoNota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, Buttons, StdCtrls, ExtCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  DBClient;

type
  TFormTelaComparaPedidoNota = class(TFormTelaGeralTEMPLATE)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdsDados: TClientDataSet;
    dsDados: TDataSource;
    cdsDadosCodigoProduto: TIntegerField;
    cdsDadosQtdePedido: TFloatField;
    cdsDadosQtdeNota: TFloatField;
    cdsDadosValorUniPedido: TFloatField;
    cdsDadosValorUnitNota: TFloatField;
    cdsDadosValorTotalItemPedido: TFloatField;
    cdsDadosValorTotalItemNota: TFloatField;
    cdsDadosNomeProduto: TStringField;
    cxGrid1DBTableView1CodigoProduto: TcxGridDBColumn;
    cxGrid1DBTableView1NomeProduto: TcxGridDBColumn;
    cxGrid1DBTableView1QtdePedido: TcxGridDBColumn;
    cxGrid1DBTableView1QtdeNota: TcxGridDBColumn;
    cxGrid1DBTableView1ValorUniPedido: TcxGridDBColumn;
    cxGrid1DBTableView1ValorUnitNota: TcxGridDBColumn;
    cxGrid1DBTableView1ValorTotalItemPedido: TcxGridDBColumn;
    cxGrid1DBTableView1ValorTotalItemNota: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaComparaPedidoNota: TFormTelaComparaPedidoNota;

implementation

{$R *.dfm}

end.
