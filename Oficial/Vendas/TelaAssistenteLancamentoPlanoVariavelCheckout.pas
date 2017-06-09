unit TelaAssistenteLancamentoPlanoVariavelCheckout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, Buttons, jpeg, ExtCtrls, StdCtrls,
  ComCtrls, Grids, RXGrids, Mask, ToolEdit, CurrEdit, DB, DBTables,
  MemTable, RxLookup, RxQuery, DBCtrls, DBGrids, RxMemDS,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaAssistenteLancamentoPlanoVariavelCheckout = class(TFormTelaGeralModalTemplate)
    PanelTopo: TPanel;
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
    Label19: TLabel;
    DataEdit: TDateEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    edttotal: TRxCalcEdit;
    edtParcelas: TEdit;
    edtDescto: TCurrencyEdit;
    edtAcresc: TCurrencyEdit;
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
    procedure edtDesctoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function VerificaDescr(xDes:String):String;
  public
    { Public declarations }
  end;

var
  Total, ValorBase : Extended;
  FormTelaAssistenteLancamentoPlanoVariavelCheckout: TFormTelaAssistenteLancamentoPlanoVariavelCheckout;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormTelaAssistenteLancamentoPlanoVariavelCheckout.BtnFecharTelaClick(
  Sender: TObject);
begin
  inherited;
  ModalResult := MrCancel;
end;

procedure TFormTelaAssistenteLancamentoPlanoVariavelCheckout.FormCreate(
  Sender: TObject);
begin
  inherited;
  edtVencimento.Clear;
end;

procedure TFormTelaAssistenteLancamentoPlanoVariavelCheckout.edtValorEnter(
  Sender: TObject);
begin
  inherited;
   edtValor.Value := (EdtTotal.Value - StrToFloat(ulvalor.caption)) / (StrToFloat(edtparcelas.text) - strtoFloat(copy(lblnParc.caption,0, pos('/',lblnParc.caption)-1))+1);
   edtvalor.SelectAll;
end;

procedure TFormTelaAssistenteLancamentoPlanoVariavelCheckout.bntLancaClick(
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
   RxTable.Append;
   RxTableVENCI.AsDateTime:= Date+edtdias.value;
   RxTableVALOR.value     := edtvalor.Value;
   RxTableEMI.asDateTime  := Date;
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

procedure TFormTelaAssistenteLancamentoPlanoVariavelCheckout.ALT_EMISSAOExit(
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
      NewDate  := StrToDate(edtVencimento.Text);
      DecodeDate(strtodate(edtVencimento.Text), vYear, vMonth, vDay);

      nParcelas:= StrToInt(edtParcelas.Text);

      if edtaVista.value > 0 then
      begin
         RxTable.Append;
         RxTableVENCI.AsDateTime:= Date;
         RxTableVALOR.Asstring  := FormatFloat('0.00;-0.00',edtavista.value);
         RxTableEMI.asDateTime  := Date;
         RxTable.Post;
         nParcelas := StrToInt(edtParcelas.Text) - 1;
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
         RxTableEMI.asDateTime  := Date;
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

procedure TFormTelaAssistenteLancamentoPlanoVariavelCheckout.ALT_VALORExit(
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

procedure TFormTelaAssistenteLancamentoPlanoVariavelCheckout.BtnAlteraClick(
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

procedure TFormTelaAssistenteLancamentoPlanoVariavelCheckout.BtnIgnoraClick(
  Sender: TObject);
begin
  inherited;
   if RxTable.State in ([dsInsert,dsEdit]) then
      RxTable.Cancel;
   pnlAltera.Visible := False;
   DBGrid1.Enabled   := True;
   Btnfim.Enabled := True;
end;

procedure TFormTelaAssistenteLancamentoPlanoVariavelCheckout.DBGrid1DblClick(
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

procedure TFormTelaAssistenteLancamentoPlanoVariavelCheckout.edtParcelasEnter(
  Sender: TObject);
var i: Integer;
begin
  CheckBox1.OnEnter(Sender);
end;

procedure TFormTelaAssistenteLancamentoPlanoVariavelCheckout.edtaVistaExit(
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

procedure TFormTelaAssistenteLancamentoPlanoVariavelCheckout.edtVencimentoExit(
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
      NewDate  := StrToDate(edtVencimento.Text);
      DecodeDate(strtodate(edtVencimento.Text), vYear, vMonth, vDay);

      nParcelas:= StrToInt(edtParcelas.Text);

      if edtaVista.value > 0 then
      begin
         RxTable.Append;
         RxTableVENCI.AsDateTime:= Date;
         RxTableVALOR.Asstring  := FormatFloat('0.00;-0.00',edtavista.value);
         RxTableEMI.asDateTime  := Date;
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
         RxTableEMI.asDateTime  := Date;
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

procedure TFormTelaAssistenteLancamentoPlanoVariavelCheckout.CheckBox1Enter(
  Sender: TObject);
begin
  inherited;
   RxTable.Close;
   RxTable.Open;
   ulvct.Caption   := '0';
   ulvalor.caption := '0';
end;

procedure TFormTelaAssistenteLancamentoPlanoVariavelCheckout.CheckBox1Click(
  Sender: TObject);
begin
  inherited;
   edtVencimento.Enabled := CheckBox1.Checked;
   lblVencparc.enabled        := CheckBox1.Checked;
   if not checkbox1.Checked then
   begin
      pnlDias.Top     := 45;
      pnlDias.left    := 183;
      pnlDias.Visible := not CheckBox1.Checked;
      BtnFim.enabled := not CheckBox1.Checked;
      if edtAvista.Value > 0 then
      begin
         RxTable.Append;
         RxTableVENCI.AsDateTime:= Date+edtdias.value;
         RxTableVALOR.value     := edtaVista.Value;
         RxTableEMI.asDateTime  := Date;
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

function TFormTelaAssistenteLancamentoPlanoVariavelCheckout.VerificaDescr(xDes:String):String;
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


procedure TFormTelaAssistenteLancamentoPlanoVariavelCheckout.DataEditEnter(
  Sender: TObject);
begin
  inherited;
  if edtdias.Value >= 0 then
    begin
      DataEdit.Date := Date + edtdias.Value;
      if edtdias.Value > 0 then
         edtValor.SetFocus;
    end;
end;

procedure TFormTelaAssistenteLancamentoPlanoVariavelCheckout.DataEditExit(
  Sender: TObject);
begin
  inherited;
  if (dataedit.Text <> '  /  /    ') and (edtdias.Value = 0)then
    edtdias.Value := dataedit.Date-Date;
end;

procedure TFormTelaAssistenteLancamentoPlanoVariavelCheckout.BtnFimClick(
  Sender: TObject);
var VlrSoma : Double;
begin
  inherited;
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

procedure TFormTelaAssistenteLancamentoPlanoVariavelCheckout.edtdiasEnter(
  Sender: TObject);
begin
  inherited;
  edtaVista.Value := 0;
end;

procedure TFormTelaAssistenteLancamentoPlanoVariavelCheckout.edtDesctoExit(
  Sender: TObject);
begin
  inherited;
    edtTotal.Value := ValorBase - (ValorBase * (edtDescto.Value / 100)) + (ValorBase * (edtAcresc.value / 100));
end;

procedure TFormTelaAssistenteLancamentoPlanoVariavelCheckout.FormShow(
  Sender: TObject);
begin
  inherited;
  ValorBase := edtTotal.Value;
end;

end.
