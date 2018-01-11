unit CadastroChequesRecebidos;

interface

uses
  VarSYS, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, EDBNum, ToolEdit, RXDBCtrl, DBCtrls, RxLookup,
  RxDBComb, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroChequesRecebidos = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    RetornaEmpresa: TSpeedButton;
    DBEdit33: TDBEdit;
    Label2: TLabel;
    RetornaCliente: TSpeedButton;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label4: TLabel;
    DBEdit4: TDBDateEdit;
    Label5: TLabel;
    EvDBNumEdit1: TEvDBNumEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    RetornaBanco: TSpeedButton;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    DBEdit2: TDBEdit;
    Label14: TLabel;
    IDCupom: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    RetornaPortador: TSpeedButton;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    RetornaAlinea: TSpeedButton;
    DBEdit18: TDBEdit;
    SQLEmpresa: TRxQuery;
    SQLBanco: TRxQuery;
    SQLPortador: TRxQuery;
    SQLAlinea: TRxQuery;
    DBEdit19: TDBEdit;
    Label18: TLabel;
    DBEdit20: TDBEdit;
    RetornaDocOrigem: TSpeedButton;
    SQLSaldoConsig: TRxQuery;
    SQLSaldoConsigCTRCA13ID: TStringField;
    SQLSaldoConsigCUPOA13ID: TStringField;
    SQLSaldoConsigCTRCN2VLR: TFloatField;
    SQLSaldoConsigCTRCN2TOTREC: TFloatField;
    SQLSaldoConsigSALDO: TFloatField;
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
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteMTBLICOD: TIntegerField;
    SQLCheques: TRxQuery;
    SQLChequesCTRCA13ID: TStringField;
    SQLChequesCLIEA13ID: TStringField;
    SQLChequesALINICOD: TIntegerField;
    SQLChequesCTRCA5TIPOPADRAO: TStringField;
    Label19: TLabel;
    DBEdit21: TDBEdit;
    SQLTemplateCTRCA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateCTRCICOD: TIntegerField;
    SQLTemplateTerminalCalcField: TStringField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateClienteCalcField: TStringField;
    SQLTemplateEmpresaLookup: TStringField;
    SQLTemplateCTRCINROPARC: TIntegerField;
    SQLTemplateCTRCDVENC: TDateTimeField;
    SQLTemplateCTRCN2VLR: TFloatField;
    SQLTemplatePORTICOD: TIntegerField;
    SQLTemplatePortadorLookup: TStringField;
    SQLTemplateCTRCA5TIPOPADRAO: TStringField;
    SQLTemplateCUPOA13ID: TStringField;
    SQLTemplateCTRCDEMIS: TDateTimeField;
    SQLTemplateCTRCCSTATUS: TStringField;
    SQLTemplateBANCA5CODCHQ: TStringField;
    SQLTemplateBancoLookup: TStringField;
    SQLTemplateCTRCA10AGENCIACHQ: TStringField;
    SQLTemplateCTRCA15CONTACHQ: TStringField;
    SQLTemplateCTRCA15NROCHQ: TStringField;
    SQLTemplateCTRCA60TITULARCHQ: TStringField;
    SQLTemplateCTRCA20CGCCPFCHQ: TStringField;
    SQLTemplateCTRCDDEPOSCHQ: TDateTimeField;
    SQLTemplateALINICOD: TIntegerField;
    SQLTemplateAlineaLookup: TStringField;
    SQLTemplateValorCupom: TFloatField;
    SQLChequeRecebidoAlteracao: TRxQuery;
    SQLChequeRecebidoAlteracaoCHRAICOD: TIntegerField;
    SQLChequeRecebidoAlteracaoCHRADVENCANT: TDateTimeField;
    SQLChequeRecebidoAlteracaoCHRADVENCNOVO: TDateTimeField;
    SQLChequeRecebidoAlteracaoPENDENTE: TStringField;
    SQLChequeRecebidoAlteracaoREGISTRO: TDateTimeField;
    DSSQLChequeRecebidoAlteracao: TDataSource;
    TabSheetAlteracaoCheque: TTabSheet;
    DBGrid1: TDBGrid;
    SQLChequeRecebidoAlteracaoCTRCA13ID: TStringField;
    SQLChequeRecebidoAlteracaoCHRADLANC: TDateTimeField;
    SQLClienteCLIEA14CGC: TStringField;
    SQLClienteBANCA5COD: TStringField;
    SQLClienteCLIEA5AGENCIA: TStringField;
    SQLClienteCLIEA10CONTA: TStringField;
    SQLClienteCLIEA60TITULAR: TStringField;
    SQLClienteCLIEDABERTCONTA: TDateTimeField;
    Button4: TRxSpeedButton;
    Panel4: TPanel;
    Label20: TLabel;
    DBEdit6: TDBEdit;
    DBEdit22: TDBEdit;
    Label21: TLabel;
    Button5: TRxSpeedButton;
    TabRecebimentos: TTabSheet;
    DBGrid2: TDBGrid;
    DSSQLRecebimento: TDataSource;
    Geraroutrodocumento1: TMenuItem;
    SQLEspelhoNovoLanc: TRxQuery;
    SQLEspelhoNovoLancCTRCA13ID: TStringField;
    SQLEspelhoNovoLancEMPRICOD: TIntegerField;
    SQLEspelhoNovoLancTERMICOD: TIntegerField;
    SQLEspelhoNovoLancCTRCICOD: TIntegerField;
    SQLEspelhoNovoLancCLIEA13ID: TStringField;
    SQLEspelhoNovoLancCTRCINROPARC: TIntegerField;
    SQLEspelhoNovoLancCTRCDVENC: TDateTimeField;
    SQLEspelhoNovoLancCTRCN2VLR: TFloatField;
    SQLEspelhoNovoLancPORTICOD: TIntegerField;
    SQLEspelhoNovoLancCTRCA5TIPOPADRAO: TStringField;
    SQLEspelhoNovoLancCUPOA13ID: TStringField;
    SQLEspelhoNovoLancCTRCDEMIS: TDateTimeField;
    SQLEspelhoNovoLancCTRCCSTATUS: TStringField;
    SQLEspelhoNovoLancBANCA5CODCHQ: TStringField;
    SQLEspelhoNovoLancCTRCA10AGENCIACHQ: TStringField;
    SQLEspelhoNovoLancCTRCA15CONTACHQ: TStringField;
    SQLEspelhoNovoLancCTRCA15NROCHQ: TStringField;
    SQLEspelhoNovoLancCTRCA60TITULARCHQ: TStringField;
    SQLEspelhoNovoLancCTRCA20CGCCPFCHQ: TStringField;
    SQLEspelhoNovoLancCTRCDDEPOSCHQ: TDateTimeField;
    SQLEspelhoNovoLancALINICOD: TIntegerField;
    SQLEspelhoNovoLancValorCupom: TFloatField;
    SQLEspelhoNovoLancPDVDA13ID: TStringField;
    SQLTemplateCTRCN2DESCFIN: TFloatField;
    SQLTemplateCTRCN2TOTREC: TFloatField;
    SQLEspelhoNovoLancCTRCN2DESCFIN: TFloatField;
    SQLEspelhoNovoLancCTRCN2TOTREC: TFloatField;
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLRecebimentoRECEDDATAMOV: TDateTimeField;
    SQLTemplatePRCHICOD: TIntegerField;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    RetornaProtocolo: TSpeedButton;
    SQLProtocolo: TRxQuery;
    SQLTemplateProtocoloLookup: TStringField;
    DBEdit23: TDBEdit;
    Label22: TLabel;
    DBEdit24: TDBEdit;
    SQLTemplateCTRCA254HIST: TStringField;
    Label23: TLabel;
    DBEditHistoricoPadrao: TDBEdit;
    BtnHistorico: TSpeedButton;
    Label24: TLabel;
    MemoHistorico: TDBMemo;
    SQLTemplateHTPDICOD: TIntegerField;
    SQLTemplateCTRCA15TELECHQ: TStringField;
    Label25: TLabel;
    DBEdit25: TDBEdit;
    DBDateEdit2: TDBDateEdit;
    SQLTemplateCTRCDULTREC: TDateTimeField;
    SQLTemplateEMPRICODULTREC: TIntegerField;
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplatePLCTA15CODDEBITO: TStringField;
    GroupPlanoContas: TGroupBox;
    PageControlPlanoContas: TPageControl;
    TabCredito: TTabSheet;
    RetornaPlanoContas: TSpeedButton;
    DBEdit14: TDBEdit;
    DBEdit26: TDBEdit;
    TabDebito: TTabSheet;
    RetornaPlanoContasDebito: TSpeedButton;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    SQLTemplatePlanodeContasCalcField: TStringField;
    SQLTemplatePlanodeContasDebitoCalcField: TStringField;
    Label26: TLabel;
    DBDateEdit3: TDBDateEdit;
    ComboStatus: TRxDBComboBox;
    Label27: TLabel;
    SQLRecebimentoRECEA254HISTORICO: TStringField;
    PanelPesquisa: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label28: TLabel;
    SQLRecebimentoRECEA30HIST: TStringField;
    EditHist: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure RetornaClienteClick(Sender: TObject);
    procedure RetornaPortadorClick(Sender: TObject);
    procedure RetornaBancoClick(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RetornaAlineaClick(Sender: TObject);
    procedure DBEdit17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RetornaDocOrigemClick(Sender: TObject);
    procedure IDCupomKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeScroll(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure SQLTemplateCLIEA13IDChange(Sender: TField);
    procedure Geraroutrodocumento1Click(Sender: TObject);
    procedure RetornaEmpresaClick(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RetornaProtocoloClick(Sender: TObject);
    procedure SQLTemplateHTPDICODChange(Sender: TField);
    procedure BtnHistoricoClick(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure RetornaPlanoContasClick(Sender: TObject);
    procedure RetornaPlanoContasDebitoClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    ContasRec   : string ;
    ProxCodRec  : integer ;
    DataUltVenc : TDateTime ;
    NovoLancto  : Boolean ;
  public
    { Public declarations }
  end;

var
  FormCadastroChequesRecebidos: TFormCadastroChequesRecebidos;

implementation

uses DataModulo, CadastroBanco, CadastroCliente,
     CadastroPortador, FormResources, CadastroSituacaoCheque, CadastroCupom,
     UnitLibrary, TelaConsultaConsignacoesPendentes,
     CadastroChequesHistorico, TelaConsultaEmpresa,
  CadastroProtocoloChequeRecebido, CadastroHistoricoPadrao,
  DataModuloTemplate, TelaConsultaPlanoContas;

{$R *.dfm}

procedure TFormCadastroChequesRecebidos.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CONTASRECEBER' ;
  SQLChequeRecebidoAlteracao.Open ;
end;

procedure TFormCadastroChequesRecebidos.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('CLIEA13ID').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('CLIENTE',['CLIEA13ID'],[DataSet.FieldByName('CLIEA13ID').AsString],1) Then
        begin
          DataSet.FieldByName('ClienteCalcField').AsVariant    := DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').AsVariant;
        end
      else
        begin
          DataSet.FieldByName('ClienteCalcField').asString := MensagemLookUp ;
        end;
    end
  else
    DataSet.FieldByName('ClienteCalcField').AsVariant  := Null;

  if Dataset.FieldByName('CUPOA13ID').AsString <> '' then
    SQLTemplateValorCupom.AsString := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPON2TOTITENS', '"' + Dataset.FieldByName('CUPOA13ID').AsString + '"') ;

  //PLANO CONTAS CREDITO
   If DataSet.FieldByName('PLCTA15COD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PLANODECONTAS',['PLCTA15COD'],[DataSet.FieldByName('PLCTA15COD').AsString],1) Then
        DataSet.FieldByName('PlanodeContasCalcField').AsVariant    := DM.SQLTemplate.FindField('PLCTA60DESCR').AsVariant
      Else
        DataSet.FieldByName('PlanodeContasCalcField').asString := MensagemLookUp ;
    End
  Else
    DataSet.FieldByName('PlanodeContasCalcField').AsVariant  := Null;

  //PLANO CONTAS DEBITO
   If DataSet.FieldByName('PLCTA15CODDEBITO').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PLANODECONTAS',['PLCTA15COD'],[DataSet.FieldByName('PLCTA15CODDEBITO').AsString],1) Then
        DataSet.FieldByName('PlanodeContasDebitoCalcField').AsVariant    := DM.SQLTemplate.FindField('PLCTA60DESCR').AsVariant
      Else
        DataSet.FieldByName('PlanodeContasDebitoCalcField').asString := MensagemLookUp ;
    End
  Else
    DataSet.FieldByName('PlanodeContasDebitoCalcField').AsVariant  := Null;
end;

procedure TFormCadastroChequesRecebidos.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateCTRCDEMIS.Value        := Date ;
  SQLTemplateCTRCA5TIPOPADRAO.Value := 'CHQ' ;
  SQLTemplateCTRCCSTATUS.Value      := 'A' ;
  SQLTemplateCTRCN2VLR.Value        := 0 ;
  SQLTemplateCTRCN2DESCFIN.Value    := 0 ;
  SQLTemplateCTRCN2TOTREC.Value     := 0 ;
  SQLTemplateTERMICOD.Value         := 0 ;
//  DataSet.FieldByName('CTRCCTIPOREGISTRO').Value   := 'N';
  TerminalCorrente                  := 0 ;
  NovoLancto := True;
end;

procedure TFormCadastroChequesRecebidos.RetornaClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CLIEA13ID');
  FieldOrigem := 'CLIEA13ID' ;
  CriaFormulario(TFormCadastroCliente, 'FormCadastroCliente',False,True,False,'');
end;

procedure TFormCadastroChequesRecebidos.RetornaPortadorClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PORTICOD');
  FieldOrigem := 'PORTICOD' ;
  CriaFormulario(TFormCadastroPortador, 'FormCadastroPortador',False,True,True,'');
end;

procedure TFormCadastroChequesRecebidos.RetornaBancoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('BANCA5CODCHQ');
  FieldOrigem := 'BANCA5COD' ;
  CriaFormulario(TFormCadastroBanco, 'FormCadastroBanco',False,True,True,'');
end;

procedure TFormCadastroChequesRecebidos.DBEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaCliente.Click ;
end;

procedure TFormCadastroChequesRecebidos.DBEdit7KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaBanco.Click ;
end;

procedure TFormCadastroChequesRecebidos.DBEdit15KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPortador.Click ;
end;

procedure TFormCadastroChequesRecebidos.RetornaAlineaClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('ALINICOD');
  FieldOrigem := 'ALINICOD' ;
  CriaFormulario(TFormCadastroSituacaoCheque, 'FormCadastroSituacaoCheque',False,True,True,'') ;
end;

procedure TFormCadastroChequesRecebidos.DBEdit17KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaAlinea.Click ;
end;

procedure TFormCadastroChequesRecebidos.RetornaDocOrigemClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('CUPOA13ID');
  FieldOrigem := 'CUPOA13ID' ;
  if DM.SQLConfigVenda
  .FieldByName('CFVECFAZVENDCONSIG').Value = 'S' then
    begin
      if Pergunta('NAO', 'Deseja abrir somente vendas consignadas pendentes ?') then
        begin
          Application.CreateForm(TFormTelaConsultaConsignacoesPendentes, FormTelaConsultaConsignacoesPendentes) ;
          FormTelaConsultaConsignacoesPendentes.SQLTemplate.Close ;
          FormTelaConsultaConsignacoesPendentes.SQLTemplate.MacroByName('MCliente').Value :=  'CP.CLIEA13ID = "' + SQLTemplate.FieldByName('CLIEA13ID').AsString + '"' ;
          FormTelaConsultaConsignacoesPendentes.SQLTemplate.Open ;


          FormTelaConsultaConsignacoesPendentes.ShowModal ;
          DsTemplate.DataSet.FieldByName('CUPOA13ID').Value := CupomVendaConsig ;
        end
      else
        CriaFormulario(TFormCadastroCupom, 'FormCadastroCupom',False,True,False,'') ;
    end
  else
    CriaFormulario(TFormCadastroCupom, 'FormCadastroCupom',False,True,False,'') ;
end;

procedure TFormCadastroChequesRecebidos.IDCupomKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaDocOrigem.Click ;
  if (Key = VK_Return) and (IDCupom.Text <> '') then
      if SQLRecCount('CUPOM', 'where CUPOA13ID = "' + IDCupom.Text + '" and CLIEA13ID = "'  +
                                                      SQLTemplateCLIEA13ID.Value + '"') = 0 then
        begin
          Informa('Este Cupom não pertence a este cliente !') ;
          SQLTemplateCUPOA13ID.FocusControl ;
        end ;
end;

procedure TFormCadastroChequesRecebidos.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  // Testa para ver se o Cheque ja foi lancado, filtro = CPF, Banco e Nro Cheque.
  DM.SQLTemplate.Close ;
  DM.SQLTemplate.SQL.Clear ;
  DM.SQLTemplate.SQL.Add('select CTRCA13ID from CONTASRECEBER') ;
  DM.SQLTemplate.SQL.Add('where CTRCA20CGCCPFCHQ = "' + SQLTemplateCTRCA20CGCCPFCHQ.AsString + '"') ;
  DM.SQLTemplate.SQL.Add('and   BANCA5CODCHQ  = "'    + SQLTemplateBANCA5CODCHQ.AsString     + '"') ;
  DM.SQLTemplate.SQL.Add('and   CTRCA15NROCHQ = "'    + SQLTemplateCTRCA15NROCHQ.AsString    + '"') ;
  DM.SQLTemplate.Open ;
  if not DM.SQLTemplate.Eof and NovoLancto then
    begin
      ShowMessage('Cheque já está cadastrado para este cliente! Verifique!');
      Abort;
    end
  else
    begin
      inherited;
      if (Dataset.FieldByName('CUPOA13ID').Value <> '') and
         (Dataset.FieldByName('CUPOA13ID').Value <> null) and
         (Dataset.State = dsInsert) then
        begin
          //LANCAR VALOR NA TABELA DE RECEBIMENTOS SE FOR VENDA CONSIGNADA
          ContasRec := '' ;
          DM.SQLTemplate.Close ;
          DM.SQLTemplate.SQL.Clear ;
          DM.SQLTemplate.SQL.Add('select CTRCA13ID from CONTASRECEBER') ;
          DM.SQLTemplate.SQL.Add('where CUPOA13ID = "' + Dataset.FieldByName('CUPOA13ID').Value + '"') ;
          DM.SQLTemplate.SQL.Add('and   CTRCA5TIPOPADRAO = "CONSI"') ;
          DM.SQLTemplate.Open ;
          if not DM.SQLTemplate.Eof then
            begin
              ContasRec := DM.SQLTemplate.FieldByName('CTRCA13ID').Value ;

              DM.SQLTemplate.Close ;
              DM.SQLTemplate.SQL.Clear ;
              DM.SQLTemplate.SQL.Add('select Max(RECEICOD) as Contador from RECEBIMENTO') ;
              DM.SQLTemplate.SQL.Add('where CTRCA13ID = "' + ContasRec + '"') ;
              DM.SQLTemplate.Open ;
              if DM.SQLTemplate.FieldByName('Contador').Value > 0 then
                ProxCodRec := DM.SQLTemplate.FieldByName('Contador').Value + 1
              else
                ProxCodRec := 1 ;

              if not SQLRecebimento.Active then
                SQLRecebimento.Open ;

              SQLRecebimento.Append ;
              SQLRecebimentoCTRCA13ID.Value       := ContasRec ;
              SQLRecebimentoRECEICOD.Value        := ProxCodRec ;
              SQLRecebimentoRECEDRECTO.Value      := Date ;
              SQLRecebimento.FieldByName('RECEDDATAMOV').AsDateTime:= Date ;
              SQLRecebimentoRECEN2VLRRECTO.Value  := Dataset.FieldByName('CTRCN2VLR').Value ;
              SQLRecebimentoRECEN2VLRJURO.Value   := 0 ;
              SQLRecebimentoRECEN2VLRMULTA.Value  := 0 ;
              SQLRecebimentoRECEN2DESC.Value      := 0 ;
              SQLRecebimentoRECEN2MULTACOBR.Value := 0 ;
              SQLRecebimentoEMPRICODREC.Value     := Dataset.FieldByName('EMPRICOD').Value ;
              SQLRecebimentoPENDENTE.Value        := 'S' ;
              SQLRecebimentoREGISTRO.Value        := Now ;
              if TerminalAtual > 0 then
                SQLRecebimentoTERMICODREC.Value := TerminalAtual ;
              SQLRecebimentoRECEA30HIST.Value   := 'CHEQUE' ;
              SQLRecebimento.Post ;
              //ATUALIZA TOTAIS CABECALHO CONTAS RECEBER
              AtualizaTotaisCabecalhoContasReceber(ContasRec) ;
            end ;
        end ;
    end;
  if (SQLTemplateALINICOD.AsString <> '') and (SQLTemplateCTRCN2TOTREC.Value > 0) then
    if SQLLocate('ALINEA','ALINICOD','ALINCCHEQDEV',SQLTemplateALINICOD.AsString) = 'S' then
      begin
        if not SQLRecebimento.Active then
          SQLRecebimento.Open;
        if not SQLRecebimento.IsEmpty then
          SQLRecebimento.Delete;
        //ATUALIZA TOTAIS CABECALHO CONTAS RECEBER
        SQLTemplateCTRCN2TOTREC.Value      := 0;
        SQLTemplateCTRCDULTREC.AsString    := '';
        SQLTemplateCTRCDDEPOSCHQ.AsString  := '';
        SQLTemplateEMPRICODULTREC.AsString := '';
      end;
  if (SQLTemplateALINICOD.AsString <> '') then
    if SQLLocate('ALINEA','ALINICOD','ALINCCHEQDEV',SQLTemplateALINICOD.AsString) = 'S' then
      begin
        SQLTemplateCTRCDDEPOSCHQ.AsString  := '';
      end;
end;

procedure TFormCadastroChequesRecebidos.SQLTemplateAfterPost(DataSet: TDataSet);
var
  Contador : Integer ;
begin
  inherited ;
  NovoLancto := False;
  //GRAVAR TABELA DE ALTERAÇÃO DE VENCIMENTOS
  if (DataUltVenc > 0) and (DataUltVenc <> SQLTemplateCTRCDVENC.Value) then
    begin
      if not SQLChequeRecebidoAlteracao.Active then
        SQLChequeRecebidoAlteracao.Open ;

      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('select max(CHRAICOD) as Contador from CHEQUERECEBIDOALTERACAO') ;
      DM.SQLTemplate.SQL.Add('where CTRCA13ID = "' + SQLTemplateCTRCA13ID.Value + '"') ;
      DM.SQLTemplate.Open ;
      if DM.SQLTemplate.FieldByName('Contador').Value > 0 then
        Contador := DM.SQLTemplate.FieldByName('Contador').Value + 1
      else
        Contador := 1 ;

      SQLChequeRecebidoAlteracao.Append ;
      SQLChequeRecebidoAlteracaoCTRCA13ID.Value     := SQLTemplateCTRCA13ID.Value ;
      SQLChequeRecebidoAlteracaoCHRAICOD.Value      := Contador ;
      SQLChequeRecebidoAlteracaoCHRADLANC.Value     := dm.DataBaseSistema ;
      SQLChequeRecebidoAlteracaoCHRADVENCANT.Value  := DataUltVenc ;
      SQLChequeRecebidoAlteracaoCHRADVENCNOVO.Value := SQLTemplateCTRCDVENC.Value ;
      SQLChequeRecebidoAlteracaoPENDENTE.Value      := 'S' ;
      SQLChequeRecebidoAlteracaoREGISTRO.Value      := Now ;
      SQLChequeRecebidoAlteracao.Post ;

      SQLChequeRecebidoAlteracao.Close ;
      SQLChequeRecebidoAlteracao.Open ;
    end ;

  //TESTAR SE A SITUAÇÃO BLOQUEIA OU DESBLOQUEIA CLIENTE
  if (Dataset.FieldByName('ALINICOD').AsString <> '') and
     (SQLLocate('ALINEA', 'ALINICOD', 'ALINCBLOQCLI', Dataset.FieldByName('ALINICOD').AsString) <> '') then
    case SQLLocate('ALINEA', 'ALINICOD', 'ALINCBLOQCLI', Dataset.FieldByName('ALINICOD').AsString)[1] of
      'B' : begin
              if SQLLocate('ALINEA', 'ALINICOD', 'MTBLICOD', Dataset.FieldByName('ALINICOD').AsString) = '' then
                begin
                  Informa('O Cliente deste cheque não poderá ser bloqueado pois não foi informado um Motivo de Bloqueio no cadastro de Situações de Cheque !') ;
                  exit ;
                end ;

              SQLCliente.Close ;
              SQLCliente.MacroByName('MFiltro').Value := 'CLIEA13ID = "' + Dataset.FieldByName('CLIEA13ID').AsString + '"' ;
              SQLCliente.Open ;
              if not SQLCliente.Eof then
                begin
                  SQLCliente.Edit ;
                  SQLClienteMTBLICOD.AsString := SQLLocate('ALINEA', 'ALINICOD', 'MTBLICOD', Dataset.FieldByName('ALINICOD').AsString) ;
                  SQLCliente.Post ;
                end ;
            end ;
      'D' : begin
              //SE O CLIENTE TIVER OUTRO CHEQUE COM ALINEA QUE BLOQUEIA NÃO PODE
              //DESBLOQUEAR PELA ALINEA ATUAL
              SQLCheques.Close ;
              SQLCheques.MacroByName('MFiltro').Value := 'CLIEA13ID = "' + Dataset.FieldByName('CLIEA13ID').AsString + '"' ;
              SQLCheques.Open ;
              while not SQLCheques.Eof do
                begin
                  if SQLLocate('ALINEA', 'ALINICOD', 'ALINCBLOQCLI', SQLChequesALINICOD.AsString) = 'B' then
                    begin
                      SQLCheques.Close ;
                      exit ;
                    end ;

                  SQLCheques.Next ;
                end ;

              SQLCliente.Close ;
              SQLCliente.MacroByName('MFiltro').Value := 'CLIEA13ID = "' + Dataset.FieldByName('CLIEA13ID').AsString + '"' ;
              SQLCliente.Open ;
              if not SQLCliente.Eof then
                begin
                  SQLCliente.Edit ;
                  SQLClienteMTBLICOD.AsString := '' ;
                  SQLCliente.Post ;
                end ;
            end ;
    end ;
  //ATUALIZAR CABECALHO DE CUPO CONSIGNADO
  AtualizaDataQuitacaoCupomConsignado(Dataset.FieldByName('CUPOA13ID').AsString) ;
end ;

procedure TFormCadastroChequesRecebidos.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  DataUltVenc := SQLTemplateCTRCDVENC.Value ;
end;

procedure TFormCadastroChequesRecebidos.SQLTemplateBeforeScroll(
  DataSet: TDataSet);
begin
  inherited ;
  DataUltVenc := SQLTemplateCTRCDVENC.Value ;
end ;

procedure TFormCadastroChequesRecebidos.Button1Click(Sender: TObject) ;
begin
  inherited ;
  if TRxSpeedButton(Sender).Name = 'Button3' then
    begin
      PagePrincipal.ActivePage := TabSheetAlteracaoCheque ;
    end ;

  if TRxSpeedButton(Sender).Name = 'Button5' then
    begin
      if not SQLRecebimento.Active then SQLRecebimento.Open;
      PanelCodigoDescricao.Visible := True;
      PagePrincipal.ActivePage := TabRecebimentos ;
    end ;

  if TRxSpeedButton(Sender).Name = 'Button4' then
    begin
      DSMasterSys := DSTemplate ;
      CriaFormulario(TFormCadastroChequesHistorico,
                     'FormCadastroChequesHistorico',
                     True,
                     False,
                     True, 'Cheques Recebidos') ;
    end ;
end;

procedure TFormCadastroChequesRecebidos.SQLTemplateCLIEA13IDChange(Sender: TField) ;
begin
  inherited ;
  if SQLTemplate.State = dsInsert then
    begin
      SQLCliente.Close ;
      SQLCliente.MacroByName('MFiltro').Value := 'CLIEA13ID = "' + SQLTemplateCLIEA13ID.AsString + '"' ;
      SQLCliente.Open ;
      if not SQLCliente.Eof then
        begin
          if SQLTemplateCTRCA60TITULARCHQ.AsString = '' then
            SQLTemplateCTRCA60TITULARCHQ.AsString := SQLClienteCLIEA60TITULAR.AsString ;
          SQLTemplateBANCA5CODCHQ.AsString      := SQLClienteBANCA5COD.AsString ;
          SQLTemplateCTRCA10AGENCIACHQ.AsString := SQLClienteCLIEA5AGENCIA.AsString ;
          SQLTemplateCTRCA15CONTACHQ.AsString   := SQLClienteCLIEA10CONTA.AsString ;
        end ;
    end ;
end ;

procedure TFormCadastroChequesRecebidos.Geraroutrodocumento1Click(
  Sender: TObject);
var
  I : Integer;
begin
  inherited;
  SQLEspelhoNovoLanc.Close ;
  SQLEspelhoNovoLanc.MacroByName('MFiltro').Value := 'CTRCA13ID = "' + SQLTemplateCTRCA13ID.Value + '"' ;
  SQLEspelhoNovoLanc.Open ;

  SQLTemplate.Append ;
  for i := 0 to SQLEspelhoNovoLanc.FieldCount-1 do
    if (SQLEspelhoNovoLanc.Fields[i].FieldName <> 'CTRCA13ID') then
      begin
        if (SQLEspelhoNovoLanc.Fields[i].FieldName = 'CTRCINROPARC') then
          SQLTemplate.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).Value := SQLEspelhoNovoLanc.Fields[i].AsVariant + 1
        else
          begin
            if (SQLEspelhoNovoLanc.Fields[i].FieldName = 'CTRCA15NROCHQ') and (SQLEspelhoNovoLanc.Fields[i].AsVariant <> null) then
              SQLTemplate.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).AsVariant := SQLEspelhoNovoLanc.Fields[i].AsInteger + 1
            else
              SQLTemplate.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).Value := SQLEspelhoNovoLanc.Fields[i].AsVariant ;
          end;
      end ;

  SQLTemplateCTRCDVENC.FocusControl ;
end;

procedure TFormCadastroChequesRecebidos.RetornaEmpresaClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := SQLTemplate.FieldByName('EMPRICOD');
  FieldOrigem := 'EMPRICOD';
  CriaFormulario(TFormTelaConsultaEmpresa,'FormTelaConsultaEmpresa',False,True,True,'');
end;

procedure TFormCadastroChequesRecebidos.DBEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaEmpresa.Click ;
end;

procedure TFormCadastroChequesRecebidos.RetornaProtocoloClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PRCHICOD');
  FieldOrigem := 'PRCHICOD' ;
  CriaFormulario(TFormCadastroProtocoloChequeRecebido, 'FormCadastroProtocoloChequeRecebido',False,True,True,'') ;
end;

procedure TFormCadastroChequesRecebidos.SQLTemplateHTPDICODChange(
  Sender: TField);
begin
  inherited;
  //HISTORICO PADRAO
   if DSTemplate.DataSet.FieldByName('HTPDICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('HISTORICOPADRAO',['HTPDICOD'],[DSTemplate.DataSet.FieldByName('HTPDICOD').AsString],1) Then
        begin
          DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant    := DM.SQLTemplate.FindField('HTPDA100HISTORICO').AsVariant;
          if (DSTemplate.DataSet.State in DsEditModes) then
             DSTemplate.DataSet.FieldByName('CTRCA254HIST').AsVariant             := DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant;
        end
      else
        DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').asString := MensagemLookUp ;
    end
  else
     DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant  := Null;
end;

procedure TFormCadastroChequesRecebidos.BtnHistoricoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('HTPDICOD');
  FieldOrigem := 'HTPDICOD';
  TipoHistoricoPadrao := 'C';
  CriaFormulario(TFormCadastroHistoricoPadrao, 'FormCadastroHistoricoPadrao',False,True,True,'Contas à Receber');
end;

procedure TFormCadastroChequesRecebidos.DBEdit12Exit(Sender: TObject);
begin
  inherited;
  if (DBEdit12.Text <> '') and (SQLTemplateCLIEA13ID.Value = '') and (SQLTemplate.State = dsInsert) then
    begin
      if Length(DBEdit12.Text) = 14 then
        begin
          SQLTemplateCTRCA60TITULARCHQ.Value := dm.SQLLocate('CLIENTE','CLIEA14CGC','CLIEA60RAZAOSOC','"'+DBEdit12.Text+'"');
          SQLTemplateCLIEA13ID.Value         := dm.SQLLocate('CLIENTE','CLIEA14CGC','CLIEA13ID','"'+DBEdit12.Text+'"');
        end;
      if Length(DBEdit12.Text) = 11 then
        begin
          SQLTemplateCTRCA60TITULARCHQ.Value := dm.SQLLocate('CLIENTE','CLIEA11CPF','CLIEA60RAZAOSOC','"'+DBEdit12.Text+'"');
          SQLTemplateCLIEA13ID.Value         := dm.SQLLocate('CLIENTE','CLIEA11CPF','CLIEA13ID','"'+DBEdit12.Text+'"');
        end;
    end;
end;

procedure TFormCadastroChequesRecebidos.RetornaPlanoContasClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15COD');
  FieldOrigem := 'PLCTA15COD';
  TipoPlanoContas := 'C';
  CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas',False,True,True,'Contas à Receber');
end;

procedure TFormCadastroChequesRecebidos.RetornaPlanoContasDebitoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15CODDEBITO');
  FieldOrigem := 'PLCTA15COD';
  TipoPlanoContas := 'D';
  CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas',False,True,True,'Contas à Receber');
end;

procedure TFormCadastroChequesRecebidos.DBGrid2DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if not SQLRecebimento.IsEmpty then
    if Column.Field = Nil then
      begin
        DBGrid2.Canvas.Brush.Color := clBtnFace;
        DBGrid2.Canvas.Font.Color  := clBtnText;
        DrawFrameControl(DBGrid2.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONPUSH);
        DBGrid2.Canvas.TextOut(Rect.Left + 5, Rect.Top + 1, 'Estornar...');
      end;
end;

procedure TFormCadastroChequesRecebidos.DBGrid2CellClick(Column: TColumn);
begin
  inherited;
  SQLRecebimento.Close;
  SQLRecebimento.Open;
    if Pergunta('Sim', 'Deseja Realmente ESTORNAR este Recebimento.') then
      begin
        try
          SQLTemplate.Edit;
          SQLTemplateCTRCCSTATUS.AsString   := 'A';
          SQLTemplateCTRCDDEPOSCHQ.AsString := '' ;
          SQLTemplateCTRCDULTREC.AsString   := '' ;
          SQLTemplateCTRCN2TOTREC.Value     := 0  ;
          SQLTemplate.Post;
          SQLRecebimento.Close;
          SQLRecebimento.Open;
          if not SQLRecebimento.IsEmpty then
            SQLRecebimento.Delete;
        except
          Application.ProcessMessages;
        end;
        Button1.Click;
      end;
end;

procedure TFormCadastroChequesRecebidos.SpeedButton1Click(Sender: TObject);
var
Resultado : String;
begin
  inherited;
  if EditHist.Text <> '' then
    begin
      dm.zConsulta.close;
      dm.zConsulta.sql.text := 'Select * from Recebimento where RECEA254HISTORICO Like ''%' + editHist.Text + '%''' ;
      dm.zConsulta.open;
      if not dm.zConsulta.IsEmpty then
        begin
          Resultado := '';
          while not dm.zConsulta.eof do
            begin
              Resultado := Resultado + 'Cheque N.: ' + SQLLocate('CONTASRECEBER','CTRCA13ID','CTRCA15NROCHQ','"'+dm.zConsulta.fieldbyname('CTRCA13ID').Value+'"') + '   '  +
                                       'Dt.Baixa.: ' + dm.zConsulta.fieldbyname('RECEDRECTO').AsString  + '   '  +
                                       'Valor R$ ' + FormatFloat('#0.00',dm.zConsulta.fieldbyname('RECEN2VLRRECTO').Value)  + '   ' +
                                       'Cliente..: ' + SQLLocate('CONTASRECEBER','CTRCA13ID','CTRCA60TITULARCHQ','"'+dm.zConsulta.fieldbyname('CTRCA13ID').Value+'"') + #13#10 ;
              dm.zConsulta.Next;
            end;                                   
          showmessage(Resultado);
        end;
    end;
end;

procedure TFormCadastroChequesRecebidos.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  EditHist.text := '' ;
end;

end.
