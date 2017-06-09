unit TelaCadastroDadosVenda;

interface

uses
  Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ConerBtn, ExtCtrls, Mask, ToolEdit, DBTables, Db,
  RxLookup, RxQuery;

type
  TFormTelaCadastroDadosVenda = class(TForm)
    Shape4: TShape;
    BtnOK: TConerBtn;
    BtnCancelar: TConerBtn;
    Label2: TLabel;
    Cliente: TEdit;
    Label1: TLabel;
    Label7: TLabel;
    ComboTipoVenda: TRxDBLookupCombo;
    SQLTipoVenda: TRxQuery;
    DSSQLTipoVenda: TDataSource;
    DataEntrega: TDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Nome: TEdit;
    Endereco: TEdit;
    Bairro: TEdit;
    Cidade: TEdit;
    Estado: TEdit;
    Label13: TLabel;
    Hora1: TMaskEdit;
    Hora2: TMaskEdit;
    Label8: TLabel;
    Fone: TEdit;
    Label9: TLabel;
    Mensagem: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaCadastroDadosVenda: TFormTelaCadastroDadosVenda;

implementation

uses DataModulo, UnitLibrary, TelaItens, TelaFechamentoVenda,
  UnitCheckoutLibrary;

{$R *.DFM}

procedure TFormTelaCadastroDadosVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaCadastroDadosVenda.BtnOKClick(Sender: TObject);
Var CdCli, CodCli : string ;
begin
  if ComboTipoVenda.Text <> '' then
    TipoVenda := ComboTipoVenda.KeyValue ;
  DataEntregaVenda   := DataEntrega.Text + '  ' + Hora1.Text + '  ' + Hora2.Text ;

  NomeClienteRec     := Nome.Text ;
  EnderecoClienteRec := Endereco.Text ;
  BairroCLienteRec   := Bairro.Text ;
  CidadeClienteRec   := Cidade.Text ;
  EstadoClienteRec   := Estado.Text ;
  FoneClienteRec     := Fone.Text ;
  MensagemVenda      := Mensagem.Text ;

  Close ;
end;

procedure TFormTelaCadastroDadosVenda.BtnCancelarClick(Sender: TObject) ;
begin
  Close ;
end ;

procedure TFormTelaCadastroDadosVenda.FormActivate(Sender: TObject);
begin
  Cliente.Text := FormTelaFechamentoVenda.LblCodigoCliente.Caption + ' ' +
                  FormTelaFechamentoVenda.LblNomeCliente.Caption ;
end;

procedure TFormTelaCadastroDadosVenda.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_Return then
    Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFormTelaCadastroDadosVenda.FormCreate(Sender: TObject);
begin
  DataEntrega.Date := Date ;
  SQLTipoVenda.Open ;
end;

end.
