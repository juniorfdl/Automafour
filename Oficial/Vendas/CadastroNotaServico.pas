unit CadastroNotaServico;

interface

uses                                                           
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  DBTables, DBActns, ActnList, DB, RxQuery, Menus, StdCtrls, Mask, AdvPanel,
  Grids, DBGrids, ComCtrls, RXCtrls, Buttons, ExtCtrls, RxDBComb, ToolEdit,
  RXDBCtrl, RxLookup, DBCtrls, VarSys, FormResources, AdvGlowButton;

type
  TFormCadastroNotaServico = class(TFormCadastroTEMPLATE)
    SQLTemplateID: TIntegerField;
    SQLTemplateNUMERO_NOTA: TIntegerField;
    SQLTemplateNUMERO_RPS: TIntegerField;
    SQLTemplateSERIE: TStringField;
    SQLTemplateTIPO: TStringField;
    SQLTemplateDATA_EMISSAO: TDateTimeField;
    SQLTemplateCODIGO_VERIFICACAO: TStringField;
    SQLTemplateSTATUS: TStringField;
    SQLTemplateID_SERVICO: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplatePLRCICOD: TIntegerField;
    SQLTemplateLOCAL_TRIBUTACAO: TIntegerField;
    SQLTemplateUF_PRESTACAO: TStringField;
    SQLTemplateMUNICIPIO_PRESTACAO: TStringField;
    SQLTemplateVALOR_SERVICO: TFloatField;
    SQLTemplateVALOR_DEDUCAO: TFloatField;
    SQLTemplateOUTRAS_RETENCOES: TFloatField;
    SQLTemplateALIQUOTA_ISS: TFloatField;
    SQLTemplateBASE_CALCULO_ISS: TFloatField;
    SQLTemplateVALOR_ISS: TFloatField;
    SQLTemplateVALOR_PIS: TFloatField;
    SQLTemplateVALOR_COFINS: TFloatField;
    SQLTemplateVALOR_INSS: TFloatField;
    SQLTemplateVALOR_IRPJ: TFloatField;
    SQLTemplateVALOR_CSSL: TFloatField;
    SQLTemplatePIS_RETIDO: TStringField;
    SQLTemplateCOFINS_RETIDO: TStringField;
    SQLTemplateINSS_RETIDO: TStringField;
    SQLTemplateIRPJ_RETIDO: TStringField;
    SQLTemplateCSSL_RETIDO: TStringField;
    SQLTemplateISS_RETIDO: TStringField;
    SQLTemplateVALOR_TOTAL: TFloatField;
    SQLTemplateDESCRICAO_SERVICO: TBlobField;
    SQLTemplateOBS: TBlobField;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    btnConsultaCliente: TSpeedButton;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit9: TDBEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBEdit10: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    RxDBLookupCombo5: TRxDBLookupCombo;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    GroupBox3: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label27: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit23: TDBEdit;
    chkPIS_RETIDO: TDBCheckBox;
    chkCOFINS_RETIDO: TDBCheckBox;
    chkINSS_RETIDO: TDBCheckBox;
    chkIRPJ_RETIDO: TDBCheckBox;
    chkCSSL_RETIDO: TDBCheckBox;
    chkISS_RETIDO: TDBCheckBox;
    GroupBox5: TGroupBox;
    DBEdit22: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit24: TDBEdit;
    GroupBox7: TGroupBox;
    DBEdit25: TDBEdit;
    GroupBox8: TGroupBox;
    DBEdit26: TDBEdit;
    GroupBox9: TGroupBox;
    DBEdit27: TDBEdit;
    SQLTemplateNomeClienteLookUp: TStringField;
    SQLTemplateDocumentoClienteLookUp: TStringField;
    SQLPlanoRecebimento: TRxQuery;
    SQLPlanoRecebimentoPLRCICOD: TIntegerField;
    SQLPlanoRecebimentoPLRCA60DESCR: TStringField;
    SQLPlanoRecebimentoPLRCCDFIX: TStringField;
    SQLPlanoRecebimentoPLRCFATCASH: TStringField;
    DSSQLPlanoRecebimento: TDataSource;
    Label13: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label28: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label29: TLabel;
    Label30: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    DBEdit28: TDBEdit;
    btnConsultaServico: TSpeedButton;
    DBEdit29: TDBEdit;
    SQLTributacao: TRxQuery;
    DSSQLTributacao: TDataSource;
    SQLTributacaoID: TIntegerField;
    SQLTributacaoCODIGO_TRIBUTACAO: TStringField;
    SQLTributacaoSUBITEM: TStringField;
    SQLTributacaoALIQUOTA: TFloatField;
    SQLTributacaoDESCRICAO_SERVICO: TStringField;
    SQLTemplateID_TRIBUTACAO: TIntegerField;
    DSSQLSerie: TDataSource;
    SQLSerie: TRxQuery;
    SQLSerieSERIA5COD: TStringField;
    SQLSerieSERIINRONF: TIntegerField;
    SQLSeriePENDENTE: TStringField;
    SQLSerieREGISTRO: TDateTimeField;
    SQLSerieSERIA100PATHEXEIMP: TStringField;
    SQLSerieEMPRICOD: TIntegerField;
    SQLSerieSERIA2TIPONOTA: TStringField;
    SQLTemplateNomeServicoLookUP: TStringField;
    dbedtUF: TDBEdit;
    SQLEstado: TRxQuery;
    SQLEstadoSIGLA: TStringField;
    SQLCidade: TRxQuery;
    DSSQLCidade: TDataSource;
    Label31: TLabel;
    SQLTemplateEMPRICOD: TIntegerField;
    DBMemo2: TDBMemo;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    btnTransmitirNFSe: TAdvGlowButton;
    tsFinanceiro: TTabSheet;
    SQLConta: TRxQuery;
    SQLContaPLCTA15COD: TStringField;
    SQLContaPLCTICODREDUZ: TIntegerField;
    SQLContaPLCTINIVEL: TIntegerField;
    SQLContaPLCTA15CODPAI: TStringField;
    SQLContaPLCTA30CODEDIT: TStringField;
    SQLContaPLCTA60DESCR: TStringField;
    SQLContaPLCTCANALSINT: TStringField;
    SQLContaPLCTCTIPOSALDO: TStringField;
    DSSQLConta: TDataSource;
    SQLContasReceber: TRxQuery;
    SQLContasReceberCTRCA13ID: TStringField;
    SQLContasReceberEMPRICOD: TIntegerField;
    SQLContasReceberTERMICOD: TIntegerField;
    SQLContasReceberCTRCICOD: TIntegerField;
    SQLContasReceberCLIEA13ID: TStringField;
    SQLContasReceberCTRCCSTATUS: TStringField;
    SQLContasReceberCTRCINROPARC: TIntegerField;
    SQLContasReceberCTRCDVENC: TDateTimeField;
    SQLContasReceberCTRCN2VLR: TFloatField;
    SQLContasReceberCTRCN2DESCFIN: TFloatField;
    SQLContasReceberNUMEICOD: TIntegerField;
    SQLContasReceberPORTICOD: TIntegerField;
    SQLContasReceberCTRCN2TXJURO: TFloatField;
    SQLContasReceberCTRCN2TXMULTA: TFloatField;
    SQLContasReceberCTRCA5TIPOPADRAO: TStringField;
    SQLContasReceberCTRCDULTREC: TDateTimeField;
    SQLContasReceberCTRCN2TOTREC: TFloatField;
    SQLContasReceberCTRCN2TOTJUROREC: TFloatField;
    SQLContasReceberCTRCN2TOTMULTAREC: TFloatField;
    SQLContasReceberCTRCN2TOTDESCREC: TFloatField;
    SQLContasReceberEMPRICODULTREC: TIntegerField;
    SQLContasReceberCUPOA13ID: TStringField;
    SQLContasReceberTPDCICOD: TIntegerField;
    SQLContasReceberPLCTA15COD: TStringField;
    SQLContasReceberCTRCA30NRODUPLICBANCO: TStringField;
    SQLContasReceberNOFIA13ID: TStringField;
    SQLContasReceberCTRCDEMIS: TDateTimeField;
    SQLContasReceberPENDENTE: TStringField;
    SQLContasReceberREGISTRO: TDateTimeField;
    SQLContasReceberCTRCDREABILSPC: TDateTimeField;
    SQLContasReceberCTRCN2TOTMULTACOBR: TFloatField;
    SQLContasReceberBANCA5CODCHQ: TStringField;
    SQLContasReceberCTRCA10AGENCIACHQ: TStringField;
    SQLContasReceberCTRCA15CONTACHQ: TStringField;
    SQLContasReceberCTRCA15NROCHQ: TStringField;
    SQLContasReceberCTRCA60TITULARCHQ: TStringField;
    SQLContasReceberCTRCA20CGCCPFCHQ: TStringField;
    SQLContasReceberCTRCDDEPOSCHQ: TDateTimeField;
    SQLContasReceberALINICOD: TIntegerField;
    SQLContasReceberPDVDA13ID: TStringField;
    SQLContasReceberCTRCA254HIST: TStringField;
    SQLContasReceberHTPDICOD: TIntegerField;
    SQLContasReceberPLCTA15CODDEBITO: TStringField;
    SQLContasReceberPortadorLookup: TStringField;
    SQLContasReceberAVALA13ID: TStringField;
    SQLContasReceberCTRCCEMITIDOBOLETO: TStringField;
    SQLContasReceberCTRCCTIPOREGISTRO: TStringField;
    DSSQLContasReceber: TDataSource;
    PanelFinanceiro: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    AdvOfficeStatusBar2: TAdvOfficeStatusBar;
    RxLabel1: TRxLabel;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    Panel11: TPanel;
    Label32: TLabel;
    ComboPlanoRectoAtual: TRxDBLookupCombo;
    Panel4: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    BTNRecalcularFinanceiro: TSpeedButton;
    BtnExcluirParcAtuais: TSpeedButton;
    Label97: TLabel;
    ComboPlanoRecto: TRxDBLookupCombo;
    ComboNumerarioVista: TRxDBLookupCombo;
    ComboNumerarioPrazo: TRxDBLookupCombo;
    ComboTipoDoc: TRxDBLookupCombo;
    ComboPortador: TRxDBLookupCombo;
    ComboHistoricoPadrao: TRxDBLookupCombo;
    MemoHistorico: TMemo;
    ComboPlanoContas: TRxDBLookupCombo;
    DBGrid1: TDBGrid;
    DSSQLNumerarioVista: TDataSource;
    SQLNumerarioVista: TRxQuery;
    DSSQLNumerarioPrazo: TDataSource;
    SQLNumerarioPrazo: TRxQuery;
    SQLTipoDoc: TRxQuery;
    SQLTipoDocTPDCICOD: TIntegerField;
    SQLTipoDocTPDCA60DESCR: TStringField;
    DSSQLTipoDoc: TDataSource;
    SQLPortador: TRxQuery;
    DSSQLPortador: TDataSource;
    SQLHistoricoPadrao: TRxQuery;
    SQLHistoricoPadraoHTPDICOD: TIntegerField;
    SQLHistoricoPadraoHTPDA100HISTORICO: TStringField;
    SQLHistoricoPadraoHTPDCTIPO: TStringField;
    SQLHistoricoPadraoPENDENTE: TStringField;
    SQLHistoricoPadraoREGISTRO: TDateTimeField;
    DSSQLHistoricoPadrao: TDataSource;
    DSSQLParcelasPrazoVendaTemp: TDataSource;
    SQLParcelasPrazoVendaTemp: TRxQuery;
    SQLParcelasPrazoVendaTempTERMICOD: TIntegerField;
    SQLParcelasPrazoVendaTempDATAVENCTO: TDateTimeField;
    SQLParcelasPrazoVendaTempNROPARCELA: TIntegerField;
    SQLParcelasPrazoVendaTempVALORVENCTO: TFloatField;
    SQLParcelasPrazoVendaTempNUMEICOD: TIntegerField;
    SQLParcelasPrazoVendaTempNumerarioLookup: TStringField;
    SQLParcelasPrazoVendaTempTipoPadrao: TStringField;
    SQLPlano: TRxQuery;
    SQLPlanoPLRCICOD: TIntegerField;
    SQLPlanoPLRCA60DESCR: TStringField;
    SQLPlanoPLRCN2TXJURO: TFloatField;
    SQLPlanoPLRCN2TXMULTA: TFloatField;
    SQLPlanoPLRCN2TXCRED: TFloatField;
    SQLPlanoPLRCN2PERCDESC: TFloatField;
    SQLPlanoPLRCCDFIX: TStringField;
    SQLPlanoPLRCIDFIXNROPARC: TIntegerField;
    SQLPlanoPLRCDFIXDVENC: TIntegerField;
    SQLPlanoPLRCCDFIXENTR: TStringField;
    SQLPlanoPLRCN2PERCENTR: TFloatField;
    SQLPlanoPLRCN2DESC: TFloatField;
    SQLPlanoPLRCCATIVO: TStringField;
    SQLPlanoPENDENTE: TStringField;
    SQLPlanoREGISTRO: TDateTimeField;
    SQLPlanoPLRCN2PERCACRESC: TFloatField;
    SQLPlanoParcela: TRxQuery;
    SQLNumerario: TRxQuery;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure btnConsultaClienteClick(Sender: TObject);
    procedure DBEdit14KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure btnConsultaServicoClick(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateID_TRIBUTACAOChange(Sender: TField);
    procedure prc_Calcular_Valor_Total;
    procedure SQLTemplateVALOR_SERVICOChange(Sender: TField);
    procedure SQLTemplateVALOR_DEDUCAOChange(Sender: TField);
    procedure SQLTemplateOUTRAS_RETENCOESChange(Sender: TField);
    procedure SQLTemplateALIQUOTA_ISSChange(Sender: TField);
    procedure SQLTemplateVALOR_PISChange(Sender: TField);
    procedure SQLTemplateVALOR_COFINSChange(Sender: TField);
    procedure SQLTemplateVALOR_INSSChange(Sender: TField);
    procedure SQLTemplateVALOR_IRPJChange(Sender: TField);
    procedure SQLTemplateVALOR_CSSLChange(Sender: TField);
    procedure SQLTemplateISS_RETIDOChange(Sender: TField);
    procedure SQLTemplateUF_PRESTACAOChange(Sender: TField);
    procedure SQLTemplateAfterInsert(DataSet: TDataSet);
    procedure btnTransmitirNFSeClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BTNRecalcularFinanceiroClick(Sender: TObject);
    procedure SQLContasReceberBeforePost(DataSet: TDataSet);
    procedure SQLContasReceberBeforeDelete(DataSet: TDataSet);
    procedure SQLContasReceberNewRecord(DataSet: TDataSet);
    procedure SQLContasReceberPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
  private
    ContasReceberCliente, ContasReceberID: string;
    { Private declarations }
  public
  PermiteExcluirSemPerguntar: Boolean;
    { Public declarations }
  end;

var
  FormCadastroNotaServico: TFormCadastroNotaServico;

implementation

uses
  DataModulo, CadastroCliente, CadastroServico, UnitLibrary, udmNFSe;

{$R *.dfm}

procedure TFormCadastroNotaServico.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'NOTASERVICO';
  SQLPlanoRecebimento.Close;
  SQLPlanoRecebimento.Open;
  SQLTributacao.Close;
  SQLTributacao.Open;
  SQLSerie.Close;
  SQLSerie.Open;
  SQLEstado.Close;
  SQLEstado.Open;
  SQLCidade.Close;
  SQLCidade.ParamByName('SIGLA').AsString := SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF', EmpresaPadrao);
  SQLCidade.Open;
  SQLTipoDoc.Open;
  SQLPortador.Open;
  SQLHistoricoPadrao.Open;
  if not SQLNumerarioVista.Active then
    SQLNumerarioVista.Open;
  if not SQLNumerarioPrazo.Active then
    SQLNumerarioPrazo.Open;

end;

procedure TFormCadastroNotaServico.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('CLIEA13ID').AsVariant <> null then
  begin
    if DM.ProcuraRegistro('CLIENTE', ['CLIEA13ID'], [SQLTemplateCLIEA13ID.asString], 1) then
    begin
      if DM.SQLTemplate.FindField('PLRCICOD').AsVariant <> null then
        DataSet.FieldByName('PlanoClienteLookUp').AsVariant := DM.SQLTemplate.FindField('PLRCICOD').AsVariant;

      DataSet.FieldByName('NomeClienteLookUp').AsVariant := DM.SQLTemplate.FindField('CLIEA60RAZAOSOC').AsVariant;

      if DM.SQLTemplate.FindField('CLIEA5FISJURID').asString = 'F' then
        DataSet.FieldByName('DocumentoClienteLookUp').AsVariant := DM.SQLTemplate.FindField('CLIEA11CPF').AsVariant
      else
        DataSet.FieldByName('DocumentoClienteLookUp').AsVariant := DM.SQLTemplate.FindField('CLIEA14CGC').AsVariant;
    end;
  end;
  if DataSet.FieldByName('ID_SERVICO').AsVariant <> null then
  begin
    if DM.ProcuraRegistro('SERVICO', ['ID_SERVICO'], [SQLTemplateID_SERVICO.asString], 1) then
      DataSet.FieldByName('NomeServicoLookUP').AsVariant := DM.SQLTemplate.FindField('NOME_SERVICO').AsVariant;
  end;

end;

procedure TFormCadastroNotaServico.btnConsultaClienteClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('CLIEA13ID');
  FieldOrigem := 'CLIEA13ID';
  CriaFormulario(TFormCadastroCliente, 'FormCadastroCliente', False, True, False, '');
end;

procedure TFormCadastroNotaServico.DBEdit14KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F2) then
    btnConsultaCliente.Click;
end;

procedure TFormCadastroNotaServico.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePIS_RETIDO.AsString := 'N';
  SQLTemplateCOFINS_RETIDO.AsString := 'N';
  SQLTemplateINSS_RETIDO.AsString := 'N';
  SQLTemplateIRPJ_RETIDO.AsString := 'N';
  SQLTemplateCSSL_RETIDO.AsString := 'N';
  SQLTemplateISS_RETIDO.AsString := 'N';
  SQLTemplateDATA_EMISSAO.AsDateTime := Now;
  SQLTemplateUF_PRESTACAO.AsString   := SQLLocate('EMPRESA','EMPRICOD','EMPRA2UF', EmpresaPadrao);
  SQLTemplateMUNICIPIO_PRESTACAO.AsString   := SQLLocate('EMPRESA','EMPRICOD','EMPRA60CID', EmpresaPadrao);
end;

procedure TFormCadastroNotaServico.btnConsultaServicoClick(Sender: TObject);
begin
  inherited;
  FieldLookUp := SQLTemplate.FindField('ID_SERVICO');
  FieldOrigem := 'ID_SERVICO';
  CriaFormulario(TFormCadastroServico, 'FormCadastroServico', False, True, False, '');
end;

procedure TFormCadastroNotaServico.SQLTemplateBeforePost(DataSet: TDataSet);
var
  Erro: Boolean;
begin
  inherited;
  if SQLTemplate.State in [DsInsert] then
  begin
    if SQLTemplate.FieldByName('CLIEA13ID').AsString = '' then
    begin
        Informa('Cliente não informado!');
        DataSet.FieldByName('CLIEA13ID').FocusControl;
        Abort;
    end;
    if SQLTemplate.FieldByName('ID_TRIBUTACAO').AsInteger = 0 then
    begin
        Informa('Tributação não informada!');
        DataSet.FieldByName('ID_TRIBUTACAO').FocusControl;
        Abort;
    end;
    if SQLTemplate.FieldByName('VALOR_SERVICO').AsFloat = 0 then
    begin
        Informa('Valor do Serviço não informada!');
        DataSet.FieldByName('VALOR_SERVICO').FocusControl;
        Abort;
    end;
    if SQLTemplate.FieldByName('LOCAL_TRIBUTACAO').AsString = '' then
    begin
        Informa('Local de tributação não informado!');
        DataSet.FieldByName('LOCAL_TRIBUTACAO').FocusControl;
        Abort;
    end;
  end;

  if (SQLTemplate.State = dsInsert) or (SQLTemplateNUMERO_NOTA.Value = 0) then
  begin
    SQLSerie.Close;
    SQLSerie.MacroByName('mEmpresa').value := 'EMPRICOD = ' + IntToStr(EmpresaCorrente);
    SQLSerie.Open;
    SQLSerie.Locate('SERIA5COD', SQLTemplateSERIE.asString, []);
    Erro := True;
    while Erro do
    try
      SQLTemplateNUMERO_NOTA.Value := SQLSerieSERIINRONF.Value;
      SQLSerie.Edit;
      SQLSerieSERIINRONF.asInteger := SQLSerieSERIINRONF.asInteger + 1;
      SQLSeriePENDENTE.asString := 'S';
      SQLSerieREGISTRO.asDateTime := Now;
      SQLSerie.Post;
      Erro := False;
    except
      on E: Exception do
        ShowMessage('Erro: ' + e.Message);

//      if SQLSerie.State in DsEditModes then
//        SQLSerie.Cancel;
//      Erro := True;
    end;
  end;

end;

procedure TFormCadastroNotaServico.SQLTemplateID_TRIBUTACAOChange(
  Sender: TField);
begin
  inherited;
  SQLTemplate.FieldByName('ALIQUOTA_ISS').AsFloat := StrToFloatDef(SQLLocate('TRIBUTACAO_NFSE','ID','ALIQUOTA', IntToStr(SQLTemplateID_TRIBUTACAO.AsInteger)),0);
end;

procedure TFormCadastroNotaServico.prc_Calcular_Valor_Total;
var
  ValorPis,ValorTotal,ValorCofins,ValorINSS,ValorIRPJ,ValorISS,ValorServico,ValorDeducao,AliquotaISS,ValorCSSL : Real;
begin
  ValorISS     := 0;
  ValorServico := SQLTemplate.FieldByName('VALOR_SERVICO').AsFloat;
  ValorPis     := SQLTemplate.FieldByName('VALOR_PIS').AsFloat;
  ValorCofins  := SQLTemplate.FieldByName('VALOR_COFINS').AsFloat;
  ValorIRPJ    := SQLTemplate.FieldByName('VALOR_IRPJ').AsFloat;
  ValorINSS    := SQLTemplate.FieldByName('VALOR_INSS').AsFloat;
  ValorDeducao := SQLTemplate.FieldByName('VALOR_DEDUCAO').AsFloat;
  ValorCSSL    := SQLTemplate.FieldByName('VALOR_CSSL').AsFloat;
  AliquotaISS  := SQLTemplate.FieldByName('ALIQUOTA_ISS').AsFloat;

  case SQLTemplateLOCAL_TRIBUTACAO.AsInteger of
   3 : SQLTemplate.FieldByName('VALOR_ISS').AsFloat := 0;
   4 : SQLTemplate.FieldByName('VALOR_ISS').AsFloat := 0;
  end;

  if (ValorServico > 0) and (AliquotaISS > 0) then
    ValorISS := ValorServico * (AliquotaISS / 100);

  SQLTemplate.FieldByName('VALOR_TOTAL').AsFloat := ValorServico - ValorPis - ValorCofins - ValorIRPJ - ValorINSS - ValorDeducao;

  if chkISS_RETIDO.Checked then
    SQLTemplate.FieldByName('VALOR_TOTAL').AsFloat := SQLTemplate.FieldByName('VALOR_TOTAL').AsFloat - ValorISS;
  SQLTemplate.FieldByName('VALOR_ISS').AsFloat := ValorISS;

end;

procedure TFormCadastroNotaServico.SQLTemplateVALOR_SERVICOChange(
  Sender: TField);
var
  valorISS, AliquotaISS : Real;
begin
  inherited;
  prc_Calcular_Valor_Total;
end;

procedure TFormCadastroNotaServico.SQLTemplateVALOR_DEDUCAOChange(
  Sender: TField);
begin
  inherited;
  prc_Calcular_Valor_Total;
end;

procedure TFormCadastroNotaServico.SQLTemplateOUTRAS_RETENCOESChange(
  Sender: TField);
begin
  inherited;
  prc_Calcular_Valor_Total;
end;

procedure TFormCadastroNotaServico.SQLTemplateALIQUOTA_ISSChange(
  Sender: TField);
begin
  inherited;
  prc_Calcular_Valor_Total;
end;

procedure TFormCadastroNotaServico.SQLTemplateVALOR_PISChange(
  Sender: TField);
begin
  inherited;
  prc_Calcular_Valor_Total;
end;

procedure TFormCadastroNotaServico.SQLTemplateVALOR_COFINSChange(
  Sender: TField);
begin
  inherited;
  prc_Calcular_Valor_Total;
end;

procedure TFormCadastroNotaServico.SQLTemplateVALOR_INSSChange(
  Sender: TField);
begin
  inherited;
  prc_Calcular_Valor_Total;
end;

procedure TFormCadastroNotaServico.SQLTemplateVALOR_IRPJChange(
  Sender: TField);
begin
  inherited;
  prc_Calcular_Valor_Total;
end;

procedure TFormCadastroNotaServico.SQLTemplateVALOR_CSSLChange(
  Sender: TField);
begin
  inherited;
  prc_Calcular_Valor_Total;
end;

procedure TFormCadastroNotaServico.SQLTemplateISS_RETIDOChange(
  Sender: TField);
begin
  inherited;
  prc_Calcular_Valor_Total;
end;

procedure TFormCadastroNotaServico.SQLTemplateUF_PRESTACAOChange(
  Sender: TField);
begin
  inherited;
  if (not SQLEstado.Locate('SIGLA',SQLTemplateUF_PRESTACAO.AsString,[loCaseInsensitive])) then
  begin
    if (SQLTemplateUF_PRESTACAO.AsString <> '') then
    begin
      ShowMessage('UF ' + SQLTemplateUF_PRESTACAO.AsString + ' não localizada!');
      SQLTemplateUF_PRESTACAO.Clear;
      dbedtUF.SetFocus;
    end;
  end
  else
  begin

  end;
end;

procedure TFormCadastroNotaServico.SQLTemplateAfterInsert(
  DataSet: TDataSet);
var
 x : String;
begin
  inherited;

  SQLTemplateEMPRICOD.AsInteger  := StrToInt(EmpresaPadrao);
  SQLTemplateSERIE.Value := SQLLocate('CONFIG_SERVICO', 'EMPRICOD', 'SERIA5COD', EmpresaPadrao);
  SQLTemplateID_TRIBUTACAO.Value := strtointdef(SQLLocate('CONFIG_SERVICO', 'EMPRICOD', 'ID_TRIBUTACAO', EmpresaPadrao),0);
  SQLTemplateLOCAL_TRIBUTACAO.Value := strtointdef(SQLLocate('CONFIG_SERVICO', 'EMPRICOD', 'LOCAL_TRIBUTACAO', EmpresaPadrao),0);
end;

procedure TFormCadastroNotaServico.btnTransmitirNFSeClick(Sender: TObject);
begin
  inherited;
  TdmNFSe.Gerar(DSTemplate.DataSet.fieldbyname('ID').AsInteger);
end;

procedure TFormCadastroNotaServico.AdvGlowButton1Click(Sender: TObject);
begin
  inherited;
  TdmNFSe.GerarOffline(DSTemplate.DataSet.fieldbyname('ID').AsInteger);
end;

procedure TFormCadastroNotaServico.AdvGlowButton2Click(Sender: TObject);
begin
  inherited;
  TdmNFSe.Consultar(DSTemplate.DataSet.fieldbyname('ID').AsInteger);
end;

procedure TFormCadastroNotaServico.AdvGlowButton3Click(Sender: TObject);
begin
  inherited;
   TdmNFSe.Cancelar(DSTemplate.DataSet.fieldbyname('ID').AsInteger);
end;

procedure TFormCadastroNotaServico.Button3Click(Sender: TObject);
begin
  inherited;
  SQLconta.Close;
  SQLconta.Open;
  SQLContasReceber.Close;
  SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLTemplateNUMERO_NOTA.AsString;
  SQLContasReceber.Open;

  PagePrincipal.ActivePage := tsFinanceiro;

  ComboTipoDoc.KeyValue := dm.SQLConfigVenda.FieldByName('TPDCICOD').AsInteger;
  ComboPortador.KeyValue := dm.SQLConfigVenda.FieldByName('PORTICOD').AsInteger;
  ComboNumerarioVista.KeyValue := dm.SQLConfigVenda.FieldByName('NUMEVISTA').AsInteger;
  ComboNumerarioPrazo.KeyValue := dm.SQLConfigVenda.FieldByName('NUMEPRAZO').AsInteger;
  ComboPlanoRecto.Value := '';
  ComboPlanoRecto.SetFocus;

end;

procedure TFormCadastroNotaServico.BTNRecalcularFinanceiroClick(
  Sender: TObject);
var
  Entrada, Desconto, Valor: Double;
  DiminuiAcresc, ValorJuro, Acrescimo, EntradaCalc, TaxaCred: Double;
  Erro: Boolean;
  ValorBase: Double;
  I: Integer;
begin
  inherited;
  PermiteExcluirSemPerguntar := True;

  if ComboNumerarioVista.Value = '' then
  begin
    ShowMessage('Nenhum numerário a vista foi escolhido! Verifique!');
    Abort;
  end;

  if ComboNumerarioPrazo.Value = '' then
  begin
    ShowMessage('Nenhum numerário a prazo foi escolhido! Verifique!');
    Abort;
  end;

  if (ComboPlanoRecto.Value <> '') and (SQLTemplateVALOR_TOTAL.AsFloat > 0) and (SQLTemplate.State in dsEditModes) then
  begin
    DM.SQLTemplate.Close;
    DM.SQLTemplate.SQL.Clear;
    DM.SQLTemplate.SQL.Add('delete from PARCELASPRAZOVENDATEMP');
    DM.SQLTemplate.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual));
    DM.SQLTemplate.ExecSQL;

    SQLParcelasPrazoVendaTemp.Close;
    SQLParcelasPrazoVendaTemp.SQL.Clear;
    SQLParcelasPrazoVendaTemp.SQL.Add('select * from PARCELASPRAZOVENDATEMP');
    SQLParcelasPrazoVendaTemp.SQL.Add('where TERMICOD = ' + IntToStr(TerminalAtual));
    SQLParcelasPrazoVendaTemp.SQL.Add('order by NROPARCELA');
    SQLParcelasPrazoVendaTemp.Open;

    SQLPlano.Close;
    SQLPlano.ParamByName('PLRCICOD').AsInteger := ComboPlanoRecto.KeyValue;
    SQLPlano.Open;
    SQLPlano.First;
    if not SQLPlano.Eof then
    begin
      SQLPlanoParcela.Close;
      SQLPlanoParcela.ParamByName('PLRCICOD').AsInteger := ComboPlanoRecto.KeyValue;
      SQLPlanoParcela.Open;
      SQLPlanoParcela.First;
      ValorJuro := SQLPlanoPLRCN2TXJURO.AsFloat;
      CriaParcelas(SQLParcelasPrazoVendaTemp, SQLPlano, SQLPlanoParcela, Entrada, Desconto, SQLTemplate.FindField('VALOR_TOTAL').asFloat, ComboPlanoRecto.KeyValue, SQLTemplate.FindField('DATA_EMISSAO').asDateTime, ComboNumerarioVista.Value, ComboNumerarioPrazo.Value, ComboNumerarioVista.Value, ComboNumerarioPrazo.Value, SQLTemplate.FindField('ID').asString, DiminuiAcresc, ValorJuro, Acrescimo, EntradaCalc, TaxaCred);
      SQLPlanoParcela.Close;
    end;
    SQLPlano.Close;
  end;

  // Lancar Contas a Receber
  if (ComboPlanoRecto.Value <> '') and (SQLTemplateVALOR_TOTAL.AsFloat > 0) and (SQLTemplate.State in dsEditModes) then
  begin
    SQLContasReceber.Close;
    SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLTemplateID.AsString;
    SQLContasReceber.Open;
    SQLContasReceber.First;
    while not SQLContasReceber.Eof do
      SQLContasReceber.Delete;

    SQLContasReceber.Close;
    SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLTemplateID.AsString;
    SQLContasReceber.Open;

    if not DM.SQLConfigCrediario.Active then
      DM.SQLConfigCrediario.Open;

    if not SQLParcelasPrazoVendaTemp.Active then
      SQLParcelasPrazoVendaTemp.Open;
    SQLParcelasPrazoVendaTemp.First;
    while not SQLParcelasPrazoVendaTemp.Eof do
    begin
      SQLContasReceber.Append;
      SQLContasReceberCTRCCSTATUS.Value := 'A';
      SQLContasReceberNOFIA13ID.AsString := SQLTemplate.FindField('ID').AsString;
      SQLContasReceberCTRCINROPARC.Value := SQLParcelasPrazoVendaTempNROPARCELA.Value;
      SQLContasReceberCTRCDEMIS.Value := SQLTemplate.FindField('DATA_EMISSAO').Value;
      SQLContasReceberCLIEA13ID.AsString := SQLTemplate.FindField('CLIEA13ID').AsString;
      SQLContasReceberCTRCDVENC.Value := SQLParcelasPrazoVendaTempDATAVENCTO.Value;
      SQLContasReceberCTRCN2VLR.Value := SQLParcelasPrazoVendaTempVALORVENCTO.Value;
      SQLContasReceberCTRCA5TIPOPADRAO.Value := SQLParcelasPrazoVendaTempTipoPadrao.Value;
      if SQLContasReceberCTRCA5TIPOPADRAO.Value = '' then
        SQLContasReceberCTRCA5TIPOPADRAO.Value := 'CRD';
      SQLContasReceberTPDCICOD.AsVariant := ComboTipoDoc.KeyValue;
      SQLContasReceberPORTICOD.asVariant := ComboPortador.KeyValue;
      SQLContasReceberCTRCA30NRODUPLICBANCO.AsString := FormatFloat('######000000', SQLTemplateID.Value) + '-' + SQLParcelasPrazoVendaTempNROPARCELA.AsString;
      SQLContasReceberCTRCCEMITIDOBOLETO.Value := 'N';
      SQLContasReceberNUMEICOD.Value := SQLParcelasPrazoVendaTempNUMEICOD.Value;

          // PLANO DE CONTAS Busca do Numerario
      if SQLParcelasPrazoVendaTempNUMEICOD.AsVariant <> Null then
      begin
        SQLContasReceberPLCTA15COD.AsString := SQLLocate('NUMERARIO', 'NUMEICOD', 'PLCTA15CODCRED', SQLParcelasPrazoVendaTempNUMEICOD.AsString);
        SQLContasReceberPLCTA15CODDEBITO.AsString := SQLLocate('NUMERARIO', 'NUMEICOD', 'PLCTA15CODDEB', SQLParcelasPrazoVendaTempNUMEICOD.AsString);
      end;

      if (SQLContasReceberPLCTA15COD.AsString = '') and (ComboPlanoContas.Value <> '') then
        SQLContasReceberPLCTA15COD.AsVariant := ComboPlanoContas.KeyValue;

      if ComboHistoricoPadrao.Value <> '' then
        SQLContasReceberHTPDICOD.AsString := ComboHistoricoPadrao.Value;

      if MemoHistorico.Lines.Count > 0 then
        SQLContasReceberCTRCA254HIST.AsString := UpperCase(MemoHistorico.Lines.Text);

      SQLContasReceberTERMICOD.AsInteger := TerminalCorrente;
      SQLContasReceberPENDENTE.Value := 'S';
      SQLContasReceberREGISTRO.Value := Now;

      SQLContasReceber.Post;
      SQLParcelasPrazoVendaTemp.Next;
    end;
    SQLParcelasPrazoVendaTemp.Close;
  end;
  PermiteExcluirSemPerguntar := False;

  SQLContasReceber.Close;
  SQLContasReceber.ParamByName('NOFIA13ID').AsString := SQLTemplateID.AsString;
  SQLContasReceber.Open;

  if (SQLTemplate.State in dsEditModes) then
  begin
    SQLTemplatePLRCICOD.Value := SQLPlanoRecebimentoPLRCICOD.Value;
    SQLTemplate.Post;
  end;

  ComboPlanoRecto.Value := '';

end;

procedure TFormCadastroNotaServico.SQLContasReceberBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('REGISTRO') <> nil then
    DataSet.FindField('REGISTRO').AsDateTime := Now;
  if DataSet.FindField('PENDENTE') <> nil then
    DataSet.FindField('PENDENTE').AsString := 'S';
  if DataSet.FindField('EMPRICOD') <> nil then
    DataSet.FindField('EMPRICOD').Value := EmpresaCorrente;
  if DataSet.FindField('TERMICOD') <> nil then
    DataSet.FindField('TERMICOD').Value := TerminalCorrente;
  case DataSet.State of
    DsInsert:
      DM.CodigoAutomatico('CONTASRECEBER', DSSQLContasReceber, DataSet, 3, 0);
  end;
  ContasReceberID := SQLContasReceberCTRCA13ID.asString;
  ContasReceberCliente := SQLContasReceberCLIEA13ID.asString;
end;

procedure TFormCadastroNotaServico.SQLContasReceberBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  DM.RegistraExclusao('CONTASRECEBER', SQLContasReceber);
  SQLExcluiDetalhes.MacroByName('MTabela').AsString := 'RECEBIMENTO';
  SQLExcluiDetalhes.MacroByName('MFiltro').asString := DM.ClausulaFiltro('CONTASRECEBER', SQLContasReceber);
  SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Select *';
  SQLExcluiDetalhes.Open;
  SQLExcluiDetalhes.First;
  while not SQLExcluiDetalhes.Eof do
  begin
    DM.RegistraExclusao('RECEBIMENTO', SQLExcluiDetalhes);
    SQLExcluiDetalhes.Next;
  end;
  SQLExcluiDetalhes.Close;
  SQLExcluiDetalhes.MacroByName('MClausula').asString := 'Delete';
  SQLExcluiDetalhes.ExecSQL;

end;

procedure TFormCadastroNotaServico.SQLContasReceberNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('NOFIA13ID').Value := SQLTemplate.FindField('ID').Value;
  DataSet.FindField('CTRCINROPARC').Value := 0;
  DataSet.FindField('CTRCN2DESCFIN').Value := 0;
  if Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCMULATRAS').AsFloat > 0 then
    DataSet.FindField('CTRCN2TXMULTA').Value := Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCMULATRAS').Value
  else
    DataSet.FindField('CTRCN2TXMULTA').Value := 0;

  if Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCJURATRAS').Value > 0 then
    DataSet.FindField('CTRCN2TXJURO').Value := Dm.SQLConfigCrediario.FieldByName('CFCRN2PERCJURATRAS').Value
  else
    DataSet.FindField('CTRCN2TXJURO').Value := 0;
  DataSet.FindField('CTRCN2TOTREC').Value := 0;
  DataSet.FindField('CTRCN2TOTJUROREC').Value := 0;
  DataSet.FindField('CTRCN2TOTMULTAREC').Value := 0;
  DataSet.FindField('CTRCN2TOTDESCREC').Value := 0;
  DataSet.FindField('CTRCCEMITIDOBOLETO').Value := 'N';
  // Tipo de Registro no Contas a Receber -> N = Normal C = Credito D = Debito;
  DataSet.FindField('CTRCCTIPOREGISTRO').Value := 'N';

end;

procedure TFormCadastroNotaServico.SQLContasReceberPostError(
  DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
var
  ID : String;
begin
  inherited;
  case DataSet.State of
    DsInsert:
      begin
        DataSet.FieldByName('CTRCICOD').AsInteger := DataSet.FieldByName('CTRCICOD').AsInteger + 1;
        ID := Format('%.3d', [EmpresaCorrente]) + Format('%.3d', [TerminalCorrente]) + Format('%.6d', [DataSet.FieldByName('CTRCICOD').asInteger]);
        DataSet.FieldByName('CTRCA13ID').asString := ID + DM.DigitVerifEAN(ID);
      end;

  end;
  Action := DaRetry;

end;

end.

