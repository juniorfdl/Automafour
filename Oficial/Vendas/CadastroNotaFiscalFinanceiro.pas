unit CadastroNotaFiscalFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, ToolEdit, RXDBCtrl, DBCtrls, VarSys, FormResources,
  EDBNum, RxDBComb, RxLookup, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroNotaFiscalFinanceiro = class(TFormCadastroTEMPLATE)
    SQLTemplateCTRCA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateCTRCICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateCTRCCSTATUS: TStringField;
    SQLTemplateCTRCINROPARC: TIntegerField;
    SQLTemplateCTRCDVENC: TDateTimeField;
    SQLTemplateCTRCN2VLR: TFloatField;
    SQLTemplateCTRCN2DESCFIN: TFloatField;
    SQLTemplateNUMEICOD: TIntegerField;
    SQLTemplatePORTICOD: TIntegerField;
    SQLTemplateCTRCN2TXJURO: TFloatField;
    SQLTemplateCTRCN2TXMULTA: TFloatField;
    SQLTemplateCTRCA5TIPOPADRAO: TStringField;
    SQLTemplateCTRCDULTREC: TDateTimeField;
    SQLTemplateCTRCN2TOTREC: TFloatField;
    SQLTemplateCTRCN2TOTJUROREC: TFloatField;
    SQLTemplateCTRCN2TOTMULTAREC: TFloatField;
    SQLTemplateCTRCN2TOTDESCREC: TFloatField;
    SQLTemplateEMPRICODULTREC: TIntegerField;
    SQLTemplateCUPOA13ID: TStringField;
    SQLTemplateTPDCICOD: TIntegerField;
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplateCTRCA30NRODUPLICBANCO: TStringField;
    SQLTemplateNOFIA13ID: TStringField;
    SQLTemplateCTRCDEMIS: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateCTRCDREABILSPC: TDateTimeField;
    SQLTemplateCTRCN2TOTMULTACOBR: TFloatField;
    SQLTemplateBANCA5CODCHQ: TStringField;
    SQLTemplateCTRCA10AGENCIACHQ: TStringField;
    SQLTemplateCTRCA15CONTACHQ: TStringField;
    SQLTemplateCTRCA15NROCHQ: TStringField;
    SQLTemplateCTRCA60TITULARCHQ: TStringField;
    SQLTemplateCTRCA20CGCCPFCHQ: TStringField;
    SQLTemplateCTRCDDEPOSCHQ: TDateTimeField;
    SQLTemplateALINICOD: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBDateEdit;
    Label3: TLabel;
    Label5: TLabel;
    BtnPortadores: TSpeedButton;
    SQLNumerario: TRxQuery;
    SQLPortador: TRxQuery;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    SQLTemplateNumerarioLookUp: TStringField;
    SQLTemplatePortadorLookUp: TStringField;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    RxDBComboBox1: TRxDBComboBox;
    EvDBNumEdit1: TEvDBNumEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    EvDBNumEdit3: TEvDBNumEdit;
    Label47: TLabel;
    EvDBNumEdit7: TEvDBNumEdit;
    Label14: TLabel;
    BtnTipoDocumento: TSpeedButton;
    SQLTipoDocumento: TRxQuery;
    SQLTipoDocumentoTPDCICOD: TIntegerField;
    SQLTipoDocumentoTPDCA60DESCR: TStringField;
    SQLTemplatePDVDA13ID: TStringField;
    SQLTemplateTipoDocumentoLookUp: TStringField;
    SQLTemplateTipoPadraoLookUp: TStringField;
    SQLNumerarioNUMEA5TIPO: TStringField;
    DBEdit3: TEvDBNumEdit;
    Label15: TLabel;
    EvDBNumEdit4: TEvDBNumEdit;
    Label16: TLabel;
    DBDateEdit2: TDBDateEdit;
    TblNotaFiscal: TTable;
    TblNotaFiscalNOFIA13ID: TStringField;
    TblNotaFiscalSERIA5COD: TStringField;
    TblNotaFiscalNOFIINUMERO: TIntegerField;
    TblNotaFiscalNOFICSTATUS: TStringField;
    TblNotaFiscalNOFIDEMIS: TDateTimeField;
    TblNotaFiscalNOFIN2VLRDESC: TFloatField;
    TblNotaFiscalNOFIN2VLRPRODUTO: TFloatField;
    TblNotaFiscalNOFIN2VLRNOTA: TFloatField;
    TblNotaFiscalNOFIN2VLRDESCPROM: TFloatField;
    DSTblNotaFiscal: TDataSource;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    Label20: TLabel;
    DBEditHistoricoPadrao: TDBEdit;
    BtnHistorico: TSpeedButton;
    Label21: TLabel;
    MemoHistorico: TDBMemo;
    SQLTemplateCTRCA254HIST: TStringField;
    SQLTemplateHTPDICOD: TIntegerField;
    SQLTemplatePlanodeContasCreditoCalcField: TStringField;
    SQLTemplateHistoricoPadraoCalcField: TStringField;
    DSSQLNumerario: TDataSource;
    DSSQLPortador: TDataSource;
    DSSQLTipoDocumento: TDataSource;
    ComboPortador: TRxDBLookupCombo;
    ComboTipoDoc: TRxDBLookupCombo;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    SQLTemplateCTRCCEMITIDOBOLETO: TStringField;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    RetornaPlanoContas: TSpeedButton;
    DBEdit14: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure BtnPortadoresClick(Sender: TObject);
    procedure BtnTipoDocumentoClick(Sender: TObject);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateNUMEICODChange(Sender: TField);
    procedure FormActivate(Sender: TObject);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure RetornaPlanoContasClick(Sender: TObject);
    procedure RetornaPlanoContasDebitoClick(Sender: TObject);
    procedure BtnHistoricoClick(Sender: TObject);
    procedure SQLTemplateHTPDICODChange(Sender: TField);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure DBEditHistoricoPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditHistoricoPadraoExit(Sender: TObject);
    procedure DBEdit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboTipoDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboPortadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroNotaFiscalFinanceiro: TFormCadastroNotaFiscalFinanceiro;

implementation

uses TelaConsultaNumerario, TelaConsultaPortador, TelaConsultaTipoDocumento,
  DataModulo, UnitLibrary, TelaConsultaPlanoContas, CadastroHistoricoPadrao;

{$R *.dfm}

procedure TFormCadastroNotaFiscalFinanceiro.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'CONTASRECEBER';
  if not TblNotaFiscal.Active then TblNotaFiscal.Open;
end;

procedure TFormCadastroNotaFiscalFinanceiro.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('NOFIA13ID').Value          := DSMasterTemplate.DataSet.FindField('NOFIA13ID').Value;
  DataSet.FindField('CLIEA13ID').Value          := DSMasterTemplate.DataSet.FindField('CLIEA13ID').Value;
  DataSet.FindField('CTRCDEMIS').Value          := DSMasterTemplate.DataSet.FindField('NOFIDEMIS').Value;
  DataSet.FindField('CTRCCSTATUS').Value        := 'A';
  if Dm.SQLConfigCrediario.ParamByName('CFCRN2PERCMULATRAS').AsFloat > 0 then
    DataSet.FindField('CTRCN2TXMULTA').Value     := Dm.SQLConfigCrediario.ParamByName('CFCRN2PERCMULATRAS').Value
  else
    DataSet.FindField('CTRCN2TXMULTA').Value     := 0 ;

  if Dm.SQLConfigCrediario.ParamByName('CFCRN2PERCJURATRAS').AsFloat > 0 then
    DataSet.FindField('CTRCN2TXJURO').Value      := Dm.SQLConfigCrediario.ParamByName('CFCRN2PERCJURATRAS').Value
  else
    DataSet.FindField('CTRCN2TXJURO').Value      := 0 ;
  DataSet.FindField('CTRCN2TOTREC').Value       := 0;
  DataSet.FindField('CTRCN2TOTJUROREC').Value   := 0;
  DataSet.FindField('CTRCN2TOTMULTAREC').Value  := 0;
  DataSet.FindField('CTRCN2TOTDESCREC').Value   := 0;
  DataSet.FindField('CTRCN2TOTMULTACOBR').Value := 0;
  DataSet.FindField('CTRCN2TOTMULTACOBR').Value := 0;
  DataSet.FindField('CTRCN2DESCFIN').Value      := 0;
  DataSet.FindField('CTRCCEMITIDOBOLETO').Value := 'N';
  DataSet.FindField('NUMEICOD').Value           := DM.SQLTerminalAtivo.ParamByName('TERMINUMEPRAZO').AsInteger;
  DataSet.FindField('TPDCICOD').Value           := DM.SQLConfigVenda.ParamByName('TPDCICOD').AsInteger;
  DataSet.FindField('PORTICOD').Value           := DM.SQLConfigVenda.ParamByName('PORTICOD').AsInteger;
end;

procedure TFormCadastroNotaFiscalFinanceiro.BtnPortadoresClick(
  Sender: TObject);
begin
  inherited;
  FieldLookUp   := SQLTemplate.FindField('PORTICOD');
  FieldOrigem   := 'PORTICOD';
  DataSetLookup := SQLPortador;
  CriaFormulario(TFormTelaConsultaPortador,'FormTelaConsultaPortador',False,True,True,' NF NRO.: ' + DBEdit9.Text);
end;

procedure TFormCadastroNotaFiscalFinanceiro.BtnTipoDocumentoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookUp   := SQLTemplate.FindField('TPDCICOD');
  FieldOrigem   := 'TPDCICOD';
  DataSetLookup := SQLTipoDocumento;
  CriaFormulario(TFormTelaConsultaTipoDocumento,'FormTelaConsultaTipoDocumento',False,True,True,' NF NRO.: ' + DBEdit9.Text);
end;

procedure TFormCadastroNotaFiscalFinanceiro.DBEdit10KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If Key=VK_F2 Then
    BtnTipoDocumento.Click;
end;

procedure TFormCadastroNotaFiscalFinanceiro.SQLTemplateNUMEICODChange(
  Sender: TField);
begin
  inherited;
  SQLTemplateCTRCA5TIPOPADRAO.Value := SQLTemplateTipoPadraoLookUp.asString;
end;

procedure TFormCadastroNotaFiscalFinanceiro.FormActivate(Sender: TObject);
begin
  inherited;
  PanelMaster.Refresh;
end;

procedure TFormCadastroNotaFiscalFinanceiro.SQLTemplateBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if SQLLocate('OPERACAOESTOQUE','OPESICOD','OPESCGERAFINANCEIRO',DSMasterTemplate.DataSet.FindField('OPESICOD').AsString) <> 'S' then
    begin
      Informa('A operação de estoque desta nota fiscal foi configurada para não movimentar financeiro, Operação Cancelada !' + #13 + 'Verifique o cadastro de operações de Estoque !');
      Abort;
    end;
end;

procedure TFormCadastroNotaFiscalFinanceiro.RetornaPlanoContasClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15COD');
  FieldOrigem := 'PLCTA15COD';
  TipoPlanoContas := 'C';
  CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas',False,True,True,' NF NRO.: ' + DBEdit9.Text);
end;

procedure TFormCadastroNotaFiscalFinanceiro.RetornaPlanoContasDebitoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15CODDEBITO');
  FieldOrigem := 'PLCTA15COD';
  TipoPlanoContas := 'D';
  CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas', False, True,True,' NF NRO.: ' + DBEdit9.Text);
end;

procedure TFormCadastroNotaFiscalFinanceiro.BtnHistoricoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('HTPDICOD');
  FieldOrigem := 'HTPDICOD';
  TipoHistoricoPadrao := 'C';
  CriaFormulario(TFormCadastroHistoricoPadrao, 'FormCadastroHistoricoPadrao',False,True,True,' NF NRO.: ' + DBEdit9.Text);
end;

procedure TFormCadastroNotaFiscalFinanceiro.SQLTemplateHTPDICODChange(
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

procedure TFormCadastroNotaFiscalFinanceiro.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  //PLANO CONTAS CREDITO
   If DataSet.FieldByName('PLCTA15COD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PLANODECONTAS',['PLCTA15COD'],[DataSet.FieldByName('PLCTA15COD').AsString],1) Then
        DataSet.FieldByName('PlanodeContasCreditoCalcField').AsVariant    := DM.SQLTemplate.FindField('PLCTA60DESCR').AsVariant
      Else
        DataSet.FieldByName('PlanodeContasCreditoCalcField').asString := MensagemLookUp ;
    End
  Else
    DataSet.FieldByName('PlanodeContasCreditoCalcField').AsVariant  := Null;
end;

procedure TFormCadastroNotaFiscalFinanceiro.DBEditHistoricoPadraoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnHistorico.Click;
end;

procedure TFormCadastroNotaFiscalFinanceiro.DBEditHistoricoPadraoExit(
  Sender: TObject);
var
  Tam : Integer;
begin
  inherited;
  if DBEditHistoricoPadrao.Text <> '' then
    begin
      MemoHistorico.SetFocus;
      Tam := Length(MemoHistorico.Text) + 2;
      MemoHistorico.SelStart := Tam;
    end;
end;

procedure TFormCadastroNotaFiscalFinanceiro.DBEdit13KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPlanoContas.Click ;

end;

procedure TFormCadastroNotaFiscalFinanceiro.ComboTipoDocKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    BtnTipoDocumento.Click;

end;

procedure TFormCadastroNotaFiscalFinanceiro.ComboPortadorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

  if Key = VK_F2 then
    BtnPortadores.Click;

end;

procedure TFormCadastroNotaFiscalFinanceiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if DataSetLookup <> nil then
    DataSetLookup := Nil;
end;

end.
