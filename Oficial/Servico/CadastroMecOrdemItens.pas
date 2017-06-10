unit CadastroMecOrdemItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, RxDBComb, ToolEdit, RXDBCtrl, DBCtrls, VarSys, FormResources,
  EDBNum, CurrEdit, Placemnt, RxLookup, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroMecOrdemItem = class(TFormCadastroTEMPLATE)
    SQLIcms: TRxQuery;
    SQLIcmsUF: TRxQuery;
    SQLAtualizaItemPedido: TRxQuery;
    SQLGeral: TRxQuery;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    DBEdit9: TEvDBNumEdit;
    DBEdit10: TEvDBNumEdit;
    DBEdit12: TEvDBNumEdit;
    DBEdit13: TEvDBNumEdit;
    EvDBNumEdit4: TEvDBNumEdit;
    DBEdit27: TEvDBNumEdit;
    SQLTemplateORDITENSID: TIntegerField;
    SQLTemplateGRUPO_SERVICO: TIntegerField;
    SQLTemplateGARANTIA: TStringField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplateORITN3QUANT: TBCDField;
    SQLTemplateORITN2VLRUNIT: TBCDField;
    SQLTemplateORITN2PERCDESC: TBCDField;
    SQLTemplateORITN3TOTVEND: TBCDField;
    SQLTemplateORITN2PERCCOMIS: TBCDField;
    SQLTemplateORITA254OBS: TStringField;
    Label9: TLabel;
    BtnProduto: TSpeedButton;
    Label28: TLabel;
    LSaldo: TLabel;
    SaldoAtual: TLabel;
    DBEdit11: TDBEdit;
    EditProduto: TEdit;
    SQLTemplateProdutoLookUp: TStringField;
    SQLTemplateTotalItemCalc: TBCDField;
    SQLTemplateServicoLookup: TStringField;
    SQLTemplateUnidadeLookup: TStringField;
    SQLNumeroItens: TQuery;
    SQLTemplateORDID: TIntegerField;
    PanelServico: TPanel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    SQLMecanico: TRxQuery;
    IDMECANICO: TIntegerField;
    ORDMECA40NOME: TStringField;
    DSSQLMecanico: TDataSource;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    ComboMecanico: TRxDBLookupCombo;
    btnMecanico: TSpeedButton;
    SQLTemplateIDMECANICO: TIntegerField;
    edtHora: TMaskEdit;
    Label2: TLabel;
    SQLTemplateORITN3TEMPO: TBCDField;
    SQLTemplateORITN2VLRDESC: TBCDField;

    procedure EditProdutoEnter(Sender: TObject);
    procedure EditProdutoExit(Sender: TObject);
    procedure BtnProdutoClick(Sender: TObject);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure SQLTemplatePRODICODChange(Sender: TField);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateORITN2PERCDESCChange(Sender: TField);
    procedure SQLTemplateORITN2VLRDESCSetText(Sender: TField;
      const Text: String);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateAfterDelete(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtHoraExit(Sender: TObject);
    procedure SQLTemplateAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit9Change(Sender: TObject);
    procedure btnMecanicoClick(Sender: TObject);
  private
    { Private declarations }
    Ocupado:Boolean;
    NovoTotalQuant,
    NovoTotalPesoBruto,
    NovoTotalPesoLiquido,
    NovoTotalItem,
    NovoTotalDesc,
    NovoTotalBASCALCICMS,
    NovoTotalVLRICMS,
    NovoTotalBASCALCSUBS,
    NovoTotalVLRSUBS,
    NovoTotalBASCALCCIPI,
    NovoTotalVLRIPI,
    NovoTotalVLRSERVICO,
    NovoTotalISSQN:Double;
    TotalQuant,
    TotalPesoBruto,
    TotalPesoLiquido,
    TotalItem,
    TotalDesc,
    TotalBASCALCICMS,
    TotalVLRICMS,
    TotalBASCALCSUBS,
    TotalVLRSUBS,
    TotalBASCALCCIPI,
    TotalVLRIPI,
    TotalVLRSERVICO,
    TotalISSQN:Double;
    CodigoPedido : String;
    PosicaoItem  : Integer;
    QtdePed, NovaQtdePed,Reducao : Double;
    TemProdutoSemSubsTrib, TemProdutoComSubsTrib : Boolean;
  public
    { Public declarations }
    function ConverteHoraParaDecimal(Horas:String):Extended;
    Function ConverteDecimalParaHora(Horas:Extended):String;
    Function ProcuraProduto(nBusca:String):Integer;
  end;

var
  FormCadastroMecOrdemItem: TFormCadastroMecOrdemItem;

implementation

uses TelaConsultaProduto, DataModulo, TelaLancamentoGradeNotaFiscal,
  UnitLibrary, TelaSaldoPorLote, TelaImportaItens,
  SearchLibrary, CadastroProdutos, TelaProdutoNumeroSerie,
  TelaNotaFiscalItemFiltro, TelaRetornoPesquisaProduto, CadastroMecanicos;

{$R *.dfm}


procedure TFormCadastroMecOrdemItem.EditProdutoEnter(Sender: TObject);
begin
  inherited;
  EditProduto.SelectAll;
end;

procedure TFormCadastroMecOrdemItem.EditProdutoExit(Sender: TObject);
var ProdicodRestorno:Integer;
begin
  inherited;
  IF not (SQLTemplate.State In ([dsInsert, dsEdit])) then
    Exit;

  if (Copy(EditProduto.Text,0,1) >= '0') and(Copy(EditProduto.Text,0,1) <= '9') then
  begin
      ProdicodRestorno := ProcuraProduto(EditProduto.Text);
      if ProdicodRestorno > 0 then
        SQLTemplate.FieldByName('PRODICOD').AsInteger := ProdicodRestorno
      else
        FindProduct(EditProduto,SQLTemplate.FieldByName('PRODICOD'));
  end else
    FindProduct(EditProduto,SQLTemplate.FieldByName('PRODICOD'));
end;

procedure TFormCadastroMecOrdemItem.BtnProdutoClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,False,'');
end;

procedure TFormCadastroMecOrdemItem.DSTemplateStateChange(Sender: TObject);
begin
  inherited;
  If (Sender as TDataSource).State = dsBrowse Then
    Begin
      SaldoAtual.Enabled := False;
    End
  Else
    Begin
      SaldoAtual.Enabled := True;
    End;
  if DSMasterTemplate.DataSet.FieldByName('STATUS').AsString <> 'A' then
    DesabilitarBotoes(True,True,True,True,True);

end;

procedure TFormCadastroMecOrdemItem.SQLTemplatePRODICODChange(
  Sender: TField);
var
  BaseCalculo:Double;
  BKPBookMark:TBookMark;
begin
  inherited;

  EditProduto.Text := SQLTemplate.FieldByName((Sender as TField).FieldName).AsString;
  if DM.SQLTemplate.FindField('PRODCSERVICO').asstring = 'S' then
  begin
    PanelServico.Visible := True;
    PanelCodigoDescricao.Height  := 273;
  end else
  begin
    PanelServico.Visible := False;
    PanelCodigoDescricao.Height  := 137;
  end;
  SQLTemplateORITN2VLRUNIT.Value :=  DM.SQLTemplate.FindField('PRODN3VLRVENDA').Value;
  // caso seja em Horas
  DBEdit9.Visible := True;
  edtHora.Visible := False;
  if SQLLocatE('UNIDADE','UNIDICOD','UNIDA5DESCR',DM.SQLTemplate.FieldByName('UNIDICOD').AsString) = 'H' then
  begin
    SQLTemplateORITN3QUANT.Value := 1;
    edtHora.Visible := True;
    edtHora.Text    := '  :  ';
  end;

  if PanelServico.Visible then
    DBEdit4.SetFocus
  else
    DBEdit9.setFocus;


end;

procedure TFormCadastroMecOrdemItem.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateTotalItemCalc.asFloat := (SQLTemplateORITN2VLRUNIT.AsFloat * SQLTemplateORITN3QUANT.asFloat) - SQLTemplateORITN2VLRDESC.AsFloat;
  If DM.GerandoNotaFiscal Then Exit;
  If DataSet.FieldByName('PRODICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) Then
        Begin
          DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;

          if (DM.SQLTemplate.FindField('GRADICOD').AsVariant <> NULL) and (DM.SQLTemplate.FindField('GRTMICOD').AsVariant <> NULL) then
                DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                                   ' / ' + RetornaTamanhoProduto(DM.SQLTemplate.FindField('GRADICOD').AsString,
                                                                                                 DM.SQLTemplate.FindField('GRTMICOD').AsString);
          if DM.SQLTemplate.FindField('CORICOD').AsVariant <> NULL then
              DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                               ' / ' + RetornaCorProduto(DM.SQLTemplate.FindField('CORICOD').AsString);

          DataSet.FieldByName('ServicoLookup').AsVariant     := DM.SQLTemplate.FindField('PRODCSERVICO').AsVariant;
          DataSet.FieldByName('UnidadeLookup').AsVariant     := DM.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',DM.SQLTemplate.FindField('UNIDICOD').AsString);
        End
      Else
        Begin
          DataSet.FieldByName('ProdutoLookup').asString        := MensagemLookUp;
          DataSet.FieldByName('ServicoLookup').AsVariant       := NULL;
          DataSet.FieldByName('UnidadeLookup').AsVariant       := NULL;
        End;
    End
  Else
    Begin
      DataSet.FieldByName('ProdutoLookup').AsVariant       := Null;
      DataSet.FieldByName('ServicoLookup').AsVariant       := NULL;
      DataSet.FieldByName('UnidadeLookup').AsVariant       := NULL;
    End;

end;

procedure TFormCadastroMecOrdemItem.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'ORD_MEC_ITENS';
  PanelServico.Visible   := False;
  PanelCodigoDescricao.Height    := 137;
  SQLMecanico.Open;
end;

procedure TFormCadastroMecOrdemItem.SQLTemplateORITN2PERCDESCChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateORITN2PERCDESC.asFloat > 0) Then
    SQLTemplateORITN2VLRDESC.asFloat := (SQLTemplateORITN2VLRUNIT.AsFloat * SQLTemplateORITN3QUANT.asFloat) * (SQLTemplateORITN2PERCDESC.asFloat / 100)
  Else
    SQLTemplateORITN2VLRDESC.asFloat := 0;
  Ocupado:=False;
end;

procedure TFormCadastroMecOrdemItem.SQLTemplateORITN2VLRDESCSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  If (SQLTemplateORITN2VLRDESC.asFloat > 0) Then
    SQLTemplateORITN2PERCDESC.asFloat := (SQLTemplateORITN2VLRDESC.asFloat /(SQLTemplateORITN2VLRUNIT.AsFloat * SQLTemplateORITN3QUANT.asFloat)) * 100
  Else
    SQLTemplateORITN2PERCDESC.asFloat := 0;
  Ocupado:=False;
end;

procedure TFormCadastroMecOrdemItem.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateORDID.Value               := DataSet.DataSource.DataSet.FindField('ORDID').Value;
  SQLTemplateORITN3QUANT.asFloat       :=1;
  SQLTemplateORITN2PERCDESC.asFloat    :=0;
  SQLTemplateORITN2VLRDESC.asFloat     :=0;
  SQLTemplateORITN2VLRUNIT.asFloat     :=0;
  EditProduto.Clear;
  EditProduto.SetFocus;
end;

procedure TFormCadastroMecOrdemItem.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  inherited;
    if (SQLTemplateORITN2VLRUNIT.asFloat = 0) Then
      begin
        ShowMessage('O valor unitário não pode ser zero!');
        SQLTemplateORITN2VLRUNIT.FocusControl;
        Abort;
      end;

    if (SQLTemplateORITN3QUANT.asFloat = 0) Then
      begin
        ShowMessage('A quantidade não pode ser zero!');
        SQLTemplateORITN3QUANT.FocusControl;
        Abort;
      end;

  inherited;

  if DataSet.FieldByName('ServicoLookup').asString = 'S' Then
    begin
      NovoTotalQuant         := 0;
      NovoTotalItem          := 0;
    end
  else
    begin
      NovoTotalQuant         := SQLTemplateORITN3QUANT.AsFloat;
      NovoTotalItem          := SQLTemplateTotalItemCalc.asFloat;
    end;
  NovoTotalDesc := SQLTemplateORITN2VLRDESC.asFloat;
  if DataSet.FieldByName('ServicoLookup').asString = 'S' then
    NovoTotalVLRSERVICO  := SQLTemplateTotalItemCalc.asFloat
  else
    NovoTotalVLRSERVICO  := 0;
end;

procedure TFormCadastroMecOrdemItem.SQLTemplateAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  DM.InserindoItemNV := True;
  SQLTemplate.DataSource.DataSet.DisableControls;
  SQLTemplate.DataSource.DataSet.Edit;
  SQLTemplate.DataSource.DataSet.AutoCalcFields:=False;

  SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRPRODUTO').asFloat :=
  (SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRPRODUTO').asFloat - TotalItem) + NovoTotalItem;
  SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRDESC').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRDESC').asFloat - TotalDesc) + NovoTotalDesc;
  SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRSERVICO').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRSERVICO').asFloat - TotalVLRSERVICO) + NovoTotalVLRSERVICO;
  SQLTemplate.DataSource.DataSet.Post;
  SQLTemplate.DataSource.DataSet.AutoCalcFields:=True;
  SQLTemplate.DataSource.DataSet.EnableControls;
  DM.InserindoItemNV:=False;
  Inc(NumItem);

end;

procedure TFormCadastroMecOrdemItem.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  If DataSet.FieldByName('ServicoLookup').asString = 'S' Then
    Begin
      TotalQuant       := 0;
      TotalItem        := 0;
    End
  Else
    Begin
      TotalQuant       := SQLTemplateORITN3QUANT.asFloat;
      TotalItem        := SQLTemplateTotalItemCalc.asFloat;
    End;
  TotalDesc        := SQLTemplateORITN2VLRDESC.asFloat;
  If DataSet.FieldByName('ServicoLookup').asString = 'S' Then
    TotalVLRSERVICO  := SQLTemplateTotalItemCalc.asFloat
  Else
    TotalVLRSERVICO  := 0;

end;

procedure TFormCadastroMecOrdemItem.SQLTemplateBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if NumItem <= 0 then
    begin
      SQLNumeroItens.Close;
      SQLNumeroItens.Open;
      if SQLNumeroItens.FindField('COUNT').AsVariant <> Null then
        NumItem := SQLNumeroItens.FindField('COUNT').AsInteger
      else
        NumItem := 0;
    end;
  if DM.SQLConfigVenda.FieldByName('CFVEINROITENSNF').Value > 0 then
    if (NumItem = DM.SQLConfigVenda.FieldByName('CFVEINROITENSNF').AsInteger) and (not Dm.ImportandoPedidoVenda) then
      begin
        if Pergunta('SIM','O número máximo de itens para uma mesma nota foi alcançado, você deseja iniciar uma nova nota ?') then
          begin
            DM.GerarNovaNota := True;
            Close;
          end
        else
          Exit;
      end;

  TotalQuant       := 0;
  TotalItem        := 0;
  TotalDesc        := 0;
  TotalVLRSERVICO  := 0;

end;

procedure TFormCadastroMecOrdemItem.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  If DataSet.FieldByName('ServicoLookup').asString = 'S' Then
    Begin
      TotalQuant        := 0;
      TotalItem         := 0;
    End
  Else
    Begin
      TotalQuant        := SQLTemplateORITN3QUANT.asFloat;
      TotalItem         := SQLTemplateTotalItemCalc.asFloat;
    End;
  TotalDesc         := SQLTemplateORITN2VLRDESC.asFloat;
  If DataSet.FieldByName('ServicoLookup').asString = 'S' Then
    TotalVLRSERVICO := SQLTemplateTotalItemCalc.asFloat
  Else
    TotalVLRSERVICO := 0;
  inherited;
end;

procedure TFormCadastroMecOrdemItem.SQLTemplateAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  DM.InserindoItemNV:=True;
  SQLTemplate.DataSource.DataSet.DisableControls;
  SQLTemplate.DataSource.DataSet.Edit;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := False;
  SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRPRODUTO').asFloat :=
  (SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRPRODUTO').asFloat - TotalItem);
  SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRDESC').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRDESC').asFloat - TotalDesc);
  SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRSERVICO').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('ORITN2VLRSERVICO').asFloat - TotalVLRSERVICO);
  SQLTemplate.DataSource.DataSet.Post;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := True;
  SQLTemplate.DataSource.DataSet.EnableControls;
  DM.InserindoItemNV:=False;

  if NumItem <= 0 then
    begin
      SQLNumeroItens.Close;
      SQLNumeroItens.Open;
      if SQLNumeroItens.FindField('COUNT').AsVariant <> Null then
        NumItem := SQLNumeroItens.FindField('COUNT').AsInteger
      else
        NumItem := 0;
    end;
  Dec(NumItem);

end;

procedure TFormCadastroMecOrdemItem.DSTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  If (Sender as TDataSource).State = dsBrowse Then
    Begin
      SaldoAtual.Enabled := False;
    End
  Else
    Begin
      SaldoAtual.Enabled := True;
    End;
  if DSMasterTemplate.DataSet.FieldByName('STATUS').AsString <> 'A' then
    DesabilitarBotoes(True,True,True,True,True);
end;

procedure TFormCadastroMecOrdemItem.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (((Sender as TForm).ActiveControl <> EditProduto) )
     or ((Application.FindComponent('FormTelaConsultaProduto') = nil)
         and ( Application.FindComponent('FormTelaLancamentoGradeNotaFiscal') = nil)) then
  inherited;
end;

procedure TFormCadastroMecOrdemItem.edtHoraExit(Sender: TObject);
begin
  inherited;
  Try
    If edtHora.Text <> '  :  ' then
    begin
      StrToInt(Copy(edtHora.Text,0,2));
      if StrToInt(Copy(edtHora.Text,4,2)) > 59 then
      begin
        ShowMessage('Minutos inválidos');
        edthora.SetFocus;
        exit;
      end;
      SQLTemplateORITN3TEMPO.Value := ConverteHoraParaDecimal(edtHora.Text);
      SQLTemplateORITN3QUANT.Value  := SQLTemplateORITN3TEMPO.value;
    end;
  except
  begin
    ShowMessage('Hora Inválida');
    edtHora.SetFocus;
  end;
  end;
end;

Function TFormCadastroMecOrdemItem.ConverteHoraParaDecimal(Horas:String):Extended;
var nHoras, minutos,  decimal_minutos_str,  final: String;
    decimal_minutos : Extended;
    Final_Real : Extended;
begin
  nhoras := copy (Horas,0,2);
  minutos := copy (Horas,4,2);
  decimal_minutos := (strtofloat(minutos)) / 60;
  decimal_minutos_str := floattostr (decimal_minutos);
  final := (nhoras) + (copy (decimal_minutos_str, 2,4));
  final_Real := strtofloat(final);
  Result := Final_Real;
end;

Function TFormCadastroMecOrdemItem.ConverteDecimalParaHora(Horas:Extended):String;
var
a, b, c: Extended;
begin
  if horas <> 0 then
  begin
    a := Int(Horas);
    b := Frac(Horas)*60;
    c := round(b);
    Result := FormatFloat('00', a) + ':' + FormatFloat('00', c);
  end else
    Result := '00:00';
end;


procedure TFormCadastroMecOrdemItem.SQLTemplateAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if SQLLocate('PRODUTO','PRODICOD','PRODCSERVICO',SQLTemplate.FieldByName('PRODICOD').AsString) = 'S' then
  begin
    PanelServico.Visible := True;
    PanelCodigoDescricao.Height  := 273;
  end else
  begin
    PanelServico.Visible := False;
    PanelCodigoDescricao.Height  := 137;
  end;

  DBEdit9.Visible := True;
  edtHora.Visible := False;
  // caso seja em Horas
  if SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLLocate('PRODUTO','PRODICOD','UNIDICOD',SQLTemplate.FieldByName('PRODICOD').AsString)) = 'H' then
  begin
    edtHora.Visible := True;
    if not SQLTemplateORITN3TEMPO.IsNull then
      edtHora.Text := ConverteDecimalParaHora(SQLtemplate.FieldByName('ORITN3TEMPO').Value);
  end;
end;

procedure TFormCadastroMecOrdemItem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  SQLMecanico.Close;
end;


Function TFormCadastroMecOrdemItem.ProcuraProduto(nBusca:String):Integer;
var
  Query : TQuery;
  I : Integer;
begin
  if nBusca <> '' then
    begin
      Query := TQuery.Create(DM);
      Query.DatabaseName := 'DB';
      Query.SQL.Clear;
      if Pos('.',nBusca) > 0 then // é posição de estoque
        Query.SQL.ADD('SELECT PRODICOD, PRODA60DESCR, PRODA60REFER, PRODA15CODANT FROM PRODUTO WHERE PRODA15APAVIM = "' + nBusca + '"')
      else
        Query.SQL.ADD('SELECT PRODICOD, PRODA60DESCR, PRODA60REFER, PRODA15CODANT FROM PRODUTO WHERE PRODA60CODBAR = "' + nBusca + '"');
      Query.SQL.ADD(' AND PRODICOD = PRODIAGRUPGRADE');
      Query.Open;
      Query.Last;
      Query.First;
      if Query.RecordCount > 1 then
        begin
          Application.CreateForm(TFormTelaRetornoPesquisaProduto,FormTelaRetornoPesquisaProduto);
          with FormTelaRetornoPesquisaProduto do
            begin
              Grid.RowCount := Query.RecordCount + 1;
              Grid.Cells[0,0] := 'Código';
              Grid.Cells[1,0] := 'Descrição';
              Grid.Cells[2,0] := 'Referência';
              Grid.Cells[3,0] := 'Cód. Antigo';
              I := 1;
              while not Query.Eof do
                begin
                  Grid.Cells[0,I] := Query.FieldByName('PRODICOD').AsString;
                  Grid.Cells[1,I] := Query.FieldByName('PRODA60DESCR').AsString;
                  Grid.Cells[2,I] := Query.FieldByName('PRODA60REFER').AsString;
                  Grid.Cells[3,I] := Query.FieldByName('PRODA15CODANT').AsString;
                  Inc(I);
                  Query.Next;
                end;
            end;
          FormTelaRetornoPesquisaProduto.ShowModal;
          if FormTelaRetornoPesquisaProduto.ModalResult = MrOk then
            begin
              Result := StrToInt(FormTelaRetornoPesquisaProduto.Grid.Cells[0,FormTelaRetornoPesquisaProduto.Grid.Row]);
            end;

          FormTelaRetornoPesquisaProduto.Destroy;
        end
      else
        begin
          if not Query.IsEmpty then
            Result := Query.FieldByName('PRODICOD').AsInteger;
        end;

      Query.Close;
      Query.Destroy;
    end;
end;

procedure TFormCadastroMecOrdemItem.DBEdit9Change(Sender: TObject);
begin
  inherited;
  if SQLTemplate.State in ([dsInsert, dsEdit]) then
    SQLTemplateTotalItemCalc.asFloat := (SQLTemplateORITN2VLRUNIT.AsFloat * SQLTemplateORITN3QUANT.asFloat) - SQLTemplateORITN2VLRDESC.AsFloat;
end;

procedure TFormCadastroMecOrdemItem.btnMecanicoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('IDMECANICO');
  FieldOrigem := 'IDMECANICO' ;
  DataSetLookup := SQLMecanico;
  DSMasterSys := DSTemplate;
  CriaFormulario(TFormCadastroMecanicos,'FormCadastroMecanicos',False,True,True,'');
end;

end.
