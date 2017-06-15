unit CadastroManutencaoCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables, FormResources,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, RxLookup, RxDBComb, VarSys,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroManutencaoCupom = class(TFormCadastroTEMPLATE)
    SQLTemplateCUPOA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateCUPOICOD: TIntegerField;
    SQLTemplateCUPODEMIS: TDateTimeField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplateVENDICOD: TIntegerField;
    SQLTemplateCONVICOD: TIntegerField;
    SQLTemplateCUPOCSTATUS: TStringField;
    SQLTemplateCUPON2TOTITENS: TFloatField;
    SQLTemplateCUPON2DESC: TFloatField;
    SQLTemplateCUPON2ACRESC: TFloatField;
    SQLTemplateCUPON2TOTITENSRET: TFloatField;
    SQLTemplateCUPOINRO: TIntegerField;
    SQLTemplateCUPOCTIPOPADRAO: TStringField;
    SQLTemplateCUPON2CONVTAXA: TFloatField;
    SQLTemplateCUPOINROORDCOMPRA: TIntegerField;
    SQLTemplateCUPOA13IDTROCA: TStringField;
    SQLTemplateCUPON2VLRCOMISSAO: TFloatField;
    SQLTemplateCUPOA20CODANT: TStringField;
    SQLTemplateCUPODCANC: TDateTimeField;
    SQLTemplateCUPON2JUROATRAS: TFloatField;
    SQLTemplateCUPON2MULTAATRAS: TFloatField;
    SQLTemplateCUPODPAGTOCONSIG: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateCUPON3BONUSTROCA: TFloatField;
    SQLTemplateCUPODENTREGA: TDateTimeField;
    SQLTemplateTPVDICOD: TIntegerField;
    SQLTemplateUSUAICODCANC: TIntegerField;
    SQLTemplateCUPON3CREDTAXA: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    SQLEmpresa: TRxQuery;
    DSSQLEmpresa: TDataSource;
    SQLTerminal: TRxQuery;
    DSSQLTerminal: TDataSource;
    SQLCliente: TRxQuery;
    DSSQLCliente: TDataSource;
    SQLPlanoRecebimento: TRxQuery;
    DSSQLPlanoRecebimento: TDataSource;
    SQLVendedor: TRxQuery;
    DSSQLVendedor: TDataSource;
    SQLConvenio: TRxQuery;
    DSSQLConvenio: TDataSource;
    SQLTemplatePlanoLookup: TStringField;
    SQLTemplateVendedorLookup: TStringField;
    SQLTemplateTerminalLookup: TStringField;
    SQLTemplateEmpresaLookup: TStringField;
    SQLTemplateClienteLookup: TStringField;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DSSQLContasReceber: TDataSource;
    SQLContasReceber: TRxQuery;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TFloatField;
    SQLContasReceberCTRCN2DESCFIN: TFloatField;
    SQLContasReceberCTRCN2TXJURO: TFloatField;
    SQLContasReceberCTRCN2TXMULTA: TFloatField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberCTRCN2TOTREC: TFloatField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit4: TDBEdit;
    ComboCliente: TRxDBLookupCombo;
    DBEdit5: TDBEdit;
    ComboPlano: TRxDBLookupCombo;
    ComboVendedor: TRxDBLookupCombo;
    RxDBLookupCombo5: TRxDBLookupCombo;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    ComboTipoPadrao: TRxDBComboBox;
    Panel6: TPanel;
    SQLOperacaoEstoque: TRxQuery;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    DSSQLOperacaoEstoque: TDataSource;
    ComboOperacaoEstoque: TRxDBLookupCombo;
    Label15: TLabel;
    SQLTemplateOPESICOD: TIntegerField;
    SQLTemplateCFOPA5COD: TStringField;
    Label16: TLabel;
    ComboCFOP: TRxDBLookupCombo;
    SQLCFOP: TRxQuery;
    SQLCFOPCFOPA5COD: TStringField;
    SQLCFOPCFOPA60DESCR: TStringField;
    DSSQLCFOP: TDataSource;
    TabItens: TTabSheet;
    DBGridItens: TDBGrid;
    Panel7: TPanel;
    Label14: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    AcessaProduto: TSpeedButton;
    DBEditQuantidade: TDBEdit;
    DBEditUnitario: TDBEdit;
    BTItemNovo: TBitBtn;
    BtItemGravar: TBitBtn;
    BtItemExcluir: TBitBtn;
    Panel8: TPanel;
    EditCdProduto: TEdit;
    DBEdit6: TDBEdit;
    SQLCupomItem: TRxQuery;
    SQLCupomItemDescricaoProduto: TStringField;
    DSSQLCupomItem: TDataSource;
    SQLCupomItemCUPOA13ID: TStringField;
    SQLCupomItemCPITIPOS: TIntegerField;
    SQLCupomItemPRODICOD: TIntegerField;
    SQLCupomItemCPITCSTATUS: TStringField;
    SQLCupomItemCPITN3QTD: TFloatField;
    SQLCupomItemCPITN3QTDTROCA: TFloatField;
    SQLCupomItemCPITN3VLRUNIT: TFloatField;
    SQLCupomItemCPITN3VLRCUSTUNIT: TFloatField;
    SQLCupomItemCPITN2DESC: TFloatField;
    SQLCupomItemCPITN3VLRUNITLUCR: TFloatField;
    SQLCupomItemCOITN2ICMSALIQ: TFloatField;
    SQLCupomItemVENDICOD: TIntegerField;
    SQLCupomItemPENDENTE: TStringField;
    SQLCupomItemREGISTRO: TDateTimeField;
    SQLCupomItemCPITN2VLRDESCSOBTOT: TFloatField;
    SQLCupomItemCPITN2BASEICMS: TFloatField;
    SQLCupomItemCPITN2VLRICMS: TFloatField;
    SQLCupomItemCPITN2VLRQDEVERIAVENDER: TFloatField;
    SQLCupomItemBOMBICOD: TIntegerField;
    SQLCupomItemEMPRICOD: TIntegerField;
    SQLCupomItemENCERRANTE: TIntegerField;
    SQLCupomItemCPITTOBS: TStringField;
    SQLCupomItemCPITN2VLRPIS: TFloatField;
    SQLCupomItemCPITN2VLRCOFINS: TFloatField;
    SQLCupomItemADICIONAIS: TStringField;
    SQLCupomItemCPITN2IMPOSTOMED: TFloatField;
    TabFinanceiro: TTabSheet;
    SQLTotal: TRxQuery;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    SQLCupomItemTotalItemCalc: TFloatField;
    SQLCupomItemCSTIcms: TStringField;
    Label17: TLabel;
    DBEditDesc: TDBEdit;
    DBEdit15: TDBEdit;
    Label20: TLabel;
    DBEdit16: TDBEdit;
    Label21: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ComboAvalistaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLContasReceberBeforeDelete(DataSet: TDataSet);
    procedure SQLContasReceberBeforeInsert(DataSet: TDataSet);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure BTItemNovoClick(Sender: TObject);
    procedure BtItemGravarClick(Sender: TObject);
    procedure BtItemExcluirClick(Sender: TObject);
    procedure EditCdProdutoExit(Sender: TObject);
    procedure AcessaProdutoClick(Sender: TObject);
    procedure EditCdProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLCupomItemCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CalculaTotal ;

  public
    { Public declarations }
  end;

var
  FormCadastroManutencaoCupom: TFormCadastroManutencaoCupom;

implementation

uses UnitLibrary, DataModulo, SearchLibrary, CadastroProdutos;

{$R *.dfm}

procedure TFormCadastroManutencaoCupom.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CUPOM' ;
  SQLCliente.Open;
  SQLConvenio.Open;
  SQLVendedor.Open;
  SQLPlanoRecebimento.Open;
  SQLContasReceber.Open;
  SQLOperacaoEstoque.Open;
  SQLCFOP.Open;
end;

procedure TFormCadastroManutencaoCupom.ComboAvalistaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value    <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
       (sender  as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormCadastroManutencaoCupom.SQLContasReceberBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  Informa('Você Não Deve Excluir Um Cupom, Deve Cancelar!');
  SQLContasReceber.Cancel;
  Abort;
end;

procedure TFormCadastroManutencaoCupom.SQLContasReceberBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  Informa('Você Não Pode Incluir Um Cupom, Deve Efetuar Uma Venda No Módulo CASH!');
  SQLContasReceber.Cancel;
  Abort;
end;

procedure TFormCadastroManutencaoCupom.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('CLIEA13ID').AsVariant <> null then
    if DM.ProcuraRegistro('CLIENTE',['CLIEA13ID'],[DataSet.FieldByName('CLIEA13ID').AsString],1) then
      DataSet.FieldByName('ClienteLookup').AsVariant    := DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').AsVariant
    else
      DataSet.FieldByName('ClienteLookup').asString := MensagemLookUp
  else
    DataSet.FieldByName('ClienteLookup').AsVariant  := Null;
end;

procedure TFormCadastroManutencaoCupom.Button3Click(Sender: TObject);
begin
  inherited;
  If (Sender as TRxSpeedButton).Name='Button3' Then
    begin
      PagePrincipal.ActivePage := TabItens;
      SQLCupomItem.Close;
      SQLCupomItem.ParamByName('CUPOA13ID').AsString := SQLTemplateCUPOA13ID.AsString;
      SQLCupomItem.Open;
      BTItemNovo.SetFocus;
    end;
  If (Sender as TRxSpeedButton).Name='Button4' Then
    begin
      {PagePrincipal.ActivePage := TabFinanceiro;
      SQLContasReceber.Close;
      SQLContasReceber.ParamByName('CUPOA13ID').AsString := SQLTemplateCUPOA13ID.AsString;
      SQLContasReceber.Open;
      BTParcNovo.SetFocus;}
    end;

end;

procedure TFormCadastroManutencaoCupom.BTItemNovoClick(Sender: TObject);
begin
  inherited;
  if SQLTemplateCUPOCSTATUS.Value = 'A' then
    begin
      if not SQLCupomItem.Active then
        begin
          SQLCupomItem.Close;
          SQLCupomItem.ParamByName('CUPOA13ID').AsString := SQLTemplateCUPOA13ID.AsString;
          SQLCupomItem.Open;
        end;
      SQLCupomItem.Append;
      SQLCupomItemCUPOA13ID.Value   := SQLTemplateCUPOA13ID.AsString;
      SQLCupomItemCPITIPOS.Value    := SQLMax('CUPOMITEM','CPITIPOS','CUPOA13ID='''+SQLTemplateCUPOA13ID.AsString+'''');
      SQLCupomItemCPITCSTATUS.Value := 'A';
      SQLCupomItemCPITN2DESC.Value  :=  0;

      // Liberar Campos dos itens
      EditCdProduto.ReadOnly    := False;
      DBEditUnitario.ReadOnly   := False;
      DBEditQuantidade.ReadOnly := False;
      DBEditDesc.ReadOnly       := False;
      EditCdProduto.Clear;
      EditCdProduto.SetFocus;
    end
  else
    ShowMessage('Este Cupom não está em Ativo! Não é permitido incluir item!');
end;

procedure TFormCadastroManutencaoCupom.BtItemGravarClick(Sender: TObject);
begin
  inherited;
  if SQLCupomItemPRODICOD.Value < 1 then
    begin
      ShowMessage('O campo codigo do produto deve ser maior do que zero! Verifique!');
      EditCdProduto.SetFocus;
      exit;
    end;

  if SQLCupomItemCPITN3QTD.Value = 0 then
    begin
      ShowMessage('O campo quantidade deve ser maior do que zero! Verifique!');
      DBEditQuantidade.SetFocus;
      exit;
    end;

  if SQLCupomItemCPITN3VLRUNIT.Value = 0 then
    begin
      ShowMessage('O campo valor unitário não foi informado! Verifique!');
      DBEditUnitario.SetFocus;
      exit;
    end;

  if (SQLCupomItem.State in dsEditModes) then
    begin
      SQLCupomItemCUPOA13ID.Value   := SQLTemplateCUPOA13ID.AsString;
      SQLCupomItemCPITIPOS.Value    := SQLMax('CUPOMITEM','CPITIPOS','CUPOA13ID='''+SQLTemplateCUPOA13ID.AsString+'''');
      SQLCupomItemCPITCSTATUS.Value := 'A';
      SQLCupomItem.Post;
      SQLCupomItem.Close;
      SQLCupomItem.ParamByName('CUPOA13ID').AsString := SQLTemplateCUPOA13ID.AsString;
      SQLCupomItem.open;
      SQLCupomItem.last;
      CalculaTotal;

      // Bloquear Campos dos itens
      EditCdProduto.ReadOnly    := True;
      DBEditUnitario.ReadOnly   := True;
      DBEditQuantidade.ReadOnly := True;
      DBEditDesc.ReadOnly       := True;

      BtItemNovo.SetFocus;
    end
  else
    ShowMessage('Não existem dados a ser gravados!');
end;

procedure TFormCadastroManutencaoCupom.BtItemExcluirClick(Sender: TObject);
begin
  inherited;
  if Pergunta('Não','Tem certeza que deseja excluir o item lançado atualmente?') then
    begin
      SQLCupomItem.Delete;
      SQLCupomItem.Close;
      SQLCupomItem.ParamByName('CUPOA13ID').AsString := SQLTemplateCUPOA13ID.AsString;
      SQLCupomItem.open;
      CalculaTotal;
      BtItemNovo.SetFocus;
    end;
end;

procedure TFormCadastroManutencaoCupom.CalculaTotal ;
begin
  SQLTotal.Close;
  SQLTotal.SQL.Clear;
  if SQLCupomItemCPITN3QTD.Value > 0 then
    SQLTotal.SQL.Add('Select Sum((CPITN3VLRUNIT*CPITN3QTD)-CPITN2DESC) as TotalGeral from CUPOMITEM where CUPOA13ID = '''+SQLTemplateCUPOA13ID.Value+'''')
  else
    SQLTotal.SQL.Add('Select Sum((CPITN3VLRUNIT*CPITN3QTDTROCA)-CPITN2DESC) as TotalGeral from CUPOMITEM where CUPOA13ID = '''+SQLTemplateCUPOA13ID.Value+'''');

  SQLTotal.Prepare;
  SQLTotal.Open;
  try
    SQLtemplate.Edit;
    try
      SQLTemplateCUPON2TOTITENS.value := SQLTotal.FieldByName('TotalGeral').Value;
    except
      SQLTemplateCUPON2TOTITENS.value := 0;
    end;
    SQLtemplate.Post;
  except
    Application.ProcessMessages;
  end;
end ;

procedure TFormCadastroManutencaoCupom.EditCdProdutoExit(Sender: TObject);
begin
  inherited;
  if EditCdProduto.Text <> '' then
    if FindProduct(EditCdProduto,SQLCupomItem.FieldByName('PRODICOD')) then
      DBEditUnitario.SetFocus;
end;

procedure TFormCadastroManutencaoCupom.AcessaProdutoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := SQLCupomItem.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  DBEditUnitario.SetFocus;
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,False,'');
end;

procedure TFormCadastroManutencaoCupom.EditCdProdutoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    AcessaProduto.Click;
end;

procedure TFormCadastroManutencaoCupom.SQLCupomItemCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  If SQLCupomItemPRODICOD.AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[SQLCupomItemPRODICOD.AsString],1) Then
        SQLCupomItemDescricaoProduto.AsVariant := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;

      SQLCupomItemCSTIcms.AsString := FormatFloat('###000',DM.SQLTemplate.FindField('PRODISITTRIB').AsInteger);

      if (SQLCupomItemCPITN3VLRUNIT.IsNull) then
        SQLCupomItemCPITN3VLRUNIT.Value := DM.SQLTemplate.FindField('PRODN3VLRVENDA').AsVariant;

      if (not SQLCupomItemCPITN3VLRUNIT.IsNull) and (not SQLCupomItemCPITN3QTD.IsNull) then
        SQLCupomItemTotalItemCalc.value := (SQLCupomItemCPITN3VLRUNIT.Value * SQLCupomItemCPITN3QTD.Value) - SQLCupomItemCPITN2DESC.Value
      else
        SQLCupomItemTotalItemCalc.value := 0;
    End
  else
    SQLCupomItemDescricaoProduto.AsString := 'Produto não Encontrado';
end;

end.
