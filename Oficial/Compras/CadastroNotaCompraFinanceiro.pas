unit CadastroNotaCompraFinanceiro;

interface

uses
  VarSYS, FormResources, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, ToolEdit, RXDBCtrl, DBCtrls, EDBNum,
  RxDBComb, RxLookup, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvPanel;

type
  TFormCadastroNotaCompraFinanceiro = class(TFormCadastroTEMPLATE)
    SQLTemplateCTPGA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateCTPGICOD: TIntegerField;
    SQLTemplateFORNICOD: TIntegerField;
    SQLTemplatePLCTA15COD: TStringField;
    SQLTemplateCTPGINROPARC: TIntegerField;
    SQLTemplateCTPGDVENC: TDateTimeField;
    SQLTemplateCTPGN3VLR: TFloatField;
    SQLTemplateTPDCICOD: TIntegerField;
    SQLTemplateCTPGN3TXJURO: TFloatField;
    SQLTemplateCTPGN3TXMULTA: TFloatField;
    SQLTemplateCTPGA5TIPOPADRAO: TStringField;
    SQLTemplateNOCPA13ID: TStringField;
    SQLTemplateCTPGDULTPAGTO: TDateTimeField;
    SQLTemplateCTPGN3JUROPAGTO: TFloatField;
    SQLTemplateCTPGN3MULTAPAGTO: TFloatField;
    SQLTemplateCTPGN3DESCPAGTO: TFloatField;
    SQLTemplatePDCPA13ID: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label24: TLabel;
    Label25: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label28: TLabel;
    DBEdit22: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    EvDBNumEdit1: TEvDBNumEdit;
    DBEdit12: TEvDBNumEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBDateEdit;
    Label3: TLabel;
    DBEdit3: TEvDBNumEdit;
    SQLTemplateCTPGDTEMIS: TDateTimeField;
    SQLTemplateCTPGA20DOCORIG: TStringField;
    Label10: TLabel;
    RetornaTipoDocumento: TSpeedButton;
    Label11: TLabel;
    RetornaPortador: TSpeedButton;
    Label14: TLabel;
    EvDBNumEdit3: TEvDBNumEdit;
    SQLTemplateTipoDocumentoCalcField: TStringField;
    SQLTemplatePortadorCalcField: TStringField;
    SQLTemplatePORTICOD: TIntegerField;
    SQLTemplateCTPGN2DESCPROMO: TFloatField;
    SQLTemplateCTPGCPREVREAL: TStringField;
    SQLGeral: TRxQuery;
    SQLTemplateCTPGN2TOTPAG: TFloatField;
    Label15: TLabel;
    ComboTipoPrevistoReal: TRxDBComboBox;
    SQLTemplateNOCPA30NRO: TStringField;
    SQLTipoDocumento: TRxQuery;
    SQLPortador: TRxQuery;
    DSSQLTipoDocumento: TDataSource;
    DSSQLPortador: TDataSource;
    ComboTipoDoc: TRxDBLookupCombo;
    SQLTipoDocumentoTPDCICOD: TIntegerField;
    SQLTipoDocumentoTPDCA60DESCR: TStringField;
    SQLPortadorPORTICOD: TIntegerField;
    SQLPortadorPORTA60DESCR: TStringField;
    ComboPortador: TRxDBLookupCombo;
    SQLOperacaoEstoque: TRxQuery;
    Label16: TLabel;
    DBDateEdit1: TDBDateEdit;
    SQLTemplateCTPGDRECBTO: TDateTimeField;
    MnGeraroutrolanc: TMenuItem;
    SQLEspelhoNovoLanc: TRxQuery;
    SQLEspelhoNovoLancCTPGA13ID: TStringField;
    SQLEspelhoNovoLancEMPRICOD: TIntegerField;
    SQLEspelhoNovoLancFORNICOD: TIntegerField;
    SQLEspelhoNovoLancPLCTA15COD: TStringField;
    SQLEspelhoNovoLancCTPGA20DOCORIG: TStringField;
    SQLEspelhoNovoLancCTPGINROPARC: TIntegerField;
    SQLEspelhoNovoLancCTPGDTEMIS: TDateTimeField;
    SQLEspelhoNovoLancCTPGDVENC: TDateTimeField;
    SQLEspelhoNovoLancCTPGN3VLR: TFloatField;
    SQLEspelhoNovoLancTPDCICOD: TIntegerField;
    SQLEspelhoNovoLancCTPGA5TIPOPADRAO: TStringField;
    SQLEspelhoNovoLancNOCPA13ID: TStringField;
    SQLEspelhoNovoLancPORTICOD: TIntegerField;
    SQLEspelhoNovoLancCTPGN2DESCPROMO: TFloatField;
    SQLEspelhoNovoLancPDCPA13ID: TStringField;
    SQLEspelhoNovoLancCTPGCPREVREAL: TStringField;
    SQLEspelhoNovoLancCTPGA254HIST: TStringField;
    SQLEspelhoNovoLancNOCPA30NRO: TStringField;
    SQLEspelhoNovoLancHTPDICOD: TIntegerField;
    SQLEspelhoNovoLancPLCTA15CODCREDITO: TStringField;
    Label18: TLabel;
    DBEditHistoricoPadrao: TDBEdit;
    BtnHistorico: TSpeedButton;
    Label19: TLabel;
    MemoHistorico: TDBMemo;
    SQLTemplateCTPGA254HIST: TStringField;
    SQLTemplateCQEMA13ID: TStringField;
    SQLTemplateHTPDICOD: TIntegerField;
    SQLTemplatePLCTA15CODCREDITO: TStringField;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    SQLTemplateCTPGA2MESCOMP: TStringField;
    SQLTemplateCTPGA4ANOCOMP: TStringField;
    SQLTemplateBANCA5CODCHQ: TStringField;
    SQLTemplateCTRCA15NROCHQ: TStringField;
    Label20: TLabel;
    DBEdit11: TDBEdit;
    Label21: TLabel;
    DBEdit13: TDBEdit;
    SQLPagamento: TRxQuery;
    SQLPagamentoCTPGA13ID: TStringField;
    SQLPagamentoPAGAICOD: TIntegerField;
    SQLPagamentoPAGADPAGTO: TDateTimeField;
    SQLPagamentoPAGAN3VLRPAGTO: TFloatField;
    SQLPagamentoPAGAN3VLRJURO: TFloatField;
    SQLPagamentoPAGAN3VLRMULTA: TFloatField;
    SQLPagamentoPAGAN3VLRDESC: TFloatField;
    SQLPagamentoVlrTotal: TFloatField;
    SQLPagamentoPLCTA15CREDITO: TStringField;
    SQLPagamentoPLCTA15CODJUROCRED: TStringField;
    SQLPagamentoPLCTA15CODMULTCRED: TStringField;
    SQLPagamentoPLCTA15CODDESCCRED: TStringField;
    SQLPagamentoPLCTA15DEBITO: TStringField;
    SQLPagamentoPLCTA15CODJURODEB: TStringField;
    SQLPagamentoPLCTA15CODMULTDEB: TStringField;
    SQLPagamentoPLCTA15CODDESCDEB: TStringField;
    SQLPagamentoPAGAA254HISTORICO: TStringField;
    SQLPagamentoTPLQICOD: TIntegerField;
    DSSQLPagamento: TDataSource;
    Label17: TLabel;
    ComboPlanoContas: TRxDBLookupCombo;
    DSSQLPlanoContas: TDataSource;
    SQLPlanoContas: TRxQuery;
    SQLPlanoContasPLCTA15COD: TStringField;
    SQLPlanoContasPLCTA60DESCR: TStringField;
    ComboCompetenciaMes: TRxDBComboBox;
    ComboAno: TRxDBComboBox;
    Label22: TLabel;
    SQLTemplateBARRAS: TStringField;
    Label23: TLabel;
    dbBarras: TDBEdit;
    SQLTemplateDATA_PREVISTA: TDateTimeField;
    Label26: TLabel;
    DBDateEdit2: TDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure RetornaTipoDocumentoClick(Sender: TObject);
    procedure RetornaPortadorClick(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure ComboTipoDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboPortadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MnGeraroutrolancClick(Sender: TObject);
    procedure BtnHistoricoClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure SQLTemplateHTPDICODChange(Sender: TField);
    procedure DBEditHistoricoPadraoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroNotaCompraFinanceiro: TFormCadastroNotaCompraFinanceiro;

implementation

uses DataModulo, CadastroPortador, CadastroTipoDocumento, UnitLibrary,
  CadastroHistoricoPadrao, TelaBaixaContasPagarAVista;

{$R *.dfm}

procedure TFormCadastroNotaCompraFinanceiro.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA:='CONTASPAGAR';
  SQLTipoDocumento.Open;
  SQLPortador.Open;
  SQLPlanoContas.Open;
end;

procedure TFormCadastroNotaCompraFinanceiro.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('NOCPA13ID').Value          := DataSet.DataSource.DataSet.FindField('NOCPA13ID').Value;
  DataSet.FindField('NOCPA30NRO').Value         := DataSet.DataSource.DataSet.FindField('NOCPA30NRO').Value;
  DataSet.FindField('FORNICOD').Value           := DataSet.DataSource.DataSet.FindField('FORNICOD').Value;
  DataSet.FindField('CTPGDTEMIS').Value         := DataSet.DataSource.DataSet.FindField('NOCPDEMISSAO').Value;
  DataSet.FindField('CTPGDRECBTO').AsString     := FormatDateTime('dd/mm/yyyy',now);
  DataSet.FindField('PLCTA15COD').Value         := DataSet.DataSource.DataSet.FindField('PLCTA15COD').Value;
  DataSet.FindField('EMPRICOD').Value           := DataSet.DataSource.DataSet.FindField('EMPRICODDESTCOMPRA').Value;
  DataSet.FindField('CTPGN3TXJURO').asFloat     := 0;
  DataSet.FindField('CTPGN3TXMULTA').asFloat    := 0;
  DataSet.FindField('CTPGN3JUROPAGTO').asFloat  := 0;
  DataSet.FindField('CTPGN3MULTAPAGTO').asFloat := 0;
  DataSet.FindField('CTPGN3DESCPAGTO').asFloat  := 0;
  DataSet.FindField('CTPGN2DESCPROMO').asFloat  := 0;
  DataSet.FindField('CTPGN2TOTPAG').asFloat     := 0;
  DataSet.FindField('TPDCICOD').Value           := DM.SQLConfigCompra.fieldbyname('TPDCICOD').AsVariant;
  DataSet.FindField('PORTICOD').Value           := DM.SQLConfigCompra.fieldbyname('PORTICOD').AsVariant;
  if DataSet.FindField('CTPGCPREVREAL').Value <> '' then
    DataSet.FindField('CTPGCPREVREAL').Value  := DM.SQLConfigCompra.fieldbyname('CFCOCPREVREALNFCOMPRAFIN').AsString;

  SQLGeral.Close ;
  SQLGeral.SQL.Clear ;
  SQLGeral.SQL.Add('select Max(CTPGINROPARC) As Parcela from CONTASPAGAR') ;
  SQLGeral.SQL.Add('where NOCPA13ID = '''+DataSet.DataSource.DataSet.FindField('NOCPA13ID').asString+'''');
  SQLGeral.Open ;
  if SQLGeral.FieldByName('Parcela').Value > 0 then
    SQLTemplateCTPGINROPARC.Value := SQLGeral.FieldByName('Parcela').Value + 1
  Else
    SQLTemplateCTPGINROPARC.Value := 1;
  SQLGeral.Close;
End;
procedure TFormCadastroNotaCompraFinanceiro.RetornaTipoDocumentoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup   := DsTemplate.DataSet.FieldByName('TPDCICOD');
  FieldOrigem   := 'TPDCICOD' ;
  DatasetLookup := SQLTipoDocumento;
  CriaFormulario(TFormCadastroTipoDocumento, 'FormCadastroTipoDocumento',False,True,True,'');
end;

procedure TFormCadastroNotaCompraFinanceiro.RetornaPortadorClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup   := DsTemplate.DataSet.FieldByName('PORTICOD');
  FieldOrigem   := 'PORTICOD' ;
  DataSetLookup := SQLPortador;
  CriaFormulario(TFormCadastroPortador, 'FormCadastroPortador',False,True,True,'');
end;

procedure TFormCadastroNotaCompraFinanceiro.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  //TIPO DOCUMENTO
   If DataSet.FieldByName('TPDCICOD').AsVariant <> null then
    Begin
      If DM.ProcuraRegistro('TIPODOCUMENTO',['TPDCICOD'],[DataSet.FieldByName('TPDCICOD').AsString],1) Then
        Begin
          DataSet.FieldByName('TipoDocumentoCalcField').AsVariant    := DM.SQLTemplate.FindField('TPDCA60DESCR').AsVariant;
        End
      Else
        Begin
          DataSet.FieldByName('TipoDocumentoCalcField').asString := MensagemLookUp ;
        End;
    End
  Else
    Begin
      DataSet.FieldByName('TipoDocumentoCalcField').AsVariant  := Null;
    End;
  //PORTADOR
   if DataSet.FieldByName('PORTICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('PORTADOR',['PORTICOD'],[DataSet.FieldByName('PORTICOD').AsString],1) Then
        begin
          DataSet.FieldByName('PortadorCalcField').AsVariant    := DM.SQLTemplate.FindField('PORTA60DESCR').AsVariant;
        end
      else
        begin
          DataSet.FieldByName('PortadorCalcField').asString := MensagemLookUp ;
        end;
    end
  else
    begin
      DataSet.FieldByName('PortadorCalcField').AsVariant  := Null;
    end;
end;

procedure TFormCadastroNotaCompraFinanceiro.ComboTipoDocKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaTipoDocumento.Click;
end;

procedure TFormCadastroNotaCompraFinanceiro.ComboPortadorKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    RetornaPortador.Click;
end;

procedure TFormCadastroNotaCompraFinanceiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  SQLTipoDocumento.Close;
  SQLPortador.Close;
end;

procedure TFormCadastroNotaCompraFinanceiro.MnGeraroutrolancClick(
  Sender: TObject);
var
  i : integer ;
begin
  inherited;
  SQLEspelhoNovoLanc.Close ;
  SQLEspelhoNovoLanc.MacroByName('MFiltro').Value := 'CTPGA13ID = ''' + SQLTemplateCTPGA13ID.Value + '''' ;
  SQLEspelhoNovoLanc.Open ;

  SQLTemplate.Append ;
  for i := 0 to SQLEspelhoNovoLanc.FieldCount-1 do
    if (SQLEspelhoNovoLanc.Fields[i].FieldName <> 'CTPGA13ID') then
      begin
        if (SQLEspelhoNovoLanc.Fields[i].FieldName = 'CTPGINROPARC') then
          SQLTemplate.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).Value := SQLEspelhoNovoLanc.Fields[i].AsVariant + 1
        else
          SQLTemplate.FieldByName(SQLEspelhoNovoLanc.Fields[i].FieldName).Value := SQLEspelhoNovoLanc.Fields[i].AsVariant ;
      end ;

  SQLTemplateCTPGDVENC.FocusControl ;
end;

procedure TFormCadastroNotaCompraFinanceiro.BtnHistoricoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('HTPDICOD');
  FieldOrigem := 'HTPDICOD';
  TipoHistoricoPadrao := 'D';
  CriaFormulario(TFormCadastroHistoricoPadrao, 'FormCadastroHistoricoPadrao', False, True,True, 'Contas à Receber');
end;

procedure TFormCadastroNotaCompraFinanceiro.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if SQLTemplateCTPGDVENC.Value < SQLTemplateCTPGDTEMIS.Value then
    begin
      ShowMessage('Atenção! A data de vencimento está menor que a data de emissão!');
      DBEdit2.SetFocus;
    end;
end;

procedure TFormCadastroNotaCompraFinanceiro.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  if SQLTemplateCTPGDVENC.Value < SQLTemplateCTPGDTEMIS.Value then
    begin
      ShowMessage('Atenção! Data de Vencimento menor que a Data de Emissão!');
      DBEdit2.SetFocus;
      Abort;
    end;
  if SQLTemplateCTPGN3VLR.Value = 0 then
    begin
      ShowMessage('Atenção! O Valor não foi informado!');
      DBEdit3.SetFocus;
      Abort;
    end;
  if (SQLTemplate.State in [DsInsert]) and (SQLTemplateDATA_PREVISTA.AsDateTime < 10) then
    SQLTemplateDATA_PREVISTA.AsDateTime := SQLTemplateCTPGDVENC.AsDateTime;

  inherited;
end;

procedure TFormCadastroNotaCompraFinanceiro.SQLTemplateAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  // Quita Parcela a vista automaticamente
  if (SQLTemplateCTPGDTEMIS.Value = SQLTemplateCTPGDVENC.Value) and (SQLTemplateCTPGCPREVREAL.Value = 'R') then
    begin
      Application.CreateForm(TFormTelaBaixaContasPagarAVista,FormTelaBaixaContasPagarAVista);
      FormTelaBaixaContasPagarAVista.ValorAteVencimento.Value := SQLTemplateCTPGN3VLR.Value;
      FormTelaBaixaContasPagarAVista.ValorTotalOperacao.Value := SQLTemplateCTPGN3VLR.Value;
      FormTelaBaixaContasPagarAVista.ShowModal;
      if FormTelaBaixaContasPagarAVista.ModalResult = MrOk then
        begin
          SQLPagamento.Close;
          SQLPagamento.Open;
          SQLPagamento.Append;
          SQLPagamentoCTPGA13ID.Value        := SQLTemplateCTPGA13ID.Value;
          SQLPagamentoPAGAICOD.Value         := 1;
          SQLPagamentoPAGADPAGTO.Value       := SQLTemplateCTPGDVENC.Value;
          SQLPagamentoPAGAN3VLRPAGTO.Value   := SQLTemplateCTPGN3VLR.Value;
          SQLPagamentoPAGAN3VLRJURO.Value    := FormTelaBaixaContasPagarAVista.VlrJuros.Value;
          SQLPagamentoPAGAN3VLRMULTA.Value   := FormTelaBaixaContasPagarAVista.VlrMulta.Value;
          SQLPagamentoPAGAN3VLRDESC.Value    := FormTelaBaixaContasPagarAVista.VlrDesconto.Value;
          if FormTelaBaixaContasPagarAVista.ComboTipoLiquidacao.Value <> '' then
            SQLPagamentoTPLQICOD.Value := FormTelaBaixaContasPagarAVista.ComboTipoLiquidacao.KeyValue;
          SQLPagamento.Post;
          AtualizaTotaisCabecalhoContasPagar(SQLPagamentoCTPGA13ID.Value);
        end;
      FormTelaBaixaContasPagarAVista.Close;
      FormTelaBaixaContasPagarAVista.Free;
    end;
end;

procedure TFormCadastroNotaCompraFinanceiro.SQLTemplateHTPDICODChange(
  Sender: TField);
begin
  inherited;
  //HISTORICO PADRAO
   if DSTemplate.DataSet.FieldByName('HTPDICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('HISTORICOPADRAO',['HTPDICOD'],[DSTemplate.DataSet.FieldByName('HTPDICOD').AsString],1) Then
        begin
          if (DSTemplate.DataSet.State in DsEditModes) then
             DSTemplate.DataSet.FieldByName('CTPGA254HIST').AsVariant := DM.SQLTemplate.FindField('HTPDA100HISTORICO').AsVariant;
        end;
    end;
end;

procedure TFormCadastroNotaCompraFinanceiro.DBEditHistoricoPadraoExit(
  Sender: TObject);
var
  Tam : integer;  
begin
  inherited;
  if DBEditHistoricoPadrao.Text <> '' then
    begin
      MemoHistorico.SetFocus;
      Tam := Length(MemoHistorico.Text) + 2;
      MemoHistorico.SelStart := Tam;
    end;
end;

End.
