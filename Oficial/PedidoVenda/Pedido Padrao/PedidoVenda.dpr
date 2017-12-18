program PedidoVenda;

uses
  Forms,
  Principal in 'Principal.pas' {FormPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Pedido de Venda';
  TFormPrincipal.Imprimir;
  Application.Run;
end.
