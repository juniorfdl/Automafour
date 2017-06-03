unit TelaConsultaItensCompradosCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, RxLookup, DB, DBTables, RxQuery,
  StdCtrls, Buttons, jpeg, ExtCtrls, Grids, DBGrids, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaItensCompradosCliente = class(TFormTelaGeralModalTemplate)
    GroupBox1: TGroupBox;
    SQLCliente: TRxQuery;
    DSSQLCliente: TDataSource;
    SQLProduto: TRxQuery;
    DSSQLProduto: TDataSource;
    ComboCliente: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    ComboProduto: TRxDBLookupCombo;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLCupom: TRxQuery;
    SQLNotaFiscal: TRxQuery;
    DSSQLCupom: TDataSource;
    DSSQLNotaFiscal: TDataSource;
    SQLPedidoVenda: TRxQuery;
    DSSQLPedidoVenda: TDataSource;
    SQLOrcamento: TRxQuery;
    DSSQLOrcamento: TDataSource;
    SQLCupomCUPOA13ID: TStringField;
    SQLCupomCPITIPOS: TIntegerField;
    SQLCupomPRODICOD: TIntegerField;
    SQLCupomCPITCSTATUS: TStringField;
    SQLCupomCPITN3QTD: TFloatField;
    SQLCupomCPITN3QTDTROCA: TFloatField;
    SQLCupomCPITN3VLRUNIT: TFloatField;
    SQLCupomCPITN3VLRCUSTUNIT: TFloatField;
    SQLCupomCPITN2DESC: TFloatField;
    SQLCupomCPITN3VLRUNITLUCR: TFloatField;
    SQLCupomCOITN2ICMSALIQ: TFloatField;
    SQLCupomVENDICOD: TIntegerField;
    SQLCupomPENDENTE: TStringField;
    SQLCupomREGISTRO: TDateTimeField;
    SQLCupomCPITN2VLRDESCSOBTOT: TFloatField;
    SQLCupomCPITN2BASEICMS: TFloatField;
    SQLCupomCPITN2VLRICMS: TFloatField;
    SQLNotaFiscalNOFIA13ID: TStringField;
    SQLNotaFiscalNFITIITEM: TIntegerField;
    SQLNotaFiscalPRODICOD: TIntegerField;
    SQLNotaFiscalNFITN3QUANT: TFloatField;
    SQLNotaFiscalNFITN2VLRUNIT: TFloatField;
    SQLNotaFiscalNFITN2PERCDESC: TFloatField;
    SQLNotaFiscalNFITN2VLRDESC: TFloatField;
    SQLNotaFiscalNFITN2PERCICMS: TFloatField;
    SQLNotaFiscalNFITN2BASEICMS: TFloatField;
    SQLNotaFiscalNFITN2VLRICMS: TFloatField;
    SQLNotaFiscalNFITN2PERCSUBS: TFloatField;
    SQLNotaFiscalNFITN2BASESUBS: TFloatField;
    SQLNotaFiscalNFITN2VLRSUBS: TFloatField;
    SQLNotaFiscalNFITN2PERCIPI: TFloatField;
    SQLNotaFiscalNFITN2VLRIPI: TFloatField;
    SQLNotaFiscalNFITN2PERCISSQN: TFloatField;
    SQLNotaFiscalNFITN2VLRISSQN: TFloatField;
    SQLNotaFiscalNFITN2VLRFRETE: TFloatField;
    SQLNotaFiscalNFITN2VLRLUCRO: TFloatField;
    SQLNotaFiscalPENDENTE: TStringField;
    SQLNotaFiscalREGISTRO: TDateTimeField;
    SQLNotaFiscalNFITN2PERCREDUCAO: TFloatField;
    SQLNotaFiscalNFITN3TOTVEND: TFloatField;
    SQLNotaFiscalPDVDA13ID: TStringField;
    SQLNotaFiscalPVITIITEM: TIntegerField;
    SQLNotaFiscalNFITN3QUANTVEND: TFloatField;
    SQLNotaFiscalNFITN2PERCCOMIS: TFloatField;
    SQLNotaFiscalCPITICPOS: TIntegerField;
    SQLNotaFiscalCUPOA13ID: TStringField;
    SQLNotaFiscalLOTEA30NRO: TStringField;
    SQLNotaFiscalNFITA254OBS: TStringField;
    SQLPedidoVendaPDVDA13ID: TStringField;
    SQLPedidoVendaPVITIITEM: TIntegerField;
    SQLPedidoVendaPRODICOD: TIntegerField;
    SQLPedidoVendaPVITN3QUANT: TFloatField;
    SQLPedidoVendaPVITN2VLRUNIT: TFloatField;
    SQLPedidoVendaPVITN2PERCDESC: TFloatField;
    SQLPedidoVendaPVITN2VLRDESC: TFloatField;
    SQLPedidoVendaREGISTRO: TDateTimeField;
    SQLPedidoVendaPENDENTE: TStringField;
    SQLPedidoVendaPVITN3QUANTVEND: TFloatField;
    SQLPedidoVendaPDVDA60OBS: TStringField;
    SQLPedidoVendaPVITN2PERCCOMIS: TFloatField;
    SQLPedidoVendaPDVDA255OBS1: TStringField;
    SQLPedidoVendaLOTEA30NRO: TStringField;
    SQLOrcamentoPDVDA13ID: TStringField;
    SQLOrcamentoPVITIITEM: TIntegerField;
    SQLOrcamentoPRODICOD: TIntegerField;
    SQLOrcamentoPVITN3QUANT: TFloatField;
    SQLOrcamentoPVITN2VLRUNIT: TFloatField;
    SQLOrcamentoPVITN2PERCDESC: TFloatField;
    SQLOrcamentoPVITN2VLRDESC: TFloatField;
    SQLOrcamentoREGISTRO: TDateTimeField;
    SQLOrcamentoPENDENTE: TStringField;
    SQLOrcamentoPVITN3QUANTVEND: TFloatField;
    SQLOrcamentoPDVDA60OBS: TStringField;
    SQLOrcamentoPVITN2PERCCOMIS: TFloatField;
    SQLOrcamentoPDVDA255OBS1: TStringField;
    SQLOrcamentoLOTEA30NRO: TStringField;
    SQLOrcamentoPDVDA13ID_1: TStringField;
    BtnPesquisar: TSpeedButton;
    SQLCupomCUPOINRO: TIntegerField;
    SQLNotaFiscalNOFIINUMERO: TIntegerField;
    SQLPedidoVendaPDVDA13ID_1: TStringField;
    SQLCupomCUPODEMIS: TDateTimeField;
    SQLNotaFiscalNOFIDEMIS: TDateTimeField;
    SQLPedidoVendaPDVDDEMISSAO: TDateTimeField;
    SQLOrcamentoPDVDDEMISSAO: TDateTimeField;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    DBGridLista: TDBGrid;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    GroupBox4: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox5: TGroupBox;
    DBGrid3: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaItensCompradosCliente: TFormTelaConsultaItensCompradosCliente;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormTelaConsultaItensCompradosCliente.FormCreate(
  Sender: TObject);
begin
  inherited;
  SQLCliente.Open;
  SQLProduto.Open;
end;

procedure TFormTelaConsultaItensCompradosCliente.BtnPesquisarClick(
  Sender: TObject);
begin
  inherited;
  SQLCupom.Close;
  SQLNotaFiscal.Close;
  SQLPedidoVenda.Close;
  SQLOrcamento.Close;

  if ComboCliente.Value = '' then
    begin
      Informa('O cliente deve ser informado!');
      Abort;
    end;

  if ComboProduto.Value = '' then
    begin
      Informa('O produto deve ser informado!');
      Abort;
    end;

  SQLCupom.MacroByName('MFiltro').AsString       := 'cupomitem.PRODICOD       = ' + ComboProduto.Value + ' and cupom.CLIEA13ID       = "' + ComboCliente.Value + '"';
  SQLNotaFiscal.MacroByName('MFiltro').AsString  := 'notafiscalitem.PRODICOD  = ' + ComboProduto.Value + ' and notafiscal.CLIEA13ID  = "' + ComboCliente.Value + '"';
  SQLPedidoVenda.MacroByName('MFiltro').AsString := 'pedidovendaitem.PRODICOD = ' + ComboProduto.Value + ' and pedidovenda.CLIEA13ID = "' + ComboCliente.Value + '"';
  SQLOrcamento.MacroByName('MFiltro').AsString   := 'pedidovendaitem.PRODICOD = ' + ComboProduto.Value + ' and pedidovenda.CLIEA13ID = "' + ComboCliente.Value + '"';
  
  SQLCupom.Open;
  SQLNotaFiscal.Open;
  SQLPedidoVenda.Open;
  SQLOrcamento.Open;


end;

end.
