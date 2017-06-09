unit TelaConsultaContratosCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, jpeg, ExtCtrls, DBCtrls,
  RxQuery, MemTable, RXCtrls, EWall, Buttons, Mask, ToolEdit, CurrEdit;

type
  TFormTelaConsultaContratosCliente = class(TForm)
    LblNomeSistema: TRxLabel;
    RxLabel6: TRxLabel;
    LabelCliente: TEdit;
    GroupBox2: TGroupBox;
    Panel3: TPanel;
    DBGridLista: TDBGrid;
    Panel1: TPanel;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    BtnOk: TBitBtn;
    ValorPagar: TCurrencyEdit;
    BitBtn2: TBitBtn;
    ValorDevido: TCurrencyEdit;
    ValorSaldo: TCurrencyEdit;
    BtnCancelar: TBitBtn;
    EditSel: TCurrencyEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridListaDblClick(Sender: TObject);
    procedure DBGridListaCellClick(Column: TColumn);
    procedure DBGridListaColEnter(Sender: TObject);
    procedure DBGridListaColExit(Sender: TObject);
    procedure DBGridListaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BtnOkClick(Sender: TObject);
    procedure SaveBoolean(Grid : TDBGrid) ;
    procedure BitBtn2Click(Sender: TObject);
  private
    OriginalOptions : TDBGridOptions;
    ValorSel, ValorApurado : Currency;
    { Private declarations }
  public
  IDParcela : String;
  ValorCalculado : Currency;
    { Public declarations }
  end;

var
  FormTelaConsultaContratosCliente: TFormTelaConsultaContratosCliente;

implementation

uses TelaFechamentoVenda, UnitLibrary, TelaRecebimentoCrediario,
  DataModulo, TelaItens {TelaItensCrediario}; //#ver

{$R *.DFM}

procedure TFormTelaConsultaContratosCliente.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
     VK_RETURN: begin key:= 0;
                      Perform(cm_dialogkey,VK_Tab,0);
                end;
     VK_Escape: begin
                  Close ;
                  Key := 0;
                end;
     VK_F1:begin
               // Itens do Crediário
               //Application.CreateForm(TFormTelaItensCrediario,FormTelaItensCrediario);
               //FormTelaItensCrediario.ShowModal;  #ver
           end ;
     VK_F2:begin
           end ;
     VK_F3:begin
           end ;
     VK_F4:begin
           end ;
     VK_F5:begin
           end ;
     VK_F6:begin
           end ;
     VK_F7:begin
           end ;
     VK_F8:begin
           end ;
     VK_F9:begin
           end ;
    VK_F10:begin
           end ;
    VK_F11:begin
           end ;
    VK_F12:begin
           end ;
  else
    begin
      if ssAlt in Shift then
        case Upcase(Char(Key)) of
          'A':begin //ALTERAR JUROS
              end ;
        end ;
      if ssCtrl in Shift then
        case Upcase(Char(Key)) of
          'S':begin
                Close ;
              end ;
        end ;
    end ;
  end ;
end;

procedure TFormTelaConsultaContratosCliente.FormCreate(Sender: TObject);
begin

  Top    := FormTelaItens.Top ;
  Left   := FormTelaItens.Left ;
  Height := FormTelaItens.Height ;
  Width  := FormTelaItens.Width ;

  if DBGridLista.DataSource = nil then
    DBGridLista.DataSource := DM.DSMemCtRecParc;

end;

procedure TFormTelaConsultaContratosCliente.FormActivate(Sender: TObject);
var
  NomeCliente : String;
begin
  if ClienteRecto <> '' then
    begin
      try
        NomeCliente := SQLLocate('CLIENTE','CLIEA13ID','CLIEA60RAZAOSOC','"' + ClienteRecto + '"');
        LabelCliente.Text := ClienteRecto +'-'+NomeCliente;
      except
        LabelCliente.Text := 'Cliente Não Encontrado!';
      end;
      LabelCliente.Update;
    end;
  try
    ValorDevido.Value := FormTelaRecebimentoCrediario.TotalCliente;
    ValorDevido.Update;
  except
  end;
end;

procedure TFormTelaConsultaContratosCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    FormTelaRecebimentoCrediario.SQLParcelasReceberTemp.Close ;
    FormTelaRecebimentoCrediario.SQLParcelasReceberTemp.Open ;
  except
  end;
  Action := CaFree;
end;

procedure TFormTelaConsultaContratosCliente.DBGridListaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if ( Key = VK_SPACE ) and ( DBGridLista.SelectedField.DataType = ftBoolean ) then
    SaveBoolean(DBGridLista);
end;

procedure TFormTelaConsultaContratosCliente.DBGridListaDblClick(
  Sender: TObject);
begin
  DBGridListaKeyDown(Sender,Enter,[ssAlt]);
end;

procedure TFormTelaConsultaContratosCliente.DBGridListaCellClick(
  Column: TColumn);
begin
  if DBGridLista.SelectedField.DataType = ftBoolean then
    SaveBoolean(DBGridLista) ;

end;

procedure TFormTelaConsultaContratosCliente.DBGridListaColEnter(
  Sender: TObject);
begin
  if DBGridLista.SelectedField.DataType = ftBoolean then
    begin
      OriginalOptions := DBGridLista.Options ;
      DBGridLista.Options := DBGridLista.Options - [dgEditing] ;
    end ;

end;

procedure TFormTelaConsultaContratosCliente.DBGridListaColExit(
  Sender: TObject);
begin
  if DBGridLista.SelectedField.DataType = ftBoolean then
    DBGridLista.Options := OriginalOptions;

end;

procedure TFormTelaConsultaContratosCliente.DBGridListaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Const
  CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
                                           DFCS_BUTTONCHECK or DFCS_CHECKED);
begin

// alterado pelo judi para dar cor vermelha as contas já vencidas
  if Dm.MemCtRecParcCTRCDVENC.AsDateTime < now then
  begin
     DBGridLista.Canvas.Font.Color:=clRed;
     DBGridLista.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;

  if Column.Field.DataType = ftBoolean then
    begin
      DBGridLista.Canvas.FillRect(Rect);
      DrawFrameControl(DBGridLista.Canvas.Handle,
                       Rect,
                       DFC_BUTTON,
                       CtrlState[Column.Field.AsBoolean]);
    end;
end;

procedure TFormTelaConsultaContratosCliente.BtnOkClick(Sender: TObject);
begin
  if Dm.MemCtRecParc.Locate('Baixar',True,[]) then
    begin
      if DM.MemCtRecParc.State in [DsEdit] then
        DM.MemCtRecParc.Post;

      DM.MemCtRecParc.First;
      while not DM.MemCtRecParc.Eof do
        begin
          if DM.MemCtRecParcBaixar.AsBoolean then
            begin
              FormTelaRecebimentoCrediario.SQLCupom.Close;
              FormTelaRecebimentoCrediario.SQLCupom.SQL.Clear;
              FormTelaRecebimentoCrediario.SQLCupom.SQL.Add('select * from CUPOM');
              FormTelaRecebimentoCrediario.SQLCupom.SQL.Add('where (%MFiltro)');
              FormTelaRecebimentoCrediario.SQLCupom.Open;
              FormTelaRecebimentoCrediario.EstadoRecCred := 'InformandoDocumento';
              FormTelaRecebimentoCrediario.PreparaEstadoRec('InformandoDocumento');
              if DM.MemCtRecParcCUPOA13ID.AsString <> 'Parc. Avulsa' then
                begin
                  FormTelaRecebimentoCrediario.ParcelaAvulsa := False;
                  FormTelaRecebimentoCrediario.EntradaDados.Text := DM.MemCtRecParcCUPOA13ID.AsString;
                end
              else
                begin
                  FormTelaRecebimentoCrediario.ParcelaAvulsa := True;
                  FormTelaRecebimentoCrediario.EntradaDados.Text := DM.MemCtRecParcCTRCA13ID.AsString;
                end;
              FormTelaRecebimentoCrediario.EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
            end;
          DM.MemCtRecParc.Next;
        end;
    end;
end;
procedure TFormTelaConsultaContratosCliente.SaveBoolean(Grid : TDBGrid);
begin
  Grid.SelectedField.Dataset.Edit;
  Grid.SelectedField.AsBoolean := not Grid.SelectedField.AsBoolean;
  Grid.SelectedField.Dataset.Post;

  // Alimentar total selecionado
  if Grid.SelectedField.DataSet.FieldByName('Baixar').AsBoolean then
    ValorSel := ValorSel + Grid.SelectedField.DataSet.FieldByName('CTRCN2VLR').AsFloat
  else
    ValorSel := ValorSel - Grid.SelectedField.DataSet.FieldByName('CTRCN2VLR').AsFloat;

  EditSel.Value := ValorSel;
  EditSel.Update;
  Grid.SelectedField.Dataset.Next;

  //////////////////////////////
end;

procedure TFormTelaConsultaContratosCliente.BitBtn2Click(Sender: TObject);
var
Soma : Currency;
begin
  Dm.MemCtRecParc.First;
  ValorApurado := 0;
  Soma := 0;
  ValorSaldo.Value := 0;
  while not DM.MemCtRecParc.Eof do
    begin
      DM.MemCtRecParc.Edit;
      DM.MemCtRecParcBaixar.AsBoolean := False;
      DM.MemCtRecParc.Post;
      DM.MemCtRecParc.Next;
    end;
  ValorSel := 0;
  DM.MemCtRecParc.First;
  while not DM.MemCtRecParc.Eof do
    begin
      ValorCalculado := Dm.MemCtRecParcCTRCN2VLR.AsFloat;
      Soma := ValorCalculado + ValorApurado;
      if ValorApurado < ValorPagar.Value then
        if Soma <= ValorPagar.Value then
          begin
            ValorApurado := ValorApurado + ValorCalculado;
            Dm.MemCtRecParc.Edit;
            Dm.MemCtRecParcBaixar.AsBoolean := True;
            Dm.MemCtRecParc.Post;
          end
        else
          begin
            if (ValorApurado = 0) and (ValorPagar.Value < ValorCalculado) then
              ValorSaldo.Value      := ValorPagar.Value
            else
              begin
                if (ValorPagar.Value >= ValorApurado) then
                  ValorSaldo.Value  := ValorPagar.Value - ValorApurado;
              end;

            ValorApurado     := ValorApurado + ValorCalculado;
            IDParcela        := Dm.MemCtRecParcCTRCA13ID.AsString;
            Dm.MemCtRecParc.Edit;
            Dm.MemCtRecParcBaixar.AsBoolean := True;
            Dm.MemCtRecParc.Post;
            Break;
          end;
      // Alimentar total selecionado
      if Dm.MemCtRecParc.FieldByName('Baixar').AsBoolean then
        begin
          ValorSel := ValorSel + Dm.MemCtRecParc.FieldByName('CTRCN2VLR').AsFloat;
          EditSel.Value := ValorSel;
          EditSel.Update;
        end;
      Dm.MemCtRecParc.Next;
    end;
  BtnOk.SetFocus;     
end;

end.
