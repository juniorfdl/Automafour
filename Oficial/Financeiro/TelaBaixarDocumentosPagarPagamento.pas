unit TelaBaixarDocumentosPagarPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, CurrEdit, StdCtrls, DBCtrls, Mask,
  ToolEdit, RxLookup, ComCtrls, RXCtrls, RxQuery, DB, DBTables, Menus,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, Buttons, ExtCtrls, IniFiles;

type
  TFormTelaBaixaDocumentosPagarPagamento = class(TFormTelaGeralModalTemplate)
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
    TblContaCorrenteCTCRN2SALDOATUAL: TFloatField;
    TblBanco: TTable;
    TblBancoBANCA5COD: TStringField;
    TblBancoBANCA60NOME: TStringField;
    SQLChequeEmitido: TQuery;
    SQLChequeEmitidoCQEMA13ID: TStringField;
    SQLChequeEmitidoEMPRICOD: TIntegerField;
    SQLChequeEmitidoCQEMICOD: TIntegerField;
    SQLChequeEmitidoCTCRICOD: TIntegerField;
    SQLChequeEmitidoCQEMDEMIS: TDateTimeField;
    SQLChequeEmitidoCQEMDVENC: TDateTimeField;
    SQLChequeEmitidoCQEMN3VLR: TFloatField;
    SQLChequeEmitidoCQEMA60FAVORECIDO: TStringField;
    SQLChequeEmitidoCQEMINROCHEQUE: TIntegerField;
    SQLChequeEmitidoCQEMCCRUZADO: TStringField;
    SQLChequeEmitidoALINICOD: TIntegerField;
    SQLChequeEmitidoREGISTRO: TDateTimeField;
    SQLChequeEmitidoPENDENTE: TStringField;
    SQLChequeEmitidoCQEMA60HIST: TStringField;
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
    DSTblContaCorrente1: TDataSource;
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
    TblAlinea: TTable;
    DSTblAlinea: TDataSource;
    DSSQLPlanoContaCredito: TDataSource;
    SQLPlanoContaCredito: TRxQuery;
    SQLPlanoContaCreditoPLCTA15COD: TStringField;
    SQLPlanoContaCreditoPLCTA60DESCR: TStringField;
    SQLPlanoContaDebito: TRxQuery;
    StringField11: TStringField;
    StringField12: TStringField;
    DSSQLPlanoContaDebito: TDataSource;
    SQLTipoLiquidacao: TRxQuery;
    SQLTipoLiquidacaoTPLQICOD: TIntegerField;
    SQLTipoLiquidacaoTPLQA60DESCR: TStringField;
    DSSQLTipoLiquidacao: TDataSource;
    Buttongerar: TSpeedButton;
    ButtonImprimir: TRxSpeedButton;
    ButtonCancel: TSpeedButton;
    PanelBarra: TPanel;
    ButtonDinheiro: TRxSpeedButton;
    ButtonCheque: TRxSpeedButton;
    ButtonBanco: TRxSpeedButton;
    Panel1: TPanel;
    PagePrincipal: TPageControl;
    Dinheiro: TTabSheet;
    Panel5: TPanel;
    GroupBox6: TGroupBox;
    ComboOperacaoTesouraria: TRxDBLookupCombo;
    GroupBox7: TGroupBox;
    MemoHistTesouraria: TMemo;
    GroupBox8: TGroupBox;
    ComboNumerario: TRxDBLookupCombo;
    GroupBox12: TGroupBox;
    DataMovTesouraria: TDateEdit;
    GroupPlanoContas: TGroupBox;
    PageControl1: TPageControl;
    TabDebito: TTabSheet;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    ComboContaDebitoPrincipal: TRxDBLookupCombo;
    ComboContaDebitoJuros: TRxDBLookupCombo;
    ComboContaDebitoMulta: TRxDBLookupCombo;
    ComboContaDebitoDesconto: TRxDBLookupCombo;
    TabCredito: TTabSheet;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    ComboContaCreditoPrincipal: TRxDBLookupCombo;
    ComboContaCreditoJuros: TRxDBLookupCombo;
    ComboContaCreditoMulta: TRxDBLookupCombo;
    ComboContaCreditoDesconto: TRxDBLookupCombo;
    Cheque: TTabSheet;
    Panel3: TPanel;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    ComboContaCorrente: TRxDBLookupCombo;
    ComboAlinea: TRxDBLookupCombo;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    EditDataVenc: TDateEdit;
    EditFavorecido: TEdit;
    EditObs: TEdit;
    EditNroCheque: TEdit;
    CheckCruzado: TCheckBox;
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
    GroupDataMov: TGroupBox;
    DateEditMovBanco: TDateEdit;
    Panel2: TPanel;
    Label11: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    EditValorTotal: TCurrencyEdit;
    EditVlrJuros: TCurrencyEdit;
    EditVlrDesc: TCurrencyEdit;
    EditVlrMulta: TCurrencyEdit;
    Panel6: TPanel;
    Label28: TLabel;
    ComboTipoLiquidacao: TRxDBLookupCombo;
    procedure GeraCheque;
    procedure AtualizaBotoes(Sender : TObject);
    procedure ButtongerarClick(Sender: TObject);
    procedure PertoChek1Click(Sender: TObject);
    procedure ButtonCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ButtonDinheiroClick(Sender: TObject);
    procedure SQLChequeEmitidoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    FormaPagamento : String;
    Resposta : array [0..255] of char;
    PlanoContas : TIniFile;
  end;

var
  FormTelaBaixaDocumentosPagarPagamento: TFormTelaBaixaDocumentosPagarPagamento;

implementation

uses DataModulo, PertoCheque, UnitLibrary;

{$R *.dfm}

procedure TFormTelaBaixaDocumentosPagarPagamento.ButtongerarClick(
  Sender: TObject);
begin
  inherited;
  if ComboTipoLiquidacao.Value = '' then
    begin
      ShowMessage('Você deve selecionar um tipo de liquidação !');
      ComboTipoLiquidacao.SetFocus;
      Exit;
    end;

  case PagePrincipal.ActivePageIndex of
    0 :begin
         if (DataMovTesouraria.Text = '  /  /    ')then
           begin
             Informa('Você deve informar a data do movimento !');
             Exit;
           end;
         if ComboOperacaoTesouraria.Value = '' then
           begin
           ShowMessage('Você deve selecionar uma operação de tesouraria !');
           ComboOperacaoTesouraria.SetFocus;
           Abort;
           end
         else
           begin
             FormTelaBaixaDocumentosPagarPagamento.ModalResult := mrOk;
             FormaPagamento := 'D';             
           end;
       end;
    1 :begin
         try
           StrToInt(EditNroCheque.Text);
         except
           ShowMessage('O número do cheque dever ser um número inteiro, não pode conter caracteres alfa numéricos !');
           EditNroCheque.SetFocus;
           Abort;
         end;
         if (ComboContaCorrente.Value = '')then
           begin
             Informa('Você deve informar a conta corrente !');
             ComboContaCorrente.SetFocus;
             Exit;
           end;
         if (ComboAlinea.Value = '')then
           begin
             Informa('Você deve informar uma alínea !');
             ComboAlinea.SetFocus;
             Exit;
           end;
         GeraCheque;
         IDChequeEmitido := '';
         IDChequeEmitido := SqlChequeEmitidoCQEMA13ID.AsString;
         FormTelaBaixaDocumentosPagarPagamento.ModalResult := mrOk;
         FormaPagamento := 'C';
       end;
    2 :begin
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
             Informa('Você deve a data do movimento !');
             Exit;
           end;
         FormTelaBaixaDocumentosPagarPagamento.ModalResult := mrOk;
         FormaPagamento := 'B';
       end;
  end;
end;

procedure TFormTelaBaixaDocumentosPagarPagamento.PertoChek1Click(
  Sender: TObject);
var
  DadosCheque : TInfoCheque;
begin
  inherited;
  DadosCheque.Data       := FormatDateTime('dd/mm/yy',dm.DataBaseSistema);
  DadosCheque.Cidade     := SQLLocate('EMPRESA','EMPRICOD','EMPRA60CID',EmpresaPadrao);
  DadosCheque.Favorecido := EditFavorecido.Text;
  DadosCheque.Cruzado    := CheckCruzado.Checked;
  DadosCheque.Valor      := EditValorTotal.Text;
  DadosCheque.BomPara    := EditDataVenc.Text;
  PreencheCheque('LPT1',10,Resposta,DadosCheque);
end;

procedure TFormTelaBaixaDocumentosPagarPagamento.ButtonCancelClick(
  Sender: TObject);
begin
  inherited;
  FormTelaBaixaDocumentosPagarPagamento.ModalResult := MrCancel;
end;

procedure TFormTelaBaixaDocumentosPagarPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
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

procedure TFormTelaBaixaDocumentosPagarPagamento.GeraCheque ;
begin
  if not SQLChequeEmitido.Active then SQLChequeEmitido.Open ;
  SQLChequeEmitido.Append;
  SQLChequeEmitidoCTCRICOD.AsInteger           := StrToInt(ComboContaCorrente.Value);
  SQLChequeEmitidoALINICOD.AsInteger           := StrToInt(ComboAlinea.Value);
  SQLChequeEmitidoCQEMA60FAVORECIDO.AsString   := EditFavorecido.Text;
  SQLChequeEmitidoCQEMA60HIST.AsString         := EditObs.Text;
  SQLChequeEmitidoCQEMDEMIS.AsString           := FormatDateTime('dd/mm/yyyy',dm.DataBaseSistema);
  SQLChequeEmitidoCQEMDVENC.AsDateTime         := EditDataVenc.Date;
  SQLChequeEmitidoCQEMN3VLR.Value              := EditValorTotal.Value;
  SQLChequeEmitidoEMPRICOD.Value               := StrToInt(EmpresaPadrao);
  SQLChequeEmitidoCQEMINROCHEQUE.AsString      := EditNroCheque.Text;
  if CheckCruzado.Checked then
    SQLChequeEmitidoCQEMCCRUZADO.AsString      := 'S'
  else
    SQLChequeEmitidoCQEMCCRUZADO.AsString      := 'N';
  SQLChequeEmitidoPENDENTE.AsString            := 'S';
  SQLChequeEmitidoREGISTRO.AsDateTime          := Now;                      
  SQLChequeEmitido.Post;
end ;

procedure TFormTelaBaixaDocumentosPagarPagamento.FormCreate(
  Sender: TObject);
begin
  inherited;
  PagePrincipal.TabHeight  :=1;
  PagePrincipal.TabWidth   :=1;
  ButtonBanco.Click;
  PageControl1.ActivePage  := TabDebito;
  if not SQLOperacaoBanco.Active then SQLOperacaoBanco.Open;
  if not TblContaCorrente.Active then TblContaCorrente.Open;
  if not TblContaCorrente1.Active then TblContaCorrente1.Open;
  if not SQLNumerario.Active then SQLNumerario.Open;
  if not SQLOperacaoTesouraria.Active then SQLOperacaoTesouraria.Open;
  if not TblAlinea.Active then TblAlinea.Open;
  if not SQLPlanoContaCredito.Active then SQLPlanoContaCredito.Open;
  if not SQLPlanoContaDebito.Active then SQLPlanoContaDebito.Open;
  if not SQLTipoLiquidacao.Active then SQLTipoLiquidacao.Open; 
  LabelTitulo.Caption := TForm(Sender).Caption;

  PlanoContas := TIniFile.Create(ExtractFilePath(Application.ExeName)+ TForm(Sender).Caption + '.ini');
  ComboContaCreditoPrincipal.Value := PlanoContas.ReadString('COMBOCREDITOPRINCIPAL','ComboCreditoPrincipal_Value','0');
  ComboContaCreditoJuros.Value     := PlanoContas.ReadString('COMBOCREDITOJUROS'    ,'ComboCreditoJuros_Value','0');
  ComboContaCreditoMulta.Value     := PlanoContas.ReadString('COMBOCREDITOMULTA'    ,'ComboCreditoMulta_Value','0');
  ComboContaCreditoDesconto.Value  := PlanoContas.ReadString('COMBOCREDITODESCONTO' ,'ComboCreditoDesconto_Value','0');
  ComboContaDebitoPrincipal.Value  := PlanoContas.ReadString('COMBODebitoPRINCIPAL','ComboDebitoPrincipal_Value','0');
  ComboContaDebitoJuros.Value      := PlanoContas.ReadString('COMBODebitoJUROS'    ,'ComboDebitoJuros_Value','0');
  ComboContaDebitoMulta.Value      := PlanoContas.ReadString('COMBODebitoMULTA'    ,'ComboDebitoMulta_Value','0');
  ComboContaDebitoDesconto.Value   := PlanoContas.ReadString('COMBODebitoDESCONTO' ,'ComboDebitoDesconto_Value','0');
end;

procedure TFormTelaBaixaDocumentosPagarPagamento.ButtonDinheiroClick(
  Sender: TObject);
begin
  inherited;
  if (Sender as TRxSpeedButton).Name = 'ButtonDinheiro' then
    begin
      PagePrincipal.ActivePage := Dinheiro;
      FormaPagamento := 'D';
    end;
  if (Sender as TRxSpeedButton).Name = 'ButtonCheque' then
    begin
      PagePrincipal.ActivePage := Cheque;
      FormaPagamento := 'C';
    end;
  if (Sender as TRxSpeedButton).Name = 'ButtonBanco' then
    begin
      PagePrincipal.ActivePage := Banco;
      FormaPagamento := 'B';
    end;
  AtualizaBotoes(Sender);
end;

procedure TFormTelaBaixaDocumentosPagarPagamento.AtualizaBotoes(Sender : TObject);
var
  I : Integer;
begin
  for I := 0 to PanelBarra.ControlCount-1 do
    if (PanelBarra.Controls[I] is TRxSpeedButton) then
      begin
        (PanelBarra.Controls[I] as TRxSpeedButton).Down       := False ;
        (PanelBarra.Controls[I] as TRxSpeedButton).Font.Color := clWhite ;
        (PanelBarra.Controls[I] as TRxSpeedButton).Repaint ;
      end;

  (Sender as TRxSpeedButton).Down       := True;
  (Sender as TRxSpeedButton).Font.Color := $00FFC4C4 ;
  (Sender as TRxSpeedButton).Repaint ;
end;


procedure TFormTelaBaixaDocumentosPagarPagamento.SQLChequeEmitidoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  Dm.CodigoAutomatico('CHEQUEEMITIDO',Nil,DataSet,2,0);
end;

end.
