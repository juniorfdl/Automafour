unit TelaBaixaContasReceberAVista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, CurrEdit, StdCtrls, Mask, ToolEdit,
  Buttons, jpeg, ExtCtrls, RxLookup, DB, DBTables, RxQuery, DBCtrls,
  ComCtrls, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaBaixaContasReceberAVista = class(TFormTelaGeralModalTemplate)
    DSSQLTipoLiquidacao: TDataSource;
    SQLTipoLiquidacao: TRxQuery;
    SQLTipoLiquidacaoTPLQICOD: TIntegerField;
    SQLTipoLiquidacaoTPLQA60DESCR: TStringField;
    Panel6: TPanel;
    Label28: TLabel;
    ComboTipoLiquidacao: TRxDBLookupCombo;
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
    SQLOperacaoTesouraria: TQuery;
    SQLOperacaoTesourariaOPTEICOD: TIntegerField;
    SQLOperacaoTesourariaOPTEA60DESCR: TStringField;
    SQLOperacaoTesourariaOPTECDEBCRED: TStringField;
    SQLOperacaoTesourariaPENDENTE: TStringField;
    SQLOperacaoTesourariaREGISTRO: TDateTimeField;
    DSSQLOperacaoTesouraria: TDataSource;
    DSSQLNumerario: TDataSource;
    SQLNumerario: TQuery;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    SQLNumerarioNUMECVISTAPRAZO: TStringField;
    SQLNumerarioNUMECATIVO: TStringField;
    SQLNumerarioNUMEA5TIPO: TStringField;
    SQLNumerarioOPCXICOD: TIntegerField;
    SQLNumerarioPENDENTE: TStringField;
    SQLNumerarioREGISTRO: TDateTimeField;
    DSTblOperacaoBanco: TDataSource;
    SQLOperacaoBanco: TRxQuery;
    SQLOperacaoBancoOPBCICOD: TIntegerField;
    SQLOperacaoBancoOPBCA60DESCR: TStringField;
    SQLOperacaoBancoOPBCCTIPO: TStringField;
    SQLOperacaoBancoOPBCCALTSALDO: TStringField;
    SQLOperacaoBancoPENDENTE: TStringField;
    SQLOperacaoBancoREGISTRO: TDateTimeField;
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
    Label5: TLabel;
    VlrDesconto: TRxCalcEdit;
    VlrMulta: TRxCalcEdit;
    Label2: TLabel;
    VlrJuros: TRxCalcEdit;
    Label10: TLabel;
    Label1: TLabel;
    ValorAteVencimento: TCurrencyEdit;
    Label11: TLabel;
    ValorTotalOperacao: TCurrencyEdit;
    LbID: TLabel;
    LbDoc: TLabel;
    SQLBanco: TQuery;
    SQLBancoBANCA5COD: TStringField;
    SQLBancoBANCA60NOME: TStringField;
    SQLBancoPENDENTE: TStringField;
    SQLBancoREGISTRO: TDateTimeField;
    Buttongerar: TSpeedButton;
    BtnBaixarTesouraria: TSpeedButton;
    BtnBaixarBanco: TSpeedButton;
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
  FormTelaBaixaContasReceberAVista: TFormTelaBaixaContasReceberAVista;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormTelaBaixaContasReceberAVista.ButtongerarClick(
  Sender: TObject);
begin
  ModalResult := MrOk;
  inherited;
end;

procedure TFormTelaBaixaContasReceberAVista.VlrJurosChange(Sender: TObject);
begin
  inherited;
  ValorTotalOperacao.Value := ValorAteVencimento.Value + VlrJuros.Value + VlrMulta.Value - VlrDesconto.Value;
end;

procedure TFormTelaBaixaContasReceberAVista.VlrDescontoExit(Sender: TObject);
begin
  inherited;
  if Pergunta('Sim','Confirma o Recebimento?') then
    Buttongerar.Click;
end;

procedure TFormTelaBaixaContasReceberAVista.FormCreate(Sender: TObject);
begin
  inherited;
  SQLTipoLiquidacao.Open;
  SQLNumerario.Open;
  SQLOperacaoBanco.Open;
  SQLOperacaoTesouraria.Open;
  TblContaCorrente1.Open;
end;

procedure TFormTelaBaixaContasReceberAVista.FormShow(Sender: TObject);
begin
  inherited;
  ComboTipoLiquidacao.SetFocus;
end;

procedure TFormTelaBaixaContasReceberAVista.BtnBaixarTesourariaClick(
  Sender: TObject);
begin
  inherited;
  // GRAVA MOVIMENTO NA TESOURARIA E BAIXA CONTA RECEBER;
  if ComboOperacaoTesouraria.Value = '' then
    begin
      ShowMessage('Você deve selecionar uma operação de tesouraria !');
      ComboOperacaoTesouraria.SetFocus;
      Exit;
    end;
  if ComboNumerario.Value = '' then
    begin
      ShowMessage('Você deve selecionar um numerário !');
      ComboOperacaoTesouraria.SetFocus;
      Exit;
    end;
  if (DataMovTesouraria.Text = '  /  /    ')then
    begin
      Informa('Você deve informar a data do movimento !');
      Exit;
    end;

  LancaMovimentacaoTesouraria(StrToInt(EmpresaPadrao),TerminalAtual,
                              StrToInt(ComboNumerario.Value),
                              StrToInt(ComboOperacaoTesouraria.Value),
                              ValorTotalOperacao.Value,
                              MemoHistTesouraria.Lines.Text,
                              '',LbID.Caption,'','',DataMovTesouraria.Date,LbDoc.Caption,'');

  ModalResult := MrOk;

end;

procedure TFormTelaBaixaContasReceberAVista.BtnBaixarBancoClick(
  Sender: TObject);
begin
   inherited;
   if EditNroChqBanco.Text <> '' then
     begin
       try
         StrToInt(EditNroChqBanco.Text);
       except
         ShowMessage('O número do cheque dever ser um número inteiro, não pode conter caracteres alfa numéricos !');
         EditNroChqBanco.SetFocus;
         Abort;
       end;
     end
   else
     EditNroChqBanco.Text := '0';

   if (ComboContaCorrenteBanco.Value = '')then
     begin
       Informa('Você deve informar a conta corrente !');
       Exit;
     end;
   if ComboOperacaoBanco.Value = '' then
     begin
       Informa('Você deve informar a operação bancária !');
       Exit;
     end
   else
     begin
       if SQLOperacaoBancoOPBCCALTSALDO.AsString <> 'S' then
         begin
           Informa('A operação bancária selecionada não pode alterar o saldo da conta corrente, a operação será cancelada !');
           Exit;
         end;
     end;
   if (DateEditMovBanco.Text = '  /  /    ')then
     begin
       Informa('Você deve informar a data do movimento !');
       Exit;
     end;

   // LANÇA MOVIMENTAÇÃO BANCARIA E ATUALIZA SALDO DA CONTACORRENTE;
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
                          LbID.Caption,
                          '',
                          '',
                          '');

  ModalResult := MrOk;
end;

end.
