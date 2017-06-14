unit TelaBaixarDocumentosReceberRecebimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ToolEdit, RxLookup, ComCtrls, Mask, CurrEdit,
  RXCtrls, Buttons, jpeg, ExtCtrls, RxQuery, DB, DBTables, Menus, RxMemDS,
  MemTable, DBActns, ActnList, RXDBCtrl, EDBNum, CheckLst, IniFiles, Grids,
  DBGrids, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaBaixaDocumentosReceberRecebimento = class(TForm)
    PopupImpressao: TPopupMenu;
    PertoChek1: TMenuItem;
    DSTblContaCorrente: TDataSource;
    TblContaCorrente: TTable;
    TblContaCorrenteCTCRICOD: TIntegerField;
    TblContaCorrenteBANCA5COD: TStringField;
    TblContaCorrenteCTCRA15AGENCIA: TStringField;
    TblContaCorrenteCTCRA15NUMERO: TStringField;
    TblContaCorrenteCTCRA60TITULAR: TStringField;
    TblContaCorrenteCTCRN2LIMITE: TFloatField;
    TblContaCorrenteBancoNome: TStringField;
    SQLOperacaoBanco: TRxQuery;
    SQLOperacaoBancoOPBCICOD: TIntegerField;
    SQLOperacaoBancoOPBCA60DESCR: TStringField;
    SQLOperacaoBancoOPBCCTIPO: TStringField;
    SQLOperacaoBancoOPBCCALTSALDO: TStringField;
    SQLOperacaoBancoPENDENTE: TStringField;
    SQLOperacaoBancoREGISTRO: TDateTimeField;
    DSTblOperacaoBanco: TDataSource;
    ScrollBoxFundo: TScrollBox;
    PanelCentral: TPanel;
    PanelBarra: TPanel;
    ButtonDinheiro: TRxSpeedButton;
    ButtonCheque: TRxSpeedButton;
    ButtonBanco: TRxSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label11: TLabel;
    EditValorTotal: TCurrencyEdit;
    PagePrincipal: TPageControl;
    Dinheiro: TTabSheet;
    Cheque: TTabSheet;
    Panel3: TPanel;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label2: TLabel;
    Label8: TLabel;
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
    TblContaCorrente1: TTable;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    BCDField1: TFloatField;
    StringField5: TStringField;
    DSTblContaCorrente1: TDataSource;
    ComboBanco: TRxDBLookupCombo;
    DSSQLOperacaoTesouraria: TDataSource;
    SQLNumerario: TQuery;
    DSSQLNumerario: TDataSource;
    SQLNumerarioNUMEICOD: TIntegerField;
    SQLNumerarioNUMEA30DESCR: TStringField;
    SQLNumerarioNUMECVISTAPRAZO: TStringField;
    SQLNumerarioNUMECATIVO: TStringField;
    SQLNumerarioNUMEA5TIPO: TStringField;
    SQLNumerarioOPCXICOD: TIntegerField;
    SQLNumerarioPENDENTE: TStringField;
    SQLNumerarioREGISTRO: TDateTimeField;
    SQLOperacaoTesouraria: TQuery;
    SQLOperacaoTesourariaOPTEICOD: TIntegerField;
    SQLOperacaoTesourariaOPTEA60DESCR: TStringField;
    SQLOperacaoTesourariaOPTECDEBCRED: TStringField;
    SQLOperacaoTesourariaPENDENTE: TStringField;
    SQLOperacaoTesourariaREGISTRO: TDateTimeField;
    Panel5: TPanel;
    GroupBox6: TGroupBox;
    ComboOperacaoTesouraria: TRxDBLookupCombo;
    GroupBox7: TGroupBox;
    MemoHistTesouraria: TMemo;
    GroupBox8: TGroupBox;
    ComboNumerario: TRxDBLookupCombo;
    TblAlinea: TTable;
    DSTblAlinea: TDataSource;
    GroupPortador: TGroupBox;
    ComboPortador: TRxDBLookupCombo;
    TblPortador: TTable;
    DSTblPortador: TDataSource;
    GroupBox10: TGroupBox;
    ComboAlinea: TRxDBLookupCombo;
    DSSQLBanco: TDataSource;
    Label6: TLabel;
    SQLBanco: TQuery;
    SQLBancoBANCA5COD: TStringField;
    SQLBancoBANCA60NOME: TStringField;
    SQLBancoPENDENTE: TStringField;
    SQLBancoREGISTRO: TDateTimeField;
    GroupBox11: TGroupBox;
    ComboNumerarioCheque: TRxDBLookupCombo;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    Label1: TLabel;
    SQLNumerarioCheque: TQuery;
    IntegerField2: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    IntegerField3: TIntegerField;
    StringField10: TStringField;
    DateTimeField1: TDateTimeField;
    DSSQLNumerarioCheque: TDataSource;
    TblContaCorrente1CTCRN2SALDOATUAL: TFloatField;
    GroupBox9: TGroupBox;
    Label3: TLabel;
    Label7: TLabel;
    DateEditBomParaBanco: TDateEdit;
    EditNroChqBanco: TEdit;
    GroupDataMov: TGroupBox;
    DateEditMovBanco: TDateEdit;
    GroupBox12: TGroupBox;
    DataMovTesouraria: TDateEdit;
    MemTblChequeRecebido: TMemoryTable;
    Label10: TLabel;
    Label16: TLabel;
    MemTblChequeRecebidoBanco: TStringField;
    MemTblChequeRecebidoAgencia: TStringField;
    MemTblChequeRecebidoContaCorrente: TStringField;
    MemTblChequeRecebidoTitular: TStringField;
    MemTblChequeRecebidoNroCheque: TStringField;
    MemTblChequeRecebidoValor: TFloatField;
    MemTblChequeRecebidoSituacao: TIntegerField;
    MemTblChequeRecebidoPortador: TIntegerField;
    MemTblChequeRecebidoNumerario: TIntegerField;
    Image2: TImage;
    ActionList1: TActionList;
    actAnterior: TDataSetPrior;
    actNovo: TDataSetInsert;
    actAlterar: TDataSetEdit;
    actGravar: TDataSetPost;
    actCancelar: TDataSetCancel;
    actExcluir: TDataSetDelete;
    actProximo: TDataSetNext;
    actLookup: TAction;
    DSMemTblChequeRecebido: TDataSource;
    BtnRegistroAnterior: TSpeedButton;
    BtnProximoRegistro: TSpeedButton;
    Bevel1: TBevel;
    LabelNovo: TSpeedButton;
    LabelAlterar: TSpeedButton;
    LabelGravar: TSpeedButton;
    LabelCancelar: TSpeedButton;
    LabelExcluir: TSpeedButton;
    EditAgencia: TDBEdit;
    EditContaCorrente: TDBEdit;
    EditTitular: TDBEdit;
    EditCpfCgc: TDBEdit;
    MemTblChequeRecebidoCpfCnpj: TStringField;
    EditNroCheque: TDBEdit;
    EditVlrCheque: TEvDBNumEdit;
    LabeVlrRecebido: TLabel;
    MemTblChequeRecebidoDataVencimento: TStringField;
    EditDataVenc: TDateEdit;
    LblVlrRecebido: TLabel;
    SQLPlanoContaCredito: TRxQuery;
    DSSQLPlanoContaCredito: TDataSource;
    SQLPlanoContaCreditoPLCTA15COD: TStringField;
    SQLPlanoContaCreditoPLCTA60DESCR: TStringField;
    SQLPlanoContaDebito: TRxQuery;
    StringField11: TStringField;
    StringField12: TStringField;
    DSSQLPlanoContaDebito: TDataSource;
    Label25: TLabel;
    EditVlrJuros: TCurrencyEdit;
    Label26: TLabel;
    EditVlrDesc: TCurrencyEdit;
    Label27: TLabel;
    EditVlrMulta: TCurrencyEdit;
    SQLTipoLiquidacao: TRxQuery;
    DSSQLTipoLiquidacao: TDataSource;
    SQLTipoLiquidacaoTPLQICOD: TIntegerField;
    SQLTipoLiquidacaoTPLQA60DESCR: TStringField;
    Panel6: TPanel;
    Label28: TLabel;
    ComboTipoLiquidacao: TRxDBLookupCombo;
    PlanoConta: TTabSheet;
    Panel7: TPanel;
    GroupBox13: TGroupBox;
    PageControl: TPageControl;
    TabCredito: TTabSheet;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    ComboContaCreditoPrincipal: TRxDBLookupCombo;
    ComboContaCreditoJuros: TRxDBLookupCombo;
    ComboContaCreditoMulta: TRxDBLookupCombo;
    ComboContaCreditoDesconto: TRxDBLookupCombo;
    TabDebito: TTabSheet;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    ComboContaDebitoPrincipal: TRxDBLookupCombo;
    ComboContaDebitoJuros: TRxDBLookupCombo;
    ComboContaDebitoMulta: TRxDBLookupCombo;
    ComboContaDebitoDesconto: TRxDBLookupCombo;
    ButtonPlanoConta: TRxSpeedButton;
    Label37: TLabel;
    Label17: TLabel;
    EditVlrPrincipal: TCurrencyEdit;
    GroupBox14: TGroupBox;
    EditVlrDespesaBanco: TCurrencyEdit;
    Label18: TLabel;
    ComboOperacaoBancoDespesa: TRxDBLookupCombo;
    Label19: TLabel;
    Label21: TLabel;
    ComboContaDebitoDespesaBco: TRxDBLookupCombo;
    DSSQLOperacaoBancoDebito: TDataSource;
    SQLOperacaoBancoDebito: TRxQuery;
    IntegerField4: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    DateTimeField2: TDateTimeField;
    TabCreditoCliente: TTabSheet;
    TblCreditoCliente: TTable;
    DSTblCreditoCliente: TDataSource;
    TblCreditoClienteValorUtilizado: TFloatField;
    TblCreditoClienteBaixar: TBooleanField;
    Panel8: TPanel;
    GroupBox16: TGroupBox;
    DBGridLista: TDBGrid;
    GroupBox15: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ComboContaCreditoCliente: TRxDBLookupCombo;
    TabSheet2: TTabSheet;
    ComboContaDebitoCliente: TRxDBLookupCombo;
    GroupBox17: TGroupBox;
    SQLSumCreditoCliente: TRxQuery;
    SQLCreditoCliente: TRxQuery;
    SQLSumCreditoClienteSUM: TFloatField;
    EditNomeCliente: TLabeledEdit;
    EditTotCreditos: TCurrencyEdit;
    Label22: TLabel;
    GroupBox18: TGroupBox;
    MemoHistorioCreditoCliente: TMemo;
    ButtonCreditoCliente: TRxSpeedButton;
    BatchMoveCredito: TBatchMove;
    TblCreditoClienteCTRCDEMIS: TDateTimeField;
    TblCreditoClienteSALDO: TFloatField;
    TblCreditoClienteCTRCA30NRODUPLICBANCO: TStringField;
    TblCreditoClientePORTA60DESCR: TStringField;
    TblCreditoClienteTPDCA60DESCR: TStringField;
    SQLCreditoClienteCTRCA13ID: TStringField;
    SQLCreditoClienteCTRCDEMIS: TDateTimeField;
    SQLCreditoClienteSALDO: TFloatField;
    SQLCreditoClienteCTRCA30NRODUPLICBANCO: TStringField;
    SQLCreditoClientePORTA60DESCR: TStringField;
    SQLCreditoClienteTPDCA60DESCR: TStringField;
    TblCreditoClienteCTRCA13ID: TStringField;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ScrollBox1: TScrollBox;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    AdvPanelNavigator: TAdvOfficeStatusBar;
    Buttongerar: TSpeedButton;
    ButtonImprimir: TRxSpeedButton;
    ButtonCancel: TSpeedButton;
    procedure ButtongerarClick(Sender: TObject);
    procedure ButtonDinheiroClick(Sender: TObject);
    procedure ButtonCancelClick(Sender: TObject);
    procedure AtualizaBotoes(Sender : TObject);
    procedure FormCreate(Sender: TObject);
    procedure SQLChequeRecebidoBeforePost(DataSet: TDataSet);
    procedure ComboOperacaoTesourariaKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ControlarActions(DataSource: TDatasource);
    procedure DSMemTblChequeRecebidoStateChange(Sender: TObject);
    procedure MemTblChequeRecebidoBeforePost(DataSet: TDataSet);
    procedure MemTblChequeRecebidoBeforeDelete(DataSet: TDataSet);
    procedure MemTblChequeRecebidoAfterPost(DataSet: TDataSet);
    procedure MemTblChequeRecebidoNewRecord(DataSet: TDataSet);
    procedure DinheiroShow(Sender: TObject);
    procedure ChequeShow(Sender: TObject);
    procedure BancoShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridListaCellClick(Column: TColumn);
    procedure DBGridListaColEnter(Sender: TObject);
    procedure DBGridListaColExit(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SaveBoolean(Grid : TDBGrid) ;
  private
  OriginalOptions : TDBGridOptions;
    { Private declarations }
  public
  FormaPagamento,
  IDCliente,
  Titular,
  CpfCnpj  : String;
  DataVencimento : TDateTime;
  Resposta : array [0..255] of char;
  ValorRecebido,ValorDiferenca, ValorSelCredito : Currency;
  PlanoContas : TIniFile;
    { Public declarations }
  end;
var
  FormTelaBaixaDocumentosReceberRecebimento: TFormTelaBaixaDocumentosReceberRecebimento;

implementation

uses DataModulo, PertoCheque, UnitLibrary, TelaBaixarDocumentosReceber;

{$R *.dfm}

procedure TFormTelaBaixaDocumentosReceberRecebimento.ButtongerarClick(Sender: TObject);
begin
  if ComboTipoLiquidacao.Value = '' then
    begin
      ShowMessage('Você deve selecionar um tipo de liquidação !');
      ComboTipoLiquidacao.SetFocus;
      Exit;
    end;
  case PagePrincipal.ActivePageIndex of
    0 :begin
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

         FormTelaBaixaDocumentosReceberRecebimento.ModalResult := mrOk;
         FormaPagamento := 'D';
       end;
    1 :begin
         if (MemTblChequeRecebido.State = DsBrowse) then
           begin
             if ValorRecebido = EditValorTotal.Value then
               begin
                 FormTelaBaixaDocumentosReceberRecebimento.ModalResult := mrOk;
                 FormaPagamento := 'C';
               end
             else
               begin
                 if ValorRecebido > EditValorTotal.Value then
                   begin
                     if Pergunta('SIM','O valor recebido é maior que o valor total da operação. Deseja lançar a diferença como juros?' + #13 +
                                 'Valor da Operação: R$ ' + FormatFloat('#,##0.00',EditValorTotal.Value) + #13 +
                                 'Valor Recebido: R$ ' + FormatFloat('#,##0.00',ValorRecebido) + #13 +
                                 'Direferença: R$ ' + FormatFloat('#,##0.00',ValorRecebido - EditValorTotal.Value)) then
                       begin
                         FormTelaBaixaDocumentosReceberRecebimento.ModalResult := mrOk;
                         FormaPagamento := 'C';
                         ValorDiferenca := ValorRecebido - EditValorTotal.Value;
                       end;
                   end
                 else
                   begin
                     if ValorRecebido < EditValorTotal.Value then
                       Informa('O valor recebido é menor que o valor total da operação!' + #13 +
                               'Diferença: R$ ' + FormatFloat('#,##0.00',EditValorTotal.Value - ValorRecebido) + #13 +
                               'A operação será cancelada.');
                       Exit;
                   end;
               end;
           end
         else
           begin
             Informa('Confirme a operação em andamento antes de continuar!');
             Exit;
           end;
       end;
    2 :begin
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

         if (ComboOperacaoBancoDespesa.Value <> '') and (EditVlrDespesaBanco.Value <= 0) then
           begin
             Informa('Você deve informar um valor para Despesa!');
             Exit;
           end;

         if (ComboOperacaoBancoDespesa.Value = '') and (EditVlrDespesaBanco.Value > 0) then
           begin
             Informa('Você deve informar uma Operação Bancária para Despesa!');
             Exit;
           end;

         FormTelaBaixaDocumentosReceberRecebimento.ModalResult := mrOk;
         FormaPagamento := 'B';
       end;
    4 :begin
         if ValorSelCredito <= 0 then
           begin
             Informa('Você selecionou a página "Créditos", mas não utilizou nenhum valor de crédito. Verifique!');
             DBGridLista.SetFocus;
             Exit;
           end;
         FormTelaBaixaDocumentosReceberRecebimento.ModalResult := mrOk;  
         FormaPagamento := 'R';
       end;
    else
      Informa('Selecione o Tipo de Recebimento!');
  end;

end;

procedure TFormTelaBaixaDocumentosReceberRecebimento.ButtonDinheiroClick(Sender: TObject);
begin
  if (Sender as TRxSpeedButton).Name = 'ButtonDinheiro' then
    begin
      PagePrincipal.ActivePage := Dinheiro;
      FormaPagamento := 'D';
    end;
  if ((Sender as TRxSpeedButton).Name = 'ButtonCheque') then
    begin
      if (not DM.TemClienteDiferente) then
        begin
          PagePrincipal.ActivePage := Cheque;
          FormaPagamento := 'C';
        end
      else
        begin
          Informa('Você selecionou contas à receber de clientes diferentes, por isso não será possível receber com cheque !');
        end;
    end;
  if (Sender as TRxSpeedButton).Name = 'ButtonBanco' then
    begin
      PagePrincipal.ActivePage := Banco;
      FormaPagamento := 'B';
    end;
  if (Sender as TRxSpeedButton).Name = 'ButtonPlanoConta' then
    PagePrincipal.ActivePage := PlanoConta;

  if (Sender as TRxSpeedButton).Name = 'ButtonCreditoCliente' then
    begin
      if not DM.TemClienteDiferente then
        begin
          FormaPagamento := 'R';
          SQLSumCreditoCliente.Close;
          SQLSumCreditoCliente.MacroByName('MCliente').AsString := 'CLIEA13ID = "' + IDCliente + '"';
          SQLSumCreditoCliente.Open;
          if SQLSumCreditoCliente.FieldByName('SUM').AsFloat >= EditValorTotal.Value then
            begin
              EditTotCreditos.Value := SQLSumCreditoCliente.FieldByName('SUM').AsFloat;
              EditNomeCliente.Text  := SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"' + IDCliente + '"');
              SQLCreditoCliente.Close;
              SQLCreditoCliente.MacroByName('MCliente').AsString := 'CONTASRECEBER.CLIEA13ID = "' + IDCliente + '"';
              SQLCreditoCliente.Open;
              if TblCreditoCliente.Active then
                TblCreditoCliente.Close;
              try
                TblCreditoCliente.DeleteTable;
                TblCreditoCliente.CreateTable;
              except
                TblCreditoCliente.CreateTable;
              end;
              BatchMoveCredito.Execute;
              TblCreditoCliente.Open;
              PagePrincipal.ActivePage := TabCreditoCliente;
              /////
            end
          else
            begin
              Informa('O Valor de crédito do cliente é insuficiente para quitar o valor da operação!');
              Abort;
            end;
        end
      else
        begin
          Informa('Você selecionou contas à receber de clientes diferentes, por isso não será possível receber com Créditos !');
          Abort;
        end;
    end;

  AtualizaBotoes(Sender);
end;
procedure TFormTelaBaixaDocumentosReceberRecebimento.ButtonCancelClick(
  Sender: TObject);
begin
  FormTelaBaixaDocumentosReceberRecebimento.ModalResult := MrCancel;
end;
procedure TFormTelaBaixaDocumentosReceberRecebimento.AtualizaBotoes(Sender : TObject);
var
  I : Integer;
begin
  for I := 0 to PanelBarra.ControlCount-1 do
    if (PanelBarra.Controls[I] is TRxSpeedButton) then
      begin
        (PanelBarra.Controls[I] as TRxSpeedButton).Down       := False ;
        (PanelBarra.Controls[I] as TRxSpeedButton).Font.Color := clNavy ;
        (PanelBarra.Controls[I] as TRxSpeedButton).Repaint ;
      end;

  (Sender as TRxSpeedButton).Down       := True;
  (Sender as TRxSpeedButton).Font.Color := $00FFC4C4 ;
  (Sender as TRxSpeedButton).Repaint ;
end;

procedure TFormTelaBaixaDocumentosReceberRecebimento.FormCreate(
  Sender: TObject);
begin
  PagePrincipal.TabHeight  :=1;
  PagePrincipal.TabWidth   :=1;
  PageControl.ActivePage  := TabCredito;
  ButtonPlanoConta.Click;
  if not SQLOperacaoBanco.Active then SQLOperacaoBanco.Open;
  if not TblContaCorrente.Active then TblContaCorrente.Open;
  if not TblContaCorrente1.Active then TblContaCorrente1.Open;
  if not SQLNumerario.Active then SQLNumerario.Open;
  if not SQLNumerarioCheque.Active then SQLNumerarioCheque.Open;
  if not SQLOperacaoTesouraria.Active then SQLOperacaoTesouraria.Open;
  if not TblAlinea.Active then TblAlinea.Open;
  if not TblPortador.Active then TblPortador.Open;
  if not SQLBanco.Active then SQLBanco.Open;
  if not SQLPlanoContaCredito.Active then SQLPlanoContaCredito.Open;
  if not SQLPlanoContaDebito.Active then SQLPlanoContaDebito.Open;
  if not SQLTipoLiquidacao.Active then SQLTipoLiquidacao.Open;
  if not SQLOperacaoBancoDebito.Active then SQLOperacaoBancoDebito.Open;  
  if DM.TemClienteDiferente then
    ButtonCheque.Enabled := False;
  LabelTitulo.Caption := TForm(Sender).Caption;
  MemTblChequeRecebido.Open;

  PlanoContas := TIniFile.Create(ExtractFilePath(Application.ExeName)+ TForm(Sender).Caption + '.ini');
  ComboContaCreditoPrincipal.Value := PlanoContas.ReadString('COMBOCREDITOPRINCIPAL','ComboCreditoPrincipal_Value','0');
  ComboContaCreditoJuros.Value     := PlanoContas.ReadString('COMBOCREDITOJUROS'    ,'ComboCreditoJuros_Value','0');
  ComboContaCreditoMulta.Value     := PlanoContas.ReadString('COMBOCREDITOMULTA'    ,'ComboCreditoMulta_Value','0');
  ComboContaCreditoDesconto.Value  := PlanoContas.ReadString('COMBOCREDITODESCONTO' ,'ComboCreditoDesconto_Value','0');
  ComboContaDebitoPrincipal.Value  := PlanoContas.ReadString('COMBODebitoPRINCIPAL','ComboDebitoPrincipal_Value','0');
  ComboContaDebitoJuros.Value      := PlanoContas.ReadString('COMBODebitoJUROS'    ,'ComboDebitoJuros_Value','0');
  ComboContaDebitoMulta.Value      := PlanoContas.ReadString('COMBODebitoMULTA'    ,'ComboDebitoMulta_Value','0');
  ComboContaDebitoDesconto.Value   := PlanoContas.ReadString('COMBODebitoDESCONTO' ,'ComboDebitoDesconto_Value','0');

  ButtonBanco.Click;
end;

procedure TFormTelaBaixaDocumentosReceberRecebimento.SQLChequeRecebidoBeforePost(
  DataSet: TDataSet);
begin
  Dm.CodigoAutomatico('CONTASRECEBER',Nil,DataSet,3,0);
end;

procedure TFormTelaBaixaDocumentosReceberRecebimento.ComboOperacaoTesourariaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

procedure TFormTelaBaixaDocumentosReceberRecebimento.FormActivate(
  Sender: TObject);
begin
  ComboTipoLiquidacao.SetFocus;
  if DM.SQLConfigFinanceiro.fieldbyname('ALINICODRECEBER').AsInteger > 0 then
    ComboAlinea.Value := DM.SQLConfigFinanceiro.fieldbyname('ALINICODRECEBER').AsString;
  if DM.SQLConfigFinanceiro.fieldbyname('CGFIA254HISTRECEBE').AsString <> '' then
    begin
      MemoHistorico.Text      := DM.SQLConfigFinanceiro.fieldbyname('CGFIA254HISTRECEBE').AsString;
      MemoHistTesouraria.Text := DM.SQLConfigFinanceiro.fieldbyname('CGFIA254HISTRECEBE').AsString;
    end;
  if DM.SQLConfigFinanceiro.fieldbyname('NUMEICODRECEBER').AsInteger > 0 then
    begin
      ComboNumerario.Value      := DM.SQLConfigFinanceiro.fieldbyname('NUMEICODRECEBER').AsString;
      ComboNumerarioCheque.Value:= DM.SQLConfigFinanceiro.fieldbyname('NUMEICODRECEBER').AsString;
    end;
  if DM.SQLConfigFinanceiro.fieldbyname('OPBCICODRECEBER').AsInteger > 0 then
    ComboOperacaoBanco.Value := DM.SQLConfigFinanceiro.fieldbyname('OPBCICODRECEBER').AsString;
  if DM.SQLConfigFinanceiro.fieldbyname('OPTEICODRECEBER').AsInteger > 0 then
    begin
      ComboOperacaoTesouraria.Value      := DM.SQLConfigFinanceiro.fieldbyname('OPTEICODRECEBER').AsString;
    end;
  if DM.SQLConfigFinanceiro.fieldbyname('PORTICODRECEBER').AsInteger > 0 then
    ComboPortador.Value := DM.SQLConfigFinanceiro.fieldbyname('PORTICODRECEBER').AsString;

end;

procedure TFormTelaBaixaDocumentosReceberRecebimento.FormKeyPress(
  Sender: TObject; var Key: Char);
begin
  if TObject((Sender as TForm).ActiveControl).ClassType <> TMemo then
    if key = char(13) then
      Perform(Wm_NextDlgCtl,0,0);
end;
procedure TFormTelaBaixaDocumentosReceberRecebimento.ControlarActions(DataSource: TDatasource);
begin
  if DataSource.State in DsEditModes then
    begin
      BtnRegistroAnterior.Action := nil;
      BtnRegistroAnterior.Enabled := False;
      BtnProximoRegistro.Action := nil;
      BtnProximoRegistro.Enabled := False;
      LabelNovo.Action := nil;
      LabelNovo.Enabled := False;
      LabelAlterar.Action := nil;
      LabelAlterar.Enabled := False;
      LabelExcluir.Action := nil;
      LabelExcluir.Enabled := False;
    end
   else
   begin
     BtnRegistroAnterior.Action := actAnterior;
     BtnProximoRegistro.Action := actProximo;
     LabelNovo.Action := actNovo;
     LabelAlterar.Action := actAlterar;
     LabelExcluir.Action := actExcluir;
   end;
end;
procedure TFormTelaBaixaDocumentosReceberRecebimento.DSMemTblChequeRecebidoStateChange(
  Sender: TObject);
begin
  ControlarActions(DSMemTblChequeRecebido);
end;

procedure TFormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebidoBeforePost(
  DataSet: TDataSet);
begin
  if (ComboBanco.Value = '')then
    begin
      Informa('Você deve informar o banco !');
      ComboBanco.SetFocus;
      Abort;
    end;
  if (EditAgencia.Text = '')then
    begin
      Informa('Você deve informar a agência !');
      EditAgencia.SetFocus;
      Abort;
    end;
  if (EditContaCorrente.Text = '')then
    begin
      Informa('Você deve informar a conta corrente !');
      EditContaCorrente.SetFocus;
      Abort;
    end;
  try
    StrToInt(EditNroCheque.Text);
  except
    ShowMessage('O número do cheque dever ser um número inteiro, não pode conter caracteres alfa numéricos !');
    EditNroCheque.SetFocus;
    Abort;
  end;
  if not(EditDataVenc.Date  > 0)then
    begin
      Informa('Você deve informar a data de vencimento !');
      EditContaCorrente.SetFocus;
      Abort;
    end;
  if (ComboAlinea.Value = '')then
    begin
      Informa('Você deve informar uma alínea !');
      ComboAlinea.SetFocus;
      Abort;
    end;
  if (ComboPortador.Value = '')then
    begin
      Informa('Você deve informar um portador !');
      ComboPortador.SetFocus;
      Abort;
    end;
  if (ComboNumerarioCheque.Value = '')then
    begin
      Informa('Você deve informar um numerário !');
      ComboNumerarioCheque.SetFocus;
      Abort;
    end;
  if MemTblChequeRecebidoValor.AsFloat <= 0 then
    begin
      Informa('Você deve informar o valor do cheque!');
      Abort;
    end;
  if ValorRecebido >= EditValorTotal.Value then
    begin
      Informa('Valor calculado maior que o valor total da operação!');
      Abort;
    end;
  ValorRecebido := ValorRecebido + MemTblChequeRecebidoValor.AsFloat;
  MemTblChequeRecebidoDataVencimento.AsDateTime := EditDataVenc.Date;
end;

procedure TFormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebidoBeforeDelete(
  DataSet: TDataSet);
begin
  ValorRecebido := ValorRecebido - MemTblChequeRecebidoValor.AsFloat; 
end;

procedure TFormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebidoAfterPost(
  DataSet: TDataSet);
begin
  LblVlrRecebido.Caption := 'Valor Recebido: R$ ' + FormatFloat('#,##0.00',ValorRecebido);
  LblVlrRecebido.Update;
end;

procedure TFormTelaBaixaDocumentosReceberRecebimento.MemTblChequeRecebidoNewRecord(
  DataSet: TDataSet);
begin
  MemTblChequeRecebidoTitular.AsString := Titular;
  MemTblChequeRecebidoCpfCnpj.AsString := CpfCnpj;
  MemTblChequeRecebidoDataVencimento.AsDateTime := DataVencimento;
  if DM.SQLConfigFinanceiro.fieldbyname('ALINICODRECEBER').AsInteger > 0 then
    MemTblChequeRecebidoSituacao.Value := DM.SQLConfigFinanceiro.fieldbyname('ALINICODRECEBER').AsInteger;
  if DM.SQLConfigFinanceiro.fieldbyname('NUMEICODRECEBER').AsInteger > 0 then
    begin
      MemTblChequeRecebidoNumerario.Value:= DM.SQLConfigFinanceiro.fieldbyname('NUMEICODRECEBER').AsInteger;
    end;
  if DM.SQLConfigFinanceiro.fieldbyname('PORTICODRECEBER').AsInteger > 0 then
    MemTblChequeRecebidoPortador.Value := DM.SQLConfigFinanceiro.fieldbyname('PORTICODRECEBER').AsInteger;
  if PagePrincipal.ActivePage = Cheque then
    ComboTipoLiquidacao.SetFocus;  
end;

procedure TFormTelaBaixaDocumentosReceberRecebimento.DinheiroShow(
  Sender: TObject);
begin
  ComboTipoLiquidacao.SetFocus;

end;

procedure TFormTelaBaixaDocumentosReceberRecebimento.ChequeShow(
  Sender: TObject);
begin
  ComboTipoLiquidacao.SetFocus;

end;

procedure TFormTelaBaixaDocumentosReceberRecebimento.BancoShow(
  Sender: TObject);
begin
  ComboTipoLiquidacao.SetFocus;
end;

procedure TFormTelaBaixaDocumentosReceberRecebimento.FormClose(
  Sender: TObject; var Action: TCloseAction);
begin
  try
    PlanoContas := TIniFile.Create(ExtractFilePath(Application.ExeName)+ TForm(Sender).Caption + '.ini');
    PlanoContas.WriteString('COMBOCREDITOPRINCIPAL','ComboCreditoPrincipal_Value',ComboContaCreditoPrincipal.Value);
    PlanoContas.WriteString('COMBOCREDITOJUROS'    ,'ComboCreditoJuros_Value',ComboContaCreditoJuros.Value);
    PlanoContas.WriteString('COMBOCREDITOMULTA'    ,'ComboCreditoMulta_Value',ComboContaCreditoMulta.Value);
    PlanoContas.WriteString('COMBOCREDITODESCONTO' ,'ComboCreditoDesconto_Value',ComboContaCreditoDesconto.Value);
    PlanoContas.WriteString('COMBODebitoPRINCIPAL','ComboDebitoPrincipal_Value',ComboContaDebitoPrincipal.Value);
    PlanoContas.WriteString('COMBODebitoJUROS'    ,'ComboDebitoJuros_Value',ComboContaDebitoJuros.Value);
    PlanoContas.WriteString('COMBODebitoMULTA'    ,'ComboDebitoMulta_Value',ComboContaDebitoMulta.Value);
    PlanoContas.WriteString('COMBODebitoDESCONTO' ,'ComboDebitoDesconto_Value',ComboContaDebitoDesconto.Value);
  except
    on E:Exception do
      begin                                                      
        Informa('Problemas ao gravar arquivo de inicialização, informe seu Revendedor. ANOTE O ERRO:' + #13 + E.Message);
      end;  
  end;
end;

procedure TFormTelaBaixaDocumentosReceberRecebimento.DBGridListaCellClick(
  Column: TColumn);
begin
  if DBGridLista.SelectedField.DataType = ftBoolean then
    SaveBoolean(DBGridLista) ;

end;

procedure TFormTelaBaixaDocumentosReceberRecebimento.DBGridListaColEnter(
  Sender: TObject);
begin
  if DBGridLista.SelectedField.DataType = ftBoolean then
    begin
      OriginalOptions := DBGridLista.Options ;
      DBGridLista.Options := DBGridLista.Options - [dgEditing] ;
    end ;

end;

procedure TFormTelaBaixaDocumentosReceberRecebimento.DBGridListaColExit(
  Sender: TObject);
begin
  if DBGridLista.SelectedField.DataType = ftBoolean then
    DBGridLista.Options := OriginalOptions;

end;

procedure TFormTelaBaixaDocumentosReceberRecebimento.DBGridListaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Const
  CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
                                           DFCS_BUTTONCHECK or DFCS_CHECKED);
begin
  inherited;
  if Column.Field.DataType = ftBoolean then
    begin
      DBGridLista.Canvas.FillRect(Rect);
      DrawFrameControl(DBGridLista.Canvas.Handle,
                       Rect,
                       DFC_BUTTON,
                       CtrlState[Column.Field.AsBoolean]);
    end;

end;

procedure TFormTelaBaixaDocumentosReceberRecebimento.DBGridListaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if ( Key = VK_SPACE ) and ( DBGridLista.SelectedField.DataType = ftBoolean ) then
    SaveBoolean(DBGridLista);

end;
procedure TFormTelaBaixaDocumentosReceberRecebimento.SaveBoolean(Grid : TDBGrid) ;
begin

  Grid.SelectedField.Dataset.Edit;
  Grid.SelectedField.AsBoolean := not Grid.SelectedField.AsBoolean;
  Grid.SelectedField.Dataset.Post;
  // testes de valores
  if Grid.SelectedField.AsBoolean then
    begin
      if ValorSelCredito >= EditValorTotal.Value then
        begin
          Informa('O Valor da operação já foi contemplado!');
          TblCreditoCliente.Edit;
          TblCreditoClienteBaixar.AsBoolean := False;
          TblCreditoCliente.Post;
          Exit;
        end;

      if (TblCreditoClienteSaldo.AsFloat >= EditValorTotal.Value) and (ValorSelCredito = 0) then
        begin
          TblCreditoCliente.Edit;
          TblCreditoClienteValorUtilizado.AsFloat := EditValorTotal.Value;
          TblCreditoCliente.Post;
        end
      else
        begin
          if TblCreditoClienteSaldo.AsFloat >= abs(ValorSelCredito - EditValorTotal.Value) then
            begin
              TblCreditoCliente.Edit;
              TblCreditoClienteValorUtilizado.AsFloat := abs(ValorSelCredito - EditValorTotal.Value);
              TblCreditoCliente.Post;
            end
          else
            begin
              TblCreditoCliente.Edit;
              TblCreditoClienteValorUtilizado.AsFloat := TblCreditoClienteSALDO.AsFloat;
              TblCreditoCliente.Post;
            end;
        end;
      ValorSelCredito := ValorSelCredito + TblCreditoClienteSaldo.AsFloat;
    end
  else
    begin
      TblCreditoCliente.First;
      while not TblCreditoCliente.Eof do
        begin
          TblCreditoCliente.Edit;
          TblCreditoClienteValorUtilizado.AsFloat := 0;
          TblCreditoClienteBaixar.AsBoolean       := False;
          TblCreditoCliente.Post;
          TblCreditoCliente.Next;
        end;
      ValorSelCredito := 0;
    end;
end ;

end.
