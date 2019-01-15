unit uConsulta_cnpj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons,
  ACBrBase, ACBrSocket, ACBrConsultaCNPJ, JPEG, Mask,GraphicEx; 


type
  TfrmConsulta_CNPJ = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    EditTipo: TEdit;
    EditRazaoSocial: TEdit;
    EditAbertura: TEdit;
    EditEndereco: TEdit;
    EditNumero: TEdit;
    EditComplemento: TEdit;
    EditBairro: TEdit;
    EditCidade: TEdit;
    EditUF: TEdit;
    EditCEP: TEdit;
    EditSituacao: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    ButBuscar: TBitBtn;
    EditCaptcha: TEdit;
    Label14: TLabel;
    Timer1: TTimer;
    EditFantasia: TEdit;
    Label13: TLabel;
    ACBrConsultaCNPJ1: TACBrConsultaCNPJ;
    EditCNPJ: TMaskEdit;
    Panel3: TPanel;
    Image1: TImage;
    LabAtualizarCaptcha: TLabel;
    ckRemoverEspacosDuplos: TCheckBox;
    ListCNAE2: TListBox;
    Label15: TLabel;
    EditCNAE1: TEdit;
    Label16: TLabel;
    btnCopiarDados: TBitBtn;
    Label17: TLabel;
    EditTelefone: TEdit;
    LabelEmail: TLabel;
    EditEmail: TEdit;
    Label18: TLabel;
    EditIBGE: TEdit;
    procedure LabAtualizarCaptchaClick(Sender: TObject);
    procedure ButBuscarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditCaptchaKeyPress(Sender: TObject; var Key: Char);
    procedure btnCopiarDadosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsulta_CNPJ: TfrmConsulta_CNPJ;

implementation

{$R *.dfm}

procedure TfrmConsulta_CNPJ.ButBuscarClick(Sender: TObject);
var
  I: Integer;
begin
  if EditCaptcha.Text <> '' then
  begin
    if ACBrConsultaCNPJ1.Consulta(
      EditCNPJ.Text,
      EditCaptcha.Text,
      ckRemoverEspacosDuplos.Checked
    ) then
    begin
      EditTipo.Text        := ACBrConsultaCNPJ1.EmpresaTipo;
      EditRazaoSocial.Text := ACBrConsultaCNPJ1.RazaoSocial;
      EditAbertura.Text    := DateToStr( ACBrConsultaCNPJ1.Abertura );
      EditFantasia.Text    := ACBrConsultaCNPJ1.Fantasia;
      EditEndereco.Text    := ACBrConsultaCNPJ1.Endereco;
      EditNumero.Text      := ACBrConsultaCNPJ1.Numero;
      EditComplemento.Text := ACBrConsultaCNPJ1.Complemento;
      EditBairro.Text      := ACBrConsultaCNPJ1.Bairro;
      EditComplemento.Text := ACBrConsultaCNPJ1.Complemento;
      EditCidade.Text      := ACBrConsultaCNPJ1.Cidade;
      EditUF.Text          := ACBrConsultaCNPJ1.UF;
      EditCEP.Text         := ACBrConsultaCNPJ1.CEP;
      EditSituacao.Text    := ACBrConsultaCNPJ1.Situacao;
      EditCNAE1.Text       := ACBrConsultaCNPJ1.CNAE1;
      EditTelefone.Text    := ACBrConsultaCNPJ1.Telefone;
      EditEmail.Text       := ACBrConsultaCNPJ1.EndEletronico;
      EditIBGE.Text        := ACBrConsultaCNPJ1.IBGE_UF;

      ListCNAE2.Clear;
      for I := 0 to ACBrConsultaCNPJ1.CNAE2.Count - 1 do
        ListCNAE2.Items.Add(ACBrConsultaCNPJ1.CNAE2[I]);
    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    EditCaptcha.SetFocus;
  end;
end;

procedure TfrmConsulta_CNPJ.EditCaptchaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ButBuscarClick(ButBuscar);
end;

procedure TfrmConsulta_CNPJ.FormShow(Sender: TObject);
begin
  Timer1.Enabled:= True;
end;

procedure TfrmConsulta_CNPJ.LabAtualizarCaptchaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  Img: TPNGGraphic;
begin
  Stream:= TMemoryStream.Create;
  Img:= TPNGGraphic.Create;
  try
    ACBrConsultaCNPJ1.Captcha(Stream);
    Img.LoadFromStream(Stream);
    Image1.Picture.Assign(Img);

    EditCaptcha.Clear;
    EditCaptcha.SetFocus;
  finally
    Stream.Free;
    Img.Free;
  end;
end;

procedure TfrmConsulta_CNPJ.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:= False;
  LabAtualizarCaptchaClick(LabAtualizarCaptcha);
  EditCNPJ.SetFocus;
end;

procedure TfrmConsulta_CNPJ.btnCopiarDadosClick(Sender: TObject);
begin
  frmConsulta_CNPJ.ModalResult := MrOK;
end;

end.
