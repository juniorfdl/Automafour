unit TelaAssistenteLancamentoContasPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, Buttons, jpeg, ExtCtrls, StdCtrls,
  ComCtrls, Grids, RXGrids, Mask, ToolEdit, CurrEdit, DB, DBTables,
  MemTable, RxLookup, RxQuery, DBCtrls, DBGrids, RxMemDS,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaAssistenteLancamentoContasPagar = class(TFormTelaGeralModalTemplate)
    PanelTopo: TPanel;
    GroupPlanoContas: TGroupBox;
    PageControlPlanoContas: TPageControl;
    TabDebito: TTabSheet;
    Label15: TLabel;
    TabCredito: TTabSheet;
    Label7: TLabel;
    SQLFornecedor: TRxQuery;
    DSSQLFornecedor: TDataSource;
    SQLTipoDocumento: TRxQuery;
    DSSQLTipoDocumento: TDataSource;
    SQLConta: TRxQuery;
    DSSQLConta: TDataSource;
    SQLPortador: TRxQuery;
    DSSQLPortador: TDataSource;
    GroupBox1: TGroupBox;
    ComboEmpresa: TRxDBLookupCombo;
    Label5: TLabel;
    Label6: TLabel;
    ComboFornecedor: TRxDBLookupCombo;
    Label8: TLabel;
    ComboTipoDoc: TRxDBLookupCombo;
    Label9: TLabel;
    ComboPortador: TRxDBLookupCombo;
    SQLEmpresa: TRxQuery;
    DSSQLEmpresa: TDataSource;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60RAZAOSOC: TStringField;
    ComboContaDebito: TRxDBLookupCombo;
    ComboContaCredito: TRxDBLookupCombo;
    GroupBox2: TGroupBox;
    SQLHistoricoPadrao: TRxQuery;
    DSSQLHistoricoPadrao: TDataSource;
    SQLHistoricoPadraoHTPDICOD: TIntegerField;
    SQLHistoricoPadraoHTPDA100HISTORICO: TStringField;
    ComboHistorico: TRxDBLookupCombo;
    Panel4: TPanel;
    lblVencparc: TLabel;
    Label10: TLabel;
    BtnFim: TBitBtn;
    edtVencimento: TDateEdit;
    CheckBox1: TCheckBox;
    edtaVista: TRxCalcEdit;
    DBGrid1: TDBGrid;
    pnlAltera: TPanel;
    Label4: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel3: TPanel;
    Image2: TImage;
    btnOcultar: TBitBtn;
    ALT_EMISSAO: TDateEdit;
    ALT_DESCRICAO: TEdit;
    ALT_VALOR: TRxCalcEdit;
    BtnAltera: TBitBtn;
    BtnIgnora: TBitBtn;
    ALT_VENCIMENTO: TDateEdit;
    pnlDias: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    lblnParc: TLabel;
    ulvct: TLabel;
    ulvalor: TLabel;
    edtdias: TCurrencyEdit;
    edtValor: TCurrencyEdit;
    bntLanca: TBitBtn;
    DataSource1: TDataSource;
    RxTable: TRxMemoryData;
    RxTableEMI: TDateField;
    RxTableVENCI: TDateField;
    RxTableDESCR: TStringField;
    RxTableVALOR: TFloatField;
    Panel1: TPanel;
    Label3: TLabel;
    edtEmissao: TDateEdit;
    Label18: TLabel;
    EditNFNro: TEdit;
    edtDocum: TEdit;
    Label14: TLabel;
    Label1: TLabel;
    edtTotal: TRxCalcEdit;
    Label2: TLabel;
    edtParcelas: TEdit;
    Label19: TLabel;
    DataEdit: TDateEdit;
    edtDescricao: TEdit;
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboHistoricoChange(Sender: TObject);
    procedure edtValorEnter(Sender: TObject);
    procedure bntLancaClick(Sender: TObject);
    procedure ALT_EMISSAOExit(Sender: TObject);
    procedure ALT_VALORExit(Sender: TObject);
    procedure BtnAlteraClick(Sender: TObject);
    procedure BtnIgnoraClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edtParcelasEnter(Sender: TObject);
    procedure edtaVistaExit(Sender: TObject);
    procedure edtVencimentoExit(Sender: TObject);
    procedure CheckBox1Enter(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DataEditEnter(Sender: TObject);
    procedure DataEditExit(Sender: TObject);
    procedure BtnFimClick(Sender: TObject);
    procedure edtdiasEnter(Sender: TObject);
    procedure ComboEmpresaExit(Sender: TObject);
    procedure ComboTipoDocExit(Sender: TObject);
    procedure ComboFornecedorExit(Sender: TObject);
    procedure ComboPortadorExit(Sender: TObject);
    procedure EditNFNroExit(Sender: TObject);
    procedure ComboContaDebitoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function VerificaDescr(xDes:String):String;
  public
    { Public declarations }
  end;

var
  Total : Extended;
  FormTelaAssistenteLancamentoContasPagar: TFormTelaAssistenteLancamentoContasPagar;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormTelaAssistenteLancamentoContasPagar.BtnFecharTelaClick(
  Sender: TObject);
begin
  inherited;
  ModalResult := MrCancel;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.FormCreate(
  Sender: TObject);
begin
  inherited;
  SQLEmpresa.Open;
  SQLFornecedor.Open;
  SQLTipoDocumento.Open;
  SQLPortador.Open;
  SQLConta.Open;
  SQLHistoricoPadrao.Open;
  edtVencimento.Clear;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.ComboHistoricoChange(
  Sender: TObject);
begin
  inherited;
  EdtDescricao.Clear;
  EdtDescricao.Text := ComboHistorico.Text;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.edtValorEnter(
  Sender: TObject);
begin
  inherited;
   edtValor.Value := (EdtTotal.Value - StrToFloat(ulvalor.caption)) / (StrToFloat(edtparcelas.text) - strtoFloat(copy(lblnParc.caption,0, pos('/',lblnParc.caption)-1))+1);
   edtvalor.SelectAll;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.bntLancaClick(
  Sender: TObject);
VAR NewDescr : String;
    parc     : String;
begin
  inherited;
   if edtdias.value < StrToInt(ulvct.caption) then
   begin
      ShowMessage('N° de Dias Deve Ser Maior que Anterior');
      EdtDias.Setfocus;
      Exit;
   end else
      ulvct.Caption := edtdias.Text;

   if edtvalor.value + StrToFloat(ulvalor.caption) > edttotal.Value then
   begin
      ShowMessage('Valor Ultrapassa Total Informado.');
      EdtValor.Setfocus;
      Exit;
   end else
      ulvalor.Caption := FloatToStr(StrToFloat(ulvalor.caption)+edtValor.Value);

   ulvct.caption := edtdias.text;
   parc := copy(lblnParc.caption,0, pos('/',lblnParc.caption)-1);
   parc := IntToStr(StrtoInt(parc));
   Parc := parc + '/'+trim(edtparcelas.text);
   NewDescr := Trim(edtDescricao.text)+' - '+parc;
   RxTable.Append;
   RxTableVENCI.AsDateTime:= Date+edtdias.value;
   RxTableVALOR.value     := edtvalor.Value;
   RxTableDESCR.asstring  := NewDescr;
   RxTableEMI.asDateTime  := StrToDate(edtEmissao.Text);
   RxTable.Post;
   if strtoFloat(copy(lblnParc.caption,0, pos('/',lblnParc.caption)-1)) = StrToFloat(edtParcelas.text) then
   begin
      pnlDias.visible := False;
      BtnFim.Setfocus;
   end else
   begin
      edtdias.clear;
      edtvalor.Clear;
      DataEdit.Clear;
      edtDias.Setfocus;
   end;
   parc := copy(lblnParc.caption,0, pos('/',lblnParc.caption)-1);
   parc := IntToStr(StrtoInt(parc)+1);
   Parc := parc + '/'+trim(edtparcelas.text);
   lblnParc.caption := Parc;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.ALT_EMISSAOExit(
  Sender: TObject);
var i:integer;
    NewDescr : String;
    NewDate  : TDateTime;
    vDay, vMonth, vYear : Word;
    OldValue : Extended;
    nParcelas: Integer;
begin
  inherited;
   try
      i:= 1;
      NewDescr := edtDescricao.text;
      NewDate  := StrToDate(edtVencimento.Text);
      DecodeDate(strtodate(edtVencimento.Text), vYear, vMonth, vDay);

      nParcelas:= StrToInt(edtParcelas.Text);

      if edtaVista.value > 0 then
      begin
         RxTable.Append;
         RxTableVENCI.AsDateTime:= edtemissao.date;
         RxTableVALOR.Asstring  := FormatFloat('0.00;-0.00',edtavista.value);
         RxTableDESCR.asstring  := NewDescr;
         RxTableEMI.asDateTime  := StrToDate(edtEmissao.Text);
         RxTable.Post;
         nParcelas := StrToInt(edtParcelas.Text) - 1;
         NewDescr := VerificaDescr(newdescr);
      end;

      while i <= nParcelas do
      begin
         RxTable.Append;
         if CheckBox1.Checked then
            RxTableVENCI.AsDateTime:= EncodeDate(vYear, vMonth, vDay)
         else
            RxTableVENCI.AsDateTime:= NewDate;

         RxTableVALOR.Asstring  := FormatFloat('0.00;-0.00',(edtTotal.value - edtavista.value) / nParcelas);
         RxTableDESCR.asstring  := NewDescr;
         RxTableEMI.asDateTime  := StrToDate(edtEmissao.Text);
         RxTable.Post;
         inc(i);
         NewDescr := VerificaDescr(newdescr);
         NewDate  := NewDate+30;
         if CheckBox1.Checked then
         begin
            Inc(vMonth,1);
            if vMonth > 12 then
            begin
               vMonth:= vMonth mod 12;
               Inc(vYear,1);
            end;
            if (vMonth = 2) and (vDay > 28) then
               vDay := 28;
          end;
      end;
         // Verifica diferencas de centavos devido as divisoes de valores.
      RxTable.First;
      OldValue := 0;
      While Not RxTable.Eof do
      begin
         OldValue := OldValue + RxTable.FieldByName('Valor').value;
         RxTable.Next;
      end;
      RxTable.Edit;
      RxTable.FieldByName('Valor').value := RxTable.FieldByName('Valor').value + (edttotal.value - OldValue);
      RxTable.Post;
   except on E:Exception do
      begin
         MessageDlg('Ocorreu Um Erro ao Atualizar Tabela de Vencimentos Cfe. Segue: '+
         #13#10+E.message, mtError, [mbOK], 0);
      end;
   end;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.ALT_VALORExit(
  Sender: TObject);
begin
  inherited;
   if Alt_Valor.Value <= 0 then
   begin
      MessageDlg('Valor Inválido', mtWarning, [mbOK], 0);
      Alt_Valor.Setfocus;
      Exit;
   end;
   if StrToFloat(FormatFloat('0.00;-0.00',Alt_Valor.value)) >= StrToFloat(FormatFloat('0.00;-0.00',Total)) then
   begin
      MessageDlg('O Valor da Nova Parcela Deve Ser Menor Que o Total Das Parcelas '+#13+#10+'Abaixo.', mtWarning, [mbOK], 0);
      Alt_Valor.Setfocus;
   end;
   BtnAltera.Enabled:= True;
   BtnAltera.Setfocus;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.BtnAlteraClick(
  Sender: TObject);
var i:integer;
    OldValue:Extended;
    Ponto: TBookmark;
    NewDescr : String;
    NewDate  : TDateTime;
    vDay, vMonth, vYear : Word;
begin
   inherited;
   Ponto    := RxTable.GetBookmark;
   OldValue := RxTable.FieldByName('Valor').Value;
   i        := 0;
   RxTable.Next;
   While not RxTable.Eof do
   begin
      inc(i);
      rxTable.Next;
   end;

   RxTable.GotoBookmark(Ponto);

   DecodeDate(strtodate(Alt_Vencimento.Text), vYear, vMonth, vDay);
   rxTable.Edit;
   RxTable.FieldByName('Descr').asstring   := Alt_Descricao.Text;
   RxTable.FieldByName('Venci').asdatetime :=  EncodeDate(vYear, vMonth, vDay);
   RxTable.FieldByName('Valor').value      := Alt_Valor.Value;
   RxTable.Post;
   RxTable.Next;
   if CheckBox1.Checked then
   begin
      Inc(vMonth,1);
      if vMonth > 12 then
      begin
         vMonth:= vMonth mod 12;
         Inc(vYear,1);
      end;
      if (vMonth = 2) and (vDay > 28) then
         vDay := 28;
    end;

   While Not RxTable.Eof do
   begin
      RxTable.Edit;
      RxTable.FieldByName('Venci').asdatetime :=  EncodeDate(vYear, vMonth, vDay);
      RxTableVALOR.Asstring  := FormatFloat('0.00;-0.00', ( RxTable.FieldByName('Valor').value + ((OldValue - Alt_Valor.Value) / i )));
      RxTable.Post;
      NewDescr := VerificaDescr(newdescr);
      NewDate  := NewDate+30;
      if CheckBox1.Checked then
      begin
         Inc(vMonth,1);
         if vMonth > 12 then
         begin
            vMonth:= vMonth mod 12;
            Inc(vYear,1);
         end;
         if (vMonth = 2) and (vDay > 28) then
            vDay := 28;
       end;
       RxTable.Next;
   end;


   // Verifica diferencas de centavos devido as divisoes de valores.
   RxTable.First;
   OldValue := 0;
   While Not RxTable.Eof do
   begin
      OldValue := OldValue + RxTable.FieldByName('Valor').value;
      RxTable.Next;
   end;
   RxTable.Edit;
   RxTable.FieldByName('Valor').value := RxTable.FieldByName('Valor').value + (edttotal.value - OldValue);
   RxTable.Post;

   RxTable.GotoBookmark(ponto);
   RxTable.FreeBookmark(Ponto);
   PnlAltera.Visible := False;
   DBGrid1.Enabled   := True;
   BtnFim.Enabled    := True;
   DBGrid1.Refresh;
   DBGrid1.Setfocus;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.BtnIgnoraClick(
  Sender: TObject);
begin
  inherited;
   if RxTable.State in ([dsInsert,dsEdit]) then
      RxTable.Cancel;
   pnlAltera.Visible := False;
   DBGrid1.Enabled   := True;
   Btnfim.Enabled := True;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.DBGrid1DblClick(
  Sender: TObject);
var Ponto:TBookMark;
begin
   DBGrid1.Enabled := False;
   BtnFim.Enabled  := False;
   Ponto    := RxTable.GetBookmark;
   Total    := 0;
   While not RxTable.Eof do
   begin
      Total := Total + RxTable.FieldByName('Valor').value;
      RxTable.Next;
   end;
   RxTable.GotoBookmark(Ponto);
   RxTable.FreeBookmark(Ponto);
   alt_emissao.Date     := rxTable.FieldByName('emi').AsDateTime;
   alt_vencimento.date  := rxtable.FieldByName('Venci').asDatetime;
   alt_Descricao.Text   := rxtable.FieldByName('Descr').asstring;
   alt_valor.Value      := rxtable.FieldByName('Valor').value;
   PnlAltera.Visible    := True;
   alt_Valor.SetFocus;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.edtParcelasEnter(
  Sender: TObject);
var i: Integer;
begin
    i:= 1;
    while  i < length(edtDescricao.text) do
    begin
      if edtDescricao.text[i] = '/' then
          if (edtDescricao.text[i+1] in ['0'..'9']) and (edtDescricao.text[i-1] in ['0'..'9']) then
              if (edtDescricao.text[i+3] <> '/') and (edtDescricao.text[i-3] <> '/') then
               edtParcelas.Text := Copy(edtDescricao.text,i+1,2);
      inc(i);
    end;
    CheckBox1.OnEnter(Sender);
end;

procedure TFormTelaAssistenteLancamentoContasPagar.edtaVistaExit(
  Sender: TObject);
begin
  inherited;
   if edtavista.value > edtTotal.value then
   begin
      MessageDlg('O Valor Recebido a Vista '+#13+#10+'Deve Ser Menor  Que o Total da Conta.', mtWarning, [mbOK], 0);
      edtavista.setfocus;
   end;
   if edtavista.value < 0 then
   begin
      MessageDlg('O Valor Recebido a Vista '+#13+#10+'Deve Ser Maior ou Igual a Zero.', mtWarning, [mbOK], 0);
      edtavista.setfocus;
   end;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.edtVencimentoExit(
  Sender: TObject);
var i:integer;
    NewDescr : String;
    NewDate  : TDateTime;
    vDay, vMonth, vYear : Word;
    OldValue : Extended;
    nParcelas: Integer;
begin
   try
      i:= 1;
      NewDescr := edtDescricao.text;
      NewDate  := StrToDate(edtVencimento.Text);
      DecodeDate(strtodate(edtVencimento.Text), vYear, vMonth, vDay);

      nParcelas:= StrToInt(edtParcelas.Text);

      if edtaVista.value > 0 then
      begin
         RxTable.Append;
         RxTableVENCI.AsDateTime:= edtemissao.date;
         RxTableVALOR.Asstring  := FormatFloat('0.00;-0.00',edtavista.value);
         RxTableDESCR.asstring  := NewDescr;
         RxTableEMI.asDateTime  := StrToDate(edtEmissao.Text);
         RxTable.Post;
         nParcelas := StrToInt(edtParcelas.Text) - 1;
         NewDescr := VerificaDescr(newdescr);
      end;

      while i <= nParcelas do
      begin
         RxTable.Append;
         if CheckBox1.Checked then
            RxTableVENCI.AsDateTime:= EncodeDate(vYear, vMonth, vDay)
         else
            RxTableVENCI.AsDateTime:= NewDate;

         RxTableVALOR.Asstring  := FormatFloat('0.00;-0.00',(edtTotal.value - edtavista.value) / nParcelas);
         RxTableDESCR.asstring  := NewDescr;
         RxTableEMI.asDateTime  := StrToDate(edtEmissao.Text);
         RxTable.Post;
         inc(i);
         NewDescr := VerificaDescr(newdescr);
         NewDate  := NewDate+30;
         if CheckBox1.Checked then
         begin
            Inc(vMonth,1);
            if vMonth > 12 then
            begin
               vMonth:= vMonth mod 12;
               Inc(vYear,1);
            end;
            if (vMonth = 2) and (vDay > 28) then
               vDay := 28;
          end;
      end;
         // Verifica diferencas de centavos devido as divisoes de valores.
      RxTable.First;
      OldValue := 0;
      While Not RxTable.Eof do
      begin
         OldValue := OldValue + RxTable.FieldByName('Valor').value;
         RxTable.Next;
      end;
      RxTable.Edit;
      RxTable.FieldByName('Valor').value := RxTable.FieldByName('Valor').value + (edttotal.value - OldValue);
      RxTable.Post;
   except on E:Exception do
      begin
         MessageDlg('Ocorreu Um Erro ao Atualizar Tabela de Vencimentos Cfe. Segue: '+
         #13#10+E.message, mtError, [mbOK], 0);
      end;
   end;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.CheckBox1Enter(
  Sender: TObject);
begin
  inherited;
   RxTable.Close;
   RxTable.Open;
   ulvct.Caption   := '0';
   ulvalor.caption := '0';
end;

procedure TFormTelaAssistenteLancamentoContasPagar.CheckBox1Click(
  Sender: TObject);
begin
  inherited;
   edtVencimento.Enabled := CheckBox1.Checked;
   lblVencparc.enabled        := CheckBox1.Checked;
   if not checkbox1.Checked then
   begin
      pnlDias.Top     := 218;
      pnlDias.left    := 181;
      pnlDias.Visible := not CheckBox1.Checked;
      BtnFim.enabled := not CheckBox1.Checked;
      if edtAvista.Value > 0 then
      begin
         RxTable.Append;
         RxTableVENCI.AsDateTime:= Date+edtdias.value;
         RxTableVALOR.value     := edtaVista.Value;
         RxTableDESCR.asstring  := Trim(edtDescricao.text)+' - à vista';
         RxTableEMI.asDateTime  := StrToDate(edtEmissao.Text);
         RxTable.Post;
         ulvalor.Caption        := FloatToStr(StrToFloat(ulvalor.caption) + edtavista.Value);
         DBGrid1.Refresh;
         lblnParc.Caption:= '2/'+trim(edtparcelas.text);
         edtDias.Setfocus;
      end else
      begin
         lblnParc.Caption:= '1/'+trim(edtparcelas.text);
         edtDias.Setfocus;
      end;
   end else
      pnlDias.Visible := false;
end;

function TFormTelaAssistenteLancamentoContasPagar.VerificaDescr(xDes:String):String;
var i: Integer;
begin
    i:= 1;
    while  i < length(xdes) do
    begin
      if xdes[i] = '/' then
      begin
          if (xdes[i+1] in ['0'..'9']) and (xdes[i-1] in ['0'..'9']) then
          begin
              if (xdes[i+3] <> '/') and (xdes[i-3] <> '/') then
                if xdes[i-1] <> '9' then
                    Inc(xdes[i-1])
                else begin
                    dec(xdes[i-1],9);
                    inc(xdes[i-2])
                end;
          end;
       end;
       inc(i);
    end;
 result := xdes
end;


procedure TFormTelaAssistenteLancamentoContasPagar.DataEditEnter(
  Sender: TObject);
begin
  inherited;
  if edtdias.Value >= 0 then
    begin
      DataEdit.Date := edtEmissao.Date + edtdias.Value;
      if edtdias.Value > 0 then
         edtValor.SetFocus;
    end;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.DataEditExit(
  Sender: TObject);
begin
  inherited;
  if (dataedit.Text <> '  /  /    ') and (edtdias.Value = 0)then
    edtdias.Value := dataedit.Date-edtEmissao.Date;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.BtnFimClick(
  Sender: TObject);
var VlrSoma : Double;
begin
  inherited;
  if edtDocum.Text = '' then  edtDocum.Text := '0';

  if ComboEmpresa.KeyValue = null then
    begin
      ShowMessage('É necessário informar uma empresa');
      ComboEmpresa.SetFocus;
    end;
  if ComboFornecedor.KeyValue = null then
    begin
      ShowMessage('É necessário informar um Fornecedor');
      ComboFornecedor.SetFocus;
    end;
  if ComboTipoDoc.KeyValue = null then
    begin
      ShowMessage('É necessário informar um Tipo de Documento');
      ComboTipoDoc.SetFocus;
    end;
  if ComboPortador.KeyValue = null then
    begin
      ShowMessage('É necessário informar um Portador');
      ComboPortador.SetFocus;
    end;
  if EditNFNro.Text = '' then
    begin
      ShowMessage('É necessário informar o Número da Nota');
      EditNFNro.SetFocus;
    end;
  RxTable.First;
  VlrSoma := 0;
  while not RxTable.Eof do
    begin
      VlrSoma := VlrSoma + RxTableVALOR.Value;
      RxTable.Next;
    end;
  if (VlrSoma >= edtTotal.Value-0.01) and (VlrSoma <= edtTotal.Value+0.01) then
     ModalResult := MrOK
  else
    begin
      ShowMessage('O Valor das parcelas diverge do Valor Total');
      DBGrid1.SetFocus;
    end;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.edtdiasEnter(
  Sender: TObject);
begin
  inherited;
  edtaVista.Value := 0;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.ComboEmpresaExit(
  Sender: TObject);
begin
  inherited;
  if ComboEmpresa.KeyValue = null then
    begin
      ShowMessage('É necessário informar uma empresa');
      ComboEmpresa.SetFocus;
    end;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.ComboTipoDocExit(
  Sender: TObject);
begin
  inherited;
  if ComboTipoDoc.KeyValue = null then
    begin
      ShowMessage('É necessário informar um Tipo de Documento');
      ComboTipoDoc.SetFocus;
    end;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.ComboFornecedorExit(
  Sender: TObject);
begin
  inherited;
  if ComboFornecedor.KeyValue = null then
    begin
      ShowMessage('É necessário informar um Fornecedor');
      ComboFornecedor.SetFocus;
    end;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.ComboPortadorExit(
  Sender: TObject);
begin
  inherited;
  if ComboPortador.KeyValue = null then
    begin
      ShowMessage('É necessário informar um Portador');
      ComboPortador.SetFocus;
    end;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.EditNFNroExit(
  Sender: TObject);
begin
  inherited;
  if EditNFNro.Text = '' then
    begin
      ShowMessage('É necessário informar o Número da Nota');
      EditNFNro.SetFocus;
    end;
end;

procedure TFormTelaAssistenteLancamentoContasPagar.ComboContaDebitoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.
