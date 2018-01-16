program IntegradorPDVs;

uses
  Forms,
  Principal in 'Principal.pas' {FormPrincipal},
  TelaAutenticaUsuario in 'TelaAutenticaUsuario.pas' {FormTelaAutenticaUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '';
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
