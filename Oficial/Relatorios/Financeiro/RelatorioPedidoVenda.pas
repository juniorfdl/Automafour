unit RelatorioPedidoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, UnitLibrary,
  UCrpe32, Grids, DBGrids, RXDBCtrl, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormRelatorioPedidoVenda = class(TFormRelatorioTEMPLATE)
    SQLPedidoVenda: TRxQuery;
    RadioData: TRadioGroup;
    RadioTipo: TRadioGroup;
    RadioStatus: TRadioGroup;
    GroupVendedor: TGroupBox;
    ComboVendedor: TRxDBLookupCombo;
    DSSQLVendedor: TDataSource;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    GroupCliente: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
    SQLPedidoVendaPDVDA13ID: TStringField;
    SQLPedidoVendaEMPRICOD: TIntegerField;
    SQLPedidoVendaPDVDICOD: TIntegerField;
    SQLPedidoVendaVENDICOD: TIntegerField;
    SQLPedidoVendaCLIEA13ID: TStringField;
    SQLPedidoVendaTRANICOD: TIntegerField;
    SQLPedidoVendaPLRCICOD: TIntegerField;
    SQLPedidoVendaPDVDDEMISSAO: TDateTimeField;
    SQLPedidoVendaPDVDN2VLRFRETE: TFloatField;
    SQLPedidoVendaPDVDA30NROPEDCOMP: TStringField;
    SQLPedidoVendaPDVDA30COMPRADOR: TStringField;
    SQLPedidoVendaPDVDCTIPO: TStringField;
    SQLPedidoVendaPDVDCSTATUS: TStringField;
    SQLPedidoVendaPDVDN2VLRDESC: TFloatField;
    SQLPedidoVendaPDVDN2TOTPROD: TFloatField;
    SQLPedidoVendaPDVDN2TOTPED: TFloatField;
    SQLPedidoVendaPDVDTOBS: TStringField;
    SQLPedidoVendaPDVDN2VLRDESCPROM: TFloatField;
    SQLPedidoVendaPDVDCTIPOFRETE: TStringField;
    SQLPedidoVendaPDVDDENTREGA: TDateTimeField;
    SQLPedidoVendaPDVDINROTALAO: TIntegerField;
    SQLTransportadora: TRxQuery;
    SQLTransportadoraTRANICOD: TIntegerField;
    SQLTransportadoraTRANA60RAZAOSOC: TStringField;
    SQLPlanoRecbto: TRxQuery;
    SQLPlanoRecbtoPLRCICOD: TIntegerField;
    SQLPlanoRecbtoPLRCA60DESCR: TStringField;
    SQLPedidoVendaVendedorLookup: TStringField;
    SQLPedidoVendaTransportadoraLookup: TStringField;
    SQLPedidoVendaPlanoRecbtoLookup: TStringField;
    RadioOrder: TRadioGroup;
    Report: TCrpe;
    SQLPedidoVendaTPDCA60DESCR: TStringField;
    SQLClienteCLIEA13ID: TStringField;
    GroupSerie: TGroupBox;
    ComboSerie: TRxDBLookupCombo;
    SQLSerie: TRxQuery;
    DSSQLSerie: TDataSource;
    SQLSerieSERIA5COD: TStringField;
    SQLPedidoVendaSERIA5COD: TStringField;
    GroupRota: TGroupBox;
    ComboRota: TRxDBLookupCombo;
    DSSQLRota: TDataSource;
    SQLRota: TRxQuery;
    SQLRotaROTAICOD: TIntegerField;
    SQLRotaROTAA60NOME: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLPedidoVendaCLIEA60RAZAOSOC: TStringField;
    CKImpNroTalao: TCheckBox;
    SQLPedidoVendaPDVDN2VLRMONTAGEM: TFloatField;
    SQLPedidoVendaPDVDN2VLRIMPERMEAB: TFloatField;
    SQLPedidoVendaPESOTOTAL: TFloatField;
    TblTemporariaPDVDA13ID: TStringField;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaPDVDICOD: TIntegerField;
    TblTemporariaVENDICOD: TIntegerField;
    TblTemporariaVendedorLookup: TStringField;
    TblTemporariaCLIEA13ID: TStringField;
    TblTemporariaCLIEA60RAZAOSOC: TStringField;
    TblTemporariaTRANICOD: TIntegerField;
    TblTemporariaTransportadoraLookup: TStringField;
    TblTemporariaPLRCICOD: TIntegerField;
    TblTemporariaPlanoRecbtoLookup: TStringField;
    TblTemporariaPDVDDEMISSAO: TDateTimeField;
    TblTemporariaPDVDN2VLRFRETE: TBCDField;
    TblTemporariaPDVDA30NROPEDCOMP: TStringField;
    TblTemporariaPDVDA30COMPRADOR: TStringField;
    TblTemporariaPDVDCTIPO: TStringField;
    TblTemporariaPDVDCSTATUS: TStringField;
    TblTemporariaPDVDN2VLRDESC: TBCDField;
    TblTemporariaPDVDN2TOTPROD: TBCDField;
    TblTemporariaPDVDN2TOTPED: TBCDField;
    TblTemporariaPDVDTOBS: TStringField;
    TblTemporariaPDVDN2VLRDESCPROM: TBCDField;
    TblTemporariaPDVDCTIPOFRETE: TStringField;
    TblTemporariaPDVDDENTREGA: TDateTimeField;
    TblTemporariaPDVDINROTALAO: TIntegerField;
    TblTemporariaTPDCA60DESCR: TStringField;
    TblTemporariaSERIA5COD: TStringField;
    TblTemporariaPDVDN2VLRMONTAGEM: TBCDField;
    TblTemporariaPDVDN2VLRIMPERMEAB: TBCDField;
    TblTemporariaPESOTOTAL: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioPedidoVenda: TFormRelatorioPedidoVenda;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioPedidoVenda.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLCliente.Active then SQLCliente.Open;
  if not SQLVendedor.Active then SQLVendedor.Open;
  if not SQLSerie.Active then SQLSerie.Open;
  if not SQLRota.Active then SQLRota.Open;  
end;

procedure TFormRelatorioPedidoVenda.ExecutarBtnClick(Sender: TObject);
var
 I : Integer;
begin
  inherited;
  De.ValidateEdit;
  Ate.ValidateEdit;

  if not SQLTransportadora.Active then SQLTransportadora.Open;
  if not SQLPlanoRecbto.Active then SQLPlanoRecbto.Open;

  SqlPedidoVenda.Close;

  SQLPedidoVenda.MacrobyName('Empresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'PEDIDOVENDA','EMPRICOD') ;

  SQLPedidoVenda.MacroByName('DataInicial').Value := ' "' + FormatDateTime('mm/dd/yyyy',De.Date) + '" ';
  SQLPedidoVenda.MacroByName('DataFinal').Value   := ' "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '" ';

  Case RadioData.ItemIndex of
    0 : SQLPedidoVenda.MacroByName('CampoData').Value := 'PedidoVenda.PDVDDEMISSAO';
    1 : SQLPedidoVenda.MacroByName('CampoData').Value := 'PedidoVenda.PDVDDENTREGA';
  end;
  Case RadioTipo.ItemIndex of
    0 : SQLPedidoVenda.MacroByName('TipoPedido').Value := 'PedidoVenda.PDVDCTIPO = "P"';
    1 : SQLPedidoVenda.MacroByName('TipoPedido').Value := 'PedidoVenda.PDVDCTIPO = "O"';
  end;
  Case RadioStatus.ItemIndex of
   -1 : SQLPedidoVenda.MacroByName('StatusPedido').Value := '0=0';
    0 : SQLPedidoVenda.MacroByName('StatusPedido').Value := 'PedidoVenda.PDVDCSTATUS = "A"';
    1 : SQLPedidoVenda.MacroByName('StatusPedido').Value := 'PedidoVenda.PDVDCSTATUS = "E"';
    2 : SQLPedidoVenda.MacroByName('StatusPedido').Value := 'PedidoVenda.PDVDCSTATUS = "C"';
    3 : SQLPedidoVenda.MacroByName('StatusPedido').Value := 'PedidoVenda.PDVDCSTATUS = "F"';
  end;

  if (ComboVendedor.KeyValue <> null) and (ComboVendedor.KeyValue > 0) then
    SQLPedidoVenda.MacroByName('Vendedor').Value := 'PedidoVenda.VENDICOD = ' + IntToStr(ComboVendedor.KeyValue)
  else
    SQLPedidoVenda.MacroByName('Vendedor').Value := '0=0';

  if ComboRota.KeyValue <> null then
    SQLPedidoVenda.MacrobyName('Rota').Value := 'PedidoVenda.ROTAICOD =' + ComboRota.KeyValue
  else
    SQLPedidoVenda.MacrobyName('Rota').Value := '0=0';

  if (ComboCliente.KeyValue <> null) and (ComboCliente.KeyValue > 0) then
    SQLPedidoVenda.MacroByName('Cliente').Value := 'PedidoVenda.CLIEA13ID = ' + ComboCliente.KeyValue
  else
    SQLPedidoVenda.MacroByName('Cliente').Value := '0=0';

  if ComboSerie.Value <> '' then
    SQLPedidoVenda.MacroByName('Serie').Value := 'PedidoVenda.SERIA5COD = ' + '"'+ComboSerie.Value+'"'
  else
    SQLPedidoVenda.MacroByName('Serie').Value := '0=0';

  Case RadioOrder.ItemIndex of
    0 : SQLPedidoVenda.MacroByName('Ordem').Value := 'PedidoVenda.PDVDA13ID';
    1 : SQLPedidoVenda.MacroByName('Ordem').Value := 'Cliente.CLIEA60RAZAOSOC';
    2 : SQLPedidoVenda.MacroByName('Ordem').Value := 'PedidoVenda.PDVDDEMISSAO';
    3 : SQLPedidoVenda.MacroByName('Ordem').Value := 'PedidoVenda.PDVDDENTREGA';
    4 : SQLPedidoVenda.MacroByName('Ordem').Value := 'Cliente.CLIEA60CIDRES';
  end;

   SQLPedidoVenda.Open;

   if not TblTemporaria.Active then
     TblTemporaria.Open;

    SQLPedidoVenda.First ;
    while not SQLPedidoVenda.Eof do
      begin
        TblTemporaria.Append ;
        for i := 0 to SQLPedidoVenda.FieldCount-1 do
          if SQLPedidoVenda.Fields[i].AsString <> '' then
            TblTemporaria.FieldByName(SQLPedidoVenda.Fields[i].FieldName).AsVariant := SQLPedidoVenda.Fields[i].AsVariant ;
        if (CKImpNroTalao.Checked) and (SQLPedidoVenda.FieldByName('PDVDINROTALAO').AsString <> '') then
          TblTemporaria.FieldByName('PDVDA13ID').AsString := SQLPedidoVenda.FieldByName('PDVDINROTALAO').AsString;
        TblTemporaria.Post ;
        SQLPedidoVenda.Next ;
      end ;
   TblTemporaria.First ;
   if FileExists('LaTorre.txt') then
     Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem Pedidos de Venda LaTorre.rpt'
   else
     Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem Pedidos de Venda.rpt' ;

   Report.Formulas.Retrieve;
   Report.Formulas.Name := 'Emissao';
   Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss',Now) + '"';
   Report.Formulas.Name := 'PeriodoEmissao';
   Report.Formulas.Formula.Text := '"' + De.Text + ' até ' + Ate.Text + '"';
   Report.Formulas.Name := 'Data';
   case RadioData.ItemIndex of
     0 : Report.Formulas.Formula.Text := '"' + 'Data de Emissão' + '"';
     1 : Report.Formulas.Formula.Text := '"' + 'Data de Entrega' + '"';
   end;
   Report.Formulas.Name := 'Status';
   case RadioStatus.ItemIndex of
     0 : Report.Formulas.Formula.Text := '"' + 'Aberto' + '"';
     1 : Report.Formulas.Formula.Text := '"' + 'Encerrado' + '"';
     2 : Report.Formulas.Formula.Text := '"' + 'Cancelado' + '"';
   end;
   Report.Formulas.Name := 'Tipo';
   case RadioTipo.ItemIndex of
     0 : Report.Formulas.Formula.Text := '"' + 'Pedido' + '"';
     1 : Report.Formulas.Formula.Text := '"' + 'Orçamento' + '"';
   end;
   Report.Formulas.Name := 'Ordem';
   case RadioOrder.ItemIndex of
     0 : Report.Formulas.Formula.Text := '"' + 'Cliente' + '"';
     1 : Report.Formulas.Formula.Text := '"' + 'Data de Emissão' + '"';
     2 : Report.Formulas.Formula.Text := '"' + 'Data de Entrega' + '"';
   end;
   if (ComboVendedor.KeyValue <> null) and (ComboVendedor.KeyValue > 0) then
     begin
       Report.Formulas.Name := 'Vendedor';
       Report.Formulas.Formula.Text := '"' + ComboVendedor.DisplayValue + '"';
     end;
   if (ComboCliente.KeyValue <> null) and (ComboCliente.KeyValue > 0) then
     begin
       Report.Formulas.Name := 'Cliente';
       Report.Formulas.Formula.Text := '"' + ComboCliente.DisplayValue + '"';
     end;

   Report.Formulas.Send;
   Report.ReportTitle       := 'Listagem de Pedidos de Venda' ;
   Report.WindowStyle.Title := 'Listagem de Pedidos de Venda' ;
   Report.Execute;
end;

end.
