unit TelaConsultaItensCompradosCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, RxLookup, DB, DBTables, RxQuery,
  StdCtrls, Buttons, jpeg, ExtCtrls, Grids, DBGrids;

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
    SQLCupomCPITN3QTD: TBCDField;
    SQLCupomCPITN3QTDTROCA: TBCDField;
    SQLCupomCPITN3VLRUNIT: TBCDField;
    SQLCupomCPITN3VLRCUSTUNIT: TBCDField;
    SQLCupomCPITN2DESC: TBCDField;
    SQLCupomCPITN3VLRUNITLUCR: TBCDField;
    SQLCupomCOITN2ICMSALIQ: TBCDField;
    SQLCupomVENDICOD: TIntegerField;
    SQLCupomPENDENTE: TStringField;
    SQLCupomREGISTRO: TDateTimeField;
    SQLCupomCPITN2VLRDESCSOBTOT: TBCDField;
    SQLCupomCPITN2BASEICMS: TBCDField;
    SQLCupomCPITN2VLRICMS: TBCDField;
    SQLNotaFiscalNOFIA13ID: TStringField;
    SQLNotaFiscalNFITIITEM: TIntegerField;
    SQLNotaFiscalPRODICOD: TIntegerField;
    SQLNotaFiscalNFITN3QUANT: TBCDField;
    SQLNotaFiscalNFITN2VLRUNIT: TBCDField;
    SQLNotaFiscalNFITN2PERCDESC: TBCDField;
    SQLNotaFiscalNFITN2VLRDESC: TBCDField;
    SQLNotaFiscalNFITN2PERCICMS: TBCDField;
    SQLNotaFiscalNFITN2BASEICMS: TBCDField;
    SQLNotaFiscalNFITN2VLRICMS: TBCDField;
    SQLNotaFiscalNFITN2PERCSUBS: TBCDField;
    SQLNotaFiscalNFITN2BASESUBS: TBCDField;
    SQLNotaFiscalNFITN2VLRSUBS: TBCDField;
    SQLNotaFiscalNFITN2PERCIPI: TBCDField;
    SQLNotaFiscalNFITN2VLRIPI: TBCDField;
    SQLNotaFiscalNFITN2PERCISSQN: TBCDField;
    SQLNotaFiscalNFITN2VLRISSQN: TBCDField;
    SQLNotaFiscalNFITN2VLRFRETE: TBCDField;
    SQLNotaFiscalNFITN2VLRLUCRO: TBCDField;
    SQLNotaFiscalPENDENTE: TStringField;
    SQLNotaFiscalREGISTRO: TDateTimeField;
    SQLNotaFiscalNFITN2PERCREDUCAO: TBCDField;
    SQLNotaFiscalNFITN3TOTVEND: TBCDField;
    SQLNotaFiscalPDVDA13ID: TStringField;
    SQLNotaFiscalPVITIITEM: TIntegerField;
    SQLNotaFiscalNFITN3QUANTVEND: TBCDField;
    SQLNotaFiscalNFITN2PERCCOMIS: TBCDField;
    SQLNotaFiscalCPITICPOS: TIntegerField;
    SQLNotaFiscalCUPOA13ID: TStringField;
    SQLNotaFiscalLOTEA30NRO: TStringField;
    SQLNotaFiscalNFITA254OBS: TStringField;
    SQLPedidoVendaPDVDA13ID: TStringField;
    SQLPedidoVendaPVITIITEM: TIntegerField;
    SQLPedidoVendaPRODICOD: TIntegerField;
    SQLPedidoVendaPVITN3QUANT: TBCDField;
    SQLPedidoVendaPVITN2VLRUNIT: TBCDField;
    SQLPedidoVendaPVITN2PERCDESC: TBCDField;
    SQLPedidoVendaPVITN2VLRDESC: TBCDField;
    SQLPedidoVendaREGISTRO: TDateTimeField;
    SQLPedidoVendaPENDENTE: TStringField;
    SQLPedidoVendaPVITN3QUANTVEND: TBCDField;
    SQLPedidoVendaPDVDA60OBS: TStringField;
    SQLPedidoVendaPVITN2PERCCOMIS: TBCDField;
    SQLPedidoVendaPDVDA255OBS1: TStringField;
    SQLPedidoVendaLOTEA30NRO: TStringField;
    SQLOrcamentoPDVDA13ID: TStringField;
    SQLOrcamentoPVITIITEM: TIntegerField;
    SQLOrcamentoPRODICOD: TIntegerField;
    SQLOrcamentoPVITN3QUANT: TBCDField;
    SQLOrcamentoPVITN2VLRUNIT: TBCDField;
    SQLOrcamentoPVITN2PERCDESC: TBCDField;
    SQLOrcamentoPVITN2VLRDESC: TBCDField;
    SQLOrcamentoREGISTRO: TDateTimeField;
    SQLOrcamentoPENDENTE: TStringField;
    SQLOrcamentoPVITN3QUANTVEND: TBCDField;
    SQLOrcamentoPDVDA60OBS: TStringField;
    SQLOrcamentoPVITN2PERCCOMIS: TBCDField;
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
