unit TelaBaixaContasPagarPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, Menus,
  CurrEdit, RxLookup, DBCtrls, Mask, ToolEdit, ComCtrls, RXCtrls, DB,
  DBTables, RxQuery;

type
  TFormTelaBaixaDocumentosPagarPagamento = class(TFormTelaGeralTEMPLATE)
    ButtonDinheiro: TRxSpeedButton;
    ButtonCheque: TRxSpeedButton;
    ButtonBanco: TRxSpeedButton;
    Buttongerar: TSpeedButton;
    ButtonCancel: TSpeedButton;
    ButtonImprimir: TRxSpeedButton;
    PopupImpressao: TPopupMenu;
    PertoChek1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    PagePrincipal: TPageControl;
    Dinheiro: TTabSheet;
    Cheque: TTabSheet;
    Panel3: TPanel;
    Banco: TTabSheet;
    EditValorTotal: TCurrencyEdit;
    Label11: TLabel;
    DSTblContaCorrente: TDataSource;
    TblContaCorrente: TTable;
    TblContaCorrenteCTCRICOD: TIntegerField;
    TblContaCorrenteBANCA5COD: TStringField;
    TblContaCorrenteCTCRA15AGENCIA: TStringField;
    TblContaCorrenteCTCRA15NUMERO: TStringField;
    TblContaCorrenteCTCRA60TITULAR: TStringField;
    TblContaCorrenteCTCRN2LIMITE: TBCDField;
    TblContaCorrenteBancoNome: TStringField;
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
    SQLChequeEmitidoCQEMN3VLR: TBCDField;
    SQLChequeEmitidoCQEMA60FAVORECIDO: TStringField;
    SQLChequeEmitidoCQEMINROCHEQUE: TIntegerField;
    SQLChequeEmitidoCQEMCCRUZADO: TStringField;
    SQLChequeEmitidoALINICOD: TIntegerField;
    SQLChequeEmitidoREGISTRO: TDateTimeField;
    SQLChequeEmitidoPENDENTE: TStringField;
    SQLChequeEmitidoCQEMA60HIST: TStringField;
    DSTblOperacaoBanco: TDataSource;
    SQLOperacaoBanco: TRxQuery;
    SQLOperacaoBancoOPBCICOD: TIntegerField;
    SQLOperacaoBancoMVBCDLANC: TDateTimeField;
    SQLOperacaoBancoOPBCA60DESCR: TStringField;
    SQLOperacaoBancoOPBCCTIPO: TStringField;
    SQLOperacaoBancoOPBCCALTSALDO: TStringField;
    SQLOperacaoBancoPENDENTE: TStringField;
    SQLOperacaoBancoREGISTRO: TDateTimeField;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label12: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    ComboContaCorrenteBanco: TRxDBLookupCombo;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    GroupBox2: TGroupBox;
    ComboOperacaoBanco: TRxDBLookupCombo;
    CheckAlterSaldo: TDBCheckBox;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    MemoHistorico: TMemo;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    ComboContaCorrente: TRxDBLookupCombo;
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
    procedure ButtonDinheiroClick(Sender: TObject);
    procedure ButtongerarClick(Sender: TObject);
    procedure GeraCheque;
    procedure PertoChek1Click(Sender: TObject);
  private
    { Private declarations }
  public
  FormaPagamento : String;
  Resposta : array [0..255] of char;    
    { Public declarations }
  end;

var
  FormTelaBaixaDocumentosPagarPagamento: TFormTelaBaixaDocumentosPagarPagamento;

implementation

uses DataModulo, PertoCheque, UnitLibrary;

{$R *.dfm}

procedure TFormTelaBaixaDocumentosPagarPagamento.ButtonDinheiroClick(Sender: TObject);
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
end;

procedure TFormTelaBaixaDocumentosPagarPagamento.ButtongerarClick(Sender: TObject);
begin
  inherited;
  case PagePrincipal.ActivePageIndex of
    0 :begin
       end;
    1 :begin
         try
           StrToInt(EditNroCheque.Text);
         except
           ShowMessage('O número do cheque dever ser um número inteiro, não pode conter caracteres alfa numéricos !');
           EditNroCheque.SetFocus;
           Abort;
         end;
         GeraCheque;
         DM.IDChequeEmitido := '';
         DM.IDChequeEmitido := SqlChequeEmitidoCQEMA13ID.AsString;
         FormTelaBaixaDocumentosPagarPagamento.ModalResult := mrOk;
         FormaPagamento := 'C';
       end;
    2 :begin

       end;
  end;
end;
procedure TFormTelaBaixaDocumentosPagarPagamento.GeraCheque ;
begin
  if not SQLChequeEmitido.Active then SQLChequeEmitido.Open ;
  SQLChequeEmitido.Append;
//  SQLChequeEmitidoALINICOD.Value       :=
  SQLChequeEmitidoCQEMA60FAVORECIDO.AsString   := EditFavorecido.Text;
  SQLChequeEmitidoCQEMA60HIST.AsString         := EditObs.Text;
  SQLChequeEmitidoCQEMDEMIS.AsString           := FormatDateTime('dd/mm/yyyy',now);
  SQLChequeEmitidoCQEMDVENC.AsDateTime         := EditDataVenc.Date;
  SQLChequeEmitidoCQEMN3VLR.Value              := EditValorTotal.Value;
  SQLChequeEmitidoEMPRICOD.Value               := EmpresaPadrao;
  SQLChequeEmitidoCQEMINROCHEQUE.AsString      := EditNroCheque.Text;
  SQLChequeEmitido.Post;
end ;

procedure TFormTelaBaixaDocumentosPagarPagamento.PertoChek1Click(
  Sender: TObject);
var
  DadosCheque : TInfoCheque;
begin
  inherited;
  DadosCheque.Data       := FormatDateTime('dd/mm/yy',Now);
  DadosCheque.Cidade     := SQLLocate('EMPRESA','EMPRICOD','EMPRA60CID',EmpresaPadrao);
  DadosCheque.Favorecido := EditFavorecido.Text;
  DadosCheque.Cruzado    := CheckCruzado.Checked;
  DadosCheque.Valor      := EditValorTotal.Text;
  DadosCheque.BomPara    := EditDataVenc.Text;
  PreencheCheque('LPT1',10,Resposta,DadosCheque);
end;

end.
