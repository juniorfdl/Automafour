unit TelaEnvioEmailGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Grids, DBGrids, StdCtrls, ComCtrls, Buttons,
  jpeg, ExtCtrls, DBCtrls, DB, DBTables, RxQuery, IdMessage,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  IdExplicitTLSClientServerBase, IdSMTPBase, IdAttachmentFile;

type
  TFormTelaEnvioEmailGeral = class(TFormTelaGeralTEMPLATE)
    PageControl: TPageControl;
    Email: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton4: TSpeedButton;
    ButtonGeraEmail: TSpeedButton;
    ButtonEnviarEmail: TSpeedButton;
    SpeedButton2: TSpeedButton;
    EditAssunto: TEdit;
    EditMensagem: TRichEdit;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    LabelEnviar: TLabel;
    LabelEnviado: TLabel;
    Panel5: TPanel;
    ButtonAnexar: TSpeedButton;
    LabelAnexo: TLabel;
    ButtonLimparAnexo: TSpeedButton;
    SQLTemp: TRxQuery;
    OpenDialog: TOpenDialog;
    SQLConfigEmail: TRxQuery;
    SQLConfigEmailCFEMA60REMETENTE: TStringField;
    SQLConfigEmailCFEMTMAILREMET: TStringField;
    SQLConfigEmailCFEMIPORTA: TIntegerField;
    SQLConfigEmailCFEMTUSUARIO: TStringField;
    SQLConfigEmailCFEMTHOST: TStringField;
    DSSQLGeraMail: TDataSource;
    SQLGeraMail: TRxQuery;
    SQLGeraMailMAILICOD: TIntegerField;
    SQLGeraMailMAILTREMETENTE: TStringField;
    SQLGeraMailMAILTDESTINO: TStringField;
    SQLGeraMailMAILTASSUNTO: TStringField;
    SQLGeraMailMAILTMENSAGEM: TMemoField;
    SQLGeraMailMAILDDATA: TDateTimeField;
    SQLGeraMailMAILTPATHANEXO: TStringField;
    SQLGeraMailMAILCSTATUS: TStringField;
    SQLConfigEmailCFEMA15SENHA: TStringField;
    SQLConfigEmailCFEMCAUTENTICA: TStringField;
    SMTPNew: TIdSMTP;
    IdMsgSend: TIdMessage;
    procedure SpeedButton4Click(Sender: TObject);
    procedure ButtonEnviarEmailClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ButtonAnexarClick(Sender: TObject);
    procedure ButtonLimparAnexoClick(Sender: TObject);
    procedure ButtonGeraEmailClick(Sender: TObject);
    procedure SMTPConnectionFailed(Sender: TObject);
    procedure SMTPFailure(Sender: TObject);
    procedure SMTPAuthenticationFailed(var Handled: Boolean);
    procedure SMTPInvalidHost(var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
  EmailEnviado : Integer;
  Anexo : String;  
    { Public declarations }
  end;

var
  FormTelaEnvioEmailGeral: TFormTelaEnvioEmailGeral;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaEnvioEmailGeral.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  EditAssunto.Text := '';
  EditMensagem.Lines.Clear;
end;

procedure TFormTelaEnvioEmailGeral.ButtonEnviarEmailClick(Sender: TObject);
begin
  inherited;
  if SQLGeraMail.IsEmpty then
    begin
      Application.MessageBox('N�o existe nenhum Email a ser enviado !','Informa��o',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
      Abort;
    end;

  if SQLConfigEmail.FieldByName('CFEMTMAILREMET').AsString = '' then
    begin
      Application.MessageBox('Informe o Email do Rementente nas configura��es...','Informa��o',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
      Abort;
    end;

  if SQLConfigEmail.FieldByName('CFEMA60REMETENTE').AsString = '' then
    begin
      Application.MessageBox('Informe o Nome do Rementente nas configura��es...','Informa��o',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
      Abort;
    end;

  if SQLConfigEmail.FieldByName('CFEMIPORTA').AsString = '' then
    begin
      Application.MessageBox('Informe a Porta de comunica��o nas configura��es...','Informa��o',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
      Abort;
    end;

  if SQLConfigEmail.FieldByName('CFEMTUSUARIO').AsString = '' then
    begin
      Application.MessageBox('Informe o nome do Usu�rio nas configura��es...','Informa��o',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
      Abort;
    end;

  if SQLConfigEmail.FieldByName('CFEMTHOST').AsString = '' then
    begin
      Application.MessageBox('Informe o Servidor de Email nas configura��es...','Informa��o',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
      Abort;
    end;

  if SMTPNew.Connected then SMTPNew.Disconnect;

  SMTPNew.Username := SQLConfigEmail.FieldByName('CFEMTUSUARIO').AsString;
  SMTPNew.Password := SQLConfigEmail.FieldByName('CFEMA15SENHA').AsString;
  SMTPNew.Host     := SQLConfigEmail.FieldByName('CFEMTHOST').AsString;
  SMTPNew.Port     := SQLConfigEmail.FieldByName('CFEMIPORTA').Value;

  IdMsgSend.From.Address := SQLConfigEmail.FieldByName('CFEMTMAILREMET').AsString;
  IdMsgSend.From.Name    := SQLConfigEmail.FieldByName('CFEMA60REMETENTE').AsString;

  IdMsgSend.Subject      := SQLGeraMail.FieldByName('MAILTASSUNTO').AsString;
  IdMsgSend.Body.Clear;
  IdMsgSend.Body.Add(SQLGeraMail.FieldByName('MAILTMENSAGEM').AsString);
  if SQLGeraMail.FieldByName('MAILTPATHANEXO').AsString <> '' then
    TIdAttachmentFile.Create(IdMsgSend.MessageParts, SQLGeraMail.FieldByName('MAILTPATHANEXO').AsString);

  EmailEnviado := 0;
  SQLGeraMail.First;
  while not SQLGeraMail.Eof do
    begin
      IdMsgSend.Recipients.EMailAddresses := SQLGeraMail.FieldByName('MAILTDESTINO').AsString;
      IdMsgSend.Date := Now;
      SMTPNew.Connect;
      try
        SMTPNew.Send(IdMsgSend);
      finally
        if SMTPNew.Connected then SMTPNew.Disconnect;
        SQLGeraMail.Edit;
        SQLGeraMail.FieldByName('MAILCSTATUS').AsString := 'S';
        SQLGeraMail.Post;
      end;
      Application.ProcessMessages;
      Inc(EmailEnviado);
      LabelEnviado.Caption := IntToStr(EmailEnviado) + ' Mensagem(s) enviada(s) ';
      LabelEnviado.Update;
      SQLGeraMail.Next;
    end;
    Application.MessageBox('T�rmino de Enivo das Mensagem(s)','Informa',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
end;

procedure TFormTelaEnvioEmailGeral.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  With SQLTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM EMAIL WHERE MAILCSTATUS = ''N''');
      ExecSQL;
    end;
  LabelEnviar.Caption := IntToStr(0) + ' Mensagen(s) � enviar ';
  LabelEnviar.Update;
  ShowMessage('Lista apagada com sucesso');
  SQLGeraMail.Close;
end;

procedure TFormTelaEnvioEmailGeral.ButtonAnexarClick(Sender: TObject);
begin
  inherited;
  OpenDialog.Execute;
  Anexo := OpenDialog.FileName;
  LabelAnexo.Caption := OpenDialog.FileName;
  LabelAnexo.Update;
end;

procedure TFormTelaEnvioEmailGeral.ButtonLimparAnexoClick(Sender: TObject);
begin
  inherited;
  Anexo := '';
  LabelAnexo.Caption := 'Caminho/Nome do arquivo anexo...';
  LabelAnexo.Update;
end;

procedure TFormTelaEnvioEmailGeral.ButtonGeraEmailClick(Sender: TObject);
var
 I : Integer;
begin
  inherited;
  if not SQLGeraMail.Active then SQLGeraMail.Open;
  if not SQLConfigEmail.Active then SQLConfigEmail.Open;
  With SQLTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(MAILICOD) FROM EMAIL');
      Open;
    end;
  I:=0;
  if SQLTemp.FieldByName('MAX').AsFloat > 0 then
    I := SQLTemp.FieldByName('MAX').AsInteger
  else
    I := 1;
  Dm.DSEmail.DataSet.First;
  While not Dm.DSEmail.DataSet.Eof do
    begin
      if Dm.DSEmail.DataSet.FieldByName('CLIEA60EMAIL').AsString <> '' then
        begin
          SQLGeraMail.Append;
          SQLGeraMail.FieldByName('MAILICOD').AsInteger := I;
          Inc(I);
          SQLGeraMail.FieldByName('MAILTREMETENTE').AsString := LowerCase(SQLConfigEmail.FieldByName('CFEMTMAILREMET').AsString);
          SQLGeraMail.FieldByName('MAILTDESTINO').AsString   := LowerCase(Dm.DSEmail.DataSet.FieldByName('CLIEA60EMAIL').AsString) ;
          SQLGeraMail.FieldByName('MAILTASSUNTO').AsString   := EditAssunto.Text;
          SQLGeraMail.FieldByName('MAILTMENSAGEM').AsString  := EditMensagem.Text;
          SQLGeraMail.FieldByName('MAILDDATA').AsDateTime    := Now;
          if Anexo <> '' then
            SQLGeraMail.FieldByName('MAILTPATHANEXO').AsString := Anexo;
          SQLGeraMail.FieldByName('MAILCSTATUS').AsString    := 'N';
          SQLGeraMail.Post;
        end;
      Dm.DSEmail.DataSet.Next;
    end;
  With SQLTemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT Count(MAILICOD) FROM EMAIL WHERE MAILCSTATUS = ''N''');
      Open;
    end;
  LabelEnviar.Caption := IntToStr(SQLTemp.FieldByName('Count').AsInteger) + ' Mensagen(s) � enviar ';
  LabelEnviar.Update;
  SQLGeraMail.Close;
  SQLGeraMail.MacroByName('MFiltro').Value := 'MAILCSTATUS = ''N''';
  SQLGeraMail.Open;
end;

procedure TFormTelaEnvioEmailGeral.SMTPConnectionFailed(Sender: TObject);
begin
  inherited;
  Application.MessageBox('Conex�o falhou !','Informa',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
  Abort;
end;

procedure TFormTelaEnvioEmailGeral.SMTPFailure(Sender: TObject);
begin
  inherited;
  Application.MessageBox('O sistema n�o pode enivar o email !','Informa',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
  Abort;
end;

procedure TFormTelaEnvioEmailGeral.SMTPAuthenticationFailed(
  var Handled: Boolean);
begin
  inherited;
  Application.MessageBox('Autentica��o Falhou, verifique as configura��es !','Informa',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
  Abort;
end;

procedure TFormTelaEnvioEmailGeral.SMTPInvalidHost(var Handled: Boolean);
begin
  inherited;
  Application.MessageBox('N�o foi poss�vel conectar com o servidor !','Informa',MB_OK + MB_ICONINFORMATION + MB_SYSTEMMODAL);
  Abort;
end;

procedure TFormTelaEnvioEmailGeral.FormCreate(Sender: TObject);
begin
  inherited;
  SQLGeraMail.Close;
  SQLGeraMail.MacroByName('MFiltro').Value := 'MAILCSTATUS = ''N''';
  SQLGeraMail.Open;
end;

end.
