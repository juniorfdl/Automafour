unit CadastroTesouraria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, ToolEdit, RXDBCtrl, DBCtrls, RxLookup, VarSys,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroTesouraria = class(TFormCadastroTEMPLATE)
    SQLTemplateTESOA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateTERMICOD: TIntegerField;
    SQLTemplateTESOICOD: TIntegerField;
    SQLTemplateTESODMOV: TDateTimeField;
    SQLTemplateTESON2VLRDEBITO: TFloatField;
    SQLTemplateTESON2VLRCREDITO: TFloatField;
    SQLTemplateNUMEICOD: TIntegerField;
    SQLTemplateOPTEICOD: TIntegerField;
    SQLTemplateTESOA255HIST: TStringField;
    SQLTemplateCTRCA13ID: TStringField;
    SQLTemplateCTPGA13ID: TStringField;
    SQLTemplateCQEMA13ID: TStringField;
    SQLTemplateFECXA13ID: TStringField;
    SQLTemplateUSUAICOD: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    ButtonOperacaoTesouraria: TSpeedButton;
    ComboNumerario: TRxDBLookupCombo;
    Label6: TLabel;
    GroupBox7: TGroupBox;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    SQLNumerario: TRxQuery;
    DSSQLNumerario: TDataSource;
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplateContaCalcField: TStringField;
    SQLTemplateHTPDICOD: TIntegerField;
    SQLTemplateTESOA20DOCORIGEM: TStringField;
    SQLTemplatePLCTA15COD1: TStringField;
    SQLTemplateContaContabilCalcField: TStringField;
    Label4: TLabel;
    EditVlrDebito: TDBEdit;
    Label5: TLabel;
    EditVlrCredito: TDBEdit;
    DBDataMov: TDBDateEdit;
    Panel6: TPanel;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    ComboOperacao: TRxDBLookupCombo;
    GroupBox1: TGroupBox;
    PageControlPlanoConta: TPageControl;
    TabSheetPlanoConta: TTabSheet;
    Label12: TLabel;
    ButtonPlanoContas: TSpeedButton;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    TabSheetContabilidade: TTabSheet;
    BtnConta2: TSpeedButton;
    Label15: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit2: TDBEdit;
    Label13: TLabel;
    DBEditHistoricoPadrao: TDBEdit;
    BtnHistorico: TSpeedButton;
    Label7: TLabel;
    MemoHistorico: TDBMemo;
    DSSQLOperacaoTesouraria: TDataSource;
    SQLOperacaoTesouraria: TRxQuery;
    SQLTemplateOperacaoCalc: TStringField;
    SQLTemplateTipoOperacaoCalc: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure ButtonOperacaoTesourariaClick(Sender: TObject);
    procedure ButtonPlanoContasClick(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure ComboOperacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnHistoricoClick(Sender: TObject);
    procedure SQLTemplateHTPDICODChange(Sender: TField);
    procedure DBEditHistoricoPadraoExit(Sender: TObject);
    procedure DBEditHistoricoPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConta2Click(Sender: TObject);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditVlrDebitoExit(Sender: TObject);
    procedure EditVlrCreditoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTesouraria: TFormCadastroTesouraria;

implementation

uses FormResources, CadastroOperacaoTesouraria, TelaConsultaPlanoContas,
  DataModulo, CadastroHistoricoPadrao, WindowsLibrary, UnitLibrary;

{$R *.dfm}

procedure TFormCadastroTesouraria.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'TESOURARIA';
  if not SQLNumerario.Active then SQLNumerario.Open;
  if not SQLOperacaoTesouraria.Active then SQLOperacaoTesouraria.Open;
  PageControlPlanoConta.ActivePage := TabSheetPlanoConta;
end;

procedure TFormCadastroTesouraria.DSTemplateDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if SQLTemplateOPTEICOD.AsString <> '' then
    begin
      EditVlrDebito.Enabled  := SQLTemplateTipoOperacaoCalc.AsString = 'D';
      EditVlrCredito.Enabled := SQLTemplateTipoOperacaoCalc.AsString = 'C';
    end
  else
    begin
      EditVlrDebito.Enabled  := True;
      EditVlrCredito.Enabled := True;
    end;
end;

procedure TFormCadastroTesouraria.ButtonOperacaoTesourariaClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DSTemplate.DataSet.FieldByName('OPTEICOD');
  FieldOrigem := 'OPTEICOD';
  CriaFormulario(TFormCadastroOperacaoTesouraria,'FormCadastroOperacaoTesouraria',False,True,True,'');
end;

procedure TFormCadastroTesouraria.ButtonPlanoContasClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15COD');
  FieldOrigem := 'PLCTA15COD';
  if SQLTemplateTipoOperacaoCalc.AsString = 'C' then
    TipoPlanoContas := 'C'
  else
    TipoPlanoContas := 'D';
  CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas',False,True,True,'');
end;

procedure TFormCadastroTesouraria.SQLTemplateCalcFields(DataSet: TDataSet);
begin
  inherited;
  //OPERACAO TESOURARIA
   If DataSet.FieldByName('OPTEICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('OPERACAOTESOURARIA',['OPTEICOD'],[DataSet.FieldByName('OPTEICOD').AsString],1) Then
        DataSet.FieldByName('OperacaoCalc').AsVariant := DM.SQLTemplate.FindField('OPTEA60DESCR').AsVariant
      Else
        DataSet.FieldByName('OperacaoCalc').asString  := MensagemLookUp ;
    End
  Else
    DataSet.FieldByName('OperacaoCalc').AsVariant := Null;

  //TIPO OPERACAO TESOURARIA
   If DataSet.FieldByName('OPTEICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('OPERACAOTESOURARIA',['OPTEICOD'],[DataSet.FieldByName('OPTEICOD').AsString],1) Then
        DataSet.FieldByName('TipoOperacaoCalc').AsVariant := DM.SQLTemplate.FindField('OPTECDEBCRED').AsVariant
      Else
        DataSet.FieldByName('TipoOperacaoCalc').asString  := MensagemLookUp ;
    End
  Else
    DataSet.FieldByName('TipoOperacaoCalc').AsVariant := Null;

  //PLANO CONTAS
   If DataSet.FieldByName('PLCTA15COD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PLANODECONTAS',['PLCTA15COD'],[DataSet.FieldByName('PLCTA15COD').AsString],1) Then
        Begin
          DataSet.FieldByName('ContaCalcField').AsVariant    := DM.SQLTemplate.FindField('PLCTA60DESCR').AsVariant;
        End
      Else
        Begin
          DataSet.FieldByName('ContaCalcField').asString := MensagemLookUp ;
        End;
    End
  Else
    Begin
      DataSet.FieldByName('ContaCalcField').AsVariant  := Null;
    End;
  //PLANO CONTAS CONTABILIDADE
   If DataSet.FieldByName('PLCTA15COD1').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('PLANODECONTAS',['PLCTA15COD'],[DataSet.FieldByName('PLCTA15COD1').AsString],1) Then
        Begin
          DataSet.FieldByName('ContaContabilCalcField').AsVariant    := DM.SQLTemplate.FindField('PLCTA60DESCR').AsVariant;
        End
      Else
        Begin
          DataSet.FieldByName('ContaContabilCalcField').asString := MensagemLookUp ;
        End;
    End
  Else
    Begin
      DataSet.FieldByName('ContaContabilCalcField').AsVariant  := Null;
    End;
end;

procedure TFormCadastroTesouraria.DBEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonOperacaoTesouraria.Click;
end;

procedure TFormCadastroTesouraria.DBEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonPlanoContas.Click;
end;

procedure TFormCadastroTesouraria.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateTESON2VLRCREDITO.AsFloat := 0;
  SQLTemplateTESON2VLRDEBITO.AsFloat  := 0;
  SQLTemplateTESODMOV.Value           := DM.DataBaseSistema;
end;

procedure TFormCadastroTesouraria.ComboOperacaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ButtonOperacaoTesouraria.Click;
end;

procedure TFormCadastroTesouraria.BtnHistoricoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('HTPDICOD');
  FieldOrigem := 'HTPDICOD';
  TipoHistoricoPadrao := SQLOperacaoTesouraria.FieldByName('OPTECDEBCRED').AsString;
  CriaFormulario(TFormCadastroHistoricoPadrao, 'FormCadastroHistoricoPadrao',False,True,True,'Caixa Tesouraria');
end;

procedure TFormCadastroTesouraria.SQLTemplateHTPDICODChange(
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
             DSTemplate.DataSet.FieldByName('TESOA255HIST').AsVariant             := DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant;
        end
      else
        DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').asString := MensagemLookUp ;
    end
  else
     DSTemplate.DataSet.FieldByName('HistoricoPadraoCalcField').AsVariant  := Null;
end;

procedure TFormCadastroTesouraria.DBEditHistoricoPadraoExit(
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

procedure TFormCadastroTesouraria.DBEditHistoricoPadraoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnHistorico.Click;
end;

procedure TFormCadastroTesouraria.BtnConta2Click(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('PLCTA15COD1');
  FieldOrigem := 'PLCTA15COD';
  if SQLTemplateTipoOperacaoCalc.AsString = 'C' then
    TipoPlanoContas := 'D'
  else
    TipoPlanoContas := 'C';
  CriaFormulario(TFormTelaConsultaPlanoContas, 'FormTelaConsultaPlanoContas',False,True,True,'');
end;

procedure TFormCadastroTesouraria.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
var
  InfoRetorno : TInfoRetornoUser;
begin
  if AutenticaUsuario(UsuarioAtualNome,'USUACEXCLDADOSTESO',InfoRetorno) <> 'S' then
    begin
      Informa('Você não tem permissão para excluir informações no caixa da tesouraria!');
      Abort;
      Exit;
    end;
  inherited;
end;

procedure TFormCadastroTesouraria.DBEdit9KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    BtnConta2.Click;
end;

procedure TFormCadastroTesouraria.EditVlrDebitoExit(Sender: TObject);
begin
  inherited;
  SQLTemplatePLCTA15COD.Value := dm.SQLLocate('OPERACAOTESOURARIA','OPTEICOD','PLCTA15COD',SQLTemplateOPTEICOD.AsString);
end;

procedure TFormCadastroTesouraria.EditVlrCreditoExit(Sender: TObject);
begin
  inherited;
  SQLTemplatePLCTA15COD.Value := dm.SQLLocate('OPERACAOTESOURARIA','OPTEICOD','PLCTA15COD',SQLTemplateOPTEICOD.AsString);
end;

procedure TFormCadastroTesouraria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DataSetLookup := Nil;
end;

end.
