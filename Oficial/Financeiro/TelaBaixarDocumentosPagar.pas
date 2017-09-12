unit TelaBaixarDocumentosPagar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FormResources, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls, Grids,
  DBGrids, Mask, ToolEdit, Db, DBTables, RxQuery, MemTable, RxLookup,
  CurrEdit, Placemnt, Variants, VarSys, ComCtrls, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaBaixarDocumentosPagar = class(TFormTelaGeralTEMPLATE)
    PanelFundoBxDocREc: TPanel;
    PanelTopBxDocREc: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Data1: TDateEdit;
    Data2: TDateEdit;
    Label4: TLabel;
    DSSQLRecebimentoTemp: TDataSource;
    Label5: TLabel;
    DtBaixa: TDateEdit;
    ComboEmpresa: TRxDBLookupCombo;
    SQLFornecedor: TRxQuery;
    DSSQLCliente: TDataSource;
    ComboFornecedor: TRxDBLookupCombo;
    SQLEmpresa: TRxQuery;
    DSSQLEmpresa: TDataSource;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    TblPagtosTemp: TTable;
    TblPagtosTempCTPGA13ID: TStringField;
    TblPagtosTempFornecedorNome: TStringField;
    TblPagtosTempDocumento: TStringField;
    TblPagtosTempParcela: TIntegerField;
    TblPagtosTempVencimento: TDateTimeField;
    TblPagtosTempVlrVencto: TFloatField;
    TblPagtosTempVlrJuros: TFloatField;
    TblPagtosTempVlrMulta: TFloatField;
    TblPagtosTempVlrDesc: TFloatField;
    TblPagtosTempVlrPagto: TFloatField;
    SQLContasPagar: TRxQuery;
    TblPagtosTempPortador: TStringField;
    TblPagtosTempTipoDoc: TStringField;
    SQLPagamento: TRxQuery;
    SQLPagamentoCTPGA13ID: TStringField;
    SQLPagamentoPAGAICOD: TIntegerField;
    SQLPagamentoPAGADPAGTO: TDateTimeField;
    SQLPagamentoPAGAN3VLRPAGTO: TFloatField;
    SQLPagamentoPAGAN3VLRJURO: TFloatField;
    SQLPagamentoPAGAN3VLRMULTA: TFloatField;
    SQLPagamentoPAGAN3VLRDESC: TFloatField;
    SQLPagamentoPENDENTE: TStringField;
    SQLPagamentoREGISTRO: TDateTimeField;
    TblPagtosTempBaixar: TBooleanField;
    Label9: TLabel;
    TotalVenc: TCurrencyEdit;
    SQLTotal: TRxQuery;
    SQLTotalTotal: TFloatField;
    TblPagtosTempFornecedorCod: TIntegerField;
    TblPagtosTempEmpresaCod: TIntegerField;
    SQLContasPagarCTPGA13ID: TStringField;
    SQLContasPagarEMPRICOD: TIntegerField;
    SQLContasPagarCTPGDVENC: TDateTimeField;
    SQLContasPagarCTPGDULTPAGTO: TDateTimeField;
    SQLContasPagarCTPGA20DOCORIG: TStringField;
    SQLContasPagarCTPGINROPARC: TIntegerField;
    SQLContasPagarFORNICOD: TIntegerField;
    SQLContasPagarFORNA60RAZAOSOC: TStringField;
    SQLContasPagarCTPGN3VLR: TFloatField;
    SQLContasPagarSALDO: TFloatField;
    SQLContasPagarTPDCA60DESCR: TStringField;
    SQLContasPagarPORTA60DESCR: TStringField;
    UpdateSQLPagamento: TUpdateSQL;
    FormStoragePagar: TFormStorage;
    CheckVencimento: TCheckBox;
    ButtonPagaEmite: TSpeedButton;
    TableRecibo: TTable;
    TableReciboRECIICOD: TAutoIncField;
    TableReciboRECIN2VLRBRUTO: TFloatField;
    TableReciboRECIN2VLRIRRF: TFloatField;
    TableReciboRECIN2VLRLIQUIDO: TFloatField;
    TableReciboRECIDEMISSAO: TDateTimeField;
    TableReciboRECITOBS: TStringField;
    DSTableRecibo: TDataSource;
    TableReciboConta: TTable;
    TableReciboContaRECIICOD: TIntegerField;
    TableReciboContaRECOICOD: TAutoIncField;
    TableReciboContaRECOA13DOCORIGEM: TStringField;
    QueryRecibo: TRxQuery;
    QueryReciboRECIA13ID: TStringField;
    QueryReciboEMPRICOD: TIntegerField;
    QueryReciboTERMICOD: TIntegerField;
    QueryReciboRECIICOD: TIntegerField;
    QueryReciboCLIEA13ID: TStringField;
    QueryReciboFORNICOD: TIntegerField;
    QueryReciboFUNCA13ID: TStringField;
    QueryReciboRECIN2VLRBRUTO: TFloatField;
    QueryReciboRECIN2VLRIRRF: TFloatField;
    QueryReciboRECIN2VLRLIQUIDO: TFloatField;
    QueryReciboRECIDEMISSAO: TDateTimeField;
    QueryReciboRECITOBS: TStringField;
    QueryReciboREGISTRO: TDateTimeField;
    QueryReciboPENDENTE: TStringField;
    QueryReciboRECICTIPO: TStringField;
    DSQueryRecibo: TDataSource;
    QueryReciboConta: TRxQuery;
    QueryReciboContaRECIA13ID: TStringField;
    QueryReciboContaRECOICOD: TIntegerField;
    QueryReciboContaRECOA13DOCORIGEM: TStringField;
    QueryReciboContaREGISTRO: TDateTimeField;
    QueryReciboContaPENDENTE: TStringField;
    TableReciboFORNICOD: TIntegerField;
    QueryReciboContaRECODBAIXA: TDateTimeField;
    QueryReciboContaRECON2VLRBAIXA: TFloatField;
    TableReciboContaRECODBAIXA: TDateTimeField;
    TableReciboContaRECON2VLRBAIXA: TFloatField;
    TblPagtosTempDataPagto: TDateField;
    SQLPagamentoPLCTA15CREDITO: TStringField;
    SQLPagamentoPLCTA15CODJUROCRED: TStringField;
    SQLPagamentoPLCTA15CODMULTCRED: TStringField;
    SQLPagamentoPLCTA15CODDESCCRED: TStringField;
    SQLPagamentoPLCTA15DEBITO: TStringField;
    SQLPagamentoPLCTA15CODJURODEB: TStringField;
    SQLPagamentoPLCTA15CODMULTDEB: TStringField;
    SQLPagamentoPLCTA15CODDESCDEB: TStringField;
    SQLPagamentoPAGAA254HISTORICO: TStringField;
    TblPagtosTempValorOriginal: TFloatField;
    SQLTotalSelecionado: TRxQuery;
    SQLTotalSelecionadoTotal: TFloatField;
    Label6: TLabel;
    TotalSelecionado: TCurrencyEdit;
    SQLPagamentoTPLQICOD: TIntegerField;
    TblPagtosTempEmissao: TDateField;
    SQLContasPagarCTPGDTEMIS: TDateTimeField;
    Mensagem: TLabel;
    Progress: TProgressBar;
    GroupLegenda: TGroupBox;
    Shape1: TShape;
    Label12: TLabel;
    Label13: TLabel;
    Shape2: TShape;
    Label14: TLabel;
    Shape3: TShape;
    SQLTipoDoc: TQuery;
    SQLTipoDocTPDCICOD: TIntegerField;
    SQLTipoDocTPDCA60DESCR: TStringField;
    DSSQLTipoDoc: TDataSource;
    SQLPortador: TRxQuery;
    DSSQLPortador: TDataSource;
    Label7: TLabel;
    ComboPortador: TRxDBLookupCombo;
    Label8: TLabel;
    ComboTipoDoc: TRxDBLookupCombo;
    SQLContasPagarCTPGA254HIST: TStringField;
    DBGridLista: TDBGrid;
    ValorPagto: TCurrencyEdit;
    Label10: TLabel;
    EditDocumento: TEdit;
    Label11: TLabel;
    TblPagtosTempNF: TStringField;
    SQLContasPagarNOCPA30NRO: TStringField;
    BtnBaixarDoc: TSpeedButton;
    BtnBaixarDocIntegrado: TSpeedButton;
    BtnSelecionarDoc: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure SQLContasPagarCalcFields(DataSet: TDataSet);
    procedure BtnBaixarDocClick(Sender: TObject);
    procedure TblPagtosTempBeforePost(DataSet: TDataSet);
    procedure DBGridListaCellClick(Column: TColumn);
    procedure DBGridListaColEnter(Sender: TObject);
    procedure DBGridListaColExit(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonPagaEmiteClick(Sender: TObject);
    procedure TableReciboContaNewRecord(DataSet: TDataSet);
    procedure QueryReciboContaNewRecord(DataSet: TDataSet);
    procedure QueryReciboBeforePost(DataSet: TDataSet);
    procedure QueryReciboContaBeforePost(DataSet: TDataSet);
    procedure QueryReciboNewRecord(DataSet: TDataSet);
    procedure TblPagtosTempAfterPost(DataSet: TDataSet);
    procedure BtnBaixarDocIntegradoClick(Sender: TObject);
    procedure ValorPagtoExit(Sender: TObject);
  private
    { Private declarations }
    TabelaMaisUsuario : String;
    OriginalOptions : TDBGridOptions;
    procedure GeraRecibo;
    procedure SaveBoolean(Grid : TDBGrid) ;
    procedure AtualizaTotal ;
    function TemDataBaixaMenorQueEmissao : Boolean;
  public
    VlrTotal,
    VlrJuros,
    VlrMulta,
    VlrDesc : Double;
    Numerario : String;
    EmiteRecibo : Boolean;
    EmpresaBaixaDocPagar : Integer;


    { Public declarations }
  end;

var
  FormTelaBaixarDocumentosPagar: TFormTelaBaixarDocumentosPagar;

implementation

uses DataModulo, UnitLibrary, TelaBaixarDocumentosPagarPagamento, CadastroRecibo,
     TelaBaixarDocumentosPlanoConta, DataModuloTemplate;

{$R *.DFM}

procedure TFormTelaBaixarDocumentosPagar.GeraRecibo;
begin
  if not QueryRecibo.Active then
    QueryRecibo.Open;
  if not QueryReciboConta.Active then
    QueryReciboConta.Open;
  TableRecibo.First;
  while not TableRecibo.Eof do
    begin
      QueryRecibo.Append;
      QueryRecibo.FieldByName('FORNICOD').AsString := TableRecibo.FieldByName('FORNICOD').AsString;
      QueryRecibo.FieldByName('RECICTIPO').AsString := 'F';
      QueryRecibo.FieldByName('RECIN2VLRBRUTO').AsFloat := TableRecibo.FieldByName('RECIN2VLRBRUTO').AsFloat;
      QueryRecibo.FieldByName('RECIN2VLRLIQUIDO').AsFloat := TableRecibo.FieldByName('RECIN2VLRLIQUIDO').AsFloat;
      QueryRecibo.FieldByName('RECIDEMISSAO').AsVariant := TableRecibo.FieldByName('RECIDEMISSAO').AsVariant;
      QueryRecibo.FieldByName('PENDENTE').AsString := 'S';
      QueryRecibo.FieldByName('REGISTRO').AsDateTime := Now;
      QueryRecibo.Post;
      TableReciboConta.First;
      while not TableReciboConta.Eof do
        begin
          QueryReciboConta.Append;
          QueryReciboConta.FieldByName('RECOA13DOCORIGEM').AsString := TableReciboConta.FieldByName('RECOA13DOCORIGEM').AsString;
          QueryReciboConta.FieldByName('RECON2VLRBAIXA').AsFloat := TableReciboConta.FieldByName('RECON2VLRBAIXA').AsFloat;
          QueryReciboConta.FieldByName('RECODBAIXA').AsVariant := TableReciboConta.FieldByName('RECODBAIXA').AsVariant;
          QueryReciboConta.FieldByName('PENDENTE').AsString := 'S';
          QueryReciboConta.FieldByName('REGISTRO').AsDateTime := Now;
          QueryReciboConta.Post;
          TableReciboConta.Delete;
        end;
      TableRecibo.Delete;
    end;
    EmiteRecibo := False;
end;

procedure TFormTelaBaixarDocumentosPagar.SaveBoolean(Grid : TDBGrid) ;
begin
  Grid.SelectedField.Dataset.Edit ;
  Grid.SelectedField.AsBoolean := not Grid.SelectedField.AsBoolean ;
  Grid.SelectedField.Dataset.Post ;
end ;

procedure TFormTelaBaixarDocumentosPagar.FormCreate(Sender: TObject);
begin
  inherited;
  TabelaMaisUsuario := 'PagtosTemp_'+FormatFloat('###000', dm.SQLUsuario.fieldbyname('USUAICOD').AsInteger);

  if not UsuarioMaster then
    SQLEmpresa.MacroByName('MEmpresa').AsString := 'EMPRICOD = ' + IntToStr(EmpresaCorrente)
  else
    SQLEmpresa.MacroByName('MEmpresa').AsString := '0=0';

  SQLEmpresa.Open;
  SQLFornecedor.Open;
  SQLPortador.Open;
  SQLTipoDoc.Open;
  EmiteRecibo := False;
  ComboEmpresa.KeyValue := EmpresaPadrao;
  Data1.Date := dm.DataBaseSistema;
  Data2.Date := dm.DataBaseSistema;
  DtBaixa.Date := dm.DataBaseSistema;
end;

procedure TFormTelaBaixarDocumentosPagar.BtnSelecionarDocClick(
  Sender: TObject);
var VarValorPago : Double;
begin
  inherited;
  Mensagem.Caption := 'Verificando contas pendentes...';
  Mensagem.Refresh;

  TblPagtosTemp.Close;
  TblPagtosTemp.TableName := TabelaMaisUsuario;
  try
    TblPagtosTemp.DeleteTable;
    TblPagtosTemp.CreateTable;
  except
    TblPagtosTemp.CreateTable;
  end;

  TblPagtosTemp.AddIndex('', 'CTPGA13ID;Parcela', [ixPrimary]);
  TblPagtosTemp.AddIndex('Fornecedor_Key', 'FornecedorNome', [ixCaseInsensitive]);
  TblPagtosTemp.AddIndex('Documento_Key', 'Documento;Parcela', [ixCaseInsensitive]);
  TblPagtosTemp.AddIndex('Vencimento_Key', 'Vencimento', [ixCaseInsensitive]);

  TblPagtosTemp.Open ;

  TblPagtosTemp.DisableControls;

  SQLContasPagar.Close ;
  if ComboEmpresa.Value <> '' then
    SQLContasPagar.MacroByName('MEmpresa').Value := 'CONTASPAGAR.EMPRICOD = ' + ComboEmpresa.KeyValue
  else
    SQLContasPagar.MacroByName('MEmpresa').Value := '0=0';

  if ComboFornecedor.Text <> '' then
    SQLContasPagar.MacroByName('MFornecedor').Value := 'CONTASPAGAR.FORNICOD = ' + ComboFornecedor.KeyValue
  else
    SQLContasPagar.MacroByName('MFornecedor').Value := '0=0';

  if not CheckVencimento.Checked then
    SQLContasPagar.MacroByName('MData').Value := '(CONTASPAGAR.CTPGDVENC >= ''' + FormatDateTime('mm/dd/yyyy', Data1.Date) + ''') and ' +
                                               '(CONTASPAGAR.CTPGDVENC <= ''' + FormatDateTime('mm/dd/yyyy', Data2.Date) + ''')'
  else
    SQLContasPagar.MacroByName('MData').Value := '0=0';

  if ComboPortador.Value <> '' then
    SQLContasPagar.MacrobyName('MPortador').Value := 'CONTASPAGAR.PORTICOD = ' + ComboPortador.Value
  else
    SQLContasPagar.MacrobyName('MPortador').Value := '0=0';

  if ComboTipoDoc.Value <> '' then
    SQLContasPagar.MacrobyName('MTipoDoc').Value := 'CONTASPAGAR.TPDCICOD = '  + ComboTipoDoc.Value
  else
    SQLContasPagar.MacrobyName('MTipoDoc').Value := '0=0';

  if EditDocumento.Text <> '' then
    SQLContasPagar.MacrobyName('MDocumento').Value := 'CONTASPAGAR.CTPGA20DOCORIG = '''  + EditDocumento.Text  + ''''
  else
    SQLContasPagar.MacrobyName('MDocumento').Value := '0=0';

  SQLContasPagar.Open;

  if SQLContasPagar.IsEmpty and (EditDocumento.Text <> '') then
    begin
      dm.SQLTemplate.close;
      dm.SQLTemplate.SQL.clear;
      dm.SQLTemplate.SQL.add('Select * from ContasPagar where CTPGA20DOCORIG = '''+EditDocumento.Text+'''');
      dm.SQLTemplate.Open;
      if dm.SQLTemplate.IsEmpty then
        begin
          Beep;
          ShowMessage('Atenção! Documento não encontrado!');
          dm.SQLTemplate.Close;
          Abort;
        end
      else
        begin
          if (dm.SQLTemplate.FieldByName('CTPGN2TOTPAG').Value = dm.SQLTemplate.FieldByName('CTPGN3VLR').Value) then
            begin
              Beep;
              ShowMessage('Atenção! Documento Quitado em '+ FormatDateTime('dd/mm/yyyy',dm.SQLTemplate.FieldByName('CTPGDULTPAGTO').Value));
              dm.SQLTemplate.Close;
              Abort;
            end;
        end;
    end;
  VarValorPago := ValorPagto.value;

  SQLContasPagar.First;
  while not SQLContasPagar.EOF do
  begin
    TblPagtosTemp.Append;
    TblPagtosTempCTPGA13ID.Value      := SQLContasPagarCTPGA13ID.Value;
    TblPagtosTempEmpresaCod.Value     := SQLContasPagarEMPRICOD.Value;
    TblPagtosTempFornecedorCod.Value  := SQLContasPagarFORNICOD.Value;
    if ComboFornecedor.KeyValue = null then
     TblPagtosTempFornecedorNome.Value := SQLContasPagarFORNA60RAZAOSOC.Value
    else
     TblPagtosTempFornecedorNome.Value := SQLContasPagarCTPGA254HIST.Value;
    TblPagtosTempDocumento.Value      := SQLContasPagarCTPGA20DOCORIG.Value;
    TblPagtosTempNF.Value             := SQLContasPagarNOCPA30NRO.Value;
    TblPagtosTempParcela.Value        := SQLContasPagarCTPGINROPARC.Value;
    TblPagtosTempEmissao.Value        := SQLContasPagarCTPGDTEMIS.Value;
    TblPagtosTempVencimento.Value     := SQLContasPagarCTPGDVENC.Value;
    TblPagtosTempVlrVencto.Value      := SQLContasPagarSALDO.Value;
    TblPagtosTempVlrJuros.Value       := 0;
    TblPagtosTempVlrMulta.Value       := 0;
    TblPagtosTempVlrDesc.Value        := 0;
    TblPagtosTempValorOriginal.Value  := SQLContasPagarSALDO.Value;
    //TblPagtosTempVlrPagto.Value       := SQLContasPagarSALDO.Value ;
    TblPagtosTempPortador.Value       := SQLContasPagarPORTA60DESCR.Value;
    TblPagtosTempTipoDoc.Value        := SQLContasPagarTPDCA60DESCR.Value;
    TblPagtosTempBaixar.Value         := False;
    if VarValorPago > 0 then
      begin
        if VarValorPago >= SQLContasPagarSALDO.Value then
          begin
            TblPagtosTemp.FieldByName('Baixar').Value := True;
            VarValorPago := VarValorPago-SQLContasPagarSALDO.Value;
          end
        else
          if VarValorPago < SQLContasPagarSALDO.Value then
            begin
              TblPagtosTemp.FieldByName('Baixar').Value := True;
              TblPagtosTempVlrVencto.Value := VarValorPago;
              VarValorPago := 0;
            end;
      end;
    TblPagtosTempDataPagto.AsDateTime := DtBaixa.Date;
    TblPagtosTemp.Post;
    SQLContasPagar.Next;
    Application.ProcessMessages;
  end;
  AtualizaTotal;
  TblPagtosTemp.EnableControls;
  TblPagtosTemp.First;
  Mensagem.Caption := '';
  Mensagem.Refresh;
  if VarValorPago > 0 then
    ShowMessage('Atenção! O sistema irá desconsiderar o troco resultante nesta operação.');
end;

procedure TFormTelaBaixarDocumentosPagar.SQLContasPagarCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  //DM.MontarCampoLookup(SQLContasPagar, 'CLIEA13ID', 'ClienteCalcField', 'CLIENTE', 'CLIEA13ID', 'CLIEA60RAZAOSOC');
end;

procedure TFormTelaBaixarDocumentosPagar.BtnBaixarDocClick(
  Sender: TObject);
begin
  inherited;
  if (not TblPagtosTemp.Active)or(TblPagtosTemp.IsEmpty)  then
    begin
      Informa('Você deve selecionar os registros antes de baixar !');
      Abort;
    end;
  if DtBaixa.Date = null then
    begin
      Informa('Por favor informe a data da baixa!');
      Exit;
    end;
  if DtBaixa.Date > 0 then
  else
    begin
      Informa('A data de baixa deve ser informada!');
      DtBaixa.SetFocus;
      exit;
    end;

  // Removi pois tem casos que o cliente pode pagar antecipado!
 { if TemDataBaixaMenorQueEmissao then
    begin
      Informa('A data da BAIXA não pode ser menor que a data de EMISSÃO da parcela!');
      DtBaixa.SetFocus;
      exit;
    end;}
    
  DM.SQLConfigFinanceiro.Close;
  DM.SQLConfigFinanceiro.Open;

  SQLPagamento.Open ;
  TblPagtosTemp.DisableControls;
  TblPagtosTemp.First ;

  Progress.Max      := TblPagtosTemp.RecordCount;
  Progress.Position := 0;

  if ComboEmpresa.Value <> '' then
    EmpresaBaixaDocPagar := ComboEmpresa.KeyValue
  else
    EmpresaBaixaDocPagar := StrToInt(EmpresaPadrao);

  Mensagem.Caption := 'Baixando contas...';
  Mensagem.Refresh;

  if DM.SQLConfigFinanceiro.FieldByName('CGFICINFPLCTBXSIMP').AsString = 'S' then
    begin
      Application.CreateForm(TFormTelaBaixarDocumentosPlanoConta,FormTelaBaixarDocumentosPlanoConta);
      if DtBaixa.Date = TblPagtosTempVencimento.AsDateTime then
        FormTelaBaixarDocumentosPlanoConta.ItemCombo := 1
      else
      if DtBaixa.Date < TblPagtosTempVencimento.AsDateTime then
        FormTelaBaixarDocumentosPlanoConta.ItemCombo := 2
      else
      if DtBaixa.Date > TblPagtosTempVencimento.AsDateTime then
        FormTelaBaixarDocumentosPlanoConta.ItemCombo := 3;
      FormTelaBaixarDocumentosPlanoConta.ShowModal;
    end;

  if Application.FindComponent('FormTelaBaixarDocumentosPlanoConta') <> nil then
    if FormTelaBaixarDocumentosPlanoConta.ModalResult <> MrOk then
      begin
        Informa('Operação Cancelada');
        Abort;
      end;

  while not TblPagtosTemp.EOF do
  begin
    if TblPagtosTempBaixar.Value then
    begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('select MAX(PAGAICOD) as CONTADOR from PAGAMENTO') ;
      DM.SQLTemplate.SQL.Add('where CTPGA13ID = ''' + TblPagtosTempCTPGA13ID.Value + '''') ;
      DM.SQLTemplate.Open ;
      SQLPagamento.Append ;
      SQLPagamentoCTPGA13ID.Value      := TblPagtosTempCTPGA13ID.Value ;
      if DM.SQLTemplate.FieldByName('CONTADOR').Value > 0 then
        SQLPagamentoPAGAICOD.Value := DM.SQLTemplate.FieldByName('CONTADOR').Value + 1
      else
        SQLPagamentoPAGAICOD.Value := 1 ;

      SQLPagamentoPAGADPAGTO.Value     := DtBaixa.Date ;
      SQLPagamentoPAGAN3VLRPAGTO.Value := TblPagtosTempVlrVencto.Value;
      SQLPagamentoPAGAN3VLRJURO.Value  := TblPagtosTempVlrJuros.Value;
      SQLPagamentoPAGAN3VLRMULTA.Value := TblPagtosTempVlrMulta.Value;
      SQLPagamentoPAGAN3VLRDESC.Value  := TblPagtosTempVlrDesc.Value;

      ///////////////////////////////////////////////////////////////////////////
      if (Application.FindComponent('FormTelaBaixarDocumentosPlanoConta') <> nil) then
        begin
          // PLANO DE CONTAS DEBITO
          if FormTelaBaixarDocumentosPlanoConta.ComboContaDebitoPrincipal.Value <> '' then
            SQLPagamento.FieldByName('PLCTA15DEBITO').AsString := FormTelaBaixarDocumentosPlanoConta.ComboContaDebitoPrincipal.Value;
          if FormTelaBaixarDocumentosPlanoConta.ComboContaDebitoJuros.Value <> '' then
            SQLPagamento.FieldByName('PLCTA15CODJURODEB').AsString := FormTelaBaixarDocumentosPlanoConta.ComboContaDebitoJuros.Value;
          if FormTelaBaixarDocumentosPlanoConta.ComboContaDebitoMulta.Value <> '' then
            SQLPagamento.FieldByName('PLCTA15CODMULTDEB').AsString := FormTelaBaixarDocumentosPlanoConta.ComboContaDebitoMulta.Value;
          if FormTelaBaixarDocumentosPlanoConta.ComboContaDebitoDesconto.Value <> '' then
            SQLPagamento.FieldByName('PLCTA15CODDESCDEB').AsString := FormTelaBaixarDocumentosPlanoConta.ComboContaDebitoDesconto.Value;

          // PLANO DE CONTAS CREDITO
          if FormTelaBaixarDocumentosPlanoConta.ComboContaCreditoPrincipal.Value <> '' then
            SQLPagamento.FieldByName('PLCTA15CREDITO').AsString := FormTelaBaixarDocumentosPlanoConta.ComboContaCreditoPrincipal.Value;
          if FormTelaBaixarDocumentosPlanoConta.ComboContaCreditoJuros.Value <> '' then
            SQLPagamento.FieldByName('PLCTA15CODJUROCRED').AsString := FormTelaBaixarDocumentosPlanoConta.ComboContaCreditoJuros.Value;
          if FormTelaBaixarDocumentosPlanoConta.ComboContaCreditoMulta.Value <> '' then
            SQLPagamento.FieldByName('PLCTA15CODMULTCRED').AsString := FormTelaBaixarDocumentosPlanoConta.ComboContaCreditoMulta.Value;
          if FormTelaBaixarDocumentosPlanoConta.ComboContaCreditoDesconto.Value <> '' then
            SQLPagamento.FieldByName('PLCTA15CODDESCCRED').AsString := FormTelaBaixarDocumentosPlanoConta.ComboContaCreditoDesconto.Value;
          ///////////////////////////////////////////////////////////////////////////
          // TIPO LIQUIDACAO
          if FormTelaBaixarDocumentosPlanoConta.ComboTipoLiquidacao.Value <> '' then
            SQLPagamento.FieldByName('TPLQICOD').AsString := FormTelaBaixarDocumentosPlanoConta.ComboTipoLiquidacao.Value;

          // HISTORICO
          if FormTelaBaixarDocumentosPlanoConta.MemoHistorico.Text <> '' then
            SQLPagamento.FieldByName('PAGAA254HISTORICO').AsString := Trim(FormTelaBaixarDocumentosPlanoConta.MemoHistorico.Text);

        end;
      SQLPagamentoPENDENTE.Value       := 'S' ;
      SQLPagamentoREGISTRO.Value       := Now ;

      SQLPagamento.Post ;
      AtualizaTotaisCabecalhoContasPagar(TblPagtosTempCTPGA13ID.Value) ;
      TblPagtosTemp.Delete ;
    end
      else
        TblPagtosTemp.Next ;

    Progress.Position := Progress.Position + 1 ;
//    Application.ProcessMessages;
  end;

  if (Application.FindComponent('FormTelaBaixarDocumentosPlanoConta') <> nil) then
    FormTelaBaixarDocumentosPlanoConta.Close;

  TblPagtosTemp.EnableControls;
  AtualizaTotal ;
  TblPagtosTemp.First;
  Mensagem.Caption := '';
  Mensagem.Refresh ;
  Progress.Position := 0;
  Progress.Update;
  Application.ProcessMessages;
  TblPagtosTemp.First;
  
  if EmiteRecibo then
    GeraRecibo;
end;

procedure TFormTelaBaixarDocumentosPagar.TblPagtosTempBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if TblPagtosTempVlrVencto.Value > TblPagtosTempValorOriginal.Value then
    begin
      Informa('O valor da parcela não pode ser maior que o valor original. A operação será cancelada!');
      TblPagtosTempVlrVencto.AsFloat := TblPagtosTempValorOriginal.AsFloat;
      Abort;
    end;
  TblPagtosTempVlrPagto.Value := TblPagtosTempVlrVencto.Value +
                                 TblPagtosTempVlrJuros.Value +
                                 TblPagtosTempVlrMulta.Value -
                                 TblPagtosTempVlrDesc.Value ;

  AtualizaTotal ;
end;

procedure TFormTelaBaixarDocumentosPagar.DBGridListaCellClick(
  Column: TColumn);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    SaveBoolean(DBGridLista) ;
end;

procedure TFormTelaBaixarDocumentosPagar.DBGridListaColEnter(
  Sender: TObject);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    begin
      OriginalOptions := DBGridLista.Options ;
      DBGridLista.Options := DBGridLista.Options - [dgEditing] ;
    end ;
end;

procedure TFormTelaBaixarDocumentosPagar.DBGridListaColExit(
  Sender: TObject);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    DBGridLista.Options := OriginalOptions;
end;

procedure TFormTelaBaixarDocumentosPagar.DBGridListaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Const
  CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
                                           DFCS_BUTTONCHECK or DFCS_CHECKED);
begin
  inherited;
  if TblPagtosTempVencimento.AsDateTime > Date then
    DBGridLista.Canvas.Font.Color := clGreen;

  if TblPagtosTempVencimento.AsDateTime < Date then
    DBGridLista.Canvas.Font.Color := clRed;

  if TblPagtosTempVencimento.AsDateTime < Date then
    DBGridLista.Canvas.Font.Color := clRed;

  DBGridLista.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  if Column.Field.DataType = ftBoolean then
    begin
      DBGridLista.Canvas.FillRect(Rect);
      DrawFrameControl(DBGridLista.Canvas.Handle,
                       Rect,
                       DFC_BUTTON,
                       CtrlState[Column.Field.AsBoolean]);
    end;

end;

procedure TFormTelaBaixarDocumentosPagar.DBGridListaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ( Key = VK_SPACE ) and ( DBGridLista.SelectedField.DataType = ftBoolean ) then
    SaveBoolean(DBGridLista);
  if Key = VK_Return then
    if TblPagtosTemp.State in DsEditModes then
      TblPagtosTemp.Post;
end;


procedure TFormTelaBaixarDocumentosPagar.AtualizaTotal ;
begin
  SQLTotal.Close ;
  SQLTotal.macrobyname('tabela').Value := TabelaMaisUsuario;
  SQLTotal.Open ;
  SQLTotalSelecionado.Close;
  SQLTotalSelecionado.macrobyname('tabela').Value := TabelaMaisUsuario;
  SQLTotalSelecionado.Open;
  TotalVenc.Value := SQLTotalTotal.Value ;
  TotalSelecionado.Value := SQLTotalSelecionadoTotal.Value ;
  SQLTotal.Close ;
  SQLTotalSelecionado.Close;
end ;
procedure TFormTelaBaixarDocumentosPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  TblPagtosTemp.Close;
end;

procedure TFormTelaBaixarDocumentosPagar.ButtonPagaEmiteClick(
  Sender: TObject);
begin
  inherited;
  if (not TblPagtosTemp.Active)or(TblPagtosTemp.IsEmpty)  then
    begin
      Informa('Você deve selecionar os registros antes de baixar !');
      Abort;
    end;
  if DtBaixa.Date > 0 then
  else
    begin
      Informa('A data de baixa deve ser informada!');
      DtBaixa.SetFocus;
      exit;
    end;

  // Removi pois tem casos que o cliente pode pagar antecipado!
 { if TemDataBaixaMenorQueEmissao then
    begin
      Informa('A data da BAIXA não pode ser menor que a data de EMISSÃO da parcela!');
      DtBaixa.SetFocus;
      exit;
    end;}

  if ComboEmpresa.Value <> '' then
    EmpresaBaixaDocPagar := ComboEmpresa.KeyValue
  else
    EmpresaBaixaDocPagar := StrToInt(EmpresaPadrao);

  Mensagem.Caption := 'Baixando contas...' ;
  Mensagem.Refresh ;

  if ((TblPagtosTemp.Active) and
      (TblPagtosTemp.RecordCount > 0)) then
    begin
      if TableRecibo.Active then
        begin
          TableRecibo.First;
          while TableRecibo.RecordCount > 0 do
            begin
              while TableReciboConta.RecordCount > 0 do
                TableReciboConta.Delete;
              TableRecibo.Delete;
            end;
        end
      else
        begin
          TableRecibo.CreateTable;
          TableRecibo.TableName := 'ReciboTemp_'+dm.SQLUsuario.FieldByName('USUAA60LOGIN').Value;
          TableReciboConta.CreateTable;
          TableRecibo.AddIndex('','RECIICOD',[ixPrimary]);
          TableReciboConta.AddIndex('','RECIICOD;RECOICOD',[ixPrimary]);
          TableRecibo.Open;
          TableReciboConta.Open;
          TableRecibo.IndexName := '';
          TableReciboConta.IndexName := '';
        end;
      TblPagtosTemp.First;
      while not TblPagtosTemp.Eof do
        begin
          if TblPagtosTemp.FieldByName('Baixar').AsBoolean then
            begin
              if TableRecibo.Locate('FORNICOD',TblPagtosTemp.FieldByName('FornecedorCod').AsVariant,[loCaseInsensitive]) then
                TableRecibo.Edit
              else
                begin
                  TableRecibo.Append;
                  TableRecibo.FieldByName('FORNICOD').AsString := TblPagtosTemp.FieldByName('FornecedorCod').AsString;
                  TableRecibo.FieldByName('RECIDEMISSAO').AsVariant := Null;
                end;
              TableRecibo.FieldByName('RECIN2VLRBRUTO').AsFloat := TableRecibo.FieldByName('RECIN2VLRBRUTO').AsFloat + TblPagtosTemp.FieldByName('VlrPagto').AsFloat;
              TableRecibo.FieldByName('RECIN2VLRLIQUIDO').AsFloat := TableRecibo.FieldByName('RECIN2VLRBRUTO').AsFloat;
              TableRecibo.Post;
              TableReciboConta.Append;
              TableReciboConta.FieldByName('RECOA13DOCORIGEM').AsString := TblPagtosTemp.FieldByName('CTPGA13ID').AsString;
              TableReciboConta.FieldByName('RECON2VLRBAIXA').AsFloat := TblPagtosTemp.FieldByName('VlrPagto').AsFloat;
              TableReciboConta.FieldByName('RECODBAIXA').AsDateTime := DtBaixa.Date;
              TableReciboConta.Post;
            end;
          TblPagtosTemp.Next;
        end;

      Mensagem.Caption := '' ;
      Mensagem.Refresh ;

      EmiteRecibo := True;
      BtnBaixarDoc.Click;
      Application.CreateForm(TFormCadastroRecibo,FormCadastroRecibo);
      FormCadastroRecibo.SQLTemplate.Close;
      FormCadastroRecibo.SQLTemplate.MacroByName('MFiltro').AsString := 'RECIDEMISSAO IS NULL AND RECICTIPO = ''F''';
      FormCadastroRecibo.SQLTemplate.Open;
      FormCadastroRecibo.Show;
    end;
end;

procedure TFormTelaBaixarDocumentosPagar.TableReciboContaNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('RECIICOD').AsInteger := TableRecibo.FieldByName('RECIICOD').AsInteger;
end;

procedure TFormTelaBaixarDocumentosPagar.QueryReciboContaNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('RECIA13ID').AsVariant := DataSet.DataSource.DataSet.FieldByName('RECIA13ID').AsVariant;
end;

procedure TFormTelaBaixarDocumentosPagar.QueryReciboBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  DM.CodigoAutomatico('RECIBO',nil,DataSet,3,0);
end;

procedure TFormTelaBaixarDocumentosPagar.QueryReciboContaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('RECOICOD').AsInteger := DM.ProximoCodigoUnico('RECIBOCONTA',DataSet,DSQueryRecibo,1);
end;

procedure TFormTelaBaixarDocumentosPagar.QueryReciboNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('EMPRICOD').AsInteger := EmpresaCorrente;
  DataSet.FieldByName('TERMICOD').AsInteger := TerminalCorrente;
end;

procedure TFormTelaBaixarDocumentosPagar.TblPagtosTempAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  AtualizaTotal;
  TotalVenc.Update;
  TotalSelecionado.Update;
end;

procedure TFormTelaBaixarDocumentosPagar.BtnBaixarDocIntegradoClick(
  Sender: TObject);
begin
  inherited;
  if DM.SQLConfigFinanceiro.FieldByName('CGFIUSATESOURARIA').AsString <> 'S' then
    begin
      Informa('Você deve configurar o sistema para usar a baixa integrada. Verifique suas configurações do módulo Financeiro!');
      Abort;
    end;

  if (not TblPagtosTemp.Active)or(TblPagtosTemp.IsEmpty)  then
    begin
      Informa('Você deve selecionar os registros antes de baixar !');
      Abort;
    end;

  if DtBaixa.Date > 0 then
  else
    begin
      Informa('A data de baixa deve ser informada !') ;
      DtBaixa.SetFocus ;
      exit ;
    end ;

  // Removi pois tem casos que o cliente pode pagar antecipado!
 { if TemDataBaixaMenorQueEmissao then
    begin
      Informa('A data da Baixa não pode ser menor que a data de Emissão!');
      DtBaixa.SetFocus;
      exit;
    end;}

  Progress.Max      := TblPagtosTemp.RecordCount ;
  Progress.Position := 0 ;

  if ComboEmpresa.Value <> '' then
    EmpresaBaixaDocPagar := ComboEmpresa.KeyValue
  else
    EmpresaBaixaDocPagar := StrToInt(EmpresaPadrao);

  Mensagem.Caption := 'Baixando contas...' ;
  Mensagem.Refresh ;

  if DM.SQLConfigFinanceiro.FieldByName('CGFIUSATESOURARIA').AsString = 'S' then
    begin
      // Soma todos os lancamentos que serao pagos...
      VlrTotal := 0 ;
      TblPagtosTemp.First ;
      while not TblPagtosTemp.EOF do
        begin
          if (TblPagtosTempBaixar.Value) then
            begin
              VlrTotal := VlrTotal + TblPagtosTempVlrPagto.Value;
              VlrMulta := VlrMulta + TblPagtosTempVlrMulta.Value;
              VlrJuros := VlrJuros + TblPagtosTempVlrJuros.Value;
              VlrDesc  := VlrDesc  + TblPagtosTempVlrDesc.Value;
            end;
          TblPagtosTemp.next;
        end;
      if VlrTotal > 0 then
        begin
          Application.CreateForm(TFormTelaBaixaDocumentosPagarPagamento,FormTelaBaixaDocumentosPagarPagamento);
          FormTelaBaixaDocumentosPagarPagamento.EditValorTotal.Value   := VlrTotal;
          FormTelaBaixaDocumentosPagarPagamento.EditVlrJuros.Value     := VlrJuros;
          FormTelaBaixaDocumentosPagarPagamento.EditVlrMulta.Value     := VlrMulta;
          FormTelaBaixaDocumentosPagarPagamento.EditVlrDesc.Value      := VlrDesc;
          FormTelaBaixaDocumentosPagarPagamento.DataMovTesouraria.Date := DtBaixa.Date;
          FormTelaBaixaDocumentosPagarPagamento.DateEditMovBanco.Date  := DtBaixa.Date;
          if ComboFornecedor.KeyValue <> null then
            FormTelaBaixaDocumentosPagarPagamento.MemoHistTesouraria.Text := 'Fornecedor: ' + ComboFornecedor.Text;
          FormTelaBaixaDocumentosPagarPagamento.ShowModal;
        end;
    end;
  if ((Application.FindComponent('FormTelaBaixaDocumentosPagarPagamento') <> nil)
    and (FormTelaBaixaDocumentosPagarPagamento.ModalResult = MrOk))
    or (DM.SQLConfigFinanceiro.FieldByName('CGFIUSATESOURARIA').AsString <> 'S') then
    begin
      SQLPagamento.Open ;
      TblPagtosTemp.DisableControls;
      TblPagtosTemp.First ;
      while not TblPagtosTemp.EOF do
      begin
        if TblPagtosTempBaixar.Value then
        begin
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select MAX(PAGAICOD) as CONTADOR from PAGAMENTO') ;
          DM.SQLTemplate.SQL.Add('where CTPGA13ID = ''' + TblPagtosTempCTPGA13ID.Value + '''') ;
          DM.SQLTemplate.Open ;
          SQLPagamento.Append ;
          SQLPagamentoCTPGA13ID.Value      := TblPagtosTempCTPGA13ID.Value ;
          if DM.SQLTemplate.FieldByName('CONTADOR').Value > 0 then
            SQLPagamentoPAGAICOD.Value := DM.SQLTemplate.FieldByName('CONTADOR').Value + 1
          else
            SQLPagamentoPAGAICOD.Value := 1 ;

          SQLPagamentoPAGADPAGTO.Value     := DtBaixa.Date ;
          SQLPagamentoPAGAN3VLRPAGTO.Value := TblPagtosTempVlrVencto.Value;
          SQLPagamentoPAGAN3VLRJURO.Value  := TblPagtosTempVlrJuros.Value;
          SQLPagamentoPAGAN3VLRMULTA.Value := TblPagtosTempVlrMulta.Value;
          SQLPagamentoPAGAN3VLRDESC.Value  := TblPagtosTempVlrDesc.Value;

          ///////////////////////////////////////////////////////////////////////////
          if (Application.FindComponent('FormTelaBaixaDocumentosPagarPagamento') <> nil) then
            begin
              // HISTORICO
              if FormTelaBaixaDocumentosPagarPagamento.MemoHistTesouraria.Text <> '' then
                SQLPagamento.FieldByName('PAGAA254HISTORICO').AsString := Trim(FormTelaBaixaDocumentosPagarPagamento.MemoHistTesouraria.Text);
              // PLANO DE CONTAS DEBITO
              if FormTelaBaixaDocumentosPagarPagamento.ComboContaDebitoPrincipal.Value <> '' then
                SQLPagamento.FieldByName('PLCTA15DEBITO').AsString := FormTelaBaixaDocumentosPagarPagamento.ComboContaDebitoPrincipal.Value;
              if FormTelaBaixaDocumentosPagarPagamento.ComboContaDebitoJuros.Value <> '' then
                SQLPagamento.FieldByName('PLCTA15CODJURODEB').AsString := FormTelaBaixaDocumentosPagarPagamento.ComboContaDebitoJuros.Value;
              if FormTelaBaixaDocumentosPagarPagamento.ComboContaDebitoMulta.Value <> '' then
                SQLPagamento.FieldByName('PLCTA15CODMULTDEB').AsString := FormTelaBaixaDocumentosPagarPagamento.ComboContaDebitoMulta.Value;
              if FormTelaBaixaDocumentosPagarPagamento.ComboContaDebitoDesconto.Value <> '' then
                SQLPagamento.FieldByName('PLCTA15CODDESCDEB').AsString := FormTelaBaixaDocumentosPagarPagamento.ComboContaDebitoDesconto.Value;

              // PLANO DE CONTAS CREDITO
              if FormTelaBaixaDocumentosPagarPagamento.ComboContaCreditoPrincipal.Value <> '' then
                SQLPagamento.FieldByName('PLCTA15CREDITO').AsString := FormTelaBaixaDocumentosPagarPagamento.ComboContaCreditoPrincipal.Value;
              if FormTelaBaixaDocumentosPagarPagamento.ComboContaCreditoJuros.Value <> '' then
                SQLPagamento.FieldByName('PLCTA15CODJUROCRED').AsString := FormTelaBaixaDocumentosPagarPagamento.ComboContaCreditoJuros.Value;
              if FormTelaBaixaDocumentosPagarPagamento.ComboContaCreditoMulta.Value <> '' then
                SQLPagamento.FieldByName('PLCTA15CODMULTCRED').AsString := FormTelaBaixaDocumentosPagarPagamento.ComboContaCreditoMulta.Value;
              if FormTelaBaixaDocumentosPagarPagamento.ComboContaCreditoDesconto.Value <> '' then
                SQLPagamento.FieldByName('PLCTA15CODDESCCRED').AsString := FormTelaBaixaDocumentosPagarPagamento.ComboContaCreditoDesconto.Value;
              ///////////////////////////////////////////////////////////////////////////
              // TIPO LIQUIDACAO
              if FormTelaBaixaDocumentosPagarPagamento.ComboTipoLiquidacao.Value <> '' then
                SQLPagamento.FieldByName('TPLQICOD').AsString := FormTelaBaixaDocumentosPagarPagamento.ComboTipoLiquidacao.Value;

            end;
          SQLPagamentoPENDENTE.Value       := 'S' ;
          SQLPagamentoREGISTRO.Value       := Now ;
          if (DM.SQLConfigFinanceiro.FieldByName('CGFIUSATESOURARIA').AsString = 'S') and
             (Application.FindComponent('FormTelaBaixaDocumentosPagarPagamento') <> nil) and
             (FormTelaBaixaDocumentosPagarPagamento.ModalResult = MrOk) then
            begin
              // GERA MOVIMENTOS EXTERNOS CONFORME A FORMA DE PAGAMENTO ESCOLHIDA
              {INICIO}
              case FormTelaBaixaDocumentosPagarPagamento.FormaPagamento[1] of
                'D' : begin
                        // GRAVA MOVIMENTO NA TESOURARIA E BAIXA CONTA PAGAR;
                        LancaMovimentacaoTesouraria(StrToInt(EmpresaPadrao),TerminalAtual,
                                                    StrToInt(FormTelaBaixaDocumentosPagarPagamento.ComboNumerario.Value),
                                                    StrToInt(FormTelaBaixaDocumentosPagarPagamento.ComboOperacaoTesouraria.Value),
                                                    TblPagtosTempVlrPagto.AsFloat,
                                                    FormTelaBaixaDocumentosPagarPagamento.MemoHistTesouraria.Text,
                                                    TblPagtosTempCTPGA13ID.AsString,
                                                    '',
                                                    '',
                                                    '',
                                                    FormTelaBaixaDocumentosPagarPagamento.DataMovTesouraria.Date,
                                                    TblPagtosTempDocumento.AsString,
                                                    SQLPagamento.FieldByName('PLCTA15DEBITO').AsString);
                      end;
                'C' : begin
                        // INSERE O NÚMERO DO CHEQUE(ID) NO REGISTRO DO CONTAS A PAGAR;
                        AtualizaCampoChequeEmitidoCabecalhoContasPagar(IDChequeEmitido,SQLPagamentoCTPGA13ID.AsString);
                      end;
                'B' : begin
                       // LANÇA MOVIMENTAÇÃO BANCARIA E ATUALIZA SALDO DA CONTACORRENTE;
                       LancaMovimentacaoBanco(EmpresaBaixaDocPagar,
                                              StrToInt(FormTelaBaixaDocumentosPagarPagamento.ComboContaCorrenteBanco.Value),
                                              StrToInt(FormTelaBaixaDocumentosPagarPagamento.ComboOperacaoBanco.Value),
                                              0,
                                              TblPagtosTempVlrPagto.AsFloat,
                                              0,
                                              0,
                                              FormTelaBaixaDocumentosPagarPagamento.DateEditMovBanco.Date,
                                              FormTelaBaixaDocumentosPagarPagamento.MemoHistorico.Text,
                                              '',
                                              '',
                                              TblPagtosTempCTPGA13ID.AsString,
                                              '',
                                              '');
                       {if FormTelaBaixaDocumentosPagarPagamento.ComboOperacaoTesourariaBanco.Value <> '' then
                         begin
                           LancaMovimentacaoTesouraria(StrToInt(EmpresaPadrao),TerminalAtual,
                                                       StrToInt(FormTelaBaixaDocumentosPagarPagamento.ComboNumerarioBanco.Value),
                                                       StrToInt(FormTelaBaixaDocumentosPagarPagamento.ComboOperacaoTesourariaBanco.Value),
                                                       TblPagtosTempVlrPagto.AsFloat,
                                                       FormTelaBaixaDocumentosPagarPagamento.MemoHistorico.Text,
                                                       TblPagtosTempCTPGA13ID.AsString,'','','');
                         end;}
                      end;
              end;
              {FIM}
            end;
          SQLPagamento.Post ;
          AtualizaTotaisCabecalhoContasPagar(TblPagtosTempCTPGA13ID.Value) ;
          TblPagtosTemp.Delete ;
          TblPagtosTemp.First ;
        end
        else TblPagtosTemp.Next ;
      end ;
    end
  else
    begin
      ShowMessage('Operação cancelada !');
    end;
  if (Application.FindComponent('FormTelaBaixaDocumentosPagarPagamento') <> nil) then
    FormTelaBaixaDocumentosPagarPagamento.Close;
  TblPagtosTemp.EnableControls;
  AtualizaTotal;
  TblPagtosTemp.First;
  Mensagem.Caption := '';
  Mensagem.Refresh;
  Application.ProcessMessages;

end;
function TFormTelaBaixarDocumentosPagar.TemDataBaixaMenorQueEmissao : Boolean;
var
  Posicao : TBookmark;
begin
  Posicao := TblPagtosTemp.GetBookmark;
  TblPagtosTemp.First;
  Result := False;
  while not TblPagtosTemp.Eof do
    begin
      if TblPagtosTempBaixar.AsBoolean then
        if TblPagtosTempEmissao.AsDateTime > DtBaixa.Date then
          begin
            Result := True;
            Break;
          end;
      TblPagtosTemp.Next;
    end;
  TblPagtosTemp.GotoBookmark(Posicao);
  Posicao := Nil;
end;

procedure TFormTelaBaixarDocumentosPagar.ValorPagtoExit(Sender: TObject);
begin
  inherited;
  if ValorPagto.Value > 0 then
    BtnSelecionarDoc.Click;
end;

end.
