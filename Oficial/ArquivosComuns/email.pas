Unit email;

interface

uses Classes, SysUtils,IdMessage, IdSMTP, smtpsend, ssl_openssl, mimemess, mimepart, ACBrNFe;

type
  TEmail = class
  IdSMTP1: TIdSMTP;
  IdMessage1: TIdMessage;
  private
  public
    Constructor Create;
    destructor Destroy; override;
    function  EnviarEmail(De, Para, Titulo, Corpo, Arquivo, Danfe, Usuario, senha, servidor_smtp:String; porta: Integer): Boolean;
end;

implementation

Constructor TEmail.Create;
begin
  IdSMTP1 := TIdSMTP.Create(nil);
  IdMessage1 := TIdMessage.Create(nil);
end;

destructor TEmail.Destroy;
begin
  FreeAndNil(IdSMTP1);
  FreeAndNil(IdMessage1);
end;

function TEmail.EnviarEmail(De, Para, Titulo, Corpo, Arquivo, Danfe, Usuario, senha, servidor_smtp:String; porta: Integer): Boolean;
begin
  try
    IdMessage1.Clear;
    IdMessage1.From.DisplayName := De;
    IdMessage1.From.Name := Usuario;
    IdMessage1.From.Address := De;
    IdMessage1.From.Text := Usuario;
    IdMessage1.ReplyTo.EMailAddresses := Usuario;
    IdMessage1.Recipients.EMailAddresses := para;
    IdMessage1.Date := Now;


    if Trim(Titulo) <> EmptyStr then
      IdMessage1.Subject := Titulo
    else
      IdMessage1.Subject := 'Envio de Arquivos NF-e';

    IdMessage1.Priority := mpNormal;

    if (Arquivo <> '') then
    begin
      TIdAttachment.Create(IdMessage1.MessageParts,Arquivo);
      if FileExists(Danfe) then
        TIdAttachment.Create(IdMessage1.MessageParts,Danfe);
      IdMessage1.Body.Add(Corpo);

      IdSMTP1.AuthenticationType := atLogin;

      IdSMTP1.Host := servidor_smtp;
      IdSMTP1.UserName := usuario;
      IdSMTP1.Password := senha;
      IdSMTP1.Port := porta;  // porta padrao=587. Não usar mais a porta 25. (esta porta será bloqueada para uso na internet pelos provedores)

      IdSMTP1.Connect;
        try
          try
            IdSMTP1.Send(IdMessage1);
            result := true;
          except
            result := false;
          end;
        finally
          IdSMTP1.Disconnect;
        end;
    end;
  except
    result := false;
  end
end;

end.

