unit TelaDadosCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, RxLookup, Mask, ToolEdit, Grids, DBGrids,
  Buttons, DB, DBTables, MemTable, RxQuery, dblookup, DBCtrls, RXCtrls,
  ConerBtn;

type
  TFormTelaDadosCheque = class(TForm)
    Label1: TLabel;
    Label5: TLabel;
    NomeTitular: TEdit;
    ListaCheques: TDBGrid;
    Label9: TLabel;
    CGCPFChq: TEdit;
    LblNomeSistema: TRxLabel;
    BtnCancelar: TConerBtn;
    BtnOK: TConerBtn;
    Banco: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ListaChequesEnter(Sender: TObject);
    procedure ListaChequesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListaChequesExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BancoExit(Sender: TObject);
    procedure CGCPFChqExit(Sender: TObject);
    procedure NomeTitularExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaDadosCheque: TFormTelaDadosCheque;

implementation

uses TelaFechamentoVenda, DataModulo, UnitLibrary;

Procedure NSCheq_ChangePort(Valor : integer)stdcall; external 'nscheq.dll';
function cmdsSendBank (sBank: LPSTR): integer; stdcall; external 'nscheq.dll';
function cmdsSendCity (sCidade: LPSTR): integer; stdcall; external 'nscheq.dll';
function cmdsSendDate (iZerow : integer; szDay: LPSTR; szMonth: LPSTR; szYear: LPSTR): integer; stdcall; external 'nscheq.dll';
function cmdsSendName (szName: LPSTR): integer; stdcall; external 'nscheq.dll';
function cmdsSendNumCheque (szNCheq: LPSTR): integer; stdcall; external 'nscheq.dll';
function cmdsSendValor (szValor: LPSTR): integer; stdcall; external 'nscheq.dll';
function cmdsSendEndosso (szEndosso: LPSTR): integer; stdcall; external 'nscheq.dll';
function cmdsSendFormFeed : integer; stdcall; external 'nscheq.dll';

{$R *.dfm}

procedure TFormTelaDadosCheque.BitBtn2Click(Sender: TObject);
begin
  ModalResult :=MrCancel;
  Close ;
end;

procedure TFormTelaDadosCheque.BtnOkClick(Sender: TObject);
var
  MotBloq, BancoCHQ, PortaCHQ, CidadeCHQ, FavorecidoCHQ, NumeroCHQ, ValorCHQ : string ;
begin
  if Banco.Text = '' then
    begin
      Informa('O Banco deve ser informado') ;
      Banco.Setfocus ;
      exit ;
    end ;
  if CGCPFChq.Text = '' then
    begin
      Informa('O CPF/CNPJ deve ser informado') ;
      CGCPFChq.Setfocus ;
      exit ;
    end ;
  if NomeTitular.Text = '' then
    begin
      Informa('O Nome do Titular deve ser informado') ;
      NomeTitular.Setfocus ;
      exit ;
    end ;

  if Application.FindComponent('FormTelaFechamentoVenda') <> nil then
    if (FormTelaFechamentoVenda.PercJuroDia > 0) and (dm.TblCheques.RecordCount = 1) then
      begin
        FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Edit;
        FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value := dm.TblChequesValor.Value;
        FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempDATAVENCTO.Value  := dm.TblChequesDataVecto.Value;
        FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Post;
        FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Close;
        FormTelaFechamentoVenda.SQLParcelasPrazoVendaTemp.Open;

        FormTelaFechamentoVenda.VlrTotJuroDia := dm.TblChequesValor.Value - FormTelaFechamentoVenda.VlrTotalOriginal;
        FormTelaFechamentoVenda.LBTotalJuroDia.Value := FormTelaFechamentoVenda.VlrTotJuroDia;
        FormTelaFechamentoVenda.LBTotalJuroDia.Update;

        FormTelaFechamentoVenda.ValorTotalVenda.Value := FormTelaFechamentoVenda.VlrTotalOriginal     +
                                                         FormTelaFechamentoVenda.VlrTotJuroDia        +
                                                         FormTelaFechamentoVenda.VlrTxCrediario.Value -
                                                         (VlrBonusTroca + FormTelaFechamentoVenda.VlrRetConfig_SldCad) ;
        FormTelaFechamentoVenda.ValorTotalVenda.Update;
      end;
  dm.TblCheques.First ;
  while not dm.TblCheques.EOF do
    begin
      Application.ProcessMessages;
      if dm.TblChequesNroCheque.Value = 0 then
        begin
          Informa('O Número do Cheque deve ser informado') ;
          ListaCheques.Setfocus ;
          Exit ;
        end ;

      dm.TblCheques.Edit ;
      dm.TblChequesBANCA5COD.AsString := Banco.Text ;
      dm.TblChequesTITULAR.Value      := NomeTitular.Text ;
      dm.TblChequesCGCCPF.Value       := CGCPFChq.Text ;
      dm.TblChequesPORTICOD.AsString  := DM.SQLConfigFinanceiro.FieldByName('PORTICODRECEBER').AsString;
      dm.TblChequesALINICOD.AsString  := DM.SQLConfigFinanceiro.FieldByName('ALINICODRECEBER').AsString;
      dm.TblCheques.Post;
      if (dm.SQLTerminalAtivo.FieldByName('TERMA30MODIMPCHQ').Value <> '') then
        if Pergunta('Nao','*** Deseja imprimir o cheque Nº-'+ dm.TblChequesNroCheque.AsString+' ***') then
          begin
            if dm.SQLTerminalAtivo.FieldByName('TERMA30MODIMPCHQ').Value = 'SCHALTER_NSC_1' then
              begin
                if dm.SQLTerminalAtivo.FieldByName('TERMA5IMPCHQPORTA').Value = 'COM1' then PortaCHQ := '0';
                if dm.SQLTerminalAtivo.FieldByName('TERMA5IMPCHQPORTA').Value = 'COM2' then PortaCHQ := '1';
                if dm.SQLTerminalAtivo.FieldByName('TERMA5IMPCHQPORTA').Value = 'COM3' then PortaCHQ := '2';
                if dm.SQLTerminalAtivo.FieldByName('TERMA5IMPCHQPORTA').Value = 'COM4' then PortaCHQ := '3';
                if dm.SQLTerminalAtivo.FieldByName('TERMA5IMPCHQPORTA').Value = 'COM5' then PortaCHQ := '4';

                // Alimenta as Variaveis
                BancoCHQ      := Banco.Text;
                CidadeCHQ     := dm.SQLEmpresaEMPRA60CID.AsString;
                FavorecidoCHQ := dm.SQLEmpresaEMPRA60RAZAOSOC.asstring;
                NumeroCHQ     := Preenche(dm.TblChequesNroCheque.AsString,'0',6,0);
                ValorCHQ      := FormatCurr('#,##0.00',dm.TblChequesValor.AsFloat);
                while pos(',',ValorCHQ) > 0 do
                  delete(ValorCHQ,pos(',',ValorCHQ),1);
                while pos('.',ValorCHQ) > 0 do
                  delete(ValorCHQ,pos(',',ValorCHQ),1);
                ValorCHQ := Preenche(ValorCHQ,'0',14,0);

                NSCheq_ChangePort(StrToint(PortaCHQ));           // Abre Porta
                cmdsSendBank(Pchar(BancoCHQ));                   // Cd Banco
                cmdsSendCity(Pchar(CidadeCHQ));                  // Cidade
                cmdsSendDate(0,Pchar(FormatDateTime('dd',Now)),
                               Pchar(FormatDateTime('mm',Now)),
                               Pchar(FormatDateTime('yy',Now))); // Data
                cmdsSendName(Pchar(FavorecidoCHQ));              // Nome do Favorecido
                cmdsSendNumCheque(Pchar(NumeroCHQ));             // Nro Cheque com 6 digitos e zeros a esquerda
                                                                 // Formata o Valor, tirando os pontos e virgulas antes de enviar pra impressora, com 14 digitos e zeros a esquerda
                cmdsSendValor(Pchar(ValorCHQ));                  // Valor
                // cmdsSendEndosso // Dados no verso do cheque
               { if Pergunta('Sim','*** Deseja imprimir cópia de cheque ***') then
                  begin
                    NSCheq_ChangePort(StrToint(PortaCHQ));           // Abre Porta
                    cmdsSendBank(Pchar(BancoCHQ));                   // Cd Banco
                    cmdsSendCity(Pchar(CidadeCHQ));                  // Cidade
                    cmdsSendDate(0,Pchar(FormatDateTime('dd',Now)),
                                   Pchar(FormatDateTime('mm',Now)),
                                   Pchar(FormatDateTime('yy',Now))); // Data
                    cmdsSendName(Pchar(FavorecidoCHQ));              // Nome do Favorecido
                    cmdsSendNumCheque(Pchar(NumeroCHQ));             // Nro Cheque com 6 digitos e zeros a esquerda
                                                                     // Formata o Valor, tirando os pontos e virgulas antes de enviar pra impressora, com 14 digitos e zeros a esquerda
                    cmdsSendValor(Pchar(ValorCHQ));                  // Valor
                  end;}
              end;
          end;
      dm.TblCheques.Next ;
    end ;
  ModalResult :=MrOK;
  Close ;
end;

procedure TFormTelaDadosCheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaDadosCheque.FormCreate(Sender: TObject);
begin
  ListaCheques.DataSource := DM.DSTblCheques;
end;

procedure TFormTelaDadosCheque.ListaChequesEnter(Sender: TObject);
begin
  FormTelaDadosCheque.KeyPreview := false ;
  ListaCheques.SelectedIndex := 0 ;
end;

procedure TFormTelaDadosCheque.ListaChequesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  NumChq, VlrTotJuroDia_Local  : double ;
  BookMrk : TBookMark ;
begin
  if Key = VK_Down then
    Abort;

  if Key = VK_Return then
  begin
    { if dm.TblCheques.EOF then
      begin
        BtnOk.SetFocus ;
        exit ;
      end ;    }

    //ROTINA PARA INCREMENTAR AUTOMATICAMENTE O NRO DOS CHEQUES
    if dm.TblCheques.State in  dsEditModes then
      dm.TblCheques.Post;

    if dm.TblChequesNroCheque.Value < 1 then
      begin
        ShowMessage('É obrigatório preencher o Número do Cheque!');
        Abort;
      end;

    if dm.TblChequesDataVecto.Value < StrToDate(FormatDateTime('dd/mm/yyyy',Now)) then
      begin
        ShowMessage('O Vencto nao pode ser inferior a Data da Emissao!');
        Abort;
      end;

    if ListaCheques.SelectedIndex = 1 then
      begin
        dm.TblCheques.Edit;
        dm.TblChequesDataVecto.Value := Date + dm.TblChequesNroDias.AsVariant;
        if Application.FindComponent('FormTelaFechamentoVenda') <> nil then
          if (FormTelaFechamentoVenda.PercJuroDia > 0) and (dm.TblCheques.RecordCount = 1) then
            begin
              FormTelaFechamentoVenda.Ndias := (dm.TblChequesDataVecto.Value-Date-vCLIEINDIACHQSJURO);
              if FormTelaFechamentoVenda.Ndias < 0 then
                FormTelaFechamentoVenda.Ndias := 0;
              VlrTotJuroDia_Local := (FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value -
                                      FormTelaFechamentoVenda.VlrTotJuroDia) *
                                      FormTelaFechamentoVenda.Ndias *
                                      FormTelaFechamentoVenda.PercJuroDia/100;
              dm.TblChequesValor.Value := (FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value -
                                           FormTelaFechamentoVenda.VlrTotJuroDia) +
                                           VlrTotJuroDia_Local;
            end;
        dm.TblCheques.Post;
      end;
    if ListaCheques.SelectedIndex = 2 then
      begin
        dm.TblCheques.Edit;
        dm.TblChequesNroDias.AsVariant := dm.TblChequesDataVecto.Value - Date;
        if Application.FindComponent('FormTelaFechamentoVenda') <> nil then
          if (FormTelaFechamentoVenda.PercJuroDia > 0) and (dm.TblCheques.RecordCount = 1) then
            begin
              FormTelaFechamentoVenda.Ndias := (dm.TblChequesDataVecto.Value-Date-vCLIEINDIACHQSJURO);
              if FormTelaFechamentoVenda.Ndias < 0 then
                FormTelaFechamentoVenda.Ndias := 0;
              VlrTotJuroDia_Local := (FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value -
                                      FormTelaFechamentoVenda.VlrTotJuroDia) *
                                      FormTelaFechamentoVenda.Ndias *
                                      FormTelaFechamentoVenda.PercJuroDia/100;
              dm.TblChequesValor.Value := (FormTelaFechamentoVenda.SQLParcelasPrazoVendaTempVALORVENCTO.Value -
                                           FormTelaFechamentoVenda.VlrTotJuroDia) +
                                           VlrTotJuroDia_Local;
            end;
        dm.TblCheques.Post;
      end;
    BookMrk := dm.TblCheques.GetBookmark ;
    NumChq  := dm.TblChequesNroCheque.Value ;
    dm.TblCheques.Next ;
    while not dm.TblCheques.EOF do
    begin
      if Date > dm.TblChequesDataVecto.Value then
        ShowMessage('Vencimento do Cheque => '+ FormatDateTime('dd/mm/yyyy',dm.TblChequesDataVecto.Value)+', não pode ser menor que a data da venda!');
      NumChq := NumChq + 1 ;
      dm.TblCheques.Edit ;
      dm.TblChequesNroCheque.Value := NumChq ;
      dm.TblChequesNroDias.AsVariant := dm.TblChequesDataVecto.Value - Date;
      dm.TblCheques.Post ;

      dm.TblCheques.Next ;
    end ;

    dm.TblCheques.GotoBookmark(BookMrk) ;

    dm.TblCheques.Next ;

    if (ListaCheques.SelectedIndex = 2) and (dm.TblCheques.RecordCount = 1) then
      BtnOK.SetFocus;

    ListaCheques.SelectedIndex := ListaCheques.SelectedIndex + 1 ;
  end ;
end;

procedure TFormTelaDadosCheque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_Return : Perform(WM_NextDlgCtl,0,0) ;
  end ;
end;

procedure TFormTelaDadosCheque.ListaChequesExit(Sender: TObject);
begin
  FormTelaDadosCheque.KeyPreview := true ;
end;

procedure TFormTelaDadosCheque.FormActivate(Sender: TObject);
begin
  if (CGCPFChq.Text <> '') and (NomeTitular.Text <> '') then
    Banco.SetFocus;
end;

procedure TFormTelaDadosCheque.BancoExit(Sender: TObject);
begin
  if Banco.Text = '' then
    begin
      ShowMessage('Campo Obrigatório, deve ser preenchido!');
      Banco.SetFocus;
    end;
end;

procedure TFormTelaDadosCheque.CGCPFChqExit(Sender: TObject);
begin
  if CGCPFChq.Text = '' then
    begin
      ShowMessage('Campo Obrigatório, deve ser preenchido!');
      CGCPFChq.SetFocus;
    end;
end;

procedure TFormTelaDadosCheque.NomeTitularExit(Sender: TObject);
begin
  if NomeTitular.Text = '' then
    begin
      ShowMessage('Campo Obrigatório, deve ser preenchido!');
      NomeTitular.SetFocus;
    end;
end;

end.
