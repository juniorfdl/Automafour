unit CadastroPedidoCompraItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTEMPLATE, Db, DBTables, RxQuery, Menus, StdCtrls, Mask, Grids,
  DBGrids, ComCtrls, ExtCtrls, RXCtrls, Buttons, jpeg, DBCtrls, DBActns,
  ActnList, ImgList, RxDBComb, ToolEdit, RXDBCtrl, EDBNum, FormResources, Variants, VarSys,
  CurrEdit, RxLookup, Serial, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroPedidoCompraItem = class(TFormCadastroTEMPLATE)
    SQLTemplatePDCPA13ID: TStringField;
    SQLTemplatePCITIPOS: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePCITN3QTDBONIF: TFloatField;
    SQLTemplatePCITN3CAPEMBAL: TFloatField;
    SQLTemplatePCITN3QTDEMBAL: TFloatField;
    SQLTemplatePCITN3QTDENTR: TFloatField;
    SQLTemplatePCITN3VLREMBAL: TFloatField;
    SQLTemplatePCITN3VLRUNIT: TFloatField;
    SQLTemplatePCITN3PERVIPI: TFloatField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePCITN3VLRICM: TFloatField;
    SQLTemplatePCITN3PERICM: TFloatField;
    SQLTemplatePCITN3VLRIPI: TFloatField;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit4: TEvDBNumEdit;
    DBEdit5: TEvDBNumEdit;
    DBEdit6: TEvDBNumEdit;
    DBEdit7: TEvDBNumEdit;
    DBEdit8: TEvDBNumEdit;
    DBEdit9: TEvDBNumEdit;
    DBEdit10: TEvDBNumEdit;
    DBEdit12: TEvDBNumEdit;
    DBEdit13: TEvDBNumEdit;
    DBEdit14: TEvDBNumEdit;
    SQLTemplateProdutoLookUp: TStringField;
    SQLTemplateGradeCodLookUp: TIntegerField;
    SQLTemplatePCITN3PERCDESC: TFloatField;
    SQLTemplatePCITN3VLRDESC: TFloatField;
    SQLTemplateAgrupGradeLookUp: TIntegerField;
    Label23: TLabel;
    EvDBNumEdit5: TEvDBNumEdit;
    SQLTemplateTotalItemCalc: TFloatField;
    LBCodPedido: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DbCodIntegrado: TDBEdit;
    DBDateEdit3: TDBDateEdit;
    RxDBComboBox1: TRxDBComboBox;
    EvDBNumEdit1: TEvDBNumEdit;
    EvDBNumEdit6: TEvDBNumEdit;
    Label25: TLabel;
    EvDBNumEdit7: TEvDBNumEdit;
    Label24: TLabel;
    SQLIcms: TRxQuery;
    SQLIcmsUF: TRxQuery;
    SQLTemplateReferenciaLookUp: TStringField;
    SQLProdutoFornecedor: TRxQuery;
    SQLGeral: TRxQuery;
    BtnProduto: TSpeedButton;
    Label27: TLabel;
    DBEdit11: TDBEdit;
    EditProduto: TEdit;
    Label30: TLabel;
    DBEdit1: TDBEdit;
    DBEdit23: TDBEdit;
    Label31: TLabel;
    SQLTemplateCodAntigoLookup: TStringField;
    Label1: TLabel;
    RadioPesquisa: TRadioGroup;
    LSaldo: TLabel;
    SaldoAtual: TCurrencyEdit;
    FiltrarProdutoscomNecessidadedeCompra1: TMenuItem;
    Label44: TLabel;
    DBEditCapEmbal: TEvDBNumEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplatePRODICODChange(Sender: TField);
    procedure SQLTemplatePCITN3VLREMBALChange(Sender: TField);
    procedure SQLTemplatePCITN3CAPEMBALChange(Sender: TField);
    procedure SQLTemplatePCITN3VLRUNITChange(Sender: TField);
    procedure SQLTemplatePCITN3VLRIPIChange(Sender: TField);
    procedure SQLTemplatePCITN3PERVIPIChange(Sender: TField);
    procedure SQLTemplatePCITN3QTDEMBALChange(Sender: TField);
    procedure SQLTemplatePCITN3PERCDESCChange(Sender: TField);
    procedure SQLTemplatePCITN3VLRDESCChange(Sender: TField);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateAfterDelete(DataSet: TDataSet);
    procedure BtnProdutoClick(Sender: TObject);
    procedure SQLTemplateAfterScroll(DataSet: TDataSet);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure EditProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditProdutoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditProdutoEnter(Sender: TObject);
    procedure FiltrarProdutoscomNecessidadedeCompra1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Ocupado:Boolean;
    NovoTotalItem,
    NovoTotalDesc:Double;
    TotalItem,
    TotalDesc:Double;
  public
    { Public declarations }
  end;

var
  FormCadastroPedidoCompraItem: TFormCadastroPedidoCompraItem;

implementation

uses TelaLancamentoGrade, DataModulo, CadastroProdutos, UnitLibrary,
  SearchLibrary, TelaRetornoPesquisaProduto, TelaConsultaProduto,
  TelaPedidoCompraItemFiltro, WaitWindow;

{$R *.DFM}

procedure TFormCadastroPedidoCompraItem.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA:='PedidoCompraItem';

  if dm.SQLConfigCompra.Active then
    dm.SQLConfigCompra.Open;
end;

procedure TFormCadastroPedidoCompraItem.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('PDCPA13ID').Value := DataSet.DataSource.DataSet.FindField('PDCPA13ID').Value;
  SQLTemplatePCITN3QTDBONIF.asFloat      := 0;
  SQLTemplatePCITN3CAPEMBAL.asFloat      := 0;
  SQLTemplatePCITN3QTDEMBAL.asFloat      := 0;
  SQLTemplatePCITN3QTDENTR.asFloat       := 0;
  SQLTemplatePCITN3VLREMBAL.asFloat      := 0;
  SQLTemplatePCITN3VLRUNIT.asFloat       := 0;
  SQLTemplatePCITN3PERVIPI.asFloat       := 0;
  SQLTemplatePCITN3VLRIPI.asFloat        := 0;
  SQLTemplatePCITN3VLRICM.asFloat        := 0;
  SQLTemplatePCITN3PERICM.asFloat        := 0;
  SQLTemplatePCITN3PERCDESC.asFloat      := 0;
  SQLTemplatePCITN3VLRDESC.asFloat       := 0;
  EditProduto.Clear;
end;

procedure TFormCadastroPedidoCompraItem.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateTotalItemCalc.asFloat := (SQLTemplatePCITN3VLREMBAL.AsFloat * SQLTemplatePCITN3QTDEMBAL.asFloat) - SQLTemplatePCITN3VLRDESC.AsFloat;
  If DataSet.FieldByName('PRODICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) Then
        Begin
          DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODICOD').AsString + ' - ' + DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;

          if (DM.SQLTemplate.FindField('GRADICOD').AsVariant <> NULL) and (DM.SQLTemplate.FindField('GRTMICOD').AsVariant <> NULL) then
                DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                                   ' / ' + RetornaTamanhoProduto(DM.SQLTemplate.FindField('GRADICOD').AsString,
                                                                                                 DM.SQLTemplate.FindField('GRTMICOD').AsString);
          if DM.SQLTemplate.FindField('CORICOD').AsVariant <> NULL then
              DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                               ' / ' + RetornaCorProduto(DM.SQLTemplate.FindField('CORICOD').AsString);

          DataSet.FieldByName('GradeCodLookup').AsVariant     := DM.SQLTemplate.FindField('GRADICOD').AsVariant;
          DataSet.FieldByName('AgrupGradeLookup').AsVariant   := DM.SQLTemplate.FindField('PRODIAGRUPGRADE').AsVariant;
          DataSet.FieldByName('ReferenciaLookup').AsVariant   := DM.SQLTemplate.FindField('PRODA60REFER').AsVariant;
          DataSet.FieldByName('CodAntigoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA15CODANT').AsVariant;
        End
      Else
        Begin
          DataSet.FieldByName('ProdutoLookup').asString     := MensagemLookUp;
          DataSet.FieldByName('GradeCodLookup').AsVariant   := NULL;
          DataSet.FieldByName('AgrupGradeLookup').AsVariant := NULL;
          DataSet.FieldByName('ReferenciaLookup').AsVariant := MensagemLookUp;
          DataSet.FieldByName('CodAntigoLookup').AsVariant  := MensagemLookUp;
        End;
    End
  Else
    Begin
      DataSet.FieldByName('ProdutoLookup').AsVariant    := Null;
      DataSet.FieldByName('GradeCodLookup').AsVariant   := NULL;
      DataSet.FieldByName('AgrupGradeLookup').AsVariant := NULL;
      DataSet.FieldByName('ReferenciaLookup').AsVariant := NULL;
    End;
end;

procedure TFormCadastroPedidoCompraItem.SQLTemplatePRODICODChange(
  Sender: TField);
begin
  inherited;
  EditProduto.Text := (Sender as TField).AsString;
  If (SQLTemplate.FieldByName('PRODICOD').AsVariant <> null) and (SQLTemplate.State = dsInsert) and (DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[SQLTemplate.FieldByName('PRODICOD').AsString],1)) Then
     Begin
       if DM.SQLConfigCompra.FieldByName('CFCOCTESTPRODFORN').Value = 'S' then
         begin
           SQLProdutoFornecedor.Close;
           SQLProdutoFornecedor.ParamByName('PRODICOD').asInteger:=SQLTemplate.FieldByName('PRODICOD').asInteger;
           SQLProdutoFornecedor.ParamByName('FORNICOD').asInteger:=SQLTemplate.DataSource.DataSet.FindField('FORNICOD').asInteger;
           SQLProdutoFornecedor.Open;
           SQLProdutoFornecedor.First;
           If SQLProdutoFornecedor.Eof Then
             begin
               Informa('Este Produto não é fornecido por ' + SQLTemplate.DataSource.DataSet.FindField('FornecedorLookup').asString) ;
               SQLTemplate.FieldByName('PRODICOD').FocusControl ;
             end ;
         end ;

      If (SQLTemplate.State in DsEditModes) Then
        Begin
          Ocupado:=True;
          If DM.SQLTemplate.FindField('PRODN3CAPACEMBAL').asFloat <> 0 Then
            SQLTemplatePCITN3CAPEMBAL.asFloat := DM.SQLTemplate.FindField('PRODN3CAPACEMBAL').asFloat;
          If SQLTemplatePCITN3CAPEMBAL.asFloat = 0 Then
            SQLTemplatePCITN3CAPEMBAL.asFloat := 1;
          If DM.SQLTemplate.FindField('PRODN3VLRCOMPRA').asFloat <> 0 Then
            SQLTemplatePCITN3VLRUNIT.asFloat := DM.SQLTemplate.FindField('PRODN3VLRCOMPRA').asFloat;
          If DM.SQLTemplate.FindField('PRODN3PERCIPI').asFloat <> 0 Then
            SQLTemplatePCITN3PERVIPI.asFloat := DM.SQLTemplate.FindField('PRODN3PERCIPI').asFloat;
          If SQLTemplatePCITN3VLRUNIT.asFloat <> 0 Then
            SQLTemplatePCITN3VLREMBAL.asFloat := SQLTemplatePCITN3VLRUNIT.asFloat*SQLTemplatePCITN3CAPEMBAL.asFloat;
          If SQLTemplatePCITN3PERVIPI.asFloat <> 0 Then
            SQLTemplatePCITN3VLRIPI.asFloat := SQLTemplateTotalItemCalc.asFloat*(SQLTemplatePCITN3PERVIPI.asFloat / 100);
          If SQLTemplatePCITN3PERICM.asFloat <> 0 Then
            Begin
              SQLICMS.ParamByName('ICMSICOD').asInteger := DM.SQLTemplate.FindField('ICMSICOD').asInteger;
              SQLICMS.Open;
              If SQLTemplate.DataSource.DataSet.FindField('EmpresaUFLookUp').asString<>SQLTemplate.DataSource.DataSet.FindField('FornecedorUFLookUp').asString Then
                Begin
                  SQLICMSUF.ParamByName('ICMSICOD').asInteger := DM.SQLTemplate.FindField('ICMSICOD').asInteger;
                  SQLICMSUF.ParamByName('ICMUA2UF').asString  := SQLTemplate.DataSource.DataSet.FindField('FornecedorUFLookUp').asString;
                  SQLICMSUF.Open;
                  SQLTemplatePCITN3PERICM.asVariant := SQLICMSUF.FindField('ICMUN2ALIQUOTA').asVariant;
                  SQLICMSUF.Close;
                End
              Else
                SQLTemplatePCITN3PERICM.asVariant := SQLICMS.FindField('ICMSN2ALIQUOTA').asVariant;
              SQLICMS.Close ;
              SQLTemplatePCITN3VLRICM.asFloat := SQLTemplateTotalItemCalc.asFloat * (SQLTemplatePCITN3PERICM.asFloat / 100);
            End;
          Ocupado := False ;
        End ;

      if (Not DM.GerandoPedidoCompra) and
         (SQLTemplate.FindField('GradeCodLookUp').asVariant<>Null) and
         (SQLTemplate.FindField('AgrupGradeLookUp').asVariant<>Null) Then
        CriaFormulario(TFormTelaLancamentoGrade, 'FormTelaLancamentoGrade',False,False,True,'')
      else
        begin
          SaldoAtual.Value := 0 ;
          if not FileExists('NaoMostraSaldoConsultaProduto.Arq') then
            begin
              SQLGeral.Close ;
              SQLGeral.SQL.Clear ;
              SQLGeral.SQL.Add('select PSLDN3QTDE, PSLDN3QTDMIN, PSLDN3QTDMAX from PRODUTOSALDO') ;
              SQLGeral.SQL.Add('where EMPRICOD = ' + EmpresaPadrao) ;
              SQLGeral.SQL.Add('and   PRODICOD = ' + SQLTemplate.FieldByName('PRODICOD').AsString) ;
              SQLGeral.Open ;
              if not SQLGeral.Eof then
                begin
                  SaldoAtual.Font.Color := clBlack ;
                  SaldoAtual.Value := SQLGeral.FieldByName('PSLDN3QTDE').asFloat;
                  if SQLGeral.FieldByName('PSLDN3QTDMIN').Value > 0 then
                    if SQLGeral.FieldByName('PSLDN3QTDMIN').Value > SQLGeral.FieldByName('PSLDN3QTDE').Value then
                      SaldoAtual.Font.Color := clRed ;
                  if SQLGeral.FieldByName('PSLDN3QTDMAX').Value > 0 then
                    if SQLGeral.FieldByName('PSLDN3QTDMAX').Value < SQLGeral.FieldByName('PSLDN3QTDE').Value then
                      SaldoAtual.Font.Color := clBlue ;
                end ;
              SQLGeral.Close ;
            end ;
        end ;
    End;
end;

procedure TFormCadastroPedidoCompraItem.SQLTemplatePCITN3VLREMBALChange(Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  If SQLTemplatePCITN3CAPEMBAL.asFloat>0 Then
    Begin
      Ocupado:=True;
      SQLTemplatePCITN3VLRUNIT.asFloat := SQLTemplatePCITN3VLREMBAL.asFloat / SQLTemplatePCITN3CAPEMBAL.asFloat;
      SQLTemplatePCITN3VLRDESC.asFloat := (SQLTemplatePCITN3VLREMBAL.AsFloat * SQLTemplatePCITN3QTDEMBAL.asFloat) * (SQLTemplatePCITN3PERCDESC.asFloat / 100);
      SQLTemplatePCITN3VLRIPI.asFloat  := SQLTemplateTotalItemCalc.asFloat * (SQLTemplatePCITN3PERVIPI.asFloat / 100);
      SQLTemplatePCITN3VLRICM.asFloat  := SQLTemplateTotalItemCalc.asFloat * (SQLTemplatePCITN3PERICM.asFloat / 100);
      Ocupado:=False;
    End;
end;

procedure TFormCadastroPedidoCompraItem.SQLTemplatePCITN3CAPEMBALChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  SQLTemplatePCITN3VLREMBAL.asFloat := (SQLTemplatePCITN3VLRUNIT.asFloat*SQLTemplatePCITN3CAPEMBAL.asFloat);
  SQLTemplatePCITN3VLRDESC.asFloat  := (SQLTemplatePCITN3VLREMBAL.AsFloat * SQLTemplatePCITN3QTDEMBAL.asFloat) * (SQLTemplatePCITN3PERCDESC.asFloat / 100);
  SQLTemplatePCITN3VLRIPI.asFloat   := SQLTemplateTotalItemCalc.asFloat * (SQLTemplatePCITN3PERVIPI.asFloat / 100);
  SQLTemplatePCITN3VLRICM.asFloat   := SQLTemplateTotalItemCalc.asFloat * (SQLTemplatePCITN3PERICM.asFloat / 100);
  Ocupado:=False;
end;

procedure TFormCadastroPedidoCompraItem.SQLTemplatePCITN3VLRUNITChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  SQLTemplatePCITN3VLREMBAL.asFloat := (SQLTemplatePCITN3VLRUNIT.asFloat*SQLTemplatePCITN3CAPEMBAL.asFloat);
  SQLTemplatePCITN3VLRDESC.asFloat  := (SQLTemplatePCITN3VLREMBAL.AsFloat * SQLTemplatePCITN3QTDEMBAL.asFloat) * (SQLTemplatePCITN3PERCDESC.asFloat / 100);
  SQLTemplatePCITN3VLRIPI.asFloat   := SQLTemplateTotalItemCalc.asFloat * (SQLTemplatePCITN3PERVIPI.asFloat / 100);
  SQLTemplatePCITN3VLRICM.asFloat   := SQLTemplateTotalItemCalc.asFloat * (SQLTemplatePCITN3PERICM.asFloat  / 100);
  Ocupado:=False;
end;

procedure TFormCadastroPedidoCompraItem.SQLTemplatePCITN3VLRIPIChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplatePCITN3VLRIPI.asFloat>0) and (SQLTemplateTotalItemCalc.asFloat>0) Then
    SQLTemplatePCITN3PERVIPI.asFloat := (SQLTemplatePCITN3VLRIPI.asFloat / SQLTemplateTotalItemCalc.asFloat) * 100
  Else
    Begin
      SQLTemplatePCITN3VLRIPI.asFloat  := 0;
      SQLTemplatePCITN3PERVIPI.asFloat := 0;
    End;
  Ocupado:=False;
end;

procedure TFormCadastroPedidoCompraItem.SQLTemplatePCITN3PERVIPIChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplatePCITN3PERVIPI.asFloat>0) and (SQLTemplateTotalItemCalc.asFloat>0) Then
    SQLTemplatePCITN3VLRIPI.asFloat := SQLTemplateTotalItemCalc.asFloat * (SQLTemplatePCITN3PERVIPI.asFloat / 100)
  Else
    SQLTemplatePCITN3VLRIPI.asFloat  := 0;
  Ocupado:=False;
end;

procedure TFormCadastroPedidoCompraItem.SQLTemplatePCITN3QTDEMBALChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  SQLTemplatePCITN3VLRDESC.asFloat := (SQLTemplatePCITN3VLREMBAL.AsFloat * SQLTemplatePCITN3QTDEMBAL.asFloat) * (SQLTemplatePCITN3PERCDESC.asFloat / 100);
  SQLTemplatePCITN3VLRIPI.asFloat  := SQLTemplateTotalItemCalc.asFloat * (SQLTemplatePCITN3PERVIPI.asFloat / 100);
  SQLTemplatePCITN3VLRICM.asFloat  := SQLTemplateTotalItemCalc.asFloat * (SQLTemplatePCITN3PERICM.asFloat  / 100);
  Ocupado:=False;
end;

procedure TFormCadastroPedidoCompraItem.SQLTemplatePCITN3PERCDESCChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplatePCITN3PERCDESC.asFloat > 0) Then
    SQLTemplatePCITN3VLRDESC.asFloat := (SQLTemplatePCITN3VLREMBAL.AsFloat * SQLTemplatePCITN3QTDEMBAL.asFloat) * (SQLTemplatePCITN3PERCDESC.asFloat / 100)
  Else
    SQLTemplatePCITN3VLRDESC.asFloat := 0;
  Ocupado:=False;
End;

procedure TFormCadastroPedidoCompraItem.SQLTemplatePCITN3VLRDESCChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplatePCITN3VLRDESC.asFloat > 0) Then
    SQLTemplatePCITN3PERCDESC.asFloat := (SQLTemplatePCITN3VLRDESC.asFloat /(SQLTemplatePCITN3VLREMBAL.AsFloat * SQLTemplatePCITN3QTDEMBAL.asFloat)) * 100
  Else
    SQLTemplatePCITN3PERCDESC.asFloat := 0;
  Ocupado:=False;
end;

procedure TFormCadastroPedidoCompraItem.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  TotalItem := SQLTemplateTotalItemCalc.asFloat;
  TotalDesc := SQLTemplatePCITN3VLRDESC.asFloat;
end;

procedure TFormCadastroPedidoCompraItem.SQLTemplateBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  TotalItem := 0;
  TotalDesc := 0;
end;

procedure TFormCadastroPedidoCompraItem.SQLTemplateAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  DM.InserindoItemPC:=True;
  SQLTemplate.DataSource.DataSet.Edit;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := False;
  SQLTemplate.DataSource.DataSet.FindField('PDCPN2TOTITENS').asFloat :=
  (SQLTemplate.DataSource.DataSet.FindField('PDCPN2TOTITENS').asFloat - TotalItem) + NovoTotalItem;
  SQLTemplate.DataSource.DataSet.FindField('PDCPN3TOTDESC').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('PDCPN3TOTDESC').asFloat - TotalDesc) + NovoTotalDesc;
  DM.InserindoItemPC:=False;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := True;
  SQLTemplate.DataSource.DataSet.Post;
end;

procedure TFormCadastroPedidoCompraItem.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  TotalItem := SQLTemplateTotalItemCalc.asFloat;
  TotalDesc := SQLTemplatePCITN3VLRDESC.asFloat;
  inherited;
end;

procedure TFormCadastroPedidoCompraItem.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  If (SQLTemplatePCITN3VLREMBAL.asFloat = 0) Then
    Begin
      ShowMessage('O valor da Embalagem não pode ser zero!');
      SQLTemplatePCITN3VLREMBAL.FocusControl;
      Abort;
    End;
  If (SQLTemplatePCITN3CAPEMBAL.asFloat = 0) Then
    Begin
      ShowMessage('A capacidade de Embalagem não pode ser zero!');
      SQLTemplatePCITN3CAPEMBAL.FocusControl;
      Abort;
    End;
  If (SQLTemplatePCITN3VLRUNIT.asFloat = 0) Then
    Begin
      ShowMessage('O valor unitário não pode ser zero!');
      SQLTemplatePCITN3VLRUNIT.FocusControl;
      Abort;
    End;
  If (SQLTemplatePCITN3QTDEMBAL.asFloat = 0) Then
    Begin
      ShowMessage('A quantidade de embalagens não pode ser zero!');
      SQLTemplatePCITN3QTDEMBAL.FocusControl;
      Abort;
    End;
  inherited;
  NovoTotalItem := SQLTemplateTotalItemCalc.asFloat;
  NovoTotalDesc := SQLTemplatePCITN3VLRDESC.asFloat;
end;

procedure TFormCadastroPedidoCompraItem.SQLTemplateAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  DM.InserindoItemPC:=True;
  SQLTemplate.DataSource.DataSet.Edit;
  SQLTemplate.DataSource.DataSet.FindField('PDCPN2TOTITENS').asFloat :=
  (SQLTemplate.DataSource.DataSet.FindField('PDCPN2TOTITENS').asFloat - TotalItem);
  SQLTemplate.DataSource.DataSet.FindField('PDCPN3TOTDESC').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('PDCPN3TOTDESC').asFloat - TotalDesc);
  SQLTemplate.DataSource.DataSet.Post;
  DM.InserindoItemPC:=False;
end;

procedure TFormCadastroPedidoCompraItem.BtnProdutoClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,False,'');
end;

procedure TFormCadastroPedidoCompraItem.SQLTemplateAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  SaldoAtual.Font.Color := clBlack ;
  SaldoAtual.Value      := 0 ;
end;

procedure TFormCadastroPedidoCompraItem.DSTemplateStateChange(
  Sender: TObject);
begin
  inherited;
  If (Sender as TDataSource).State = dsBrowse Then
    Begin
      LSaldo.Visible := False;
      SaldoAtual.Visible := False;
      SaldoAtual.Font.Color := clBlack ;
    End
  Else
    Begin
      LSaldo.Visible := True;
      SaldoAtual.Visible := True;
    End;
  If DSMasterTemplate.DataSet.FieldByName('PDCPCSTATUS').AsString <> 'A' then
    DesabilitarBotoes(True,True,True,True,True);
end;

procedure TFormCadastroPedidoCompraItem.EditProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnProduto.Click;
  if Key = VK_RETURN then
    begin
      if (EditProduto.Text <> '') and (SQLTemplate.State in DSEditModes) then
        begin
          case RadioPesquisa.ItemIndex of
            0 : begin
                  FindProduct(EditProduto,SQLTemplate.FieldByName('PRODICOD'));
                end;
            1 : begin
                  SQLTemplate.FieldByName('PRODICOD').AsInteger := ProcuraProdutoPorCodigoAntigo(EditProduto.Text);
                end;
            2 : begin
                  SQLTemplate.FieldByName('PRODICOD').AsInteger := ProcuraProdutoPorReferencia(EditProduto.Text);
                end;
          end;
        end
      else
        begin
          ProdutoDescricao := '';
          FieldLookup := SQLTemplate.FieldByName('PRODICOD');
          FieldOrigem := 'PRODICOD';
          CriaFormulario(TFormTelaConsultaProduto,'FormTelaConsultaProduto',False,True,True,'');
        end;
    end;
  if Key = VK_F3 then
    begin
    {  ProdutoDescricao := '';
      FieldLookup := SQLTemplate.FieldByName('PRODICOD');
      FieldOrigem := 'PRODICOD';
      CriaFormulario(TFormTelaConsultaProduto,'FormTelaConsultaProduto',False,True,True,'');}
    end;
end;

procedure TFormCadastroPedidoCompraItem.EditProdutoExit(Sender: TObject);
begin
  inherited;
  if EditProduto.Text <> '' then
    DBEdit4.SetFocus;
end;

procedure TFormCadastroPedidoCompraItem.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (((Sender as TForm).ActiveControl <> EditProduto))
     or ((Application.FindComponent('FormTelaConsultaProduto') = nil)
         and ( Application.FindComponent('FormTelaLancamentoGrade') = nil)) then
  inherited;
end;

procedure TFormCadastroPedidoCompraItem.EditProdutoEnter(Sender: TObject);
begin
  inherited;
  EditProduto.SelectAll;
end;

procedure TFormCadastroPedidoCompraItem.FiltrarProdutoscomNecessidadedeCompra1Click(
  Sender: TObject);
var Item : Integer;
begin
  inherited;
  if SQLTemplate.DataSource.DataSet.FindField('PDCPCSTATUS').Value <> 'A' then
    begin
      ShowMessage('Atenção! Pedido de Compra não esta com Status de Aberto, verifique!');
      Exit;
    end;

  SQLTemplate.Close;

  {Consulta Itens}
  dm.sqlconsulta.close;
  dm.sqlconsulta.sql.clear;
  dm.sqlconsulta.RequestLive := False;
  dm.sqlconsulta.sql.add('Select i.*, p.proda60descr, P.PRODA60REFER, p.marcicod, p.coricod from  pedidocompraitem i ');
  dm.sqlconsulta.sql.add('left join produto p on p.prodicod = i.prodicod ');
  dm.sqlconsulta.sql.add('where PDCPA13ID = '''+DSMasterTemplate.DataSet.FieldByName('PDCPA13ID').AsString+'''');
  dm.sqlconsulta.Open;
  Application.CreateForm(TFormTelaPedidoCompraItemFiltro,FormTelaPedidoCompraItemFiltro);
  FormTelaPedidoCompraItemFiltro.ComboFornecedor.Value := DSMasterTemplate.DataSet.FieldByName('FORNICOD').AsString;
  if not dm.sqlconsulta.IsEmpty then
    begin
      dm.sqlconsulta.First;
      while not dm.sqlconsulta.eof do
        begin
          If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[dm.sqlconsulta.fieldbyname('PRODICOD').AsString],1) Then
            begin
              FormTelaPedidoCompraItemFiltro.TblTempComprados.Append;
              FormTelaPedidoCompraItemFiltro.TblTempCompradosPRODICOD.Value        := dm.sqlconsulta.fieldbyname('PRODICOD').Value;
              FormTelaPedidoCompraItemFiltro.TblTempCompradosPRODA60DESCR.Value    := dm.sqlconsulta.fieldbyname('PRODA60DESCR').AsString;
              FormTelaPedidoCompraItemFiltro.TblTempCompradosQTDEMBAL.AsVariant    := dm.sqlconsulta.fieldbyname('PCITN3CAPEMBAL').Value;
              FormTelaPedidoCompraItemFiltro.TblTempCompradosQTDECOMPRADO.Value    := dm.sqlconsulta.fieldbyname('PCITN3QTDEMBAL').Value;
              FormTelaPedidoCompraItemFiltro.TblTempCompradosPRODN3VLRCOMPRA.Value := dm.sqlconsulta.fieldbyname('PCITN3VLREMBAL').Value;
              FormTelaPedidoCompraItemFiltro.TblTempCompradosIPIPERC.Value         := dm.sqlconsulta.fieldbyname('PCITN3PERVIPI').Value;
              FormTelaPedidoCompraItemFiltro.TblTempCompradosRef.Value             := dm.sqlconsulta.fieldbyname('PRODA60REFER').AsString;
              FormTelaPedidoCompraItemFiltro.TblTempCompradosMarca.Value           := dm.SQLLocate('MARCA','MARCICOD','MARCA60DESCR',dm.sqlconsulta.fieldbyname('MARCICOD').AsString);
              FormTelaPedidoCompraItemFiltro.TblTempCompradosCor.Value             := dm.SQLLocate('COR','CORICOD','CORA30DESCR',dm.sqlconsulta.fieldbyname('CORICOD').AsString);
              FormTelaPedidoCompraItemFiltro.TblTempCompradosUltVlrCusto.Value     := dm.sqlconsulta.fieldbyname('PCITN3VLRUNIT').Value;
              if not FileExists('NaoMostraSaldoConsultaProduto.Arq') then
                begin
                  SQLGeral.Close ;
                  SQLGeral.SQL.Clear ;
                  SQLGeral.SQL.Add('select PSLDN3QTDE, PSLDN3QTDMIN, PSLDN3QTDMAX from PRODUTOSALDO') ;
                  SQLGeral.SQL.Add('where EMPRICOD = ' + EmpresaPadrao) ;
                  SQLGeral.SQL.Add('and   PRODICOD = ' + dm.sqlconsulta.fieldbyname('PRODICOD').AsString) ;
                  SQLGeral.Open ;
                  if not SQLGeral.Eof then
                    FormTelaPedidoCompraItemFiltro.TblTempCompradosSALDO.Value := sqlgeral.fieldbyname('PSLDN3QTDE').Value;
                end;
              FormTelaPedidoCompraItemFiltro.TblTempComprados.Post;
            end;
          dm.sqlconsulta.Next;
        end;
      FormTelaPedidoCompraItemFiltro.NotaCompraID := DSMasterTemplate.DataSet.FieldByName('PDCPA13ID').AsString;
    end;
  dm.sqlconsulta.Close;
  FormTelaPedidoCompraItemFiltro.LbProdEscolhidosCompra.Caption := ' Produtos Escolhidos para Compra => '+ IntToStr(FormTelaPedidoCompraItemFiltro.TblTempComprados.RecordCount)+' Registros Encontrados... ';
  FormTelaPedidoCompraItemFiltro.ShowModal;
  if FormTelaPedidoCompraItemFiltro.ModalResult = MrOk then
    begin
      FormTelaPedidoCompraItemFiltro.TblTempComprados.First;
      if FormTelaPedidoCompraItemFiltro.TblTempComprados.RecordCount > 0 then
        begin
          dm.SQLTemplate.Close;
          dm.SQLTemplate.SQL.Clear;
          dm.SQLTemplate.SQL.add('Delete from PedidoCompraItem');
          dm.SQLTemplate.SQL.add('Where PDCPA13ID = '''+ DSMasterTemplate.DataSet.FieldByName('PDCPA13ID').AsString+'''');
          dm.SQLTemplate.ExecSQL;
        end;

      dm.SQLConsulta.close;
      dm.SQLConsulta.RequestLive := true;
      dm.SQLConsulta.sql.clear;
      dm.SQLConsulta.sql.Text := 'select * from pedidocompraitem where PDCPA13ID='''+DSMasterTemplate.DataSet.FieldByName('PDCPA13ID').AsString+'''';
      dm.SQLConsulta.Open;
      FormTelaPedidoCompraItemFiltro.TblTempComprados.first;
      While Not FormTelaPedidoCompraItemFiltro.TblTempComprados.Eof Do
        Begin
          if FormTelaPedidoCompraItemFiltro.TblTempCompradosQTDECOMPRADO.Value > 0 then
            begin
              dm.sqlconsulta.Append;
              dm.sqlconsulta.fieldbyname('PDCPA13ID').Value        := DSMasterTemplate.DataSet.FieldByName('PDCPA13ID').AsString;
              dm.sqlconsulta.fieldbyname('PCITIPOS').Value         := FormTelaPedidoCompraItemFiltro.TblTempComprados.RecNo;
              dm.sqlconsulta.fieldbyname('PRODICOD').Value         := FormTelaPedidoCompraItemFiltro.TblTempCompradosPRODICOD.Value;
              dm.sqlconsulta.fieldbyname('PCITN3CAPEMBAL').Value   := FormTelaPedidoCompraItemFiltro.TblTempCompradosQTDEMBAL.Value;
              dm.sqlconsulta.fieldbyname('PCITN3QTDEMBAL').Value   := FormTelaPedidoCompraItemFiltro.TblTempCompradosQTDECOMPRADO.Value;
              dm.sqlconsulta.fieldbyname('PCITN3VLREMBAL').Value   := FormTelaPedidoCompraItemFiltro.TblTempCompradosPRODN3VLRCOMPRA.Value;
              dm.sqlconsulta.fieldbyname('PCITN3PERVIPI').Value    := FormTelaPedidoCompraItemFiltro.TblTempCompradosIPIPERC.Value;
              dm.sqlconsulta.fieldbyname('PCITN3PERCDESC').Value   := 0;
              dm.sqlconsulta.fieldbyname('PCITN3VLRUNIT').asFloat  := dm.sqlconsulta.fieldbyname('PCITN3VLREMBAL').asFloat / dm.sqlconsulta.fieldbyname('PCITN3CAPEMBAL').asFloat;
              dm.sqlconsulta.Post;
            end;
          FormTelaPedidoCompraItemFiltro.TblTempComprados.Next;
        End;

      SQLTemplate.DataSource.DataSet.Edit;
      SQLTemplate.DataSource.DataSet.AutoCalcFields := False;
      SQLTemplate.DataSource.DataSet.FindField('PDCPN2TOTITENS').asFloat := FormTelaPedidoCompraItemFiltro.SQLTotalValorTotal.Value;
      SQLTemplate.DataSource.DataSet.AutoCalcFields := True;
      SQLTemplate.DataSource.DataSet.Post;
    end;
  dm.SQLConsulta.close;
  dm.SQLConsulta.RequestLive := false;
  FormTelaPedidoCompraItemFiltro.Free;
  Button1.Click;
  SQLTemplate.Close;
  SQLTemplate.Open;
end;

procedure TFormCadastroPedidoCompraItem.Button3Click(Sender: TObject);
begin
  inherited;
  FiltrarProdutoscomNecessidadedeCompra1.Click;
end;

procedure TFormCadastroPedidoCompraItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  EmpresaPadraoPedidosCompra := '';
end;

end.
