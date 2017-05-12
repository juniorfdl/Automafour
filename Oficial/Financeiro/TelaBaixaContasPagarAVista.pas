unit TelaBaixaContasPagarAVista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, CurrEdit, StdCtrls, Mask, ToolEdit,
  Buttons, jpeg, ExtCtrls, DB, RxLookup, DBTables, RxQuery, DBCtrls,
  ComCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaBaixaContasPagarAVista = class(TFormTelaGeralModalTemplate)
    SQLBanco: TQuery;
    SQLBancoBANCA5COD: TStringField;
    SQLBancoBANCA60NOME: TStringField;
    SQLBancoPENDENTE: TStringField;
    SQLBancoREGISTRO: TDateTimeField;
    SQLTipoLiquidacao: TRxQuery;
    SQLTipoLiquidacaoTPLQICOD: TIntegerField;
    SQLTipoLiquidacaoTPLQA60DESCR: TStringField;
    DSSQLTipoLiquidacao: TDataSource;
    SQLOperacaoTesouraria: TQuery;
    SQLOperacaoTesourariaOPTEICOD: TIntegerField;
    SQLOperacaoTesourariaOPTEA60DESCR: TStringField;
    SQLOperacaoTesourariaOPTECDEBCRED: TStringField;
    SQLOperacaoTesourariaPENDENTE: TStringField;
    SQLOperacaoTesourariaREGISTRO: TDateTimeField;
    DSSQLOperacaoTesouraria: TDataSource;
    SQLNumerario: TQuery;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    SQLNumerarioNUMECVISTAPRAZO: TStringField;
    SQLNumerarioNUMECATIVO: TStringField;
    SQLNumerarioNUMEA5TIPO: TStringField;
    SQLNumerarioOPCXICOD: TIntegerField;
    SQLNumerarioPENDENTE: TStringField;
    SQLNumerarioREGISTRO: TDateTimeField;
    DSSQLNumerario: TDataSource;
    SQLOperacaoBanco: TRxQuery;
    SQLOperacaoBancoOPBCICOD: TIntegerField;
    SQLOperacaoBancoOPBCA60DESCR: TStringField;
    SQLOperacaoBancoOPBCCTIPO: TStringField;
    SQLOperacaoBancoOPBCCALTSALDO: TStringField;
    SQLOperacaoBancoPENDENTE: TStringField;
    SQLOperacaoBancoREGISTRO: TDateTimeField;
    DSTblOperacaoBanco: TDataSource;
    TblContaCorrente1: TTable;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    BCDField1: TFloatField;
    StringField5: TStringField;
    TblContaCorrente1CTCRN2SALDOATUAL: TFloatField;
    DSTblContaCorrente1: TDataSource;
    Panel6: TPanel;
    Label28: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    Label11: TLabel;
    LbID: TLabel;
    LbDoc: TLabel;
    ComboTipoLiquidacao: TRxDBLookupCombo;
    VlrDesconto: TRxCalcEdit;
    VlrMulta: TRxCalcEdit;
    VlrJuros: TRxCalcEdit;
    ValorAteVencimento: TCurrencyEdit;
    ValorTotalOperacao: TCurrencyEdit;
    PagePrincipal: TPageControl;
    Tesouraria: TTabSheet;
    Panel5: TPanel;
    GroupBox6: TGroupBox;
    ComboOperacaoTesouraria: TRxDBLookupCombo;
    GroupBox7: TGroupBox;
    MemoHistTesouraria: TMemo;
    GroupBox8: TGroupBox;
    ComboNumerario: TRxDBLookupCombo;
    GroupBox12: TGroupBox;
    DataMovTesouraria: TDateEdit;
    Banco: TTabSheet;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label12: TLabel;
    Label4: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit2: TDBEdit;
    ComboContaCorrenteBanco: TRxDBLookupCombo;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    GroupBox2: TGroupBox;
    ComboOperacaoBanco: TRxDBLookupCombo;
    GroupBox3: TGroupBox;
    MemoHistorico: TMemo;
    GroupBox9: TGroupBox;
    DateEditBomParaBanco: TDateEdit;
    EditNroChqBanco: TEdit;
    GroupDataMov: TGroupBox;
    DateEditMovBanco: TDateEdit;
    BtnBaixarBanco: TSpeedButton;
    BtnBaixarTesouraria: TSpeedButton;
    Buttongerar: TSpeedButton;
    procedure ButtongerarClick(Sender: TObject);
    procedure VlrJurosChange(Sender: TObject);
    procedure VlrDescontoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnBaixarTesourariaClick(Sender: TObject);
    procedure BtnBaixarBancoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaBaixaContasPagarAVista: TFormTelaBaixaContasPagarAVista;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormTelaBaixaContasPagarAVista.ButtongerarClick(
  Sender: TObject);
begin
  ModalResult := MrOk;
  inherited;
end;

procedure TFormTelaBaixaContasPagarAVista.VlrJurosChange(Sender: TObject);
begin
  inherited;
  ValorTotalOperacao.Value := ValorAteVencimento.Value + VlrJuros.Value + VlrMulta.Value - VlrDesconto.Value;
end;

procedure TFormTelaBaixaContasPagarAVista.VlrDescontoExit(Sender: TObject);
begin
  inherited;
  if Pergunta('Sim','Confirma o Pagamento?') then
    Buttongerar.Click;
end;

procedure TFormTelaBaixaContasPagarAVista.FormCreate(Sender: TObject);
begin
  inherited;
  SQLTipoLiquidacao.Open;
  SQLNumerario.Open;
  SQLOperacaoBanco.Open;
  SQLOperacaoTesouraria.Open;
  TblContaCorrente1.Open;
end;

procedure TFormTelaBaixaContasPagarAVista.FormShow(Sender: TObject);
begin
  inherited;
  ComboTipoLiquidacao.SetFocus;
end;

procedure TFormTelaBaixaContasPagarAVista.BtnBaixarTesourariaClick(
  Sender: TObject);
begin
  inherited;
  // GRAVA MOVIMENTO NA TESOURARIA E BAIXA CONTA RECEBER;
  if ComboOperacaoTesouraria.Value = '' then
    begin
      ShowMessage('Voc� deve selecionar uma opera��o de tesouraria !');
      ComboOperacaoTesouraria.SetFocus;
      Exit;
    end;
  if ComboNumerario.Value = '' then
    begin
      ShowMessage('Voc� deve selecionar um numer�rio !');
      ComboOperacaoTesouraria.SetFocus;
      Exit;
    end;
  if (DataMovTesouraria.Text = '  /  /    ')then
    begin
      Informa('Voc� deve informar a data do movimento !');
      Exit;
    end;

  LancaMovimentacaoTesouraria(StrToInt(EmpresaPadrao),TerminalAtual,
                              StrToInt(ComboNumerario.Value),
                              StrToInt(ComboOperacaoTesouraria.Value),
                              ValorTotalOperacao.Value,
                              MemoHistTesouraria.Lines.Text,
                              LbID.Caption,'','','',DataMovTesouraria.Date,LbDoc.Caption,'');

  ModalResult := MrOk;
end;

procedure TFormTelaBaixaContasPagarAVista.BtnBaixarBancoClick(
  Sender: TObject);
begin
  inherited;
   if EditNroChqBanco.Text <> '' then
     begin
       try
         StrToInt(EditNroChqBanco.Text);
       except
         ShowMessage('O n�mero do cheque dever ser um n�mero inteiro, n�o pode conter caracteres alfa num�ricos !');
         EditNroChqBanco.SetFocus;
         Abort;
       end;
     end
   else
     EditNroChqBanco.Text := '0';

   if (ComboContaCorrenteBanco.Value = '')then
     begin
       Informa('Voc� deve informar a conta corrente !');
       Exit;
     end;
   if ComboOperacaoBanco.Value = '' then
     begin
       Informa('Voc� deve informar a opera��o banc�ria !');
       Exit;
     end
   else
     begin
       if SQLOperacaoBancoOPBCCALTSALDO.AsString <> 'S' then
         begin
           Informa('A opera��o banc�ria selecionada n�o pode alterar o saldo da conta corrente, a opera��o ser� cancelada !');
           Exit;
         end;
     end;
   if (DateEditMovBanco.Text = '  /  /    ')then
     begin
       Informa('Voc� deve informar a data do movimento !');
       Exit;
     end;

   // LAN�A MOVIMENTA��O BANCARIA E ATUALIZA SALDO DA CONTACORRENTE;
   LancaMovimentacaoBanco(StrToInt(EmpresaPadrao),
                          StrToInt(ComboContaCorrenteBanco.Value),
                          StrToInt(ComboOperacaoBanco.Value),
                          StrToInt(EditNroChqBanco.Text),
                          ValorTotalOperacao.Value,
                          DateEditBomParaBanco.Date,
                          0,
                          DateEditMovBanco.Date,
                          MemoHistorico.Lines.Text,
                          '',
                          '',
                          LbID.Caption,
                          '',
                          '');

  ModalResult := MrOk;
end;

end.
