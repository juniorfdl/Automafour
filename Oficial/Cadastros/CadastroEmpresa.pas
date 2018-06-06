unit CadastroEmpresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, RXCtrls, StdCtrls, Mask,
  Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, jpeg, DBCtrls, RxDBComb,
  DBActns, ActnList, ImgList, OleCtnrs, IBSQLMonitor, ExtDlgs, variants,
  ToolEdit, RXDBCtrl, cxLookAndFeelPainters, cxGraphics, ACBrDFe, ACBrNFe,
  ACBrBase, ACBrMail, cxDropDownEdit, cxDBEdit, cxCheckBox, cxSpinEdit,
  cxMaskEdit, cxButtonEdit, cxTextEdit, cxGroupBox, cxControls,
  cxContainer, cxEdit, cxRadioGroup, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroEmpresa = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEditEnd: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    ComboMatrizFilial: TRxDBComboBox;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateEMPRCMATRIZFILIAL: TStringField;
    SQLTemplateEMPRA20FONE: TStringField;
    SQLTemplateEMPRA20FAX: TStringField;
    SQLTemplateEMPRA60END: TStringField;
    SQLTemplateEMPRA60BAI: TStringField;
    SQLTemplateEMPRA60CID: TStringField;
    SQLTemplateEMPRA2UF: TStringField;
    SQLTemplateEMPRA8CEP: TStringField;
    SQLTemplateEMPRA14CGC: TStringField;
    SQLTemplateEMPRA20IE: TStringField;
    SQLTemplateEMPRA60EMAIL: TStringField;
    SQLTemplateEMPRA60URL: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    SQLTemplateEMPRCFISJURID: TStringField;
    SQLTemplateEMPRA11CPF: TStringField;
    SQLTemplateEMPRA10RG: TStringField;
    SQLTemplateEMPRA60RAZAOSOC: TStringField;
    SQLTemplateEMPRA60NOMEFANT: TStringField;
    SQLProdutoSaldo: TRxQuery;
    SQLProdutoSaldoEMPRICOD: TIntegerField;
    SQLProdutoSaldoPRODICOD: TIntegerField;
    SQLProdutoSaldoPSLDN3QTDE: TFloatField;
    SQLProdutoSaldoPSLDN3QTDMIN: TFloatField;
    SQLProdutoSaldoPSLDN3QTDMAX: TFloatField;
    SQLProdutoSaldoPENDENTE: TStringField;
    SQLProdutoSaldoREGISTRO: TDateTimeField;
    UpdateSQLProdutoSaldo: TUpdateSQL;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLTemplateEMPRA100INFSPC: TStringField;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    AcessaProfissao: TSpeedButton;
    SQLTemplateEMPRA15CODEAN: TStringField;
    Label17: TLabel;
    DBEdit6: TDBEdit;
    SQLTemplateEMPRBLOGOTIPO: TBlobField;
    ComboUF: TRxDBComboBox;
    PictureDialog: TOpenPictureDialog;
    SQLTemplateEMPRA60CONTATO: TStringField;
    Label18: TLabel;
    DBEdit8: TDBEdit;
    SQLTemplateEMPRCLUCROREAL: TStringField;
    ImpPreVenda: TDBCheckBox;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    SQLTemplateEMPRN2VLRFUNDOPROMO: TFloatField;
    SQLTemplateEMPRA15REGJUNTA: TStringField;
    SQLTemplateEMPRA20IMUNIC: TStringField;
    DBEdit17: TDBEdit;
    Label21: TLabel;
    SQLTemplateEMPRIUFCODFED: TIntegerField;
    DBEdit27: TDBEdit;
    Label31: TLabel;
    SQLTemplateEMPRIMUNICODFED: TIntegerField;
    Label32: TLabel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    Label33: TLabel;
    SQLTemplateEMPRIENDNRO: TIntegerField;
    SQLTemplateEMPRA20CPFCONTADOR: TStringField;
    SQLTemplateEMPRA20CPFRESP: TStringField;
    SQLTemplateEMPRA40CARGOCONT: TStringField;
    SQLTemplateEMPRA40CARGORESP: TStringField;
    SQLTemplateEMPRA60CONTADOR: TStringField;
    SQLTemplateEMPRDREGJUNTA: TDateTimeField;
    GroupBoxFOTO: TGroupBox;
    ImageProduto: TImage;
    SpeedButton5: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Label34: TLabel;
    DBDateEdit2: TDBDateEdit;
    DBEdit30: TDBEdit;
    Label35: TLabel;
    DBEdit31: TDBEdit;
    Label36: TLabel;
    SQLTemplateEMPRA3CRT: TStringField;
    Label40: TLabel;
    ComboCRT: TRxDBComboBox;
    Label41: TLabel;
    DBEdit35: TDBEdit;
    SQLTemplateEMPRA30CRC: TStringField;
    SQLTemplateEMPRN2CREDICMS: TFloatField;
    SQLTemplateEMPRA15CRCCONTADOR: TStringField;
    SQLTemplateEMPRA14CNPJCONTADOR: TStringField;
    SQLTemplateEMPRA8CEPCONTADOR: TStringField;
    SQLTemplateEMPRA60ENDCONTADOR: TStringField;
    SQLTemplateEMPRA60BAICONTADOR: TStringField;
    SQLTemplateEMPRA10FONECONTADOR: TStringField;
    SQLTemplateEMPRA10FAXCONTADOR: TStringField;
    SQLTemplateEMPRA7CODMUNCONTADOR: TStringField;
    TabSheetContador: TTabSheet;
    Label37: TLabel;
    DBEdit32: TDBEdit;
    Label38: TLabel;
    DBEdit33: TDBEdit;
    Label39: TLabel;
    DBEdit34: TDBEdit;
    Label42: TLabel;
    Label43: TLabel;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    Label44: TLabel;
    Label45: TLabel;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    Label46: TLabel;
    Label47: TLabel;
    DBEdit40: TDBEdit;
    Label48: TLabel;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    Label49: TLabel;
    ButtomContador: TRxSpeedButton;
    SQLTemplateEMPRIATIVIDADE: TIntegerField;
    Label50: TLabel;
    ComboTipoAtividade: TRxDBComboBox;
    SQLTemplateCNAEFISCAL: TStringField;
    DBEdit43: TDBEdit;
    Label51: TLabel;
    tsNFE: TTabSheet;
    ButtonDadosNfe: TRxSpeedButton;
    SQLTemplateEMPRA100CERTIFSERIE: TStringField;
    SQLTemplateEMPRA35CERTIFSENHA: TStringField;
    SQLTemplateEMPRIFORMAEMISDANFE: TIntegerField;
    SQLTemplateEMPRIFORMAEMISNFE: TIntegerField;
    SQLTemplateEMPRA100CAMINHOLOGO: TStringField;
    SQLTemplateEMPRA100CAMINHOXML: TStringField;
    SQLTemplateEMPRA100CAMINHODANFES: TStringField;
    SQLTemplateEMPRA2WSUF: TStringField;
    SQLTemplateEMPRIWSAMBIENTE: TIntegerField;
    SQLTemplateEMPRA1VISUALIZAMSG: TStringField;
    SQLTemplateEMPRA100PROXYHOST: TStringField;
    SQLTemplateEMPRIPROXYPORTA: TIntegerField;
    SQLTemplateEMPRA50PROXYUSUARIO: TStringField;
    SQLTemplateEMPRA50PROXYSENHA: TStringField;
    SQLTemplateEMPRA50EMAILHOST: TStringField;
    SQLTemplateEMPRIEMAILPORTA: TIntegerField;
    SQLTemplateEMPRA75EMAILUSUARIO: TStringField;
    SQLTemplateEMPRA50EMAILSENHA: TStringField;
    rgpLayout: TcxDBRadioGroup;
    rgpEmissao: TcxDBRadioGroup;
    gbxCertif: TcxGroupBox;
    gbxLocais: TcxGroupBox;
    cxDBButtonEdit1: TcxDBButtonEdit;
    Label54: TLabel;
    cxDBButtonEdit3: TcxDBButtonEdit;
    Label55: TLabel;
    Label56: TLabel;
    cxDBButtonEdit4: TcxDBButtonEdit;
    gbxConfigProxy: TcxGroupBox;
    Label57: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label58: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label59: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label60: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    gbxConfgEmail: TcxGroupBox;
    Label61: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label62: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label63: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label64: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    Label53: TLabel;
    cxDBButtonEdit2: TcxDBButtonEdit;
    Label52: TLabel;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxGroupBox1: TcxGroupBox;
    Label66: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    dlgOpen: TOpenPictureDialog;
    cxDBCheckBox1: TcxDBCheckBox;
    Label65: TLabel;
    Label67: TLabel;
    DBEdit44: TDBEdit;
    SQLTemplateEMPRA150CONTADOREMAIL: TStringField;
    cxDBCheckBox2: TcxDBCheckBox;
    SQLTemplateEMPRA1SSL: TStringField;
    SQLTemplateEMPRA60EMAILCOPIA: TStringField;
    cxDBTextEdit8: TcxDBTextEdit;
    Label68: TLabel;
    SQLTemplateEMPRA1TSL: TStringField;
    cxDBCheckBox3: TcxDBCheckBox;
    BtnEmailTeste: TSpeedButton;
    ACBrMail: TACBrMail;
    ACBrNFe: TACBrNFe;
    lbStatusEmail: TLabel;
    Label20: TLabel;
    SQLTemplateIDTOKEN: TStringField;
    SQLTemplateTOKEN: TStringField;
    gbxToken: TcxGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    SQLTemplateVERSAO: TStringField;
    RxDBComboBox1: TRxDBComboBox;
    Label24: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure AcessaProfissaoClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure ComboCRTChange(Sender: TObject);
    procedure ButtomContadorClick(Sender: TObject);
    procedure ButtonDadosNfeClick(Sender: TObject);
    procedure cxDBButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxDBButtonEdit4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure BtnEmailTesteClick(Sender: TObject);
    procedure ACBrMailMailProcess(const AMail: TACBrMail;
      const aStatus: TMailStatus);
    procedure ACBrMailMailException(const AMail: TACBrMail;
      const E: Exception; var ThrowIt: Boolean);
    procedure ACBrMailAfterMailProcess(Sender: TObject);
  private
    { Private declarations }
    IncluindoEmpresa:Boolean;
    EmpresaCodigo:Integer;
  public
    { Public declarations }
  end;

var
  FormCadastroEmpresa: TFormCadastroEmpresa;

implementation

uses UnitLibrary, CadastroCep, FormResources, VarSys, DataModulo,
  WaitWindow, ACBrNFeConfiguracoes, ACBrDFeSSL;

{$R *.DFM}

procedure TFormCadastroEmpresa.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'EMPRESA' ;
end;

procedure TFormCadastroEmpresa.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  exit;

  if SQLTemplateEMPRA60RAZAOSOC.Value = '' Then
    begin
      Beep ;
      Informa('O campo Razão Social deve ser preenchido!') ;
      Abort ;
    end;
  if SQLTemplateEMPRA60NOMEFANT.Value = '' Then
    begin
      Beep ;
      Informa('O campo Nome Fantasia deve ser preenchido!') ;
      Abort ;
    end;
  if SQLTemplateEMPRCMATRIZFILIAL.Value = '' Then
    begin
      Beep ;
      Informa('O campo Matriz/Filial deve ser preenchido!') ;
      Abort ;
    end;
  if SQLTemplateEMPRA2UF.Value = '' Then
    begin
      Beep ;
      Informa('O campo Estado deve ser preenchido!') ;
      Abort ;
    end;
  If DataSet.State = dsInsert Then
    Begin
      IncluindoEmpresa := True;
      EmpresaCodigo := SQLTemplateEMPRICOD.AsInteger;
    End
  Else
    IncluindoEmpresa := False;

   if (SQLLocate('Empresa','EMPRCMATRIZFILIAL','EMPRCMATRIZFILIAL','''M''') <> '') and (IncluindoEmpresa) and (SQLTemplateEMPRCMATRIZFILIAL.AsString = 'M') then
     begin
       Informa('Já exite uma empresa cadastrada como matriz, portanto, as outras empresas devem ser cadastradas como filiais !');
       Abort;
     end;

   // Tenta Enviar email para Conceitos, com os dados da empresa cadastrada ou alterada!
  try
    {if SMTP.Connected then
      SMTP.Disconnect;

    SMTP.Host     := 'www.live.com';
    SMTP.Username := 'adilson.fernandez@hotmail.com';
    SMTP.Password := 'qweASDqwe';

    IdMsgSend.From.Text    := 'adilson.fernandez@hotmail.com';
    IdMsgSend.From.Name    := 'Suporte Conceitos Sistemas';
    IdMsgSend.Subject      := 'Notificacao - Cadastro Empresa Modificado...';
    IdMsgSend.Body.Clear;
    IdMsgSend.Body.Add('Cnpj          => '+ SQLTemplateEMPRA14CGC.Value);
    IdMsgSend.Body.Add('Razao Social  => '+ SQLTemplateEMPRA60RAZAOSOC.Value);
    IdMsgSend.Body.Add('Fantasia      => '+ SQLTemplateEMPRA60NOMEFANT.Value);
    IdMsgSend.Body.Add('Endereco      => '+ SQLTemplateEMPRA60END.Value);
    IdMsgSend.Body.Add('Numero        => '+ SQLTemplateEMPRIENDNRO.AsString);
    IdMsgSend.Body.Add('Bairro        => '+ SQLTemplateEMPRA60BAI.Value);
    IdMsgSend.Body.Add('Cidade        => '+ SQLTemplateEMPRA60CID.Value);
    IdMsgSend.Body.Add('Estado        => '+ SQLTemplateEMPRA2UF.Value);
    IdMsgSend.Body.Add('Fone          => '+ SQLTemplateEMPRA20FONE.Value);

    IdMsgSend.ReceiptRecipient.Text := '';

    IdMsgSend.Recipients.EMailAddresses  := 'adilson.fernandez@hotmail.com';
    IdMsgSend.Date := Now;

    SMTP.AuthenticationType := atLogin; //Simple Login

    SMTP.Connect;
    SMTP.Send(IdMsgSend);

    if SMTP.Connected then SMTP.Disconnect; } 

  except
    Application.ProcessMessages;
  end;
end;

procedure TFormCadastroEmpresa.SQLTemplateAfterPost(DataSet: TDataSet);
var
 I : Integer;
begin
  inherited;
  If IncluindoEmpresa Then
    Begin
      If Not SQLProduto.Active Then SQLProduto.Open;
      SQLProduto.First;
      MakeWindow(SQLProduto.RecordCount,'Gerando registro de estoque...');
      I := 1;
      While Not SQLProduto.Eof Do
        Begin
          if SQLProdutoSaldo.Active then SQLProdutoSaldo.Close;
          SQLProdutoSaldo.ParamByName('EMPRICOD').AsInteger   := EmpresaCodigo;
          SQLProdutoSaldo.ParamByName('PRODICOD').AsInteger   := SQLProdutoPRODICOD.asInteger;
          SQLProdutoSaldo.ParamByName('PSLDN3QTDE').AsFloat   := 0;
          SQLProdutoSaldo.ParamByName('PSLDN3QTDMAX').asFloat := 0;
          SQLProdutoSaldo.ParamByName('PSLDN3QTDMIN').asFloat := 0;
          SQLProdutoSaldo.ParamByName('PENDENTE').AsString    := 'S';
          SQLProdutoSaldo.ParamByName('REGISTRO').AsString    := FormatDateTime('mm/dd/yyyy hh:nn:ss',Now);
          SQLProdutoSaldo.ExecSQL;
          SQLProduto.Next;
          SetProgress(I);
          Inc(I);
          Application.ProcessMessages;
        End;
      DestroyWindow;  
      ShowMessage('Saldo gerado com sucesso !');
    End;
end;

procedure TFormCadastroEmpresa.AcessaProfissaoClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('EMPRA8CEP');
  FieldOrigem := 'CEPA8CEP' ;
  Application.CreateForm(TFormCadastroCep,FormCadastroCep);
  FormCadastroCep.EditProcura.Text := '*' + SQLTemplateEMPRA60END.AsString;
  FormCadastroCep.ShowModal;
  if FormCadastroCep.ModalResult = MrOK then
    begin
      SQLTemplateEMPRA60END.AsString  := FormCadastroCep.SQLTemplateCEPA60LOGRADOURO.AsString;
      SQLTemplateEMPRA60BAI.AsString  := FormCadastroCep.SQLTemplateCEPA60BAIRRO1.AsString;
      SQLTemplateEMPRA60CID.AsString  := FormCadastroCep.SQLTemplateCEPA60CIDADE.AsString;
      SQLTemplateEMPRA2UF.AsString    := FormCadastroCep.SQLTemplateCEPA2ESTADO.AsString;
      DBEditEnd.SetFocus;
      DBEditEnd.SelStart := Length(DBEditEnd.Text) + 1;
    end;

end;

procedure TFormCadastroEmpresa.SpeedButton5Click(Sender: TObject);
var
  FileStream : TFileStream;
  BlobStream : TStream;
begin
  inherited;
  if not (SQLTemplate.State in ([dsEdit, dsInsert])) then
    SQLTemplate.Edit;
  if PictureDialog.Execute then
  begin
    FileStream:=TFileStream.Create(PictureDialog.FileName,
      fmOpenRead or fmShareDenyWrite);
    BlobStream:=SQLTemplate.CreateBlobStream(SQLTemplateEMPRBLOGOTIPO,bmWrite);
    try
      BlobStream.CopyFrom(FileStream,FileStream.Size);
    finally
      FileStream.Free;
      BlobStream.Free;
    end;
  end;
end;

procedure TFormCadastroEmpresa.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  if Pergunta('NAO','Tem certeza que deseja remover esta imagem?') then
    begin
      SQLTemplate.DisableControls;
      if not (SQLTemplate.State in ([dsEdit, dsInsert])) then
        begin
          SQLTemplate.Edit;
          SQLTemplateEMPRBLOGOTIPO.AsVariant := Null;
          SQLTemplate.Post;
        end;
      SQLTemplate.EnableControls;  
    end;
end;

procedure TFormCadastroEmpresa.Button3Click(Sender: TObject);
begin
  inherited;
{  DSMasterSys := DSTemplate;
  CriaFormulario(TFormCadastroEmpresaCusto,'FormCadastroEmpresaCusto',True,False,True,SQLTemplateEMPRA60RAZAOSOC.AsString); }
end;

procedure TFormCadastroEmpresa.DSTemplateDataChange(Sender: TObject;
  Field: TField);
  var
  BlobStream : TStream;
  JPEGImage  : TBitmap;
begin
  inherited;
  // Mostra Imagem Associada ao Produto
  if SQLTemplateEMPRBLOGOTIPO.BlobSize <> 0 then
  begin
    BlobStream := SQLTemplate.CreateBlobStream(SQLTemplateEMPRBLOGOTIPO,bmRead);
    JPEGImage  := TBitmap.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      ImageProduto.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
    ImageProduto.Picture:=nil;

end;

procedure TFormCadastroEmpresa.ComboCRTChange(Sender: TObject);
begin
  inherited;
  if ComboCRT.ItemIndex < 2 then // 1 - Simples Nacional 2 - Simples Nacional, Exc.Rec.Bruta 3 - Regime Normal
  begin
    DBEdit35.Color   := clWindow;
    DBEdit35.Enabled := True;
    if DBEdit35.Text = '' then
      DBEdit35.Text    := '0';
  end Else
  begin
    DBEdit35.Color   := clSilver;
    DBEdit35.Enabled := False;
    DBEdit35.Clear;
  end;
  DBEdit35.Refresh;
end;

procedure TFormCadastroEmpresa.ButtomContadorClick(Sender: TObject);
begin
  inherited;
  PagePrincipal.ActivePage := TabSheetContador ;
end;

procedure TFormCadastroEmpresa.ButtonDadosNfeClick(Sender: TObject);
begin
  inherited;
  PagePrincipal.ActivePage := tsNfe ;
end;

procedure TFormCadastroEmpresa.cxDBButtonEdit2PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
   {$IFNDEF ACBrNFeOpenSSL}
   dsTemplate.DataSet.FieldByName('EMPRA100CERTIFSERIE').AsString := ACBrNFe.SSL.SelecionarCertificado;
   {$ENDIF}
end;

procedure TFormCadastroEmpresa.cxDBButtonEdit4PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  try
    if dlgOpen.Execute then
      DSTemplate.DataSet.FieldByName('EMPRA100CAMINHOLOGO').AsString := dlgOpen.fileName;
  finally
    dlgOpen.Free;
  end;
end;

procedure TFormCadastroEmpresa.BtnEmailTesteClick(Sender: TObject);
var xSSL, xTSL : Boolean;
begin
  inherited;
  ACBrMail.Clear;

  // Carrega parametros para enviar email
  try
    ACBrMail.From     := sqlTemplateEMPRA75EMAILUSUARIO.AsString;
    ACBrMail.FromName := sqlTemplateEMPRA60NOMEFANT.AsString;
    ACBrMail.Host     := sqlTemplateEMPRA50EMAILHOST.AsString;
    ACBrMail.Port     := sqlTemplateEMPRIEMAILPORTA.AsString; // 465 troque pela porta do seu servidor smtp
    ACBrMail.Username := sqlTemplateEMPRA75EMAILUSUARIO.AsString;
    ACBrMail.Password := sqlTemplateEMPRA50EMAILSENHA.AsString;
    ACBrMail.AddAddress(sqlTemplateEMPRA75EMAILUSUARIO.AsString,''); {teste mandando para o mesmo remetente}
    ACBrMail.Subject  := 'Teste de Email';       // assunto
    ACBrMail.IsHTML   := False;                  // define que a mensagem é html

    // mensagem principal do e-mail. pode ser html ou texto puro
    ACBrMail.Body.Text    := 'Teste de Email';

    if sqlTemplateEMPRA1SSL.Value = 'S' then
      xSSL := True
    else
      xSSL := False;

    if sqlTemplateEMPRA1TSL.Value = 'S' then
      xTSL := True
    else
      xTSL := False;

    ACBrMail.SetSSL :=  xSSL;              // SSL - Conexão Segura
    ACBrMail.SetTLS :=  xTSL;              // TLS - Crypografia, para hotmail obrigatorio

    ACBrMail.Send;
  except
    ShowMessage('Falha ao tentar enviar Email Teste!');
  end;
end;

procedure TFormCadastroEmpresa.ACBrMailMailProcess(const AMail: TACBrMail;
  const aStatus: TMailStatus);
begin
  inherited;
  case aStatus of
    pmsStartProcess:  lbStatusEmail.Caption := 'Iniciando processo de envio.';
    pmsConfigHeaders: lbStatusEmail.Caption := 'Configurando o cabeçalho do e-mail.';
    pmsLoginSMTP:     lbStatusEmail.Caption := 'Logando no servidor de e-mail.';
    pmsStartSends:    lbStatusEmail.Caption := 'Iniciando os envios.';
    pmsSendTo:        lbStatusEmail.Caption := 'Processando lista de destinatários.';
    pmsSendCC:        lbStatusEmail.Caption := 'Processando lista CC.';
    pmsSendBCC:       lbStatusEmail.Caption := 'Processando lista BCC.';
    pmsSendReplyTo:   lbStatusEmail.Caption := 'Processando lista ReplyTo.';
    pmsSendData:      lbStatusEmail.Caption := 'Enviando dados.';
    pmsLogoutSMTP:    lbStatusEmail.Caption := 'Fazendo Logout no servidor de e-mail.';
    pmsDone:          lbStatusEmail.Caption := 'Terminando e limpando.';
  end;
  lbStatusEmail.Update;
end;

procedure TFormCadastroEmpresa.ACBrMailMailException(
  const AMail: TACBrMail; const E: Exception; var ThrowIt: Boolean);
begin
  inherited;
  ThrowIt := False;
  lbStatusEmail.Caption := '*** Erro ao Enviar o email: '+ AMail.Subject;
  lbStatusEmail.Update;
end;

procedure TFormCadastroEmpresa.ACBrMailAfterMailProcess(Sender: TObject);
begin
  inherited;
  lbStatusEmail.Caption := 'Email enviado com Sucesso!';
  lbStatusEmail.Update;
end;

end.
