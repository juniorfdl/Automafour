unit TelaConsultaRecebimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RxLookup, ComCtrls, DB, DBTables, RxQuery, DBCtrls, StdCtrls,
  Mask, ToolEdit, RXDBCtrl, ExtCtrls, VarSys;

type
  TFormTelaConsultaRecebimento = class(TForm)
    PanelDados: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    SQLContaCredito: TRxQuery;
    DSSQLContaCredito: TDataSource;
    SQLContaDebito: TRxQuery;
    SQLContaDebitoPLCTA15COD: TStringField;
    SQLContaDebitoPLCTICODREDUZ: TIntegerField;
    SQLContaDebitoPLCTINIVEL: TIntegerField;
    SQLContaDebitoPLCTA15CODPAI: TStringField;
    SQLContaDebitoPLCTA30CODEDIT: TStringField;
    SQLContaDebitoPLCTA60DESCR: TStringField;
    SQLContaDebitoPLCTCANALSINT: TStringField;
    SQLContaDebitoPLCTCTIPOSALDO: TStringField;
    SQLContaDebitoPENDENTE: TStringField;
    SQLContaDebitoREGISTRO: TDateTimeField;
    DSSQLContaDebito: TDataSource;
    PageControl: TPageControl;
    TabDebito: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    RxDBLookupCombo4: TRxDBLookupCombo;
    RxDBLookupCombo1: TRxDBLookupCombo;
    TabCredito: TTabSheet;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    RxDBLookupCombo5: TRxDBLookupCombo;
    RxDBLookupCombo6: TRxDBLookupCombo;
    RxDBLookupCombo7: TRxDBLookupCombo;
    RxDBLookupCombo8: TRxDBLookupCombo;
    SQLRecebimento: TQuery;
    SQLRecebimentoCTRCA13ID: TStringField;
    SQLRecebimentoRECEICOD: TIntegerField;
    SQLRecebimentoRECEDRECTO: TDateTimeField;
    SQLRecebimentoRECEN2VLRRECTO: TFloatField;
    SQLRecebimentoRECEN2VLRJURO: TFloatField;
    SQLRecebimentoRECEN2VLRMULTA: TFloatField;
    SQLRecebimentoRECEN2DESC: TFloatField;
    SQLRecebimentoEMPRICODREC: TIntegerField;
    DSSQLRecebimento: TDataSource;
    SQLRecebimentoRECEN2MULTACOBR: TFloatField;
    SQLRecebimentoTERMICODREC: TIntegerField;
    SQLRecebimentoCLIEA13ID: TStringField;
    SQLRecebimentoPENDENTE: TStringField;
    SQLRecebimentoREGISTRO: TDateTimeField;
    SQLRecebimentoTERMICOD: TIntegerField;
    SQLRecebimentoRECEA30HIST: TStringField;
    SQLRecebimentoPLCTA15CREDITO: TStringField;
    SQLRecebimentoPLCTA15CODJUROCRED: TStringField;
    SQLRecebimentoPLCTA15CODMULTCRED: TStringField;
    SQLRecebimentoPLCTA15CODDESCCRED: TStringField;
    SQLRecebimentoPLCTA15DEBITO: TStringField;
    SQLRecebimentoPLCTA15CODJURODEB: TStringField;
    SQLRecebimentoPLCTA15CODMULTDEB: TStringField;
    SQLRecebimentoPLCTA15CODDESCDEB: TStringField;
    SQLRecebimentoRECEA254HISTORICO: TStringField;
    LabelDataHoraAlteracao: TLabel;
    LabelDataHora: TLabel;
    PanelRodape: TPanel;
    Panel1: TPanel;
    DBMemoHist: TDBMemo;
    ComboHistPadrao: TRxDBLookupCombo;
    SQLHistoricoPadrao: TRxQuery;
    DSSQLHistoricoPadrao: TDataSource;
    Panel2: TPanel;
    SQLTipoLiquidacao: TRxQuery;
    DSSQLTipoLiquidacao: TDataSource;
    ComboTipoLiq: TRxDBLookupCombo;
    Label14: TLabel;
    SQLTipoLiquidacaoTPLQICOD: TIntegerField;
    SQLTipoLiquidacaoTPLQA60DESCR: TStringField;
    SQLRecebimentoTPLQICOD: TIntegerField;
    Label15: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SQLRecebimentoBeforePost(DataSet: TDataSet);
    procedure SQLRecebimentoAfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboHistPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemoHistExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaRecebimento: TFormTelaConsultaRecebimento;

implementation

uses TelaConsultaPagamento;

{$R *.dfm}

procedure TFormTelaConsultaRecebimento.FormCreate(Sender: TObject);
begin
  PageControl.ActivePage := TabCredito;
  if DSMasterSys <> nil then
    SQLRecebimento.DataSource := DSMasterSys;
  SQLRecebimento.Open;
  SQLContaDebito.Open;
  SQLContaCredito.Open;
  SQLHistoricoPadrao.Open;
  SQLTipoLiquidacao.Open;
end;

procedure TFormTelaConsultaRecebimento.RxDBLookupCombo1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
        or ((sender as trxdblookupcombo).Value <>
            (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

procedure TFormTelaConsultaRecebimento.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = Char(27) then
    begin
      if SQLRecebimento.State in DsEditModes then
        SQLRecebimento.Post;
      Close;
    end;
  if (Key = Char(13)) and (TObject(FormTelaConsultaRecebimento.ActiveControl).ClassType <> TDBMemo) then
    begin
      Perform(Wm_NextDlgCtl,0,0);
    end
end;

procedure TFormTelaConsultaRecebimento.SQLRecebimentoBeforePost(
  DataSet: TDataSet);
begin
  SQLRecebimentoPENDENTE.AsString   := 'S';
  SQLRecebimentoREGISTRO.AsDateTime := Now;
end;

procedure TFormTelaConsultaRecebimento.SQLRecebimentoAfterOpen(
  DataSet: TDataSet);
begin
  If (Not (DataSet.State in dsEditModes)) and
     ((DataSet.FindField('REGISTRO')<>Nil) and
      (DataSet.FindField('REGISTRO')<>Nil) and
      (DataSet.FindField('REGISTRO').asVariant<>Null) and
      (DataSet.FindField('REGISTRO').asVariant<>Null)) Then
    begin
      LabelDataHoraAlteracao.Caption :=
      LongDayNames[DayOfWeek(DataSet.FindField('REGISTRO').asVariant)] + ', '+
      FormatDateTime('dd/mm/yyyy',DataSet.FindField('REGISTRO').asDateTime)+
      ' às '+FormatDateTime('hh:nn:ss',DataSet.FieldByName('REGISTRO').asDateTime);
      LabelDataHora.Caption := 
      LongDayNames[DayOfWeek(DataSet.FindField('REGISTRO').asVariant)] + ', '+
      FormatDateTime('dd/mm/yyyy',DataSet.FindField('REGISTRO').asDateTime)+
      ' às '+FormatDateTime('hh:nn:ss',DataSet.FieldByName('REGISTRO').asDateTime)
    end
  Else
    begin
      LabelDataHoraAlteracao.Caption := '';
      LabelDataHora.Caption          := '';
    end

end;

procedure TFormTelaConsultaRecebimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SQLRecebimento.State in DsEditModes then
    SQLRecebimento.Post;
  SQLRecebimento.Close;  
end;

procedure TFormTelaConsultaRecebimento.ComboHistPadraoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    begin
      if ((sender as trxdblookupcombo).Value = '')
      or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
        (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
      if (not (SQLRecebimento.State in DsEditModes)) and (ComboHistPadrao.Value <> '') then
        begin
          SQLRecebimento.Edit;
          SQLRecebimentoRECEA254HISTORICO.AsString := SQLRecebimentoRECEA254HISTORICO.AsString + ComboHistPadrao.Value;
          SQLRecebimento.Post;
        end;
      ComboHistPadrao.Value := '';
      DBMemoHist.SelectAll;
      DBMemoHist.SelStart := DBMemoHist.SelLength + 1;
    end;
end;

procedure TFormTelaConsultaRecebimento.DBMemoHistExit(Sender: TObject);
begin
  if SQLRecebimento.State in DsEditModes then
    SQLRecebimento.Post;
end;

end.
