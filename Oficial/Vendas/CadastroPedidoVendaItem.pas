unit CadastroPedidoVendaItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, EDBNum, RxDBComb, ToolEdit, RXDBCtrl, DBCtrls,  VarSys, FormResources,
  CurrEdit, Placemnt, UnitLibrary, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroPedidoVendaItem = class(TFormCadastroTEMPLATE)
    Label8: TLabel;
    DBEdit17: TDBEdit;
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplatePVITIITEM: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePVITN3QUANT: TBCDField;
    SQLTemplatePVITN2VLRUNIT: TBCDField;
    SQLTemplatePVITN2PERCDESC: TBCDField;
    SQLTemplatePVITN2VLRDESC: TBCDField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateProdutoLookUp: TStringField;
    SQLTemplateGradeCodLookUp: TIntegerField;
    SQLTemplateAgrupGradeLookUp: TIntegerField;
    SQLTemplateTotalItemCalc: TBCDField;
    SQLTemplateReferenciaLookUp: TStringField;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit8: TEvDBNumEdit;
    dbeVlrUnit: TEvDBNumEdit;
    dbePercDesc: TEvDBNumEdit;
    dbeVlrDesc: TEvDBNumEdit;
    Label14: TLabel;
    Label15: TLabel;
    EvDBNumEdit2: TEvDBNumEdit;
    SQLTemplatePVITN3QUANTVEND: TBCDField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBDateEdit;
    RxDBComboBox1: TRxDBComboBox;
    RxDBComboBox2: TRxDBComboBox;
    DBEdit3: TEvDBNumEdit;
    DBEdit4: TEvDBNumEdit;
    DBEdit5: TEvDBNumEdit;
    Label24: TLabel;
    EvDBNumEdit3: TEvDBNumEdit;
    EvDBNumEdit1: TEvDBNumEdit;
    SQLTemplatePDVDA60OBS: TStringField;
    Label16: TLabel;
    EvDBNumEdit4: TEvDBNumEdit;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    SQLTemplatePVITN2PERCCOMIS: TBCDField;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    SQLTemplatePDVDA255OBS1: TStringField;
    LSaldo: TLabel;
    SaldoAtual: TCurrencyEdit;
    SQLGeral: TRxQuery;
    SQLTemplateLOTEA30NRO: TStringField;
    DBEditLote: TDBEdit;
    LabelLote: TLabel;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    DBEdit15: TDBEdit;
    Label20: TLabel;
    DBEdit16: TDBEdit;
    Label21: TLabel;
    DBEdit18: TDBEdit;
    SQLTemplateSUBGA60DESCR: TStringField;
    SQLTemplateGRUPA60DESCR: TStringField;
    SQLTemplateVARIA60DESCR: TStringField;
    SQLGrupoSubGrupoVariacao: TRxQuery;
    SQLGrupoSubGrupoVariacaoPRODICOD: TIntegerField;
    SQLGrupoSubGrupoVariacaoGRUPA60DESCR: TStringField;
    SQLGrupoSubGrupoVariacaoSUBGA60DESCR: TStringField;
    SQLGrupoSubGrupoVariacaoVARIA60DESCR: TStringField;
    MnPdVdImportarProdutosdoColetor: TMenuItem;
    Label9: TLabel;
    BtnProduto: TSpeedButton;
    Label27: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit11: TDBEdit;
    EditProduto: TEdit;
    RadioPesquisa: TRadioGroup;
    DBEdit7: TDBEdit;
    DBEdit23: TDBEdit;
    SQLTemplateCodAntigoLookup: TStringField;
    SQLComposicaoItemPedido: TRxQuery;
    SQLComposicaoItemPedidoPDVDA13ID: TStringField;
    SQLComposicaoItemPedidoPVITIITEM: TIntegerField;
    SQLComposicaoItemPedidoPRODICOD: TIntegerField;
    SQLComposicaoItemPedidoPRODICODFILHO: TIntegerField;
    SQLComposicaoItemPedidoPVCON3QUANT: TBCDField;
    SQLComposicaoItemPedidoPVCON2VLRUNIT: TBCDField;
    SQLComposicaoItemPedidoPVCOA254OBS: TStringField;
    SQLComposicaoItemPedidoREGISTRO: TDateTimeField;
    SQLComposicaoItemPedidoPENDENTE: TStringField;
    mnComposiodoProduto: TMenuItem;
    DBGrid1: TDBGrid;
    DSSQLComposicaoItemPedido: TDataSource;
    SQLComposicaoItemPedidoProdutoDescr: TStringField;
    SQLComposicaoItemPedidoPVCOICOD: TIntegerField;
    SQLComposicaoItemPedidoPVCON2PERCDESC: TBCDField;
    SQLComposicaoItemPedidoPVCON2VLRDESC: TBCDField;
    SQLTemplateControlaSerieLookup: TStringField;
    Label29: TLabel;
    EvDBNumEdit5: TEvDBNumEdit;
    SQLTotalQdte: TRxQuery;
    SQLTotalQdteTOTALQTDEITEM: TBCDField;
    DSSQLTotalQdte: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplatePRODICODChange(Sender: TField);
    procedure SQLTemplatePVITN2PERCDESCChange(Sender: TField);
    procedure SQLTemplatePVITN2VLRUNITChange(Sender: TField);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure SQLTemplateAfterDelete(DataSet: TDataSet);
    procedure BtnProdutoClick(Sender: TObject);
    procedure SQLTemplateAfterScroll(DataSet: TDataSet);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure DBEditLoteExit(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure MnPdVdImportarProdutosdoColetorClick(Sender: TObject);
    procedure EditProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditProdutoExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditProdutoEnter(Sender: TObject);
    procedure mnComposiodoProdutoClick(Sender: TObject);
    procedure SQLComposicaoItemPedidoCalcFields(DataSet: TDataSet);
    procedure Acessonegado(Field: TField; Valor: Double);
    procedure SQLComposicaoItemPedidoBeforePost(DataSet: TDataSet);
    procedure SQLTemplatePVITN2VLRDESCChange(Sender: TField);
    procedure VerificaAutorizacaoValor(CampoVerificacao:TField; ValorAnterior:Double);
    procedure dbeVlrUnitEnter(Sender: TObject);
    procedure dbePercDescEnter(Sender: TObject);
    procedure dbeVlrDescEnter(Sender: TObject);
    procedure SQLTemplatePVITN3QUANTChange(Sender: TField);
    procedure SQLTemplateAfterCancel(DataSet: TDataSet);
    procedure FormCadastroNotaFiscalItemNmerosdeSrie1Click(
      Sender: TObject);
    procedure SQLTemplateAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    ProcuraProduto,
    Ocupado, Autenticado, PermiteAlterarValorVenda :Boolean;
    NovoTotalItem,
    NovoTotalDesc, ValorAnterior :Double;
    TotalItem,
    TotalDesc,
    TotalProdColetor:Double;
  public
    { Public declarations }
  end;

var
  FormCadastroPedidoVendaItem: TFormCadastroPedidoVendaItem;

implementation

uses DataModulo, TelaConsultaProduto, TelaLancamentoGradePedido,
     TelaSaldoPorLote, TelaImportaItens, SearchLibrary,
     TelaProdVendItemComp, WaitWindow, TelaProdutoNumeroSerie,
  CadastroProdutos;

{$R *.dfm}

procedure TFormCadastroPedidoVendaItem.FormCreate(Sender: TObject);
begin
  inherited;

  TABELA := 'PEDIDOVENDAITEM';
  if not SQLComposicaoItemPedido.Active then SQLComposicaoItemPedido.Open;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  Autenticado := True;

  DataSet.FindField('PDVDA13ID').Value   := DataSet.DataSource.DataSet.FindField('PDVDA13ID').Value;
  SQLTemplatePVITN3QUANT.asFloat         := 1;
  SQLTemplatePVITN3QUANTVEND.asFloat     := 0;
  SQLTemplatePVITN2VLRUNIT.asFloat       := 0;
  SQLTemplatePVITN2PERCDESC.asFloat      := 0;
  SQLTemplatePVITN2VLRDESC.asFloat       := 0;
  EditProduto.Clear;

  Autenticado := False;
  ValorAnterior := 0;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateTotalItemCalc.asFloat := (SQLTemplatePVITN2VLRUNIT.AsFloat * SQLTemplatePVITN3QUANT.asFloat) - SQLTemplatePVITN2VLRDESC.AsFloat;
  If DM.GerandoPedidoVenda Then Exit;
  If DataSet.FieldByName('PRODICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) Then
        Begin
          DataSet.FieldByName('ProdutoLookup').AsVariant       := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;

          if (DM.SQLTemplate.FindField('GRADICOD').AsVariant <> NULL) and (DM.SQLTemplate.FindField('GRTMICOD').AsVariant <> NULL) then
                DataSet.FieldByName('ProdutoLookup').AsVariant := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                                   ' / ' + RetornaTamanhoProduto(DM.SQLTemplate.FindField('GRADICOD').AsString,
                                                                                                 DM.SQLTemplate.FindField('GRTMICOD').AsString);
          if DM.SQLTemplate.FindField('CORICOD').AsVariant <> NULL then
              DataSet.FieldByName('ProdutoLookup').AsVariant   := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                               ' / ' + RetornaCorProduto(DM.SQLTemplate.FindField('CORICOD').AsString);

          DataSet.FieldByName('GradeCodLookup').AsVariant      := DM.SQLTemplate.FindField('GRADICOD').AsVariant;
          DataSet.FieldByName('AgrupGradeLookup').AsVariant    := DM.SQLTemplate.FindField('PRODIAGRUPGRADE').AsVariant;
          DataSet.FieldByName('ReferenciaLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60REFER').AsVariant;
          DataSet.FieldByName('CodAntigoLookup').AsVariant     := DM.SQLTemplate.FindField('PRODA15CODANT').AsVariant;
          DataSet.FieldByName('ControlaSerieLookup').AsVariant := DM.SQLTemplate.FindField('PRODCTEMNROSERIE').AsVariant;
        End
      Else
        Begin
          DataSet.FieldByName('ProdutoLookup').asString     := MensagemLookUp;
          DataSet.FieldByName('GradeCodLookup').AsVariant   := NULL;
          DataSet.FieldByName('AgrupGradeLookup').AsVariant := NULL;
          DataSet.FieldByName('ReferenciaLookup').AsVariant := MensagemLookUp;
          DataSet.FieldByName('CodAntigoLookup').AsVariant  := MensagemLookUp;
          DataSet.FieldByName('ControlaSerieLookup').AsVariant := NULL;
        End;
    End
  Else
    Begin
      DataSet.FieldByName('ProdutoLookup').AsVariant  := Null;
      DataSet.FieldByName('GradeCodLookup').AsVariant := NULL;
      DataSet.FieldByName('AgrupGradeLookup').AsVariant := NULL;
      DataSet.FieldByName('ReferenciaLookup').AsVariant := NULL;
      DataSet.FieldByName('ControlaSerieLookup').AsVariant := NULL;
    End;
  if DataSet.FieldByName('PRODICOD').AsVariant <> null then
    begin
      SQLGrupoSubGrupoVariacao.Close;
      SQLGrupoSubGrupoVariacao.ParamByName('Produto').Value := DataSet.FieldByName('PRODICOD').AsInteger;
      SQLGrupoSubGrupoVariacao.Open;
      if not SQLGrupoSubGrupoVariacao.IsEmpty then
        begin
          DataSet.FieldByName('GRUPA60DESCR').AsVariant := SQLGrupoSubGrupoVariacaoGRUPA60DESCR.AsVariant;
          DataSet.FieldByName('SUBGA60DESCR').AsVariant := SQLGrupoSubGrupoVariacaoSUBGA60DESCR.AsVariant;
          DataSet.FieldByName('VARIA60DESCR').AsVariant := SQLGrupoSubGrupoVariacaoVARIA60DESCR.AsVariant;
        end
      else
        begin
          DataSet.FieldByName('GRUPA60DESCR').AsVariant := 'Não Encontrado';
          DataSet.FieldByName('SUBGA60DESCR').AsVariant := 'Não Encontrado';
          DataSet.FieldByName('VARIA60DESCR').AsVariant := 'Não Encontrado';
        end;
    end;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplatePRODICODChange(
  Sender: TField);
begin
  inherited;
  EditProduto.Text := (Sender as TField).AsString;
  If ProcuraProduto or DM.GerandoPedidoVenda Then Exit;
  If EncontrouProduto(SQLTemplate.FieldByName('PRODICOD').asString,DM.SQLTemplate) Then
    Begin
      ProcuraProduto := True;
      SQLTemplate.FieldByName('PRODICOD').asVariant := DM.SQLTemplate.FindField('PRODICOD').asVariant;
      ProcuraProduto := False;
    End;
  If (SQLTemplate.FieldByName('PRODICOD').AsVariant <> null) and (SQLTemplate.State = dsInsert) Then
     Begin
      If (SQLTemplate.State in DsEditModes) Then
        Begin
          Ocupado:=True;
          SQLTemplatePVITN2VLRUNIT.asFloat := RetornaPreco(DM.SQLTemplate,DM.SQLConfigVenda.Fieldbyname('TPRCICOD').asString,SQLTemplate.DataSource.DataSet.FieldByName('ClienteTabelaPrecoLookUp').asString);
          Ocupado:=False;
        End;
      If (SQLTemplate.FindField('GradeCodLookUp').asVariant<>Null) and
         (SQLTemplate.FindField('AgrupGradeLookUp').asVariant<>Null) and
         (Application.FindComponent('FormTelaImportaItens')= nil) Then
        begin
          SQLTemplate.DisableControls;
          CriaFormulario(TFormTelaLancamentoGradePedido,'FormTelaLancamentoGradePedido',False,False,True,'');
        end
      else
        begin
          SaldoAtual.Value := 0 ;
          if not FileExists('NaoMostraSaldoConsultaProduto.Arq') then
            begin
              SQLGeral.Close ;
              SQLGeral.SQL.Clear ;
              SQLGeral.SQL.Add('select PSLDN3QTDE, PSLDN3QTDMIN, PSLDN3QTDMAX from PRODUTOSALDO') ;
              SQLGeral.SQL.Add('where EMPRICOD = ' + EmpresaPadrao) ;
              SQLGeral.SQL.Add(' and   PRODICOD = ' + SQLTemplate.FieldByName('PRODICOD').AsString) ;
              SQLGeral.Open ;
              if not SQLGeral.Eof then
                begin
                  SaldoAtual.Font.Color := clBlack ;
                  SaldoAtual.Value := SQLGeral.FieldByName('PSLDN3QTDE').AsFloat;
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
     end;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplatePVITN2PERCDESCChange(
  Sender: TField);
begin
  VerificaAutorizacaoValor(Sender,ValorAnterior);
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  PermiteAlterarValorVenda := True;
  If (SQLTemplatePVITN2PERCDESC.asFloat > 0) Then
    SQLTemplatePVITN2VLRDESC.asFloat  := (SQLTemplatePVITN2VLRUNIT.AsFloat * SQLTemplatePVITN3QUANT.AsFloat) * (SQLTemplatePVITN2PERCDESC.asFloat / 100)
  Else
    SQLTemplatePVITN2VLRDESC.asFloat := 0;
  PermiteAlterarValorVenda := False;
  Ocupado:=False;
end;

procedure TFormCadastroPedidoVendaItem.Acessonegado(Field: TField; Valor: Double);
   begin
      Informa('Você não tem permissão para alterar valores neste módulo!');
      PermiteAlterarValorVenda := True;
      Field.AsFloat := Valor;
      PermiteAlterarValorVenda := False;
      Autenticado := False;
   end;

procedure TFormCadastroPedidoVendaItem.VerificaAutorizacaoValor(CampoVerificacao:TField; ValorAnterior:Double);
var  RetornoUser: TInfoRetornoUser;
begin
//Verifica se o usuario pode alterar o vlr do item
  if not UsuarioMaster then
    if not Autenticado then
      begin
        if (DM.SQLConfigVenda.Fieldbyname('CFVECSOLSENHAALTVLR').AsString = 'S') and not PermiteAlterarValorVenda then
          if AutenticaUsuario(UsuarioAtualNome,'USUAA60LOGIN',RetornoUser) <> 'S' then
            begin
              Autenticado := True;
              if DM.SQLUsuario.Locate('USUAICOD', RetornoUser.CodUsuarioAutenticado, [loCaseInsensitive]) then
                 begin
                   if DM.SQLUsuario.FieldByName('USUACALTVLRVENDA').IsNull then
                      begin
                        AcessoNegado(CampoVerificacao, ValorAnterior);
                      end
                   else
                      if DM.SQLUsuario.FieldByName('USUACALTVLRVENDA').AsString <> 'S' then
                          begin
                            AcessoNegado(CampoVerificacao, ValorAnterior);
                          end;
                 end
              else
                 AcessoNegado(CampoVerificacao, ValorAnterior);
            end;
      end;
//  CampoVerificacao.FocusControl;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplatePVITN2VLRUNITChange(
  Sender: TField);
begin
  VerificaAutorizacaoValor(Sender,ValorAnterior);
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  PermiteAlterarValorVenda := True;
  if SQLTemplatePVITN2PERCDESC.asFloat > 0  then
    SQLTemplatePVITN2VLRDESC.asFloat  := (SQLTemplatePVITN2VLRUNIT.AsFloat * SQLTemplatePVITN3QUANT.asFloat) * (SQLTemplatePVITN2PERCDESC.asFloat / 100);
  PermiteAlterarValorVenda := False;
  Ocupado:=False;

end;

procedure TFormCadastroPedidoVendaItem.SQLTemplateAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  if DM.GerandoPedidoVenda then Exit;
  if DM.ImportandoColetor then Exit;
  DM.InserindoItemPV:=True;
  SQLTemplate.DataSource.DataSet.Edit;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := False;
  SQLTemplate.DataSource.DataSet.FindField('PDVDN2TOTPROD').asFloat :=
       (SQLTemplate.DataSource.DataSet.FindField('PDVDN2TOTPROD').asFloat - TotalItem) + NovoTotalItem;
  SQLTemplate.DataSource.DataSet.FindField('PDVDN2VLRDESC').asFloat  :=
       (SQLTemplate.DataSource.DataSet.FindField('PDVDN2VLRDESC').asFloat - TotalDesc) + NovoTotalDesc;
  SQLTemplate.DataSource.DataSet.Post;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := True;
  DM.InserindoItemPV:=False;

  Autenticado := False;

  if SQLTemplateControlaSerieLookup.AsVariant <> Null then
    if SQLTemplateControlaSerieLookup.AsString = 'S' then
      begin
        Application.CreateForm(TFormTelaGeralModalCadastroProdutoNumeroSerie,FormTelaGeralModalCadastroProdutoNumeroSerie);
        FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.Close;
        FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.MacroByName('MFiltro').AsString := 'PDVDA13ID = "' + SQLTemplatePDVDA13ID.AsString + '" AND PRODICOD = ' + SQLTemplatePRODICOD.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.Open;
        FormTelaGeralModalCadastroProdutoNumeroSerie.CodProduto    := SQLTemplatePRODICOD.AsInteger;
        FormTelaGeralModalCadastroProdutoNumeroSerie.Destino       := 'C';
        FormTelaGeralModalCadastroProdutoNumeroSerie.IDPedidoVenda := SQLTemplatePDVDA13ID.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.IDCliente     := DSMasterTemplate.DataSet.FieldByName('CLIEA13ID').AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Caption := FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Caption + ' - ' + SQLTemplateProdutoLookUp.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Update;
        FormTelaGeralModalCadastroProdutoNumeroSerie.QtdeSerie           := SQLTemplatePVITN3QUANT.AsInteger;
        FormTelaGeralModalCadastroProdutoNumeroSerie.ShowModal;
      end;
  SQLTotalQdte.Close;
  SQLTotalQdte.MacroByName('MPedidoVenda').AsString := 'PDVDA13ID = "' + DSMasterTemplate.DataSet.FieldByName('PDVDA13ID').AsString + '"';
  SQLTotalQdte.Open;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  if (DM.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S') and (SQLTemplateLOTEA30NRO.AsString = '') then
    if Application.MessageBox('O número do lote não foi informado, Deseja continuar mesmo assim ?','Advanced Control',MB_YESNO + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONQUESTION + MB_DEFBUTTON1)= IdNo then
      begin
        SQLTemplateLOTEA30NRO.FocusControl;
        Abort;
      end;
  If (SQLTemplatePVITN2VLRUNIT.asFloat = 0) Then
    Begin
      ShowMessage('O valor não pode ser zero!');
      SQLTemplatePVITN2VLRUNIT.FocusControl;
      Abort;
    End;
  If (SQLTemplatePVITN3QUANT.asFloat = 0) Then
    Begin
      ShowMessage('A quantidade não pode ser zero!');
      SQLTemplatePVITN3QUANT.FocusControl;
      Abort;
    End;
  inherited;

  if SQLTemplate.State in [dsInsert] then
    begin
      SQLGeral.Close;
      SQLGeral.SQL.Text := 'select * from PRODUTOCOMPOSICAO where PRODICOD = ''' + SQLTemplatePRODICOD.AsString + '''';
      SQLGeral.Open;

      if SQLGeral.RecordCount > 0 then
         if Application.MessageBox('Este Produto contem Composição, deseja Vizualizar/Alterar?','Atenção',MB_YESNO+MB_SYSTEMMODAL+MB_ICONQUESTION) = idYES then
            begin
               MakeWindowMessage('Verificando Composição do Produto');
               Application.ProcessMessages;

               DSMasterSys := DSTemplate;
               Application.CreateForm(TFormTelaProdVendItemComp,FormTelaProdVendItemComp);
               FormTelaProdVendItemComp.ShowModal;
               if FormTelaProdVendItemComp.ModalResult = mrOk then
                  begin
                     PermiteAlterarValorVenda            := True;
                     SQLTemplatePVITN2VLRUNIT.AsFloat    := FormTelaProdVendItemComp.SQLSomaTOTALVALOR.AsFloat;
//                     SQLTemplatePVITN2PERCDESC.AsFloat   := FormTelaProdVendItemComp.SQLSomaTOTALPERCDESC.AsFloat;
                     SQLTemplatePVITN2VLRDESC.AsFloat    := FormTelaProdVendItemComp.SQLSomaTOTALDESC.AsFloat;
                     PermiteAlterarValorVenda            := False;
                     ValorAnterior                       := FormTelaProdVendItemComp.SQLSomaTOTALVALOR.AsFloat;
                  end;
               DestroyWindow;
               FormTelaProdVendItemComp.Close;
               FormTelaProdVendItemComp.Free;
            end
         else
            begin
              MakeWindowMessage('Gravando Composição do Produto');
              Application.ProcessMessages;

              SQLGeral.First;

              while not SQLGeral.Eof do
                begin
                  SQLComposicaoItemPedido.Append;
                  SQLComposicaoItemPedidoPDVDA13ID.AsString        := SQLTemplatePDVDA13ID.AsString;
                  SQLComposicaoItemPedidoPVITIITEM.AsString        := SQLTemplatePVITIITEM.AsString;
                  SQLComposicaoItemPedidoPRODICOD.AsInteger        := SQLGeral.FieldByName('PRODICOD').AsInteger;
                  SQLComposicaoItemPedidoPRODICODFILHO.AsString    := SQLGeral.FieldByName('PRODICODFILHO').AsString;
                  SQLComposicaoItemPedidoPVCON3QUANT.AsFloat       := SQLGeral.FieldByName('PRODN3QTDE').AsFloat;
                  SQLComposicaoItemPedidoPVCON2VLRUNIT.AsFloat     := (SQLGeral.FieldByName('PRODN3VLRTOTAL').AsFloat / SQLGeral.FieldByName('PRODN3QTDE').AsFloat);
                  SQLComposicaoItemPedidoPVCON2PERCDESC.AsInteger  := 0;
                  SQLComposicaoItemPedidoPVCON2VLRDESC.AsInteger   := 0;
                  SQLComposicaoItemPedidoREGISTRO.AsDateTime       := SQLGeral.FieldByName('REGISTRO').AsDateTime;
                  SQLComposicaoItemPedidoPENDENTE.AsString         := SQLGeral.FieldByName('PENDENTE').AsString;
                  SQLComposicaoItemPedido.Post;

                  SQLGeral.Next;
                end;
              DestroyWindow;
            end;
    end;
    if (ValorAnterior <> 0) and (ValorAnterior <> SQLTemplatePVITN2VLRUNIT.AsFloat) then
       SQLTemplatePVITN2VLRUNITChange(SQLTemplatePVITN2VLRUNIT);

  NovoTotalItem := SQLTemplateTotalItemCalc.asFloat;
  NovoTotalDesc := SQLTemplatePVITN2VLRDESC.asFloat;
  TotalProdColetor := TotalProdColetor + SQLTemplateTotalItemCalc.asFloat;

end;

procedure TFormCadastroPedidoVendaItem.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin


{  If SQLTemplate.DataSource.DataSet.FindField('PDVDCSTATUS').asString<>'A' Then
    Begin
      ShowMessage('Pedido de Venda não está aberto!');
      Abort;
    End;}
  inherited;
  TotalItem := SQLTemplateTotalItemCalc.asFloat;
  TotalDesc := SQLTemplatePVITN2VLRDESC.asFloat;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplateBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  TotalItem := 0;
  TotalDesc := 0;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
  TotalItem := SQLTemplateTotalItemCalc.asFloat;
  TotalDesc := SQLTemplatePVITN2VLRDESC.asFloat;
  inherited;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplateAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  DM.InserindoItemPV:=True;
  SQLTemplate.DataSource.DataSet.Edit;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := False;
  SQLTemplate.DataSource.DataSet.FindField('PDVDN2TOTPROD').asFloat :=
  (SQLTemplate.DataSource.DataSet.FindField('PDVDN2TOTPROD').asFloat - TotalItem);
  SQLTemplate.DataSource.DataSet.FindField('PDVDN2VLRDESC').asFloat  :=
  (SQLTemplate.DataSource.DataSet.FindField('PDVDN2VLRDESC').asFloat - TotalDesc);
  SQLTemplate.DataSource.DataSet.Post;
  SQLTemplate.DataSource.DataSet.AutoCalcFields := True;
  DM.InserindoItemPV:=False;
  SQLTotalQdte.Close;
  SQLTotalQdte.MacroByName('MPedidoVenda').AsString := 'PDVDA13ID = "' + DSMasterTemplate.DataSet.FieldByName('PDVDA13ID').AsString + '"';
  SQLTotalQdte.Open;
end;

procedure TFormCadastroPedidoVendaItem.BtnProdutoClick(Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,False,'');
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplateAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  SaldoAtual.Font.Color := clBlack ;
  SaldoAtual.Value      := 0 ;
end;

procedure TFormCadastroPedidoVendaItem.DSTemplateStateChange(
  Sender: TObject);
begin
  inherited;
  if (Sender as TDataSource).State = dsBrowse then
    begin
      LSaldo.Visible := False;
      SaldoAtual.Visible := False;
      SaldoAtual.Font.Color := clBlack ;
    end
  else
    begin
      LSaldo.Visible := True;
      SaldoAtual.Visible := True;
    end;
  // verifica status do pedido e desabilita os botões de manipulação de registros
  if DSMasterTemplate.DataSet.FieldByName('PDVDCSTATUS').AsString <> '' then
    if DSMasterTemplate.DataSet.FieldByName('PDVDCSTATUS').AsString <> 'A' then
      DesabilitarBotoes(True,True,True,True,True);
end;

procedure TFormCadastroPedidoVendaItem.DBEditLoteExit(Sender: TObject);
begin
  inherited;
  if (Dm.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S') and (SQLTemplate.State in DsEditModes) and (SQLTemplatePRODICOD.AsString <> '') then
    begin
      Application.CreateForm(TFormTelaSaldoPorLote,FormTelaSaldoPorLote);
      FormTelaSaldoPorLote.SQLNotaFiscalitem.Close;
      FormTelaSaldoPorLote.SQLNotaFiscalitem.ParamByName('PRODICOD').AsString := SQLTemplatePRODICOD.AsString;
      FormTelaSaldoPorLote.SQLNotaFiscalitem.Open;
      FormTelaSaldoPorLote.SQLLoteSaldo.Close;
      FormTelaSaldoPorLote.SQLLoteSaldo.MacroByName('Produto').AsString := 'PRODICOD = ' + SQLTemplatePRODICOD.AsString;
      FormTelaSaldoPorLote.SQLLoteSaldo.Open;

      FormTelaSaldoPorLote.SQLLoteSaldo.First;
      FormTelaSaldoPorLote.SQLNotaFiscalitem.First;
      
      FormTelaSaldoPorLote.ShowModal;
      if FormTelaSaldoPorLote.ModalResult = MrOk then
        begin
          SQLTemplateLOTEA30NRO.AsString := FormTelaSaldoPorLote.SQLLoteSaldoLOTEA30NRO.AsString;
        end
      else
        SQLTemplateLOTEA30NRO.AsString := '';

      FormTelaSaldoPorLote.Close;
    end;
  if SQLTemplate.FieldByName('PRODICOD').AsVariant <> Null then
    DBEdit8.SetFocus;

end;

procedure TFormCadastroPedidoVendaItem.DSTemplateDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  LabelLote.Visible  := Dm.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S';
  DBEditLote.Visible := Dm.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S';
  mnComposiodoProduto.Enabled := not (SQLTemplate.State in [dsInsert]);

//Permite alterar ou não
  if not UsuarioMaster then
     if (DM.SQLConfigVenda.Fieldbyname('CFVECCONTPEDVDAUSU').AsString = 'S') and
        (DSMasterTemplate.DataSet.FieldByName('USUAA60LOGIN').AsString <> UsuarioAtualNome) and
        ((DSMasterTemplate.DataSet.FieldByName('USUAA60LOGIN').IsNull) or (DSMasterTemplate.DataSet.FieldByName('USUAA60LOGIN').AsString <> '')) then
        DesabilitarBotoes(True,True,True,True,True)
     else
       if not (SQLTemplate.State in dsEditModes) then
          DesabilitarBotoes(False,False,True,True,False)
       else
          DesabilitarBotoes(True,True,False,False,True);

end;

procedure TFormCadastroPedidoVendaItem.MnPdVdImportarProdutosdoColetorClick(
  Sender: TObject);
begin
  inherited;
  if DSMasterTemplate.DataSet.FieldByName('PDVDCSTATUS').AsString = 'A' then
    begin
      DM.ImportandoColetor := True;
      SQLTemplate.DisableControls;
      Application.CreateForm(TFormTelaImportaItens,FormTelaImportaItens);
      FormTelaImportaItens.SetParams(SQLTemplate,'PVITN3QUANT',SQLTemplate.DataSource.DataSet.FieldByName('EMPRICOD').AsInteger,
                                     SQLTemplate.DataSource.DataSet.FieldByName('TERMICOD').AsInteger, SQLTemplate.DataSource.DataSet.FieldByName('PDVDDEMISSAO').AsInteger  ); 
      FormTelaImportaItens.ShowModal;
      SQLTemplate.DataSource.DataSet.AutoCalcFields := False;
      SQLTemplate.DataSource.DataSet.Edit;
      SQLTemplate.DataSource.DataSet.FindField('PDVDN2TOTPROD').asFloat :=
      SQLTemplate.DataSource.DataSet.FindField('PDVDN2TOTPROD').asFloat + TotalProdColetor;
      SQLTemplate.DataSource.DataSet.Post;
      SQLTemplate.DataSource.DataSet.AutoCalcFields := True;
      SQLTemplate.EnableControls;
      DM.ImportandoColetor := False;
    end
  else
    begin
      Informa('Este pedido não está aberto, não é possível incluir produtos !');
      Abort;
    end;
end;

procedure TFormCadastroPedidoVendaItem.EditProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  Autenticado := True;
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
      ProdutoDescricao := '';
      FieldLookup := SQLTemplate.FieldByName('PRODICOD');
      FieldOrigem := 'PRODICOD';
      CriaFormulario(TFormTelaConsultaProduto,'FormTelaConsultaProduto',False,True,True,'');
    end;
  Autenticado   := False;
  ValorAnterior := SQLTemplatePVITN2VLRUNIT.AsFloat;
end;

procedure TFormCadastroPedidoVendaItem.EditProdutoExit(Sender: TObject);
begin
  inherited;
  if EditProduto.Text <> '' then
    if DBEditLote.Visible then
      DBEditLote.SetFocus
    else
      DBEdit8.SetFocus;
end;

procedure TFormCadastroPedidoVendaItem.FormActivate(Sender: TObject);
begin
  inherited;
  if SQLTemplate.ControlsDisabled then SQLTemplate.EnableControls;
end;

procedure TFormCadastroPedidoVendaItem.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (((Sender as TForm).ActiveControl <> EditProduto) and (RadioPesquisa.ItemIndex <> 0))
     or ((Application.FindComponent('FormTelaConsultaProduto') = nil)
         and ( Application.FindComponent('FormTelaLancamentoGradePedido') = nil)) then
  inherited;
end;

procedure TFormCadastroPedidoVendaItem.EditProdutoEnter(Sender: TObject);
begin
  inherited;
  EditProduto.SelectAll;
end;

procedure TFormCadastroPedidoVendaItem.mnComposiodoProdutoClick(
  Sender: TObject);
Var ProdutoComposicao, PedidoComposicao : Boolean;
begin
   inherited;
   SQLGeral.Close;
   SQLGeral.SQL.Text := 'select * from PRODUTOCOMPOSICAO where PRODICOD = ''' + SQLTemplatePRODICOD.AsString + '''';
   SQLGeral.Open;

   ProdutoComposicao := not SQLGeral.IsEmpty;

   SQLGeral.Close;
   SQLGeral.SQL.Text := 'select * from PEDVENDITEMCOMP where PRODICOD = ''' + SQLTemplatePRODICOD.AsString + '''';
   SQLGeral.Open;

   PedidoComposicao  := not SQLGeral.IsEmpty;

   if PedidoComposicao or ProdutoComposicao then
     begin
       DSMasterSys := DSTemplate;
       Application.CreateForm(TFormTelaProdVendItemComp,FormTelaProdVendItemComp);
       FormTelaProdVendItemComp.ShowModal;
       if FormTelaProdVendItemComp.ModalResult = mrOk then
          begin
             SQLTemplate.Edit;
             PermiteAlterarValorVenda := True;
             SQLTemplatePVITN2VLRUNIT.AsFloat    := FormTelaProdVendItemComp.SQLSomaTOTALVALOR.AsFloat;
             SQLTemplatePVITN2VLRDESC.AsFloat    := FormTelaProdVendItemComp.SQLSomaTOTALDESC.AsFloat;
             PermiteAlterarValorVenda := False;
             ValorAnterior := FormTelaProdVendItemComp.SQLSomaTOTALVALOR.AsFloat;
          end;
       FormTelaProdVendItemComp.Close;
       FormTelaProdVendItemComp.Free;
     end
   else
     begin
       Informa('Este Produto não tem composição!');
     end;

end;

procedure TFormCadastroPedidoVendaItem.SQLComposicaoItemPedidoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
   If (DataSet.FieldByName('PRODICOD').AsVariant <> null) and not (DataSet.State in [dsInsert]) then
      Begin
        If DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICODFILHO').AsString],1) Then
          Begin
            DataSet.FieldByName('ProdutoDescr').AsVariant    := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;
          end
        else
          DataSet.FieldByName('ProdutoDescr').AsVariant    := MensagemLookUp;
      end;
end;

procedure TFormCadastroPedidoVendaItem.SQLComposicaoItemPedidoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  SQLComposicaoItemPedidoPVCOICOD.AsInteger   := DM.ProximoCodigoUnico('PEDVENDITEMCOMP',DataSet,DSSQLComposicaoItemPedido,2);
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplatePVITN2VLRDESCChange(
  Sender: TField);
begin
  VerificaAutorizacaoValor(Sender,ValorAnterior);
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  PermiteAlterarValorVenda := True;
  If (SQLTemplatePVITN2VLRDESC.asFloat > 0) Then
    SQLTemplatePVITN2PERCDESC.asFloat  := StrToFloat(FormatFloat('#,##0.00',(SQLTemplatePVITN2VLRDESC.AsFloat / (SQLTemplatePVITN2VLRUNIT.AsFloat * SQLTemplatePVITN3QUANT.AsFloat)) * 100))
  Else
    SQLTemplatePVITN2PERCDESC.asFloat := 0;
  PermiteAlterarValorVenda := False;
  Ocupado:=False;

end;

procedure TFormCadastroPedidoVendaItem.dbeVlrUnitEnter(Sender: TObject);
begin
  inherited;
  ValorAnterior := dbeVlrUnit.Field.AsFloat;
end;

procedure TFormCadastroPedidoVendaItem.dbePercDescEnter(Sender: TObject);
begin
  inherited;
  ValorAnterior := dbePercDesc.Field.AsFloat;
end;

procedure TFormCadastroPedidoVendaItem.dbeVlrDescEnter(Sender: TObject);
begin
  inherited;
  ValorAnterior := dbeVlrDesc.Field.AsFloat;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplatePVITN3QUANTChange(
  Sender: TField);
begin
  inherited;
  If Ocupado Then Exit;
  Ocupado:=True;
  PermiteAlterarValorVenda := True;
  if SQLTemplatePVITN2PERCDESC.asFloat > 0  then
    SQLTemplatePVITN2VLRDESC.asFloat  := (SQLTemplatePVITN2VLRUNIT.AsFloat * SQLTemplatePVITN3QUANT.asFloat) * (SQLTemplatePVITN2PERCDESC.asFloat / 100);
  PermiteAlterarValorVenda := False;
  Ocupado:=False;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplateAfterCancel(
  DataSet: TDataSet);
begin
  inherited;
  Autenticado := False;
end;

procedure TFormCadastroPedidoVendaItem.FormCadastroNotaFiscalItemNmerosdeSrie1Click(
  Sender: TObject);
begin
  inherited;
  if SQLTemplateControlaSerieLookup.AsVariant <> Null then
    if SQLTemplateControlaSerieLookup.AsString = 'S' then
      begin
        Application.CreateForm(TFormTelaGeralModalCadastroProdutoNumeroSerie,FormTelaGeralModalCadastroProdutoNumeroSerie);
        FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.Close;
        FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.MacroByName('MFiltro').AsString := 'PDVDA13ID = "' + SQLTemplatePDVDA13ID.AsString + '" AND PRODICOD = ' + SQLTemplatePRODICOD.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.SQLProdutoSerie.Open;
        FormTelaGeralModalCadastroProdutoNumeroSerie.CodProduto    := SQLTemplatePRODICOD.AsInteger;
        FormTelaGeralModalCadastroProdutoNumeroSerie.Destino       := 'C';
        FormTelaGeralModalCadastroProdutoNumeroSerie.IDPedidoVenda := SQLTemplatePDVDA13ID.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.IDCliente     := DSMasterTemplate.DataSet.FieldByName('CLIEA13ID').AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Caption := FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Caption + ' - ' + SQLTemplateProdutoLookUp.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerie.LabelTitulo.Update;
        FormTelaGeralModalCadastroProdutoNumeroSerie.ShowModal;
      end;
end;

procedure TFormCadastroPedidoVendaItem.SQLTemplateAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  SQLTotalQdte.Close;
  SQLTotalQdte.MacroByName('MPedidoVenda').AsString := 'PDVDA13ID = "' + DSMasterTemplate.DataSet.FieldByName('PDVDA13ID').AsString + '"';
  SQLTotalQdte.Open;
end;

end.
