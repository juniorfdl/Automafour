unit UnLancaConta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CurrEdit, RXDBCtrl, ToolEdit, StdCtrls, Mask, DBCtrls, Buttons, RXCtrls, ExtCtrls, Grids, DBGrids, db, ComCtrls, RxGrdCpt,
  RxMemDS, RxLookup, DBTables, RxQuery;

type
  TFrmRec_LancaConta = class(TForm)
    StatusBar1: TStatusBar;
    RxGradientCaption1: TRxGradientCaption;
    RxTable: TRxMemoryData;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    RxTableEMI: TDateField;
    RxTableVENCI: TDateField;
    RxTableDESCR: TStringField;
    RxTableVALOR: TFloatField;
    RxTableDOCUM: TIntegerField;
    Panel4: TPanel;
    Label3: TLabel;
    lblVencparc: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    edtDocum: TEdit;
    BtnFim: TBitBtn;
    edtParcelas: TEdit;
    edtVencimento: TDateEdit;
    edtEmissao: TDateEdit;
    edtTotal: TRxCalcEdit;
    CheckBox1: TCheckBox;
    BitBtn1: TBitBtn;
    edtaVista: TRxCalcEdit;
    pnlAltera: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel3: TPanel;
    Image1: TImage;
    btnOcultar: TBitBtn;
    ALT_EMISSAO: TDateEdit;
    ALT_DESCRICAO: TEdit;
    ALT_VALOR: TRxCalcEdit;
    BtnAltera: TBitBtn;
    BtnIgnora: TBitBtn;
    ALT_VENCIMENTO: TDateEdit;
    pnlDias: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    lblnParc: TLabel;
    ulvct: TLabel;
    ulvalor: TLabel;
    edtdias: TCurrencyEdit;
    edtValor: TCurrencyEdit;
    bntLanca: TBitBtn;
    procedure BtnFimClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtParcelasEnter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edtVencimentoExit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnOcultarClick(Sender: TObject);
    procedure BtnAlteraClick(Sender: TObject);
    procedure ALT_VALORExit(Sender: TObject);
    procedure edtaVistaExit(Sender: TObject);
    procedure CheckBox1Enter(Sender: TObject);
    procedure edtValorEnter(Sender: TObject);
    procedure bntLancaClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
    function VerificaDescr(xDes:String):String;
  public
    { Public declarations }
     codigodoCliente : Integer;
  end;

var
    Total : Extended;

implementation


{$R *.DFM}


function TFrmRec_LancaConta.VerificaDescr(xDes:String):String;
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


procedure TFrmRec_LancaConta.BtnFimClick(Sender: TObject);
var dataEmi,DataVec, Descr  :String;
    valor  :Extended;
begin
 {  if Dm.IBTrans.InTransaction then
      Dm.IBTrans.CommitRetaining
   else Dm.IBTrans.StartTransaction;

   Dm.IBQReceber.Open;
   RxTable.First;
   While not rxTable.eof do
   begin
      Try
         Dm.IBQReceber.Insert;
         Dm.IBQReceber.FieldByName('cdcli').Value        := CodigoDoCliente;
         Dm.IBQReceber.FieldByName('DATEMI').AsDateTime  := RxTableEMI.AsDateTime;
         Dm.IBQReceber.FieldByName('DATVENCI').AsDateTime:= RxTableVENCI.AsDateTime;
         Dm.IBQReceber.FieldByName('VALOR').Value        := RxTableVALOR.Value;
         Dm.IBQReceber.FieldByName('DESCRICAO').AsString := RxTableDESCR.AsString;
         Dm.IBQReceber.FieldByName('DOCUMENTO').AsString := RxTableDOCUM.AsString;
         Dm.IBQReceber.Post;
         // se existir valor pago a vista lanca a primeira parcela como paga no cixa
         if (edtaVista.Value > 0) and (rxTable.Bof) then
         begin
            if not Dm.IBQPgto.Active then
            begin
               dM.IBQPgto.Prepare;
               Dm.IBQPgto.Open;
            end;
            DM.IBQPgto.insert;
            Dm.IBQPgto.FieldByName('codigo').Value := Dm.IBQReceber.FieldByName('codigo').value;
            Dm.IBQPgto.FieldByName('juros').value  := 0;
            Dm.IBQPgto.FieldByName('Descto').value := 0;
            Dm.IBQpgto.FieldByName('Datpgto').asdateTime := RxTableVENCI.AsDateTime;
            Dm.IBQpgto.FieldByName('valorpago').value:= RxTableValor.Value;
            Dm.IBQpgto.post;

            // efetua o lancamento do valor no caixa
            FrLcx := TFrmCxa_Lanca.Create(Self);
            if not Dm.IBCxPro.Active then
                Dm.IBCxPro.Open;
            Dm.IBCxpro.Insert;
            Dm.IbCxPro.FieldByName('DATMOV').asdateTime := RxTableVENCI.AsDateTime;
            Dm.IbCxPro.FieldByName('OPERADOR').asinteger:= Dm.IBDatabase.Tag;
            Dm.IbCxPro.FieldByName('HISTOR').asstring   := Copy(Trim(RxTableDESCR.AsString)+' de '+trim(dm.IBCad.FieldByName('nome').asstring),0,60);
            Dm.IbCxPro.FieldByName('VALOR').AsFloat     := RxTableValor.Value;
         end;
      Except
         Dm.IBTrans.Rollback;
         MessageDlg('Falha ao Gravar Registro de Parcelas...'+#13+#10+'Tente Novamente.', mtWarning, [mbOK], 0);
         ModalResult := mrCancel;
         Exit;
      end;
      rxtable.next;
   end;
   Dm.IBQReceber.Close;
   Dm.IBQReceber.Open;
   if edtavista.value > 0 then
      FrLcx.Showmodal;

   Dm.IBTrans.CommitRetaining;

   ModalResult:= mrOk;

**********
   if MessageDlg('Imprimir Carnês de Cobrança ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
      repeat
         rxTable.First;
         FrmCarnes := TFrmCarnes.Create(Self);
         FrmCarnes.Parcelas := trim(edtParcelas.text);
         FrmCarnes.QuickRep1.Print;
         FrmCarnes.Free;
      until MessageDlg('A Impressão Foi Normal ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes;
   end;
 }

end;

procedure TFrmRec_LancaConta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action:= caFree;
end;

procedure TFrmRec_LancaConta.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 27 then
    close;
end;

procedure TFrmRec_LancaConta.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if DBGrid1.Focused then
      DBGrid1.OnDblClick(DBGrid1)
   else
      If key = #13 then
      begin
          key:= #0;
          Perform(CM_DialogKey,VK_TAB,0);
      end;
end;

procedure TFrmRec_LancaConta.FormCreate(Sender: TObject);
begin
  SQLEmpresa.Open;
  SQLFornecedor.Open;
  SQLTipoDocumento.Open;
  SQLPortador.Open;
  SQLConta.Open;
  SQLHistoricoPadrao.Open;
  edtVencimento.Clear;
end;

procedure TFrmRec_LancaConta.FormResize(Sender: TObject);
begin
   DBGrid1.Columns[0].Width:=  round(DBGrid1.Width * 0.14553);
   DBGrid1.Columns[1].Width:=  round(DBGrid1.Width * 0.14553);
   DBGrid1.Columns[2].Width:=  round(DBGrid1.Width * 0.47401);
   DBGrid1.Columns[3].Width:=  round(DBGrid1.Width * 0.14553);
end;

procedure TFrmRec_LancaConta.FormShow(Sender: TObject);
begin
   EdtEmissao.Date:= Now;
end;

procedure TFrmRec_LancaConta.edtParcelasEnter(Sender: TObject);
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
end;

procedure TFrmRec_LancaConta.BitBtn1Click(Sender: TObject);
begin
   ModalResult := mrCancel;
end;

procedure TFrmRec_LancaConta.edtVencimentoExit(Sender: TObject);
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
         RxTableDOCUM.asstring  := edtDocum.Text;
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
         RxTableDOCUM.asstring  := edtDocum.Text;
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

procedure TFrmRec_LancaConta.DBGrid1DblClick(Sender: TObject);
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
   PnlAltera.Visible := True;
   alt_Valor.SetFocus;
end;

procedure TFrmRec_LancaConta.btnOcultarClick(Sender: TObject);
begin
   if RxTable.State in ([dsInsert,dsEdit]) then
      RxTable.Cancel;
   pnlAltera.Visible := False;
   DBGrid1.Enabled   := True;
   Btnfim.Enabled := True;
end;

procedure TFrmRec_LancaConta.BtnAlteraClick(Sender: TObject);
var i:integer;
    OldValue:Extended;
    Ponto: TBookmark;
    NewDescr : String;
    NewDate  : TDateTime;
    vDay, vMonth, vYear : Word;
begin
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

procedure TFrmRec_LancaConta.ALT_VALORExit(Sender: TObject);
begin
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

procedure TFrmRec_LancaConta.edtaVistaExit(Sender: TObject);
begin
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

procedure TFrmRec_LancaConta.CheckBox1Enter(Sender: TObject);
begin
   RxTable.Close;
   RxTable.Open;
   ulvct.Caption   := '0';
   ulvalor.caption := '0';
end;

procedure TFrmRec_LancaConta.edtValorEnter(Sender: TObject);
begin
   edtValor.Value := (EdtTotal.Value - StrToFloat(ulvalor.caption)) / (StrToFloat(edtparcelas.text) - strtoFloat(copy(lblnParc.caption,0, pos('/',lblnParc.caption)-1))+1);
   edtvalor.SelectAll;
end;

procedure TFrmRec_LancaConta.bntLancaClick(Sender: TObject);
VAR NewDescr : String;
    parc     : String;
begin
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
   parc := IntToStr(StrtoInt(parc) + 1);
   Parc := parc + '/'+trim(edtparcelas.text);
   NewDescr := Trim(edtDescricao.text)+' - '+parc;
   RxTable.Append;
   RxTableVENCI.AsDateTime:= Date+edtdias.value;
   RxTableVALOR.value     := edtvalor.Value;
   RxTableDESCR.asstring  := NewDescr;
   RxTableEMI.asDateTime  := StrToDate(edtEmissao.Text);
   RxTableDOCUM.AsString  := edtDocum.Text;
   RxTable.Post;
   if strtoFloat(copy(lblnParc.caption,0, pos('/',lblnParc.caption)-1)) = StrToFloat(edtParcelas.text) then
   begin
      pnlDias.visible := False;
      BtnFim.Setfocus;
   end else
   begin
      edtdias.clear;
      edtvalor.Clear;
      edtDias.Setfocus;
   end;
   lblnParc.caption := Parc;
end;

procedure TFrmRec_LancaConta.CheckBox1Click(Sender: TObject);
begin
   edtVencimento.Enabled := CheckBox1.Checked;
   lblVencparc.enabled        := CheckBox1.Checked;
   if not checkbox1.Checked then
   begin
      pnlDias.Top     := 235;
      pnlDias.left    := 204;
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

end.
