unit TelaConsultaPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, DBTables, RxQuery, DBCtrls, StdCtrls, Mask,
  ToolEdit, RXDBCtrl, ExtCtrls, VarSys, RxLookup;

type
  TFormTelaConsultaPagamento = class(TForm)
    SQLPagamento: TRxQuery;
    SQLContaDebito: TRxQuery;
    DSSQLContaDebito: TDataSource;
    SQLPagamentoCTPGA13ID: TStringField;
    SQLPagamentoPAGAICOD: TIntegerField;
    SQLPagamentoPAGADPAGTO: TDateTimeField;
    SQLPagamentoPAGAN3VLRPAGTO: TFloatField;
    SQLPagamentoPAGAN3VLRJURO: TFloatField;
    SQLPagamentoPAGAN3VLRMULTA: TFloatField;
    SQLPagamentoPAGAN3VLRDESC: TFloatField;
    SQLPagamentoVlrTotal: TFloatField;
    SQLPagamentoPLCTA15CREDITO: TStringField;
    SQLPagamentoPLCTA15CREDITOLookup: TStringField;
    SQLPagamentoPLCTA15CODJUROCRED: TStringField;
    SQLPagamentoPLCTA15CODJUROCREDLookup: TStringField;
    SQLPagamentoPLCTA15CODMULTCRED: TStringField;
    SQLPagamentoPLCTA15CODMULTCREDLookup: TStringField;
    SQLPagamentoPLCTA15CODDESCCRED: TStringField;
    SQLPagamentoPLCTA15CODDESCCREDLookup: TStringField;
    SQLPagamentoPLCTA15DEBITO: TStringField;
    SQLPagamentoPLCTA15DEBITOLookup: TStringField;
    SQLPagamentoPLCTA15CODJURODEB: TStringField;
    SQLPagamentoPLCTA15CODJURODEBLookup: TStringField;
    SQLPagamentoPLCTA15CODMULTDEB: TStringField;
    SQLPagamentoPLCTA15CODMULTDEBLookup: TStringField;
    SQLPagamentoPLCTA15CODDESCDEB: TStringField;
    SQLPagamentoPLCTA15CODDESCDEBLookup: TStringField;
    DSSQLPagamento: TDataSource;
    PageControl: TPageControl;
    PanelDados: TPanel;
    DBDateEdit1: TDBDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    TabDebito: TTabSheet;
    TabCredito: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DSSQLContaCredito: TDataSource;
    SQLContaCredito: TRxQuery;
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
    RxDBLookupCombo2 : TRxDBLookupCombo;
    RxDBLookupCombo3 : TRxDBLookupCombo;
    RxDBLookupCombo4 : TRxDBLookupCombo;
    RxDBLookupCombo5 : TRxDBLookupCombo;
    RxDBLookupCombo6 : TRxDBLookupCombo;
    RxDBLookupCombo7 : TRxDBLookupCombo;
    RxDBLookupCombo8 : TRxDBLookupCombo;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SQLPagamentoPENDENTE: TStringField;
    SQLPagamentoREGISTRO: TDateTimeField;
    SQLPagamentoPAGAA254HISTORICO: TStringField;
    LabelDataHoraAlteracao: TLabel;
    LabelDataHora: TLabel;
    PanelRodape: TPanel;
    SQLHistoricoPadrao: TRxQuery;
    DSSQLHistoricoPadrao: TDataSource;
    ComboHistPadrao: TRxDBLookupCombo;
    SQLTipoLiquidacao: TRxQuery;
    SQLTipoLiquidacaoTPLQICOD: TIntegerField;
    SQLTipoLiquidacaoTPLQA60DESCR: TStringField;
    DSSQLTipoLiquidacao: TDataSource;
    Panel1: TPanel;
    Label14: TLabel;
    DBMemoHist: TDBMemo;
    Panel2: TPanel;
    Label15: TLabel;
    ComboTipoLiq: TRxDBLookupCombo;
    SQLPagamentoTPLQICOD: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RxDBLookupCombo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLPagamentoBeforePost(DataSet: TDataSet);
    procedure SQLPagamentoAfterOpen(DataSet: TDataSet);
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
  FormTelaConsultaPagamento: TFormTelaConsultaPagamento;

implementation

uses FormResources;

{$R *.dfm}

procedure TFormTelaConsultaPagamento.FormCreate(Sender: TObject);
begin
  PageControl.ActivePage := TabDebito;
  if DSMasterSys <> nil then
    SQLPagamento.DataSource := DSMasterSys;
  SQLPagamento.Open;
  SQLContaDebito.Open;
  SQLContaCredito.Open;
  SQLHistoricoPadrao.Open;
  SQLTipoLiquidacao.Open;
end;

procedure TFormTelaConsultaPagamento.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = Char(27) then
    begin
      if SQLPagamento.State in DsEditModes then
        SQLPagamento.Post;
      Close;
    end;
  if (Key = Char(13)) and (TObject(FormTelaConsultaPagamento.ActiveControl).ClassType <> TDBMemo) then
    begin
      Perform(Wm_NextDlgCtl,0,0);
    end
end;

procedure TFormTelaConsultaPagamento.RxDBLookupCombo1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = Vk_Return then
    if (sender as trxdblookupcombo).IsDropDown then
      if ((sender as trxdblookupcombo).Value = '')
        or ((sender as trxdblookupcombo).Value <>
            (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
          (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

procedure TFormTelaConsultaPagamento.SQLPagamentoBeforePost(
  DataSet: TDataSet);
begin
  SQLPagamentoPENDENTE.AsString   := 'S';
  SQLPagamentoREGISTRO.AsDateTime := Now;
end;

procedure TFormTelaConsultaPagamento.SQLPagamentoAfterOpen(
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
      ' �s '+FormatDateTime('hh:nn:ss',DataSet.FieldByName('REGISTRO').asDateTime);
      LabelDataHora.Caption := 
      LongDayNames[DayOfWeek(DataSet.FindField('REGISTRO').asVariant)] + ', '+
      FormatDateTime('dd/mm/yyyy',DataSet.FindField('REGISTRO').asDateTime)+
      ' �s '+FormatDateTime('hh:nn:ss',DataSet.FieldByName('REGISTRO').asDateTime)

    end
  Else
    begin
      LabelDataHoraAlteracao.Caption := '';
      LabelDataHora.Caption          := '';
    end

end;

procedure TFormTelaConsultaPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SQLPagamento.State in DsEditModes then
    SQLPagamento.Post;
  SQLPagamento.Close;  
end;

procedure TFormTelaConsultaPagamento.ComboHistPadraoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    begin
      if ((sender as trxdblookupcombo).Value = '')
      or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
        (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
      if (not (SQLPagamento.State in DsEditModes)) and (ComboHistPadrao.Value <> '') then
        begin
          SQLPagamento.Edit;
          SQLPagamentoPAGAA254HISTORICO.AsString := SQLPagamentoPAGAA254HISTORICO.AsString + ComboHistPadrao.Value;
          SQLPagamento.Post;
        end;  
      ComboHistPadrao.Value := '';
      DBMemoHist.SelectAll;
      DBMemoHist.SelStart := DBMemoHist.SelLength + 1; 
    end;
end;

procedure TFormTelaConsultaPagamento.DBMemoHistExit(Sender: TObject);
begin
  if SQLPagamento.State in DsEditModes then
    SQLPagamento.Post;
end;

end.
