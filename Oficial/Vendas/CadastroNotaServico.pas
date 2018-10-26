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
  private
    { Private declarations }
  public
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

end.

