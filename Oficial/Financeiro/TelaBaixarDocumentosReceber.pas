unit TelaBaixarDocumentosReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FormResources, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls, Grids,
  DBGrids, Mask, ToolEdit, Db, DBTables, RxQuery, MemTable, RxLookup,
  CurrEdit, VarSYS, Variants, ComCtrls, Placemnt, TimerLst, UCrpe32, Menus,
  RXCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaBaixarDocumentosReceber = class(TFormTelaGeralTEMPLATE)
    PanelFundoBxDocREc: TPanel;
    PanelTopBxDocREc: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    De: TDateEdit;
    Ate: TDateEdit;
    Label4: TLabel;
    SQLContasReceber: TRxQuery;
    Label5: TLabel;
    DtBaixa: TDateEdit;
    ComboEmpresa: TRxDBLookupCombo;
    SQLCliente: TRxQuery;
    DSSQLCliente: TDataSource;
    ComboCliente: TRxDBLookupCombo;
    SQLEmpresa: TRxQuery;
    DSSQLEmpresa: TDataSource;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    TblRecebimento: TTable;
    TblRecebimentoCTRCA13ID: TStringField;
    TblRecebimentoCLIEA13ID: TStringField;
    TblRecebimentoDtVencimento: TDateTimeField;
    TblRecebimentoClienteNome: TStringField;
    TblRecebimentoParcela: TIntegerField;
    TblRecebimentoValor: TFloatField;
    TblRecebimentoValorJuro: TFloatField;
    TblRecebimentoValorMulta: TFloatField;
    TblRecebimentoValorDesconto: TFloatField;
    TblRecebimentoValorTotal: TFloatField;
    TblRecebimentoBaixar: TBooleanField;
    DSTblRecebimento: TDataSource;
    Label9: TLabel;
    TotalContas: TCurrencyEdit;
    SQLTotal: TRxQuery;
    SQLTotalTotal: TFloatField;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TFloatField;
    SQLContasReceberCTRCN2DESCFIN: TFloatField;
    SQLContasReceberCTRCN2TOTREC: TFloatField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberCLIEA60RAZAOSOC: TStringField;
    SQLRecebimento: TRxQuery;
    SQLRecebimentoCTRCA13ID: TStringField;
    SQLRecebimentoRECEICOD: TIntegerField;
    SQLRecebimentoRECEDRECTO: TDateTimeField;
    SQLRecebimentoRECEN2VLRRECTO: TFloatField;
    SQLRecebimentoRECEN2VLRJURO: TFloatField;
    SQLRecebimentoRECEN2VLRMULTA: TFloatField;
    SQLRecebimentoRECEN2DESC: TFloatField;
    SQLRecebimentoEMPRICODREC: TIntegerField;
    SQLRecebimentoTERMICODREC: TIntegerField;
    SQLRecebimentoCLIEA13ID: TStringField;
    SQLRecebimentoPENDENTE: TStringField;
    SQLRecebimentoREGISTRO: TDateTimeField;
    SQLRecebimentoRECEN2MULTACOBR: TFloatField;
    DSSQLRecebimento: TDataSource;
    TblRecebimentoDocumento: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    Progress: TProgressBar;
    SQLContasReceberSALDO: TFloatField;
    CheckVencimento: TCheckBox;
    FormStorage: TFormStorage;
    TimerList1: TRxTimerList;
    TblRecebimentoEmissao: TDateField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    TblRecebimentoNroDuplicBanco: TStringField;
    SQLClienteCLIEA14CGC: TStringField;
    SQLClienteCLIEA11CPF: TStringField;
    TableRecibo: TTable;
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
    QueryReciboConta: TRxQuery;
    DSQueryRecibo: TDataSource;
    QueryReciboContaRECIA13ID: TStringField;
    QueryReciboContaRECOICOD: TIntegerField;
    QueryReciboContaRECOA13DOCORIGEM: TStringField;
    QueryReciboContaREGISTRO: TDateTimeField;
    QueryReciboContaPENDENTE: TStringField;
    TableReciboCLIEA13ID: TStringField;
    TableReciboRECIN2VLRBRUTO: TFloatField;
    TableReciboRECIN2VLRIRRF: TFloatField;
    TableReciboRECIN2VLRLIQUIDO: TFloatField;
    TableReciboRECIDEMISSAO: TDateTimeField;
    TableReciboRECITOBS: TStringField;
    TableReciboRECIICOD: TAutoIncField;
    DSTableRecibo: TDataSource;
    TableReciboConta: TTable;
    TableReciboContaRECIICOD: TIntegerField;
    TableReciboContaRECOA13DOCORIGEM: TStringField;
    TableReciboContaRECOICOD: TAutoIncField;
    QueryReciboRECICTIPO: TStringField;
    TableReciboContaRECODBAIXA: TDateTimeField;
    TableReciboContaRECON2VLRBAIXA: TFloatField;
    QueryReciboContaRECODBAIXA: TDateTimeField;
    QueryReciboContaRECON2VLRBAIXA: TFloatField;
    Report: TCrpe;
    PopupImp: TPopupMenu;
    odos1: TMenuItem;
    Selecionados1: TMenuItem;
    TblImpContasReceber: TTable;
    BatchMove: TBatchMove;
    TblImpContasReceberCTRCA13ID: TStringField;
    TblImpContasReceberCLIEA13ID: TStringField;
    TblImpContasReceberDtVencimento: TDateTimeField;
    TblImpContasReceberClienteNome: TStringField;
    TblImpContasReceberParcela: TIntegerField;
    TblImpContasReceberValor: TFloatField;
    TblImpContasReceberValorJuro: TFloatField;
    TblImpContasReceberValorMulta: TFloatField;
    TblImpContasReceberValorDesconto: TFloatField;
    TblImpContasReceberValorTotal: TFloatField;
    TblImpContasReceberBaixar: TBooleanField;
    TblImpContasReceberDocumento: TStringField;
    TblImpContasReceberEmissao: TDateField;
    TblImpContasReceberNroDuplicBanco: TStringField;
    SQLRecebimentoTERMICOD: TIntegerField;
    SQLRecebimentoRECEA30HIST: TStringField;
    SQLRecebimentoPLCTA15CREDITO: TStringField;
    SQLRecebimentoPLCTA15DEBITO: TStringField;
    SQLRecebimentoPLCTA15CODJUROCRED: TStringField;
    SQLRecebimentoPLCTA15CODMULTCRED: TStringField;
    SQLRecebimentoPLCTA15CODDESCCRED: TStringField;
    SQLRecebimentoPLCTA15CODJURODEB: TStringField;
    SQLRecebimentoPLCTA15CODMULTDEB: TStringField;
    SQLRecebimentoPLCTA15CODDESCDEB: TStringField;
    SQLRecebimentoRECEA254HISTORICO: TStringField;
    TblRecebimentoValorOriginal: TFloatField;
    Label6: TLabel;
    TotalContasSelecionadas: TCurrencyEdit;
    SQLTotalSelecionado: TRxQuery;
    SQLTotalSelecionadoTotal: TFloatField;
    Mensagem: TLabel;
    SQLPortador: TRxQuery;
    DSSQLPortador: TDataSource;
    Label7: TLabel;
    ComboPortador: TRxDBLookupCombo;
    Label8: TLabel;
    ComboTipoDoc: TRxDBLookupCombo;
    SQLRecebimentoTPLQICOD: TIntegerField;
    SQLTipoDoc: TQuery;
    SQLTipoDocTPDCICOD: TIntegerField;
    SQLTipoDocTPDCA60DESCR: TStringField;
    DSSQLTipoDoc: TDataSource;
    RadioOrdem: TRadioGroup;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    ComboPortadorBaixa: TRxDBLookupCombo;
    Label11: TLabel;
    ComboTipoDocBaixa: TRxDBLookupCombo;
    SQLRecebimentoRECEDDATAMOV: TDateTimeField;
    GroupLegenda: TGroupBox;
    Shape1: TShape;
    Label12: TLabel;
    Label13: TLabel;
    Shape2: TShape;
    Label14: TLabel;
    Shape3: TShape;
    SQLRecebimentoCTRCA13IDCREDITO: TStringField;
    Shape4: TShape;
    Label15: TLabel;
    TblRecebimentoTipoRegistro: TStringField;
    SQLContasReceberCTRCCTIPOREGISTRO: TStringField;
    SQLContasReceberCTRCA254HIST: TStringField;
    Label16: TLabel;
    ComboNumerario: TRxDBLookupCombo;
    SQLNumerario: TQuery;
    DSSQLNumerario: TDataSource;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    SQLNumerarioNUMECVISTAPRAZO: TStringField;
    SQLNumerarioNUMECATIVO: TStringField;
    SQLNumerarioNUMEA5TIPO: TStringField;
    DBGridLista: TDBGrid;
    Label17: TLabel;
    ValorPagto: TCurrencyEdit;
    CheckJuros: TCheckBox;
    SQLContasReceberCTRCN2TXJURO: TFloatField;
    SQLContasReceberCTRCA15NOSSONUMERO: TStringField;
    TblRecebimentoValorADMCartoes: TFloatField;
    SQLNumerarioNUMEN2TAXAADM: TFloatField;
    BtnSelecionarDoc: TSpeedButton;
    BtnBaixarDocSimples: TSpeedButton;
    BtnBaixarDocIntegrado: TSpeedButton;
    ButtonBaixaEmite: TSpeedButton;
    SpeedButton1: TSpeedButton;
    LabelImpressao: TRxSpeedButton;
    PopupRetornoCob: TPopupMenu;
    mnBanrisul: TMenuItem;
    mnSicredi: TMenuItem;
    labelRetornoCob: TRxSpeedButton;
    TitulosNaoEncontrados: TMemo;
    OpenDialog: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure DBGridListaCellClick(Column: TColumn);
    procedure SaveBoolean(Grid : TDBGrid) ;
    procedure DBGridListaColEnter(Sender: TObject);
    procedure DBGridListaColExit(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnBaixarDocIntegradoClick(Sender: TObject);
    procedure SQLRecebimentoBeforePost(DataSet: TDataSet);
    procedure TblRecebimentoBeforePost(DataSet: TDataSet);
    procedure TblRecebimentoAfterPost(DataSet: TDataSet);
    procedure CheckVencimentoClick(Sender: TObject);
    procedure ButtonBaixaEmiteClick(Sender: TObject);
    procedure TableReciboContaNewRecord(DataSet: TDataSet);
    procedure QueryReciboContaNewRecord(DataSet: TDataSet);
    procedure QueryReciboBeforePost(DataSet: TDataSet);
    procedure QueryReciboContaBeforePost(DataSet: TDataSet);
    procedure QueryReciboNewRecord(DataSet: TDataSet);
    procedure odos1Click(Sender: TObject);
    procedure Selecionados1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnBaixarDocSimplesClick(Sender: TObject);
    procedure SQLRecebimentoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure ValorPagtoExit(Sender: TObject);
    procedure mnBanrisulClick(Sender: TObject);
    procedure mnSicrediClick(Sender: TObject);
  private
    { Private declarations }
    OriginalOptions : TDBGridOptions;
    VlrTotal,
    VlrJuros,
    VlrMulta,
    VlrDesc,
    ValorAtual : Double;
    UltVcto : TDateTime;
    Cliente, TabelaMaisUsuario : String;
    procedure AtualizaTotal ;
    procedure GeraRecibo;
    procedure PreparaTabelaParadox;
    function TemDataBaixaMenorQueEmissao : Boolean;
    procedure ImportarRetornoBanco(NomeBanco, Arquivo: string);
  public
    { Public declarations }
    EmiteRecibo : Boolean;
    Anexo : String;
  end;

var
  FormTelaBaixarDocumentosReceber: TFormTelaBaixarDocumentosReceber;

implementation

uses CadastroCliente, DataModulo, UnitLibrary,
  TelaBaixarDocumentosReceberRecebimento, CadastroRecibo,
  TelaPesquisaDocumentoReceber, TelaBaixarDocumentosReceberPlanoConta,
  TelaBaixarDocumentosPlanoConta;
{$R *.DFM}

procedure TFormTelaBaixarDocumentosReceber.GeraRecibo;
begin
  if not QueryRecibo.Active then
    QueryRecibo.Open;
  if not QueryReciboConta.Active then
    QueryReciboConta.Open;
  TableRecibo.First;
  while not TableRecibo.Eof do
    begin
      QueryRecibo.Append;
      QueryRecibo.FieldByName('CLIEA13ID').AsString       := TableRecibo.FieldByName('CLIEA13ID').AsString;
      QueryRecibo.FieldByName('RECICTIPO').AsString       := 'C';
      QueryRecibo.FieldByName('RECIN2VLRBRUTO').AsFloat   := TableRecibo.FieldByName('RECIN2VLRBRUTO').AsFloat;
      QueryRecibo.FieldByName('RECIN2VLRLIQUIDO').AsFloat := TableRecibo.FieldByName('RECIN2VLRLIQUIDO').AsFloat;
      QueryRecibo.FieldByName('RECIDEMISSAO').AsDateTime  := DtBaixa.Date;
      QueryRecibo.FieldByName('PENDENTE').AsString        := 'S';
      QueryRecibo.FieldByName('REGISTRO').AsDateTime      := Now;
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

procedure TFormTelaBaixarDocumentosReceber.SaveBoolean(Grid : TDBGrid) ;
begin
  Grid.SelectedField.Dataset.Edit ;
  Grid.SelectedField.AsBoolean := not Grid.SelectedField.AsBoolean ;
  Grid.SelectedField.Dataset.Post ;

  if (Grid.SelectedField.Dataset.FieldByName('CLIEA13ID').AsString <> Cliente) and (Cliente <> '') then
    begin
      DM.TemClienteDiferente := True;
    end
  else
    DM.TemClienteDiferente := False;
  Cliente := Grid.SelectedField.Dataset.FieldByName('CLIEA13ID').AsString;
  Grid.SelectedField.DataSet.Next;
end ;

procedure TFormTelaBaixarDocumentosReceber.FormCreate(Sender: TObject);
begin
  inherited;
  TabelaMaisUsuario := 'RectosTemp_'+FormatFloat('###000', dm.SQLUsuario.fieldbyname('USUAICOD').AsInteger);

  //  if not UsuarioMaster then
//    SQLEmpresa.MacroByName('MEmpresa').AsString := 'EMPRICOD = ' + IntToStr(EmpresaCorrente)
//  else
    SQLEmpresa.MacroByName('MEmpresa').AsString := '0=0';

  PreparaTabelaParadox;

  SQLEmpresa.Open;
  SQLCliente.Open;
  SQLPortador.Open;
  SQLTipoDoc.Open;
  SQLNumerario.Open;
  EmiteRecibo := False;
  ComboEmpresa.KeyValue := EmpresaPadrao;
  De.Date := dm.DataBaseSistema;
  Ate.Date := dm.DataBaseSistema;
  DtBaixa.Date := dm.DataBaseSistema;
  Mensagem.Caption := '';
  Mensagem.Refresh;
  ValorAtual := 0;
  DM.SQLConfigFinanceiro.Close;
  DM.SQLConfigFinanceiro.Open;
  if DM.SQLConfigFinanceiro.fieldbyname('CGFIUSATESOURARIA').AsString <> 'S' then
    BtnBaixarDocIntegrado.Enabled := False;
  if not (dm.SQLConfigCrediario.Active) then
    DM.SQLConfigCrediario.Open;
end;

procedure TFormTelaBaixarDocumentosReceber.BtnSelecionarDocClick(
  Sender: TObject);
var VarValorPago : Double;
begin
  inherited;
  Mensagem.Caption := 'Verificando contas pendentes...' ;
  Mensagem.Refresh ;

  if not dm.SQLConfigGeral.Active then
    dm.SQLConfigGeral.Open;


  PreparaTabelaParadox;

  SQLContasReceber.Close;
  if not CheckVencimento.Checked then
    begin
      SQLContasReceber.MacroByName('MData').Value := 'CR.CTRCDVENC >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                     'CR.CTRCDVENC <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '''' ;
    end
  else
    SQLContasReceber.MacroByName('MData').Value := '0=0' ;

  if ComboCliente.Text <> '' then
    SQLContasReceber.MacroByName('MCliente').Value   := 'CL.CLIEA13ID = ''' + ComboCliente.Value + ''''
  else
    SQLContasReceber.MacroByName('MCliente').Value   := '0=0';
  if ComboEmpresa.Value <> '' then
    SQLContasReceber.MacroByName('MEmpresa').Value   := 'CR.EMPRICOD = ' + ComboEmpresa.Value
  else
    SQLContasReceber.MacroByName('MEmpresa').Value   := '0=0';

  if ComboPortador.Value <> '' then
    SQLContasReceber.MacrobyName('MPortador').Value := 'CR.PORTICOD = ' + ComboPortador.Value
  else
    SQLContasReceber.MacrobyName('MPortador').Value := '0=0';

  if ComboTipoDoc.Value <> '' then
    SQLContasReceber.MacrobyName('MTipoDoc').Value := 'CR.TPDCICOD = '  + ComboTipoDoc.Value
  else
    SQLContasReceber.MacrobyName('MTipoDoc').Value := '0=0';

  if ComboNumerario.Value <> '' then
    SQLContasReceber.MacrobyName('MNumerario').Value := 'CR.NUMEICOD = '  + ComboNumerario.Value
  else
    SQLContasReceber.MacrobyName('MNumerario').Value := '0=0';

  SQLContasReceber.MacroByName('MDocumento').AsString := '0=0';

  //Ordem
  case RadioOrdem.ItemIndex of
    0 : SQLContasReceber.MacroByName('MOrdem').Value     := 'CL.CLIEA60RAZAOSOC';
    1 : SQLContasReceber.MacroByName('MOrdem').Value     := 'CR.CTRCDEMIS';
    2 : SQLContasReceber.MacroByName('MOrdem').Value     := 'CR.CTRCDVENC';
    3 : SQLContasReceber.MacroByName('MOrdem').Value     := 'CR.CTRCN2VLR';
  end;

  SQLContasReceber.Open;

  VarValorPago := ValorPagto.value;

  TblRecebimento.DisableControls;
  SQLContasReceber.First;
  while not SQLContasReceber.Eof do
    begin
      TblRecebimento.Append;
      TblRecebimento.FieldByName('CTRCA13ID').AsString      := SQLContasReceber.FieldByName('CTRCA13ID').AsString;
      TblRecebimento.FieldByName('CLIEA13ID').AsString      := SQLContasReceber.FieldByName('CLIEA13ID').AsString;
      TblRecebimento.FieldByName('DtVencimento').AsDateTime := SQLContasReceber.FieldByName('CTRCDVENC').AsDateTime;
      if ComboCliente.Value = '' then
        TblRecebimento.FieldByName('ClienteNome').AsString    := SQLContasReceber.FieldByName('CLIEA60RAZAOSOC').AsString
      else
        TblRecebimento.FieldByName('ClienteNome').AsString    := SQLContasReceber.FieldByName('CTRCA254HIST').AsString;
      TblRecebimento.FieldByName('Parcela').Value           := SQLContasReceber.FieldByName('CTRCINROPARC').Value;
      TblRecebimento.FieldByName('Valor').AsFloat           := SQLContasReceber.FieldByName('Saldo').AsFloat;
      TblRecebimento.FieldByName('ValorOriginal').AsFloat   := SQLContasReceber.FieldByName('CTRCN2VLR').AsFloat;
      TblRecebimento.FieldByName('ValorDesconto').AsFloat   := SQLContasReceber.FieldByName('CTRCN2DESCFIN').AsFloat;
      TblRecebimento.FieldByName('ValorTotal').AsFloat      := SQLContasReceber.FieldByName('CTRCN2VLR').AsFloat;
      TblRecebimento.FieldByName('Emissao').AsFloat         := SQLContasReceber.FieldByName('CTRCDEMIS').AsFloat;

      // ALTERADO POR ADILSON
      if SQLNumerarioNUMEN2TAXAADM.Value > 0 then
        TblRecebimento.FieldByName('ValorADMCartoes').AsFloat := SQLContasReceber.FieldByName('CTRCN2VLR').AsFloat - ((SQLContasReceber.FieldByName('CTRCN2VLR').AsFloat * SQLNumerarioNUMEN2TAXAADM.Value / 100))
      else
        TblRecebimento.FieldByName('ValorADMCartoes').AsFloat := 0;

      // ALTERADO PELO JUDI
      // LEMBRAR DE IMCLUIR NO SQLCONTASRECEBER O CAMPO CTRCN2TXJURO
      if CheckJuros.Checked then
        IF SqlContasReceber.FieldByname('CTRCDULTREC').ISNULL THEN
        Begin
          // TblRecebimento.FieldByName('Valor').Value
          TblRecebimento.FieldByName('ValorJuro').value := CalculaJuroMultaDesc(SQLContasReceber.FieldByName('Saldo').AsFloat,
                                                                    SQLContasReceber.FieldByName('CTRCN2TXJURO').Value ,
                                                                    SqlContasReceber.FieldByname('CTRCDVENC').AsDateTime,
                                                                    Date,
                                                                    0,
                                                                    DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').AsInteger,
                                                                    'Juro',
                                                                    SQLContasReceber.FieldByName('CUPOA13ID').AsString,
                                                                    SqlContasreceber.FieldByName('CTRCINROPARC').AsString);
        end else
        BEGIN
          IF SqlContasReceber.FieldByname('CTRCDVENC').AsDateTime < SqlContasReceber.FieldByname('CTRCDULTREC').AsDateTime Then
            TblRecebimento.FieldByName('ValorJuro').value := CalculaJuroMultaDesc(SQLContasReceber.FieldByName('Saldo').AsFloat,
                                                                    SQLContasReceber.FieldByName('CTRCN2TXJURO').Value ,
                                                                    SqlContasReceber.FieldByname('CTRCDULTREC').AsDateTime,
                                                                    Date,
                                                                    0,
                                                                    DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').AsInteger,
                                                                    'Juro',
                                                                    SQLContasReceber.FieldByName('CUPOA13ID').AsString,
                                                                    SqlContasreceber.FieldByName('CTRCINROPARC').AsString)
          Else
            TblRecebimento.FieldByName('ValorJuro').value := CalculaJuroMultaDesc(SQLContasReceber.FieldByName('Saldo').AsFloat,
                                                                    SQLContasReceber.FieldByName('CTRCN2TXJURO').Value ,
                                                                    SqlContasReceber.FieldByname('CTRCDVENC').AsDateTime,
                                                                    Date,
                                                                    0,
                                                                    DM.SQLConfigCrediario.Fieldbyname('CFCRINRODIASTOLJUR').AsInteger,
                                                                    'Juro',
                                                                    SQLContasReceber.FieldByName('CUPOA13ID').AsString,
                                                                    SqlContasreceber.FieldByName('CTRCINROPARC').AsString);


        END;

      if SQLContasReceber.FieldByName('CTRCCTIPOREGISTRO').AsVariant = Null then
        TblRecebimento.FieldByName('TipoRegistro').AsString := 'N'
      else
        TblRecebimento.FieldByName('TipoRegistro').AsString := SQLContasReceber.FieldByName('CTRCCTIPOREGISTRO').AsString;

      if SQLContasReceber.FieldByName('NOFIA13ID').asVariant <> Null Then
        begin
          if DM.ProcuraRegistro('NOTAFISCAL',['NOFIA13ID'],[SQLContasReceber.FieldByName('NOFIA13ID').asString],1) Then
            TblRecebimento.FieldByName('Documento').asString := DM.SQLTemplate.FindField('NOFIINUMERO').asString;
        end
      else
        begin
          if SQLContasReceber.FieldByName('CUPOA13ID').AsVariant <> Null then
            TblRecebimento.FieldByName('Documento').AsString := SQLContasReceber.FieldByName('CUPOA13ID').asString
          else
            TblRecebimento.FieldByName('Documento').AsString := SQLContasReceber.FieldByName('CTRCA13ID').asString;
        end;
      TblRecebimento.FieldByName('NroDuplicBanco').AsString  := SQLContasReceber.FieldByName('CTRCA30NRODUPLICBANCO').AsString;

      if ComboCliente.Value <> '' then
        DM.TemClienteDiferente := True
      else
        DM.TemClienteDiferente := False;

      TblRecebimento.FieldByName('Baixar').Value := False;
    if VarValorPago > 0 then
        begin
          if VarValorPago >= SQLContasReceber.FieldByName('Saldo').AsFloat+TblRecebimento.FieldByName('ValorJuro').value then
            begin
              TblRecebimento.FieldByName('Baixar').Value := True;
              VarValorPago := VarValorPago-(SQLContasReceber.FieldByName('Saldo').AsFloat+TblRecebimento.FieldByName('ValorJuro').value);
            end
          else
            if VarValorPago < SQLContasReceber.FieldByName('Saldo').AsFloat +TblRecebimento.FieldByName('ValorJuro').value then
              begin
                TblRecebimento.FieldByName('Baixar').Value := True;
                TblRecebimentoValor.Value := VarValorPago-TblRecebimento.FieldByName('ValorJuro').value;
                VarValorPago := 0;
              end;
        end;

      TblRecebimentoNroDuplicBanco.Value := SQLContasReceber.FieldByName('CTRCA15NOSSONUMERO').AsString;
      TblRecebimento.Post;

      SQLContasReceber.Next;
    end;
  AtualizaTotal ;
  TblRecebimento.EnableControls;
  TblRecebimento.First;
  Mensagem.Caption := '' ;
  Mensagem.Refresh ;
  if VarValorPago > 0 then
    ShowMessage('Atenção! O sistema irá desconsiderar o troco resultante nesta operação.');
  DBGridLista.SetFocus;
end;

procedure TFormTelaBaixarDocumentosReceber.AtualizaTotal ;
begin
  SQLTotal.Close ;
  SQLTotal.macrobyname('tabela').Value := TabelaMaisUsuario;
  SQLTotal.Open ;
  SQLTotalSelecionado.Close;
  SQLTotalSelecionado.macrobyname('tabela').Value := TabelaMaisUsuario;
  SQLTotalSelecionado.Open;
  TotalContas.Value := SQLTotalTotal.Value ;
  TotalContasSelecionadas.Value := SQLTotalSelecionadoTotal.Value ;
end ;

procedure TFormTelaBaixarDocumentosReceber.DBGridListaCellClick(
  Column: TColumn);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    SaveBoolean(DBGridLista) ;
end;

procedure TFormTelaBaixarDocumentosReceber.DBGridListaColEnter(
  Sender: TObject);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    begin
      OriginalOptions := DBGridLista.Options ;
      DBGridLista.Options := DBGridLista.Options - [dgEditing] ;
    end ;
end;

procedure TFormTelaBaixarDocumentosReceber.DBGridListaColExit(
  Sender: TObject);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    DBGridLista.Options := OriginalOptions;
end;

procedure TFormTelaBaixarDocumentosReceber.DBGridListaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Const
  CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
                                           DFCS_BUTTONCHECK or DFCS_CHECKED);
begin
  inherited;
 if TblRecebimentoDtVencimento.AsDateTime > Date then
    DBGridLista.Canvas.Font.Color := clGreen;

  if TblRecebimentoDtVencimento.AsDateTime < Date then
    DBGridLista.Canvas.Font.Color := clRed;

  if TblRecebimentoTipoRegistro.AsString = 'C' then
    DBGridLista.Canvas.Font.Color := clMaroon;

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

procedure TFormTelaBaixarDocumentosReceber.DBGridListaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ( Key = VK_SPACE ) and ( DBGridLista.SelectedField.DataType = ftBoolean ) then
    SaveBoolean(DBGridLista);
  if (Key = VK_Return) and (DSTblRecebimento.DataSet.State in DSEditModes) then
    TblRecebimento.Post;
end;

procedure TFormTelaBaixarDocumentosReceber.BtnBaixarDocIntegradoClick(
  Sender: TObject);
var
  IDCheque : String;
begin
  inherited;
  if DM.SQLConfigFinanceiro.fieldbyname('CGFIUSATESOURARIA').AsString <> 'S' then
    begin
      Informa('Você deve configurar o sistema para usar a baixa integrada. Verifique suas configurações do módulo Financeiro!');
      Abort;
    end;

  if (not TblRecebimento.Active)or(TblRecebimento.IsEmpty)  then
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
  {  if TemDataBaixaMenorQueEmissao then
    begin
      Informa('A data da Baixa não pode ser menor que a data de Emissão!');
      DtBaixa.SetFocus;
      exit;
    end; }

  DM.SQLConfigFinanceiro.Close;
  DM.SQLConfigFinanceiro.Open;

  Progress.Max      := TblRecebimento.RecordCount ;
  Progress.Position := 0 ;

  Mensagem.Caption := 'Baixando contas...' ;
  Mensagem.Refresh ;

  if DM.SQLConfigFinanceiro.fieldbyname('CGFIUSATESOURARIA').AsString = 'S' then
    begin
      VlrTotal := 0;
      VlrDesc  := 0;
      VlrJuros := 0;
      VlrMulta := 0;
      TblRecebimento.First;
      while not TblRecebimento.EOF do
        begin
          if (TblRecebimentoBaixar.Value) then
            begin
              VlrTotal := VlrTotal + TblRecebimentoValorTotal.Value;
              VlrMulta := VlrMulta + TblRecebimentoValorMulta.Value;
              VlrJuros := VlrJuros + TblRecebimentoValorJuro.Value;
              VlrDesc  := VlrDesc  + TblRecebimentoValorDesconto.Value;
              UltVcto  := TblRecebimentoDtVencimento.AsDateTime;
            end;
          TblRecebimento.next;
        end;
      if VlrTotal > 0 then
        begin
          SQLCliente.Close;
          SQLCliente.MacroByName('Cliente').AsString := 'CLIEA13ID = ''' + Cliente + '''';
          SQLCliente.Open;
          Application.CreateForm(TFormTelaBaixaDocumentosReceberRecebimento,FormTelaBaixaDocumentosReceberRecebimento);
          FormTelaBaixaDocumentosReceberRecebimento.Titular := SQLClienteCLIEA60RAZAOSOC.AsString;
          FormTelaBaixaDocumentosReceberRecebimento.IDCliente := Cliente;
          FormTelaBaixaDocumentosReceberRecebimento.DataMovTesouraria.Date := DtBaixa.Date;
          if SQLClienteCLIEA14CGC.AsString <> '' then
            begin
              FormTelaBaixaDocumentosReceberRecebimento.CpfCnpj  := SQLClienteCLIEA14CGC.AsString
            end
          else
            begin
              FormTelaBaixaDocumentosReceberRecebimento.CpfCnpj  := SQLClienteCLIEA11CPF.AsString;
            end;
          FormTelaBaixaDocumentosReceberRecebimento.DataVencimento  := UltVcto;

          FormTelaBaixaDocumentosReceberRecebimento.EditValorTotal.Value    := VlrTotal;
          FormTelaBaixaDocumentosReceberRecebimento.EditVlrJuros.Value      := VlrJuros;
          FormTelaBaixaDocumentosReceberRecebimento.EditVlrMulta.Value      := VlrMulta;
          FormTelaBaixaDocumentosReceberRecebimento.EditVlrDesc.Value       := VlrDesc;
          FormTelaBaixaDocumentosReceberRecebimento.EditVlrPrincipal.Value  := (VlrTotal - VlrJuros - VlrMulta) + VlrDesc;
          if ComboCliente.Value <> '' then
            FormTelaBaixaDocumentosReceberRecebimento.MemoHistTesouraria.Text := 'Cliente: '+SQLClienteCLIEA60RAZAOSOC.AsString;
          FormTelaBaixaDocumentosReceberRecebimento.ShowModal;
        end;
    end;
  if Application.FindComponent('FormTelaBaixaDocumentosReceberRecebimento') <> nil then
    begin
      if ((FormTelaBaixaDocumentosReceberRecebimento.ModalResult = MrOk)
          and (FormTelaBaixaDocumentosReceberRecebimento.FormaPagamento <> 'R')) then
        begin
          if ((TblRecebimento.Active) and
              (TblRecebimento.RecordCount > 0)) then
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
                  TableReciboConta.CreateTable;
                  TableRecibo.AddIndex('','RECIICOD',[ixPrimary]);
                  TableReciboConta.AddIndex('','RECIICOD;RECOICOD',[ixPrimary]);
                  TableRecibo.Open;
                  TableReciboConta.Open;
                  TableRecibo.IndexName := '';
                  TableReciboConta.IndexName := '';
                end;
              TblRecebimento.First;
              while not TblRecebimento.Eof do
                begin
                  if TblRecebimento.FieldByName('Baixar').AsBoolean then
                    begin
                      if TableRecibo.Locate('CLIEA13ID',TblRecebimento.FieldByName('CLIEA13ID').AsVariant,[loCaseInsensitive]) then
                        TableRecibo.Edit
                      else
                        begin
                          TableRecibo.Append;
                          TableRecibo.FieldByName('CLIEA13ID').AsString     := TblRecebimento.FieldByName('CLIEA13ID').AsString;
                          TableRecibo.FieldByName('RECIDEMISSAO').AsVariant := Null;
                        end;
                      TableRecibo.FieldByName('RECIN2VLRBRUTO').AsFloat   := TableRecibo.FieldByName('RECIN2VLRBRUTO').AsFloat + TblRecebimento.FieldByName('ValorTotal').AsFloat;
                      TableRecibo.FieldByName('RECIN2VLRLIQUIDO').AsFloat := TableRecibo.FieldByName('RECIN2VLRBRUTO').AsFloat;
                      TableRecibo.Post;
                      TableReciboConta.Append;
                      TableReciboConta.FieldByName('RECOA13DOCORIGEM').AsString := TblRecebimento.FieldByName('CTRCA13ID').AsString;
                      TableReciboConta.FieldByName('RECON2VLRBAIXA').AsFloat    := TblRecebimento.FieldByName('ValorTotal').AsFloat;
                      TableReciboConta.FieldByName('RECODBAIXA').AsDateTime     := DtBaixa.Date;
                      TableReciboConta.Post;
                    end;
                  TblRecebimento.Next;
                end;
            end;

          TblRecebimento.DisableControls ;
          TblRecebimento.First;
          Progress.Position := 0 ;
          SQLRecebimento.Open ;
          while not TblRecebimento.Eof do
            begin
              if TblRecebimento.FieldByName('Baixar').Value then
                begin
                  SQLRecebimento.Append;
                  SQLRecebimento.FieldByName('CTRCA13ID').AsString     := TblRecebimento.FieldByName('CTRCA13ID').AsString;
                  SQLRecebimento.FieldByName('CLIEA13ID').AsString     := TblRecebimento.FieldByName('CLIEA13ID').AsString;
                  SQLRecebimento.FieldByName('RECEDRECTO').AsDateTime  := DtBaixa.Date ;
                  SQLRecebimento.FieldByName('RECEDDATAMOV').AsDateTime:= DtBaixa.Date ;
                  SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat := TblRecebimento.FieldByName('Valor').AsFloat;
                  SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat  := TblRecebimento.FieldByName('ValorJuro').AsFloat;
                  SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat := TblRecebimento.FieldByName('ValorMulta').AsFloat;
                  SQLRecebimento.FieldByName('RECEN2DESC').AsFloat     := TblRecebimento.FieldByName('ValorDesconto').AsFloat;
                  SQLRecebimento.FieldByName('EMPRICODREC').asInteger  := EmpresaCorrente ;
                 if (Application.FindComponent('FormTelaBaixaDocumentosReceberRecebimento') <> nil) then
                   begin

                      // PLANO DE CONTAS CREDITO
                      if FormTelaBaixaDocumentosReceberRecebimento.ComboContaCreditoPrincipal.Value <> '' then
                        SQLRecebimento.FieldByName('PLCTA15CREDITO').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboContaCreditoPrincipal.Value;
                      if FormTelaBaixaDocumentosReceberRecebimento.ComboContaCreditoJuros.Value <> '' then
                        SQLRecebimento.FieldByName('PLCTA15CODJUROCRED').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboContaCreditoJuros.Value;
                      if FormTelaBaixaDocumentosReceberRecebimento.ComboContaCreditoMulta.Value <> '' then
                        SQLRecebimento.FieldByName('PLCTA15CODMULTCRED').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboContaCreditoMulta.Value;
                      if FormTelaBaixaDocumentosReceberRecebimento.ComboContaCreditoDesconto.Value <> '' then
                        SQLRecebimento.FieldByName('PLCTA15CODDESCCRED').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboContaCreditoDesconto.Value;
                      // PLANO DE CONTAS DEBITO
                      if FormTelaBaixaDocumentosReceberRecebimento.ComboContaDebitoPrincipal.Value <> '' then
                        SQLRecebimento.FieldByName('PLCTA15DEBITO').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboContaDebitoPrincipal.Value;
                      if FormTelaBaixaDocumentosReceberRecebimento.ComboContaDebitoJuros.Value <> '' then
                        SQLRecebimento.FieldByName('PLCTA15CODJURODEB').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboContaDebitoJuros.Value;
                      if FormTelaBaixaDocumentosReceberRecebimento.ComboContaDebitoMulta.Value <> '' then
                        SQLRecebimento.FieldByName('PLCTA15CODMULTDEB').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboContaDebitoMulta.Value;
                      if FormTelaBaixaDocumentosReceberRecebimento.ComboContaDebitoDesconto.Value <> '' then
                        SQLRecebimento.FieldByName('PLCTA15CODDESCDEB').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboContaDebitoDesconto.Value;
                      // TIPO LIQUIDACAO
                      if FormTelaBaixaDocumentosReceberRecebimento.ComboTipoLiquidacao.Value <> '' then
                        SQLRecebimento.FieldByName('TPLQICOD').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboTipoLiquidacao.Value;

                      ////////////////////////////////////

                  end;
                  // HISTORICO TESOURARIA
                  if FormTelaBaixaDocumentosReceberRecebimento.MemoHistTesouraria.Lines.Text <> '' then
                    begin
                      SQLRecebimento.FieldByName('RECEA254HISTORICO').AsString := Trim(FormTelaBaixaDocumentosReceberRecebimento.MemoHistTesouraria.Lines.Text);
                    end;
                  // HISTORICO BANCO
                  if FormTelaBaixaDocumentosReceberRecebimento.MemoHistorico.Lines.Text <> '' then
                    begin
                      SQLRecebimento.FieldByName('RECEA254HISTORICO').AsString := Trim(FormTelaBaixaDocumentosReceberRecebimento.MemoHistorico.Lines.Text);
                    end;

                  if  (DM.SQLConfigFinanceiro.fieldbyname('CGFIUSATESOURARIA').AsString = 'S')
                  and ((Application.FindComponent('FormTelaBaixaDocumentosReceberRecebimento') <> nil)
                  and (FormTelaBaixaDocumentosReceberRecebimento.ModalResult = MrOk)) then
                    begin
                      // GERA MOVIMENTOS EXTERNOS CONFORME A FORMA DE PAGAMENTO ESCOLHIDA
                      {INICIO}
                      case FormTelaBaixaDocumentosReceberRecebimento.FormaPagamento[1] of
                        'D': begin
                              // GRAVA MOVIMENTO NA TESOURARIA E BAIXA CONTA RECEBER;
                              LancaMovimentacaoTesouraria(StrToInt(EmpresaPadrao),TerminalAtual,
                                                          StrToInt(FormTelaBaixaDocumentosReceberRecebimento.ComboNumerario.Value),
                                                          StrToInt(FormTelaBaixaDocumentosReceberRecebimento.ComboOperacaoTesouraria.Value),
                                                          TblRecebimentoValorTotal.AsFloat,
                                                          FormTelaBaixaDocumentosReceberRecebimento.MemoHistTesouraria.Lines.Text,
                                                          '',TblRecebimentoCTRCA13ID.AsString,'','',FormTelaBaixaDocumentosReceberRecebimento.DataMovTesouraria.Date,TblRecebimentoDocumento.AsString,'');

                             end;
                        'B': begin
                               // LANÇA MOVIMENTAÇÃO BANCARIA E ATUALIZA SALDO DA CONTACORRENTE;
                               LancaMovimentacaoBanco(StrToInt(ComboEmpresa.Value),
                                                      StrToInt(FormTelaBaixaDocumentosReceberRecebimento.ComboContaCorrenteBanco.Value),
                                                      StrToInt(FormTelaBaixaDocumentosReceberRecebimento.ComboOperacaoBanco.Value),
                                                      StrToInt(FormTelaBaixaDocumentosReceberRecebimento.EditNroChqBanco.Text),
                                                      TblRecebimentoValorTotal.AsFloat,
                                                      FormTelaBaixaDocumentosReceberRecebimento.DateEditBomParaBanco.Date,
                                                      0,
                                                      FormTelaBaixaDocumentosReceberRecebimento.DateEditMovBanco.Date,
                                                      FormTelaBaixaDocumentosReceberRecebimento.MemoHistorico.Lines.Text,
                                                      '',
                                                      TblRecebimentoCTRCA13ID.AsString,
                                                      '',
                                                      '',
                                                      '');

                               // ALTERA DATA DE MOVIMENTO NO RECEBIMENTO
//                               SQLRecebimento.Edit;
                               SQLRecebimento.FieldByName('RECEDDATAMOV').AsDateTime := FormTelaBaixaDocumentosReceberRecebimento.DateEditMovBanco.Date;
//                               SQLRecebimento.Post;
                               {if FormTelaBaixaDocumentosReceberRecebimento.ComboOperacaoTesourariaBanco.Value <> '' then
                                 begin
                                   LancaMovimentacaoTesouraria(StrToInt(EmpresaPadrao),TerminalAtual,
                                                               StrToInt(FormTelaBaixaDocumentosReceberRecebimento.ComboNumerarioBanco.Value),
                                                               StrToInt(FormTelaBaixaDocumentosReceberRecebimento.ComboOperacaoTesourariaBanco.Value),
                                                               TblRecebimentoValorTotal.AsFloat,
                                                               FormTelaBaixaDocumentosReceberRecebimento.MemoHistorico.Text,
                                                               '',TblRecebimentoCTRCA13ID.AsString,'','');
                                 end;}
                             end;
                    end;
                  end;

                  SQLRecebimento.Post;

                  AtualizaTotaisCabecalhoContasReceber(TblRecebimento.FieldByName('CTRCA13ID').Value);
                  if ComboPortadorBaixa.Value <> '' then
                    AlterPortadorTipoDocContaReceber(TblRecebimento.FieldByName('CTRCA13ID').AsString,ComboPortadorBaixa.Value,'');
                  if ComboTipoDocBaixa.Value <> '' then
                    AlterPortadorTipoDocContaReceber(TblRecebimento.FieldByName('CTRCA13ID').AsString,'',ComboTipoDocBaixa.Value);

                  TblRecebimento.Delete ;
                end
              else
                TblRecebimento.Next ;
              Progress.Position := Progress.Position + 1 ;
            end;
          // Lança Movimento Bancário de Despesas;
          if  Application.FindComponent('FormTelaBaixaDocumentosReceberRecebimento') <> nil then
            if (FormTelaBaixaDocumentosReceberRecebimento.EditVlrDespesaBanco.Value > 0) and
              (FormTelaBaixaDocumentosReceberRecebimento.ComboOperacaoBancoDespesa.Value <> '') then
              begin
                LancaMovimentacaoBanco(StrToInt(ComboEmpresa.Value),
                                       StrToInt(FormTelaBaixaDocumentosReceberRecebimento.ComboContaCorrenteBanco.Value),
                                       StrToInt(FormTelaBaixaDocumentosReceberRecebimento.ComboOperacaoBancoDespesa.Value),
                                       0,
                                       FormTelaBaixaDocumentosReceberRecebimento.EditVlrDespesaBanco.Value,
                                       0,
                                       0,
                                       FormTelaBaixaDocumentosReceberRecebimento.DateEditMovBanco.Date,
                                       FormTelaBaixaDocumentosReceberRecebimento.MemoHistorico.Lines.Text,
                                       '',
                                       '',
                                       '',
                                       '',
                                       FormTelaBaixaDocumentosReceberRecebimento.ComboContaDebitoDespesaBco.Value);
              end;
        end;
      if (Application.FindComponent('FormTelaBaixaDocumentosReceberRecebimento') <> nil)
          and(FormTelaBaixaDocumentosReceberRecebimento.ModalResult = MrOk)
          and(FormTelaBaixaDocumentosReceberRecebimento.FormaPagamento = 'C') then
         begin
           // GERA NOVO REGISTRO(CHEQUE) NO CONTAS A RECEBER;
           FormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebido.First;
           while not FormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebido.Eof do
             begin
               IDCheque := LancaChequeRecebido(EmpresaCorrente,
                                               TerminalCorrente,
                                               FormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebidoNumerario.AsInteger,
                                               FormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebidoPortador.AsInteger,
                                               FormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebidoSituacao.AsInteger,
                                               Cliente,
                                               FormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebidoBanco.AsString,
                                               FormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebidoAgencia.AsString,
                                               FormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebidoContaCorrente.AsString,
                                               FormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebidoNroCheque.AsString,
                                               FormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebidoTitular.AsString,
                                               FormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebidoCpfCnpj.AsString,
                                               SQLRecebimento.FieldByName('CTRCA13ID').AsString,
                                               FormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebidoValor.AsFloat,
                                               StrToDate(FormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebidoDataVencimento.AsString));
               if FormTelaBaixaDocumentosReceberRecebimento.ValorDiferenca > 0 then
                 LancaValorJuroContasReceber(IDCheque,FormTelaBaixaDocumentosReceberRecebimento.ValorDiferenca /
                                             FormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebido.RecordCount);
               FormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebido.Next;
//               Application.ProcessMessages;
             end;
         end;

      if (Application.FindComponent('FormTelaBaixaDocumentosReceberRecebimento') <> nil)
          and(FormTelaBaixaDocumentosReceberRecebimento.ModalResult = MrOk)
          and(FormTelaBaixaDocumentosReceberRecebimento.FormaPagamento[1] = 'R') then
         begin
           TblRecebimento.First;
           if not SQLRecebimento.Active then SQLRecebimento.Open;
           while not TblRecebimento.Eof do
             begin
               if TblRecebimentoBaixar.AsBoolean then
                 begin
                   FormTelaBaixaDocumentosReceberRecebimento.TblCreditoCliente.First;
                   while not FormTelaBaixaDocumentosReceberRecebimento.TblCreditoCliente.Eof do
                     begin
                       if FormTelaBaixaDocumentosReceberRecebimento.TblCreditoClienteBaixar.AsBoolean then
                         begin
                           // Baixa a Conta a Receber
                           SQLRecebimento.Append;
                           SQLRecebimento.FieldByName('CTRCA13ID').AsString     := TblRecebimento.FieldByName('CTRCA13ID').AsString;
                           SQLRecebimento.FieldByName('CTRCA13IDCREDITO').AsString  := FormTelaBaixaDocumentosReceberRecebimento.TblCreditoClienteCTRCA13ID.AsString;
                           SQLRecebimento.FieldByName('CLIEA13ID').AsString     := TblRecebimento.FieldByName('CLIEA13ID').AsString;
                           SQLRecebimento.FieldByName('RECEDRECTO').AsDateTime  := DtBaixa.Date ;
                           SQLRecebimento.FieldByName('RECEDDATAMOV').AsDateTime:= DtBaixa.Date ;
                           SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat := FormTelaBaixaDocumentosReceberRecebimento.TblCreditoClienteValorUtilizado.AsFloat;
                           SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat  := 0;
                           SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat := 0;
                           SQLRecebimento.FieldByName('RECEN2DESC').AsFloat     := 0;
                           SQLRecebimento.FieldByName('EMPRICODREC').asInteger  := EmpresaCorrente ;
                           if (Application.FindComponent('FormTelaBaixaDocumentosReceberRecebimento') <> nil) then
                             begin
                                // HISTORICO
                                if FormTelaBaixaDocumentosReceberRecebimento.MemoHistorioCreditoCliente.Lines.Text <> '' then
                                  SQLRecebimento.FieldByName('RECEA254HISTORICO').AsString := Trim(FormTelaBaixaDocumentosReceberRecebimento.MemoHistorioCreditoCliente.Lines.Text);

                                // PLANO DE CONTAS CREDITO
                                if FormTelaBaixaDocumentosReceberRecebimento.ComboContaCreditoPrincipal.Value <> '' then
                                  SQLRecebimento.FieldByName('PLCTA15CREDITO').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboContaCreditoPrincipal.Value;
                                if FormTelaBaixaDocumentosReceberRecebimento.ComboContaCreditoJuros.Value <> '' then
                                  SQLRecebimento.FieldByName('PLCTA15CODJUROCRED').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboContaCreditoJuros.Value;
                                if FormTelaBaixaDocumentosReceberRecebimento.ComboContaCreditoMulta.Value <> '' then
                                  SQLRecebimento.FieldByName('PLCTA15CODMULTCRED').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboContaCreditoMulta.Value;
                                if FormTelaBaixaDocumentosReceberRecebimento.ComboContaCreditoDesconto.Value <> '' then
                                  SQLRecebimento.FieldByName('PLCTA15CODDESCCRED').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboContaCreditoDesconto.Value;
                                // PLANO DE CONTAS DEBITO
                                if FormTelaBaixaDocumentosReceberRecebimento.ComboContaDebitoPrincipal.Value <> '' then
                                  SQLRecebimento.FieldByName('PLCTA15DEBITO').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboContaDebitoPrincipal.Value;
                                if FormTelaBaixaDocumentosReceberRecebimento.ComboContaDebitoJuros.Value <> '' then
                                  SQLRecebimento.FieldByName('PLCTA15CODJURODEB').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboContaDebitoJuros.Value;
                                if FormTelaBaixaDocumentosReceberRecebimento.ComboContaDebitoMulta.Value <> '' then
                                  SQLRecebimento.FieldByName('PLCTA15CODMULTDEB').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboContaDebitoMulta.Value;
                                if FormTelaBaixaDocumentosReceberRecebimento.ComboContaDebitoDesconto.Value <> '' then
                                  SQLRecebimento.FieldByName('PLCTA15CODDESCDEB').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboContaDebitoDesconto.Value;
                                // TIPO LIQUIDACAO
                                if FormTelaBaixaDocumentosReceberRecebimento.ComboTipoLiquidacao.Value <> '' then
                                  SQLRecebimento.FieldByName('TPLQICOD').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboTipoLiquidacao.Value;

                                ////////////////////////////////////
                                SQLRecebimento.Post;
                             end;
                           // Atualiza Recebimento da Conta
                           AtualizaTotaisCabecalhoContasReceber(TblRecebimento.FieldByName('CTRCA13ID').AsString);

                           // Baixa o Credito
                           SQLRecebimento.Append;
                           SQLRecebimento.FieldByName('CTRCA13ID').AsString     := FormTelaBaixaDocumentosReceberRecebimento.TblCreditoClienteCTRCA13ID.AsString;
                           SQLRecebimento.FieldByName('CLIEA13ID').AsString     := TblRecebimento.FieldByName('CLIEA13ID').AsString;
                           SQLRecebimento.FieldByName('RECEDRECTO').AsDateTime  := DtBaixa.Date;
                           SQLRecebimento.FieldByName('RECEDDATAMOV').AsDateTime:= DtBaixa.Date;
                           SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat := FormTelaBaixaDocumentosReceberRecebimento.TblCreditoClienteValorUtilizado.AsFloat;
                           SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat  := 0;
                           SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat := 0;
                           SQLRecebimento.FieldByName('RECEN2DESC').AsFloat     := 0;
                           SQLRecebimento.FieldByName('EMPRICODREC').asInteger  := EmpresaCorrente ;
                           if (Application.FindComponent('FormTelaBaixaDocumentosReceberRecebimento') <> nil) then
                             begin
                                // HISTORICO
                                if FormTelaBaixaDocumentosReceberRecebimento.MemoHistorioCreditoCliente.Lines.Text <> '' then
                                  SQLRecebimento.FieldByName('RECEA254HISTORICO').AsString := Trim(FormTelaBaixaDocumentosReceberRecebimento.MemoHistorioCreditoCliente.Lines.Text);
                                 // PLANO DE CONTAS CREDITO
                                if FormTelaBaixaDocumentosReceberRecebimento.ComboContaCreditoCliente.Value <> '' then
                                  SQLRecebimento.FieldByName('PLCTA15CREDITO').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboContaCreditoCliente.Value;
                                // PLANO DE CONTAS DEBITO
                                if FormTelaBaixaDocumentosReceberRecebimento.ComboContaDebitoCliente.Value <> '' then
                                  SQLRecebimento.FieldByName('PLCTA15DEBITO').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboContaDebitoCliente.Value;
                                // TIPO LIQUIDACAO
                                if FormTelaBaixaDocumentosReceberRecebimento.ComboTipoLiquidacao.Value <> '' then
                                  SQLRecebimento.FieldByName('TPLQICOD').AsString := FormTelaBaixaDocumentosReceberRecebimento.ComboTipoLiquidacao.Value;
                                 ////////////////////////////////////

                             end;
                           SQLRecebimento.Post;

                           // Atualiza Credito Cliente
                           AtualizaTotaisCabecalhoContasReceber(FormTelaBaixaDocumentosReceberRecebimento.TblCreditoClienteCTRCA13ID.AsString);
                               
                         FormTelaBaixaDocumentosReceberRecebimento.TblCreditoCliente.Delete;
                       end
                     else
                       FormTelaBaixaDocumentosReceberRecebimento.TblCreditoCliente.Next;

//                       Application.ProcessMessages;
                     end;
                   TblRecebimento.Delete;
                 end
               else
                 TblRecebimento.Next;
//               Application.ProcessMessages;
             end;
         end;
      if (Application.FindComponent('FormTelaBaixaDocumentosReceberRecebimento') <> nil) then
        begin
          FormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebido.Close;
          FormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebido.Free;
          FormTelaBaixaDocumentosReceberRecebimento.TblCreditoCliente.Close;
          FormTelaBaixaDocumentosReceberRecebimento.TblCreditoCliente.Free;
          FormTelaBaixaDocumentosReceberRecebimento.Close;
          FreeAndNil(FormTelaBaixaDocumentosReceberRecebimento);
          Application.ProcessMessages;
        end;
    end
  else
    begin
      ShowMessage('Operação cancelada !');
    end;

  TblRecebimento.EnableControls;
  AtualizaTotal ;
  DM.TemClienteDiferente := False;
  Mensagem.Caption := '';
  Mensagem.Refresh ;
  Progress.Position := 0;
  TblRecebimento.First;
  SQLCliente.Close;
  SQLCliente.MacroByName('Cliente').AsString := '0=0';
  SQLCliente.Open;
  Application.ProcessMessages;

  if pergunta('SIM','Deseja Imprimir Recibo?') then
    begin
      GeraRecibo;
      if not FileExists('..\ImprimeReciboCliente.exe') then
        begin
          Application.CreateForm(TFormCadastroRecibo,FormCadastroRecibo);
          FormCadastroRecibo.SQLTemplate.Close;
          IF ComboCliente.Value <> '' THEN
            FormCadastroRecibo.SQLTemplate.MacroByName('MFiltro').AsString := 'RECICTIPO = ''C'' and CLIEA13ID ='''+ComboCliente.Value+''' and RECIDEMISSAO = '''+FormatDateTime('mm/dd/yyyy',DtBaixa.Date)+''''
          ELSE
            FormCadastroRecibo.SQLTemplate.MacroByName('MFiltro').AsString := 'RECICTIPO = ''C'' and RECIDEMISSAO = '''+FormatDateTime('mm/dd/yyyy',DtBaixa.Date)+'''';
          FormCadastroRecibo.SQLTemplate.Open;
          FormCadastroRecibo.Show;
        end
      else
        WinExec(Pchar(DM.PathAplicacao + '\ImpressaoReciboCliente.exe '),sw_Show);
    end;
end;

procedure TFormTelaBaixarDocumentosReceber.SQLRecebimentoBeforePost(DataSet: TDataSet);
begin
  inherited;
  If DataSet.FindField('REGISTRO') <> Nil Then
    DataSet.FindField('REGISTRO').AsDateTime := Now ;
  If DataSet.FindField('PENDENTE')<> Nil Then
    DataSet.FindField('PENDENTE').AsString := 'S' ;

  Case DataSet.State Of
    DsInsert: if (DataSet.Tag in [1,2,3]) Then
                DM.CodigoAutomatico('RECEBIMENTO', DSSQLRecebimento, DataSet, 1, 0);
  end;
end;

procedure TFormTelaBaixarDocumentosReceber.TblRecebimentoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if (TblRecebimentoValor.Value > TblRecebimentoValorOriginal.Value) then
    begin
      TblRecebimentoValor.AsFloat := TblRecebimentoValorOriginal.AsFloat;
    end;

  TblRecebimentoValorTotal.AsFloat := (TblRecebimentoValor.AsFloat +
                                      TblRecebimentoValorMulta.AsFloat +
                                      TblRecebimentoValorJuro.AsFloat) -
                                      TblRecebimentoValorDesconto.AsFloat;
end;

procedure TFormTelaBaixarDocumentosReceber.TblRecebimentoAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  AtualizaTotal;
  TotalContas.Update;
  TotalContasSelecionadas.Update;
end;

procedure TFormTelaBaixarDocumentosReceber.CheckVencimentoClick(
  Sender: TObject);
begin
  inherited;
  if CheckVencimento.Checked then
    begin
      De.Enabled  := False;
      Ate.Enabled := False;
    end
  else
    begin
      De.Enabled  := True;
      Ate.Enabled := True;
    end;
end;

procedure TFormTelaBaixarDocumentosReceber.ButtonBaixaEmiteClick(
  Sender: TObject);
begin
  inherited;
  if (not TblRecebimento.Active)or(TblRecebimento.IsEmpty)  then
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

  if ((TblRecebimento.Active) and
      (TblRecebimento.RecordCount > 0)) then
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
          TableReciboConta.CreateTable;
          TableRecibo.AddIndex('','RECIICOD',[ixPrimary]);
          TableReciboConta.AddIndex('','RECIICOD;RECOICOD',[ixPrimary]);
          TableRecibo.Open;
          TableReciboConta.Open;
          TableRecibo.IndexName := '';
          TableReciboConta.IndexName := '';
        end;
      TblRecebimento.First;
      while not TblRecebimento.Eof do
        begin
          if TblRecebimento.FieldByName('Baixar').AsBoolean then
            begin
              if TableRecibo.Locate('CLIEA13ID',TblRecebimento.FieldByName('CLIEA13ID').AsVariant,[loCaseInsensitive]) then
                TableRecibo.Edit
              else
                begin
                  TableRecibo.Append;
                  TableRecibo.FieldByName('CLIEA13ID').AsString     := TblRecebimento.FieldByName('CLIEA13ID').AsString;
                  TableRecibo.FieldByName('RECIDEMISSAO').AsVariant := Null;
                end;
              TableRecibo.FieldByName('RECIN2VLRBRUTO').AsFloat   := TableRecibo.FieldByName('RECIN2VLRBRUTO').AsFloat + TblRecebimento.FieldByName('ValorTotal').AsFloat;
              TableRecibo.FieldByName('RECIN2VLRLIQUIDO').AsFloat := TableRecibo.FieldByName('RECIN2VLRBRUTO').AsFloat;
              TableRecibo.Post;
              TableReciboConta.Append;
              TableReciboConta.FieldByName('RECOA13DOCORIGEM').AsString := TblRecebimento.FieldByName('CTRCA13ID').AsString;
              TableReciboConta.FieldByName('RECON2VLRBAIXA').AsFloat    := TblRecebimento.FieldByName('ValorTotal').AsFloat;
              TableReciboConta.FieldByName('RECODBAIXA').AsDateTime     := DtBaixa.Date;
              TableReciboConta.Post;
            end;
          TblRecebimento.Next;
        end;
      EmiteRecibo := True;
      BtnBaixarDocSimples.Click;
      Application.CreateForm(TFormCadastroRecibo,FormCadastroRecibo);
      FormCadastroRecibo.SQLTemplate.Close;
      IF ComboCliente.Value <> '' THEN
        FormCadastroRecibo.SQLTemplate.MacroByName('MFiltro').AsString := 'RECICTIPO = ''C'' and CLIEA13ID ='''+ComboCliente.Value+''' and RECIDEMISSAO = '''+FormatDateTime('mm/dd/yyyy',DtBaixa.Date)+''''
      ELSE
        FormCadastroRecibo.SQLTemplate.MacroByName('MFiltro').AsString := 'RECICTIPO = ''C'' and RECIDEMISSAO = '''+FormatDateTime('mm/dd/yyyy',DtBaixa.Date)+'''';
      FormCadastroRecibo.SQLTemplate.Open;
      FormCadastroRecibo.Show;
    end;
end;

procedure TFormTelaBaixarDocumentosReceber.TableReciboContaNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('RECIICOD').AsInteger := TableRecibo.FieldByName('RECIICOD').AsInteger;
end;

procedure TFormTelaBaixarDocumentosReceber.QueryReciboContaNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('RECIA13ID').AsVariant := DataSet.DataSource.DataSet.FieldByName('RECIA13ID').AsVariant;
end;

procedure TFormTelaBaixarDocumentosReceber.QueryReciboBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  DM.CodigoAutomatico('RECIBO',nil,DataSet,3,0);
end;

procedure TFormTelaBaixarDocumentosReceber.QueryReciboContaBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('RECOICOD').AsInteger := DM.ProximoCodigoUnico('RECIBOCONTA',DataSet,DSQueryRecibo,1);
end;

procedure TFormTelaBaixarDocumentosReceber.QueryReciboNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('EMPRICOD').AsInteger := EmpresaCorrente;
  DataSet.FieldByName('TERMICOD').AsInteger := TerminalCorrente;
end;

procedure TFormTelaBaixarDocumentosReceber.odos1Click(Sender: TObject);
begin
  inherited;
  if TblRecebimento.RecordCount > 0 then
    begin
      TblImpContasReceber.Close;
      try
        TblImpContasReceber.DeleteTable;
        TblImpContasReceber.CreateTable;
      except
        TblImpContasReceber.CreateTable;
      end;
      TblImpContasReceber.Open;

      TblRecebimento.First;
      BatchMove.Source         := TblRecebimento;
      BatchMove.Destination    := TblImpContasReceber;
      BatchMove.Execute;
      Report.ReportName        := Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Baixa de Documentos Receber.rpt';
      Report.ReportTitle       := 'Baixa de Documentos à Receber';
      Report.WindowStyle.Title := 'Baixa de Documentos à Receber';
      Report.Execute;
    end
  else
    begin
      Informa('Nenhum registro foi selecionado!');
      Exit;
    end;
end;

procedure TFormTelaBaixarDocumentosReceber.Selecionados1Click(
  Sender: TObject);
var I : Integer;
begin
  inherited;
  if TblRecebimento.RecordCount > 0 then
    begin
      TblImpContasReceber.Close;
      try
        TblImpContasReceber.DeleteTable;
        TblImpContasReceber.CreateTable;
      except
        TblImpContasReceber.CreateTable;
      end;
      TblImpContasReceber.Open;

      TblRecebimento.First;
      Progress.Min := 0;
      Progress.Max := TblRecebimento.RecordCount;
      Progress.Position := 0;
      while not TblRecebimento.Eof do
        begin
          if TblRecebimentoBaixar.AsBoolean then
            begin
              TblImpContasReceber.Append;
              For I:= 0 to TblRecebimento.FieldCount -1 do
                begin
                  if TblImpContasReceber.FindField(TblRecebimento.Fields[I].FieldName) <> nil then
                    TblImpContasReceber.FieldByName(TblRecebimento.Fields[I].FieldName).AsVariant := TblRecebimento.Fields[I].AsVariant;
                end;
              TblImpContasReceber.Post;
            end;
          TblRecebimento.Next;
          Progress.Position := TblRecebimento.RecNo;
          Progress.Update;
        end;
      TblRecebimento.First;
      Progress.Position := 0;
      Report.ReportName        := Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Baixa de Documentos Receber.rpt';
      Report.ReportTitle       := 'Baixa de Documentos à Receber';
      Report.WindowStyle.Title := 'Baixa de Documentos à Receber';
      Report.Execute;
   end
  else
    begin
      Informa('Nenhum registro foi selecionado!');
      Exit;
    end;
end;

procedure TFormTelaBaixarDocumentosReceber.SpeedButton1Click(
  Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFormTelaPesquisarDocumentoReceber,FormTelaPesquisarDocumentoReceber);
  FormTelaPesquisarDocumentoReceber.ShowModal;
  Case FormTelaPesquisarDocumentoReceber.ModalResult of
    Mrok : Begin
              TblRecebimento.Append;
              TblRecebimento.FieldByName('CTRCA13ID').AsString      := FormTelaPesquisarDocumentoReceber.SQLContasReceber.FieldByName('CTRCA13ID').AsString;
              TblRecebimento.FieldByName('CLIEA13ID').AsString      := FormTelaPesquisarDocumentoReceber.SQLContasReceber.FieldByName('CLIEA13ID').AsString;
              TblRecebimento.FieldByName('DtVencimento').AsDateTime := FormTelaPesquisarDocumentoReceber.SQLContasReceber.FieldByName('CTRCDVENC').AsDateTime;
              TblRecebimento.FieldByName('ClienteNome').AsString    := FormTelaPesquisarDocumentoReceber.SQLContasReceber.FieldByName('CLIEA60RAZAOSOC').AsString;
              TblRecebimento.FieldByName('Parcela').Value           := FormTelaPesquisarDocumentoReceber.SQLContasReceber.FieldByName('CTRCINROPARC').Value;
              TblRecebimento.FieldByName('Valor').AsFloat           := FormTelaPesquisarDocumentoReceber.SQLContasReceber.FieldByName('Saldo').AsFloat;
              TblRecebimento.FieldByName('ValorOriginal').AsFloat   := FormTelaPesquisarDocumentoReceber.SQLContasReceber.FieldByName('CTRCN2VLR').AsFloat;
              TblRecebimento.FieldByName('ValorDesconto').AsFloat   := FormTelaPesquisarDocumentoReceber.SQLContasReceber.FieldByName('CTRCN2DESCFIN').AsFloat;
              TblRecebimento.FieldByName('ValorTotal').AsFloat      := FormTelaPesquisarDocumentoReceber.SQLContasReceber.FieldByName('CTRCN2VLR').AsFloat;
              TblRecebimento.FieldByName('Emissao').AsFloat         := FormTelaPesquisarDocumentoReceber.SQLContasReceber.FieldByName('CTRCDEMIS').AsFloat;

              if FormTelaPesquisarDocumentoReceber.SQLContasReceber.FieldByName('NOFIA13ID').asVariant <> Null Then
                begin
                  if DM.ProcuraRegistro('NOTAFISCAL',['NOFIA13ID'],[FormTelaPesquisarDocumentoReceber.SQLContasReceber.FieldByName('NOFIA13ID').asString],1) Then
                    TblRecebimento.FieldByName('Documento').asString := DM.SQLTemplate.FindField('NOFIINUMERO').asString;
                end
              else
                begin
                  if FormTelaPesquisarDocumentoReceber.SQLContasReceber.FieldByName('CUPOA13ID').AsVariant <> Null then
                    TblRecebimento.FieldByName('Documento').AsString := FormTelaPesquisarDocumentoReceber.SQLContasReceber.FieldByName('CUPOA13ID').asString
                  else
                    TblRecebimento.FieldByName('Documento').AsString := FormTelaPesquisarDocumentoReceber.SQLContasReceber.FieldByName('CTRCA13ID').asString;
                end;
              TblRecebimento.FieldByName('NroDuplicBanco').AsString  := FormTelaPesquisarDocumentoReceber.SQLContasReceber.FieldByName('CTRCA30NRODUPLICBANCO').AsString;
              TblRecebimento.FieldByName('Baixar').Value := True;

              TblRecebimento.Post;
              //////////////////////////////////
              AtualizaTotal ;
              FormTelaPesquisarDocumentoReceber.free;
              SpeedButton1.Click;
           end;
    MrCancel : Begin
                 FormTelaPesquisarDocumentoReceber.SQLRecebimento.Close;
                 FormTelaPesquisarDocumentoReceber.Free;
               end;
  end;
end;

procedure TFormTelaBaixarDocumentosReceber.PreparaTabelaParadox;
begin
  TblRecebimento.Close;
  TblRecebimento.TableName := TabelaMaisUsuario;
  try
    TblRecebimento.DeleteTable;
    TblRecebimento.CreateTable;
  except
    TblRecebimento.CreateTable;
  end;
  TblRecebimento.Open ;
end;

procedure TFormTelaBaixarDocumentosReceber.BtnBaixarDocSimplesClick(
  Sender: TObject);
begin
  inherited;
  if (not TblRecebimento.Active)or(TblRecebimento.IsEmpty)  then
    begin
      Informa('Você deve selecionar os registros antes de baixar!');
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
    
  DM.SQLConfigFinanceiro.Close;
  DM.SQLConfigFinanceiro.Open;

  Progress.Max      := TblRecebimento.RecordCount;
  Progress.Position := 0;

  Mensagem.Caption := 'Baixando contas...';
  Mensagem.Refresh;

  TblRecebimento.DisableControls;
  TblRecebimento.First;
  if DM.SQLConfigFinanceiro.fieldbyname('CGFICINFPLCTBXSIMP').AsString = 'S' then
    begin
      Application.CreateForm(TFormTelaBaixarDocumentosPlanoConta,FormTelaBaixarDocumentosPlanoConta);
      FormTelaBaixarDocumentosPlanoConta.ShowModal;
    end;
  Progress.Position := 0;
  SQLRecebimento.Open;
  if ((Application.FindComponent('FormTelaBaixarDocumentosPlanoConta') <> Nil)
      and (FormTelaBaixarDocumentosPlanoConta.ModalResult = MrOk)) or
      (Application.FindComponent('FormTelaBaixarDocumentosPlanoConta') = Nil) then
    begin
      while not TblRecebimento.Eof do
       begin
        if TblRecebimento.FieldByName('Baixar').Value then
          begin
            SQLRecebimento.Append;
            SQLRecebimento.FieldByName('CTRCA13ID').AsString     := TblRecebimento.FieldByName('CTRCA13ID').AsString;
            SQLRecebimento.FieldByName('CLIEA13ID').AsString     := TblRecebimento.FieldByName('CLIEA13ID').AsString;
            SQLRecebimento.FieldByName('RECEDRECTO').AsDateTime  := DtBaixa.Date;
            SQLRecebimento.FieldByName('RECEDDATAMOV').AsDateTime:= DtBaixa.Date;
            SQLRecebimento.FieldByName('RECEN2VLRRECTO').AsFloat := TblRecebimento.FieldByName('Valor').AsFloat;
            SQLRecebimento.FieldByName('RECEN2VLRJURO').AsFloat  := TblRecebimento.FieldByName('ValorJuro').AsFloat;
            SQLRecebimento.FieldByName('RECEN2VLRMULTA').AsFloat := TblRecebimento.FieldByName('ValorMulta').AsFloat;
            SQLRecebimento.FieldByName('RECEN2DESC').AsFloat     := TblRecebimento.FieldByName('ValorDesconto').AsFloat;
            SQLRecebimento.FieldByName('EMPRICODREC').asInteger  := EmpresaCorrente ;
            if ((Application.FindComponent('FormTelaBaixarDocumentosPlanoConta') <> nil)
               and (FormTelaBaixarDocumentosPlanoConta.ModalResult = MrOk)) then
              begin
                // PLANO DE CONTAS CREDITO
                if FormTelaBaixarDocumentosPlanoConta.ComboContaCreditoPrincipal.Value <> '' then
                  SQLRecebimento.FieldByName('PLCTA15CREDITO').AsString := FormTelaBaixarDocumentosPlanoConta.ComboContaCreditoPrincipal.Value;
                if FormTelaBaixarDocumentosPlanoConta.ComboContaCreditoJuros.Value <> '' then
                  SQLRecebimento.FieldByName('PLCTA15CODJUROCRED').AsString := FormTelaBaixarDocumentosPlanoConta.ComboContaCreditoJuros.Value;
                if FormTelaBaixarDocumentosPlanoConta.ComboContaCreditoMulta.Value <> '' then
                  SQLRecebimento.FieldByName('PLCTA15CODMULTCRED').AsString := FormTelaBaixarDocumentosPlanoConta.ComboContaCreditoMulta.Value;
                if FormTelaBaixarDocumentosPlanoConta.ComboContaCreditoDesconto.Value <> '' then
                  SQLRecebimento.FieldByName('PLCTA15CODDESCCRED').AsString := FormTelaBaixarDocumentosPlanoConta.ComboContaCreditoDesconto.Value;

                // PLANO DE CONTAS DEBITO
                if FormTelaBaixarDocumentosPlanoConta.ComboContaDebitoPrincipal.Value <> '' then
                  SQLRecebimento.FieldByName('PLCTA15DEBITO').AsString := FormTelaBaixarDocumentosPlanoConta.ComboContaDebitoPrincipal.Value;
                if FormTelaBaixarDocumentosPlanoConta.ComboContaDebitoJuros.Value <> '' then
                  SQLRecebimento.FieldByName('PLCTA15CODJURODEB').AsString := FormTelaBaixarDocumentosPlanoConta.ComboContaDebitoJuros.Value;
                if FormTelaBaixarDocumentosPlanoConta.ComboContaDebitoMulta.Value <> '' then
                  SQLRecebimento.FieldByName('PLCTA15CODMULTDEB').AsString := FormTelaBaixarDocumentosPlanoConta.ComboContaDebitoMulta.Value;
                if FormTelaBaixarDocumentosPlanoConta.ComboContaDebitoDesconto.Value <> '' then
                  SQLRecebimento.FieldByName('PLCTA15CODDESCDEB').AsString := FormTelaBaixarDocumentosPlanoConta.ComboContaDebitoDesconto.Value;

                // TIPO LIQUIDACAO
                if FormTelaBaixarDocumentosPlanoConta.ComboTipoLiquidacao.Value <> '' then
                  SQLRecebimento.FieldByName('TPLQICOD').AsString := FormTelaBaixarDocumentosPlanoConta.ComboTipoLiquidacao.Value;

                // HISTORICO
                if FormTelaBaixarDocumentosPlanoConta.MemoHistorico.Lines.Text <> '' then
                  SQLRecebimento.FieldByName('RECEA254HISTORICO').AsString := Trim(FormTelaBaixarDocumentosPlanoConta.MemoHistorico.Lines.Text);

              end;
            SQLRecebimento.Post;
            AtualizaTotaisCabecalhoContasReceber(TblRecebimento.FieldByName('CTRCA13ID').Value);
            if ComboPortadorBaixa.Value <> '' then
              AlterPortadorTipoDocContaReceber(TblRecebimento.FieldByName('CTRCA13ID').AsString,ComboPortadorBaixa.Value,'');
            if ComboTipoDocBaixa.Value <> '' then
              AlterPortadorTipoDocContaReceber(TblRecebimento.FieldByName('CTRCA13ID').AsString,'',ComboTipoDocBaixa.Value);
            TblRecebimento.Delete ;
          end
        else
          TblRecebimento.Next ;
        Progress.Position := Progress.Position + 1 ;
//        Application.ProcessMessages;
      end;
    end
  else
    Informa('Operação Cancelada Pelo Usuário!');

  if (Application.FindComponent('FormTelaBaixarDocumentosPlanoConta') <> nil) then
    FormTelaBaixarDocumentosPlanoConta.Close;

  TblRecebimento.EnableControls;
  Mensagem.Caption := '';
  Mensagem.Refresh ;
  Progress.Position := 0;
  Progress.Update;
  Application.ProcessMessages;
  TblRecebimento.First;
  SQLCliente.Close;
  SQLCliente.MacroByName('Cliente').AsString := '0=0';
  SQLCliente.Open;

  if EmiteRecibo then
    GeraRecibo;

end;

procedure TFormTelaBaixarDocumentosReceber.SQLRecebimentoPostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  inherited;
  if DataSet.State in [DsInsert] then
    begin
      DataSet.FieldByName('RECEICOD').AsInteger := DataSet.FieldByName('RECEICOD').AsInteger + 1;
      Action := daRetry;
    end;
end;
function TFormTelaBaixarDocumentosReceber.TemDataBaixaMenorQueEmissao : Boolean;
var
  Posicao : TBookmark;
begin
  Posicao := TblRecebimento.GetBookmark;
  TblRecebimento.First;
  Result := False;
  while not TblRecebimento.Eof do
    begin
      if TblRecebimentoBaixar.AsBoolean then
        if TblRecebimentoEmissao.AsDateTime > DtBaixa.Date then
          begin
            Result := True;
            Break;
          end;
      TblRecebimento.Next;
    end;
  TblRecebimento.GotoBookmark(Posicao);
  Posicao := Nil;
end;

procedure TFormTelaBaixarDocumentosReceber.ValorPagtoExit(Sender: TObject);
begin
  inherited;
  if ValorPagto.Value > 0 then
    BtnSelecionarDoc.Click;
end;

procedure TFormTelaBaixarDocumentosReceber.ImportarRetornoBanco(NomeBanco, Arquivo : string);
var Origem, Destino : string;
var Info, Identificador, NossoNro, PathBanco, NomeArquivo, ValorTitulo : String;
    Texto : TextFile;
    NroLinhas : integer;
begin
  inherited;
  ValorTitulo := '0,00';
  NomeArquivo := Arquivo;
  TitulosNaoEncontrados.Visible := true;
  TitulosNaoEncontrados.lines.Clear;
  Mensagem.Caption := 'Lendo arquivo Retorno do Banco...' ;
  Mensagem.Refresh ;

  PreparaTabelaParadox;

  if NomeBanco = 'Banrisul' then
    begin
      PathBanco := 'Cobranca\Banrisul\Retorno\';
      if FileExists(PathBanco+'Retorno.ret') then NomeArquivo := 'Retorno.ret';
    end;
  if NomeBanco = 'Sicredi' then
    begin
      PathBanco := 'C:\Easy2Solutions\Gestao\Cobranca\Sicredi\Retorno\';
      if FileExists(NomeArquivo) then NomeArquivo := ExtractFileName(NomeArquivo);
    end;

  AssignFile( Texto, PathBanco+NomeArquivo);
  Reset(Texto);

  {Pega o Total de linhas}
  while not EOF(Texto) do
  begin
    Readln(Texto,info);
    NroLinhas := NroLinhas + 1;
  end;
  Progress.Position := 0;
  Progress.Max      := NroLinhas;

  {Reabre TXT}
  CloseFile(Texto);
  AssignFile( Texto, PathBanco+NomeArquivo);
  Reset(Texto);

  {Le linha 1 pra identificar o Banco na coluna 77}
  Readln(Texto,Info);
  Identificador := Copy(Info, 77, 3) ;

  TblRecebimento.Open;
  while not EOF(Texto) do
    begin
      Readln(Texto,Info);
      Progress.Position := Progress.Position + 1 ;

      if Identificador = '041' then {Banrisul}
        begin
          NossoNro := Copy(Info, 63, 10) ;
          if NossoNro = '          ' then NossoNro := '';
          if NossoNro = '0000000000' then NossoNro := '';
          if NossoNro <> '' then
            begin
              try
                {tenta converter apenas numeros pois o banrisul retorna o nosso nro com zeros na frente e no banco estou gravando sem zeros}
                NossoNro := IntToStr(StrToInt(NossoNro));
              except
                Application.ProcessMessages;
              end;
              SQLContasReceber.Close;
              {coloquei o copy no nosso nro porque o banrisul trata diferente do sicredi esse campo}
              SQLContasReceber.MacroByName('MDocumento').AsString := '(CR.CTRCA30NRODUPLICBANCO = ''' + NossoNro + ''') or (CR.CTRCA15NOSSONUMERO = ''' + NossoNro + ''')';
              SQLContasReceber.Open;
              if not SQLContasReceber.IsEmpty then
                begin
                  {Alimenta Tabela Temp Recebimento}
                  TblRecebimento.Append;
                  TblRecebimento.FieldByName('CTRCA13ID').AsString      := SQLContasReceber.FieldByName('CTRCA13ID').AsString;
                  TblRecebimento.FieldByName('CLIEA13ID').AsString      := SQLContasReceber.FieldByName('CLIEA13ID').AsString;
                  TblRecebimento.FieldByName('DtVencimento').AsDateTime := SQLContasReceber.FieldByName('CTRCDVENC').AsDateTime;
                  TblRecebimento.FieldByName('ClienteNome').AsString    := SQLContasReceber.FieldByName('CLIEA60RAZAOSOC').AsString;
                  TblRecebimento.FieldByName('Parcela').Value           := SQLContasReceber.FieldByName('CTRCINROPARC').Value;
                  TblRecebimento.FieldByName('Valor').AsFloat           := SQLContasReceber.FieldByName('Saldo').AsFloat;
                  TblRecebimento.FieldByName('ValorOriginal').AsFloat   := SQLContasReceber.FieldByName('CTRCN2VLR').AsFloat;
                  TblRecebimento.FieldByName('ValorDesconto').AsFloat   := SQLContasReceber.FieldByName('CTRCN2DESCFIN').AsFloat;
                  TblRecebimento.FieldByName('ValorTotal').AsFloat      := SQLContasReceber.FieldByName('CTRCN2VLR').AsFloat;
                  TblRecebimento.FieldByName('Emissao').AsFloat         := SQLContasReceber.FieldByName('CTRCDEMIS').AsFloat;

                  if SQLContasReceber.FieldByName('NOFIA13ID').asVariant <> Null Then
                    begin
                      if DM.ProcuraRegistro('NOTAFISCAL',['NOFIA13ID'],[SQLContasReceber.FieldByName('NOFIA13ID').asString],1) Then
                        TblRecebimento.FieldByName('Documento').asString := DM.SQLTemplate.FindField('NOFIINUMERO').asString;
                    end
                  else
                    begin
                      if SQLContasReceber.FieldByName('CUPOA13ID').AsVariant <> Null then
                        TblRecebimento.FieldByName('Documento').AsString := SQLContasReceber.FieldByName('CUPOA13ID').asString
                      else
                        TblRecebimento.FieldByName('Documento').AsString := SQLContasReceber.FieldByName('CTRCA13ID').asString;
                    end;
                  TblRecebimento.FieldByName('NroDuplicBanco').AsString  := SQLContasReceber.FieldByName('CTRCA30NRODUPLICBANCO').AsString;
                  if SQLContasReceber.FieldByName('CTRCA15NOSSONUMERO').AsString <> '' then
                    TblRecebimentoNroDuplicBanco.Value := SQLContasReceber.FieldByName('CTRCA15NOSSONUMERO').AsString;
                  TblRecebimento.FieldByName('Baixar').Value := True;

                  TblRecebimento.Post;
                end
              else
                begin {Se nao achou, salvar no disco os titulos nao achados}
                  TitulosNaoEncontrados.lines.Add('-> Titulo Numero: '+NossoNro);
                end;
            end;
        end;

      if Identificador = '748' then {Sicredi}
        begin
          NossoNro := Copy(Info, 48, 8) ;
          if NossoNro = '          ' then NossoNro := '';
          if NossoNro = '0000000000' then NossoNro := '';

          if IsNumeric(NossoNro,'INTEGER') then
            begin
              SQLContasReceber.Close;
              SQLContasReceber.MacroByName('MDocumento').AsString := '(CR.CTRCA15NOSSONUMERO = ''' + NossoNro + ''')';
              SQLContasReceber.Open;
              if not SQLContasReceber.IsEmpty then
                begin
                  {Alimenta Tabela Temp Recebimento}
                  TblRecebimento.Append;
                  TblRecebimento.FieldByName('CTRCA13ID').AsString      := SQLContasReceber.FieldByName('CTRCA13ID').AsString;
                  TblRecebimento.FieldByName('CLIEA13ID').AsString      := SQLContasReceber.FieldByName('CLIEA13ID').AsString;
                  TblRecebimento.FieldByName('DtVencimento').AsDateTime := SQLContasReceber.FieldByName('CTRCDVENC').AsDateTime;
                  TblRecebimento.FieldByName('ClienteNome').AsString    := SQLContasReceber.FieldByName('CLIEA60RAZAOSOC').AsString;
                  TblRecebimento.FieldByName('Parcela').Value           := SQLContasReceber.FieldByName('CTRCINROPARC').Value;
                  TblRecebimento.FieldByName('Valor').AsFloat           := SQLContasReceber.FieldByName('Saldo').AsFloat;
                  TblRecebimento.FieldByName('ValorOriginal').AsFloat   := SQLContasReceber.FieldByName('CTRCN2VLR').AsFloat;
                  TblRecebimento.FieldByName('ValorDesconto').AsFloat   := SQLContasReceber.FieldByName('CTRCN2DESCFIN').AsFloat;
                  TblRecebimento.FieldByName('ValorTotal').AsFloat      := SQLContasReceber.FieldByName('CTRCN2VLR').AsFloat;
                  TblRecebimento.FieldByName('Emissao').AsFloat         := SQLContasReceber.FieldByName('CTRCDEMIS').AsFloat;

                  if SQLContasReceber.FieldByName('NOFIA13ID').asVariant <> Null Then
                    begin
                      if DM.ProcuraRegistro('NOTAFISCAL',['NOFIA13ID'],[SQLContasReceber.FieldByName('NOFIA13ID').asString],1) Then
                        TblRecebimento.FieldByName('Documento').asString := DM.SQLTemplate.FindField('NOFIINUMERO').asString;
                    end
                  else
                    begin
                      if SQLContasReceber.FieldByName('CUPOA13ID').AsVariant <> Null then
                        TblRecebimento.FieldByName('Documento').AsString := SQLContasReceber.FieldByName('CUPOA13ID').asString
                      else
                        TblRecebimento.FieldByName('Documento').AsString := SQLContasReceber.FieldByName('CTRCA13ID').asString;
                    end;
                  TblRecebimento.FieldByName('NroDuplicBanco').AsString  := SQLContasReceber.FieldByName('CTRCA30NRODUPLICBANCO').AsString;
                  if SQLContasReceber.FieldByName('CTRCA15NOSSONUMERO').AsString <> '' then
                    TblRecebimentoNroDuplicBanco.Value := SQLContasReceber.FieldByName('CTRCA15NOSSONUMERO').AsString;
                  TblRecebimento.FieldByName('Baixar').Value := True;

                  TblRecebimento.Post;
                end
              else
                begin {Se nao achou, salvar no disco os titulos nao achados}
                  TitulosNaoEncontrados.lines.Add('-> Titulo Numero: '+NossoNro + ' Valor Pago R$ ' + ValorTitulo);
                end;
            end;
          Readln(Texto,Info); {Coloquei aqui novamente Pq no txt do Sicredi repete na prox linha a mesma operacao, para outros bancos ver melhor}
        end;
    end;
  CloseFile(Texto);

  {mover para importado}
  origem  := PathBanco+NomeArquivo;
  destino := PathBanco+'Importados\'+NomeArquivo;
  CopyFile(PChar(origem), PChar(destino), false);
  DeleteFile(PChar(origem));

  Mensagem.Caption := '' ;
  Mensagem.Refresh ;
end;

procedure TFormTelaBaixarDocumentosReceber.mnBanrisulClick(
  Sender: TObject);
begin
  inherited;
  ImportarRetornoBanco('Banrisul', Anexo);
end;

procedure TFormTelaBaixarDocumentosReceber.mnSicrediClick(Sender: TObject);
begin
  inherited;
  Anexo := '';
  OpenDialog.InitialDir := 'C:\Easy2Solutions\Gestao\Cobranca\Sicredi\Retorno';
  OpenDialog.Execute;
  Anexo := OpenDialog.FileName;
  ImportarRetornoBanco('Sicredi', Anexo);
end;

end.
