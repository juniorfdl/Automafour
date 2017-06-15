unit RelatorioItensPedidoVenda;

interface
                                                     
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, ComCtrls,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, UnitLibrary,
  UCrpe32, Grids, DBGrids, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioItensPedidoVenda = class(TFormRelatorioTEMPLATE)
    SQLPedidoVendaItem: TRxQuery;
    SQLPedidoVendaItemPRODICOD: TIntegerField;
    SQLPedidoVendaItemPRODA60DESCR: TStringField;
    SQLPedidoVendaItemGRUPICOD: TIntegerField;
    SQLPedidoVendaItemSUBGICOD: TIntegerField;
    SQLPedidoVendaItemVARIICOD: TIntegerField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaGRUPICOD: TIntegerField;
    TblTemporariaSUBGICOD: TIntegerField;
    TblTemporariaVARIICOD: TIntegerField;
    SQLVariacao: TRxQuery;
    SQLGrupo: TRxQuery;
    SQLSubGrupo: TRxQuery;
    DSSQLGrupo: TDataSource;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    DSSQLSubGrupo: TDataSource;
    SQLSubGrupoGRUPICOD: TIntegerField;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    SQLVariacaoGRUPICOD: TIntegerField;
    SQLVariacaoSUBGICOD: TIntegerField;
    SQLVariacaoVARIICOD: TIntegerField;
    SQLVariacaoVARIA60DESCR: TStringField;
    GroupBox2: TGroupBox;
    ComboSubGrupo: TRxDBLookupCombo;
    ComboVariacao: TRxDBLookupCombo;
    ComboGrupo: TRxDBLookupCombo;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DSSQLVariacao: TDataSource;
    RadioData: TRadioGroup;
    RadioOrder: TRadioGroup;
    SQLPedidoVendaItemQtde: TFloatField;
    Report: TCrpe;
    TblTemporariaQtde: TFloatField;
    SQLPedidoVendaItemGrupoLookup: TStringField;
    SQLPedidoVendaItemSubGrupoLookup: TStringField;
    SQLPedidoVendaItemVariacaoLookup: TStringField;
    TblTemporariaGrupoLookup: TStringField;
    TblTemporariaSubGrupoLookup: TStringField;
    TblTemporariaVariacaoLookup: TStringField;
    SQLSubGrupoLookup: TRxQuery;
    SQLGrupoLookup: TRxQuery;
    SQLVariacaoLookup: TRxQuery;
    SQLGrupoLookupGRUPICOD: TIntegerField;
    SQLGrupoLookupGRUPA60DESCR: TStringField;
    SQLGrupoLookupPENDENTE: TStringField;
    SQLGrupoLookupREGISTRO: TDateTimeField;
    SQLSubGrupoLookupGRUPICOD: TIntegerField;
    SQLSubGrupoLookupSUBGICOD: TIntegerField;
    SQLSubGrupoLookupSUBGA60DESCR: TStringField;
    SQLSubGrupoLookupPENDENTE: TStringField;
    SQLSubGrupoLookupREGISTRO: TDateTimeField;
    SQLVariacaoLookupGRUPICOD: TIntegerField;
    SQLVariacaoLookupSUBGICOD: TIntegerField;
    SQLVariacaoLookupVARIICOD: TIntegerField;
    SQLVariacaoLookupVARIA60DESCR: TStringField;
    SQLVariacaoLookupPENDENTE: TStringField;
    SQLVariacaoLookupREGISTRO: TDateTimeField;
    TblTemporariaCorLookup: TStringField;
    TblProduto: TTable;
    TblTemporariaAgrupGrade: TIntegerField;
    TblTemporariaReferencia: TStringField;
    RadioStatus: TRadioGroup;
    RadioTipo: TRadioGroup;
    TblTemporariaPRODN3VLRCOMPRA: TFloatField;
    TblTemporariaTamanhoLookup: TStringField;
    CheckListagem: TCheckBox;
    SQLPedidoVendaItemVlrTotalitem: TFloatField;
    TblTemporariaVlrTotalitem: TFloatField;
    ComboProduto: TRxDBLookupCombo;
    Label8: TLabel;
    DSSQLProduto: TDataSource;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    Label9: TLabel;
    ComboCliente: TRxDBLookupCombo;
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioItensPedidoVenda: TFormRelatorioItensPedidoVenda;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormRelatorioItensPedidoVenda.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLGrupo.Active    then SQLGrupo.Open;
  if not SQLSubGrupo.Active then SQLSubGrupo.Open;
  if not SQLVariacao.Active then SQLVariacao.Open;
  if not SQLProduto.Active  then SQLProduto.Open;
  if not SQLCliente.Active  then SQLCliente.Open;
end;

procedure TFormRelatorioItensPedidoVenda.ExecutarBtnClick(
  Sender: TObject);
var
 I : Integer;  
begin
  inherited;
//  if CheckGrade.Checked then
  //  CheckListagem.Checked;
  SQLPedidoVendaItem.Close;

  SQLPedidoVendaItem.MacrobyName('Empresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'PEDIDOVENDA','') ;

  Case RadioData.ItemIndex of
    0 : begin
          SQLPedidoVendaItem.MacroByName('CampoData').Value   := 'PedidoVenda.PDVDDEMISSAO';
        end;
    1 : begin
          SQLPedidoVendaItem.MacroByName('CampoData').Value := 'PedidoVenda.PDVDDENTREGA';
        end;
  end;

  SQLPedidoVendaItem.MacroByName('DataInicial').Value := ' "' + FormatDateTime('mm/dd/yyyy',De.Date) + '" ';
  SQLPedidoVendaItem.MacroByName('DataFinal').Value := ' "' + FormatDateTime('mm/dd/yyyy',Ate.Date) + '" ';

  if (ComboGrupo.KeyValue <> null) and (ComboGrupo.KeyValue > 0) then
    SQLPedidoVendaItem.MacroByName('Grupo').Value := 'Produto.GRUPICOD = ' + IntToStr(ComboGrupo.KeyValue)
  else
    SQLPedidoVendaItem.MacroByName('Grupo').Value := '0=0';

  if (ComboSubGrupo.KeyValue <> null) and (ComboSubGrupo.KeyValue > 0) then
    SQLPedidoVendaItem.MacroByName('SubGrupo').Value := 'Produto.SUBGICOD = ' + IntToStr(ComboSubGrupo.KeyValue)
  else
    SQLPedidoVendaItem.MacroByName('SubGrupo').Value := '0=0';

  if (ComboVariacao.KeyValue <> null) and (ComboVariacao.KeyValue > 0) then
    SQLPedidoVendaItem.MacroByName('Variacao').Value := 'Produto.VARIICOD = ' + IntToStr(ComboVariacao.KeyValue)
  else
    SQLPedidoVendaItem.MacroByName('Variacao').Value := '0=0';

  if (ComboProduto.KeyValue <> null) and (ComboProduto.KeyValue > 0) then
    SQLPedidoVendaItem.MacroByName('MProduto').Value := 'PedidoVendaItem.PRODICOD = ' + IntToStr(ComboProduto.KeyValue)
  else
    SQLPedidoVendaItem.MacroByName('MProduto').Value := '0=0';

  if (ComboCliente.KeyValue <> null) and (ComboCliente.KeyValue > 0) then
    SQLPedidoVendaItem.MacroByName('MCliente').Value := 'PedidoVenda.CLIEA13ID = "' + ComboCliente.Value +'"'
  else
    SQLPedidoVendaItem.MacroByName('MCliente').Value := '0=0';

  Case RadioOrder.ItemIndex of
    0 : begin
          SQLPedidoVendaItem.MacroByName('Ordem').Value  := 'ORDER BY PedidoVendaItem.PRODICOD';
        end;
    1 : begin
          SQLPedidoVendaItem.MacroByName('Ordem').Value  := 'ORDER BY Produto.PRODA60DESCR';
        end;
  end;
  Case RadioStatus.ItemIndex of
    0 : SQLPedidoVendaItem.MacroByName('Status').Value := 'PedidoVenda.PDVDCSTATUS = "A"';
    1 : SQLPedidoVendaItem.MacroByName('Status').Value := 'PedidoVenda.PDVDCSTATUS = "E"';
    2 : SQLPedidoVendaItem.MacroByName('Status').Value := 'PedidoVenda.PDVDCSTATUS = "C"';
    3 : SQLPedidoVendaItem.MacroByName('Status').Value := 'PedidoVenda.PDVDCSTATUS = "F"';
  end;
  Case RadioTipo.ItemIndex of
    0 : begin
          SQLPedidoVendaItem.MacroByName('Tipo').Value := 'PedidoVenda.PDVDCTIPO = "O"';
        end;
    1 : begin
          SQLPedidoVendaItem.MacroByName('Tipo').Value := 'PedidoVenda.PDVDCTIPO = "P"';
        end;
  end;


  if not SQLGrupoLookup.Active then SQLGrupo.Open;
  if not SQLSubGrupoLookup.Active then SQLSubGrupo.Open;
  if not SQLVariacaoLookup.Active then SQLVariacao.Open;
  if not TblProduto.Active then TblProduto.Open;

  SQLPedidoVendaItem.Open;
//  BatchExec(SQLPedidoVendaItem,TblTemporaria);

   if not TblTemporaria.Active then
     TblTemporaria.Open;

    SQLPedidoVendaItem.First;
    while not SQLPedidoVendaItem.Eof do
      begin
        TblTemporaria.Append;
        for i := 0 to SQLPedidoVendaItem.FieldCount-1 do
          begin
            if (SQLPedidoVendaItem.Fields[i].AsString <> '') then
              TblTemporaria.FieldByName(SQLPedidoVendaItem.Fields[i].FieldName).AsVariant := SQLPedidoVendaItem.Fields[i].AsVariant;
          end;
        TblTemporariaCorLookup.AsString      := SQLLocate('COR','CORICOD','CORA30DESCR',TblProduto.FindField('CORICOD').AsString);
        if (TblProduto.FindField('GRADICOD').AsVariant <> NULL) and (TblProduto.FindField('GRTMICOD').AsVariant <> NULL) then
        TblTemporariaCorLookup.AsString      := TblTemporariaCorLookup.AsString + ' / ' +
                                                RetornaTamanhoProduto(TblProduto.FindField('GRADICOD').AsString,
                                                TblProduto.FindField('GRTMICOD').AsString);

        TblTemporariaReferencia.AsString     := TblProduto.FindField('PRODA60REFER').AsString;
        TblTemporariaPRODN3VLRCOMPRA.AsFloat := TblProduto.FindField('PRODN3VLRCOMPRA').AsFloat;
        TblTemporaria.Post;
        SQLPedidoVendaItem.Next;
      end;

   TblTemporaria.First;
   Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem Itens Pedidos de Venda.rpt';

   if CheckListagem.Checked then
     begin
       Report.SectionFormat.Retrieve;
       Report.SectionFormat.Section := 'GH1';
       Report.SectionFormat.Suppress:= CTrue;
       Report.SectionFormat.Section := 'GH2';
       Report.SectionFormat.Suppress:= CTrue;
       Report.SectionFormat.Section := 'GH3';
       Report.SectionFormat.Suppress:= CTrue;
       Report.SectionFormat.Section := 'GH4';
       Report.SectionFormat.Suppress:= CTrue;
       Report.SectionFormat.Section := 'GF1';
       Report.SectionFormat.Suppress:= CTrue;
       Report.SectionFormat.Send;
     end
   else
     begin
       Report.SectionFormat.Retrieve;
       Report.SectionFormat.Section := 'GH1';
       Report.SectionFormat.Suppress:= cFalse;
       Report.SectionFormat.Section := 'GH2';
       Report.SectionFormat.Suppress:= cFalse;
       Report.SectionFormat.Section := 'GH3';
       Report.SectionFormat.Suppress:= cFalse;
       Report.SectionFormat.Section := 'GH4';
       Report.SectionFormat.Suppress:= cFalse;
       Report.SectionFormat.Section := 'GF1';
       Report.SectionFormat.Suppress:= cFalse;
       Report.SectionFormat.Send;
     end;

{   if CheckGrade.Checked then
     begin
       Report.SectionFormat.Retrieve;
       Report.SectionFormat.Section := 'GH1';
       Report.SectionFormat.Suppress:= CTrue;
       Report.SectionFormat.Section := 'GH2';
       Report.SectionFormat.Suppress:= CTrue;
       Report.SectionFormat.Section := 'GH3';
       Report.SectionFormat.Suppress:= CTrue;
       Report.SectionFormat.Section := 'GH4';
       Report.SectionFormat.Suppress:= CTrue;
       Report.SectionFormat.Section := 'GF1';
       Report.SectionFormat.Suppress:= CTrue;
       Report.SectionFormat.Send;
       Report.SectionFont.Retrieve;
       Report.SectionFont.Section := 'D';
       Report.SectionFont.Size := 14;
       Report.SectionFont.Send;
     end
   else
     begin
       if not CheckListagem.Checked then
         begin
           Report.SectionFormat.Retrieve;
           Report.SectionFormat.Section := 'GH1';
           Report.SectionFormat.Suppress:= cFalse;
           Report.SectionFormat.Section := 'GH2';
           Report.SectionFormat.Suppress:= cFalse;
           Report.SectionFormat.Section := 'GH3';
           Report.SectionFormat.Suppress:= cFalse;
           Report.SectionFormat.Section := 'GH4';
           Report.SectionFormat.Suppress:= CFalse;
           Report.SectionFormat.Section := 'GF1';
           Report.SectionFormat.Suppress:= cFalse;
           Report.SectionFormat.Send;
           Report.SectionFont.Retrieve;
           Report.SectionFont.Section := 'D';
           Report.SectionFont.Size := 8;
           Report.SectionFont.Send;
         end;
     end;}

   Report.Formulas.Retrieve;
   Report.Formulas.Name := 'Empresa';
   Report.Formulas.Formula.Text := '"' + ComboEmpresa.Text + '"';
   Report.Formulas.Name := 'Emissao';
   Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss',Now) + '"';
   Report.Formulas.Name := 'PeriodoEmissao';
   Report.Formulas.Formula.Text := '"' + De.Text + ' até ' + Ate.Text + '"';
   Report.Formulas.Name := 'Data';
   case RadioData.ItemIndex of
     0 : Report.Formulas.Formula.Text := '"' + 'Data de Emissão' + '"';
     1 : Report.Formulas.Formula.Text := '"' + 'Data de Entrega' + '"';
   end;
   Report.Formulas.Name := 'Ordem';
   case RadioOrder.ItemIndex of
     0 : Report.Formulas.Formula.Text := '"' + 'Código' + '"';
     1 : Report.Formulas.Formula.Text := '"' + 'Descrição' + '"';
   end;
   if (ComboGrupo.KeyValue <> null) and (ComboGrupo.KeyValue > 0) then
     begin
       Report.Formulas.Name := 'Grupo';
       Report.Formulas.Formula.Text := '"' + ComboGrupo.DisplayValue + '"';
     end;
   if (ComboSubGrupo.KeyValue <> null) and (ComboSubGrupo.KeyValue > 0) then
     begin
       Report.Formulas.Name := 'Subgrupo';
       Report.Formulas.Formula.Text := '"' + ComboSubGrupo.DisplayValue + '"';
     end;
   if (ComboVariacao.KeyValue <> null) and (ComboVariacao.KeyValue > 0) then
     begin
       Report.Formulas.Name := 'Variacao';
       Report.Formulas.Formula.Text := '"' + ComboVariacao.DisplayValue + '"';
     end;

   Report.Formulas.Send;

   Report.ReportTitle       := 'Listagem de Itens dos Pedidos de Venda' ;
   Report.WindowStyle.Title := 'Listagem de Itens dos Pedidos de Venda' ;
   Report.Execute;
end;

end.
