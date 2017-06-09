unit ConsultaProvedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, ExtCtrls, Mask, EDBNum, ToolEdit,
  CurrEdit;

type
  TFormConsultaProvedor = class(TForm)
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BitBtn2: TBitBtn;
    PanelOpcoes: TPanel;
    RadioOpcoes: TRadioGroup;
    PanelConsultaCheque: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel3: TPanel;
    Label9: TLabel;
    ComboColetor: TDBLookupComboBox;
    EditValorCheque: TCurrencyEdit;
    PanelPagContas: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    EditVlrConta: TCurrencyEdit;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioOpcoesClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaProvedor: TFormConsultaProvedor;

implementation

uses UnitLibrary, CartaoCredito, TelaItens;

{$R *.dfm}

procedure TFormConsultaProvedor.FormDestroy(Sender: TObject);
begin
  Self := nil;
end;

procedure TFormConsultaProvedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormConsultaProvedor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFormConsultaProvedor.RadioOpcoesClick(Sender: TObject);
begin
  PanelConsultaCheque.Visible := RadioOpcoes.ItemIndex = 1;
  PanelPagContas.Visible      := RadioOpcoes.ItemIndex = 2;  
end;

procedure TFormConsultaProvedor.BtnOkClick(Sender: TObject);
begin
  case RadioOpcoes.ItemIndex of
    0 : begin
          TipoOperacao.Administrativa  := True;
          TipoOperacao.ConsultaCheque  := False;
          TipoOperacao.PagamentoContas := False;
        end;
    1 : begin
          if EditValorCheque.Value = 0 then
            begin
              Informa('Informe o valor do cheque para continuar!');
              EditValorCheque.SetFocus;
              BtnOk.ModalResult := MrNone;
              Abort;
            end;
          TipoOperacao.Administrativa  := False;
          TipoOperacao.ConsultaCheque  := True;
          TipoOperacao.ValorOperacao   := EditValorCheque.Value;
          TipoOperacao.PagamentoContas := False;
        end;
    2 : begin
          if EditVlrConta.Value = 0 then
            begin
              Informa('Informe o valor da conta para continuar!');
              EditVlrConta.SetFocus;
              Abort;
            end;
          TipoOperacao.Administrativa  := False;
          TipoOperacao.ConsultaCheque  := False;
          TipoOperacao.PagamentoContas := True;
          TipoOperacao.ValorOperacao   := EditVlrConta.Value;
        end;
  end;
  FormConsultaProvedor.ModalResult := MrOK;
end;

procedure TFormConsultaProvedor.FormActivate(Sender: TObject);
begin
  ComboColetor.SetFocus;
end;

procedure TFormConsultaProvedor.BitBtn2Click(Sender: TObject);
begin
  FormConsultaProvedor.ModalResult := MrCancel;
end;

end.
