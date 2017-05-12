program Retaguarda;

uses
  Forms,
  windows,
  DataModuloTemplate in '..\Template\DataModuloTemplate.pas' {DMTemplate: TDataModule},
  VarSYS in '..\Template\VarSYS.pas',
  WaitWindow in 'ArquivosComuns\WaitWindow.pas',
  WindowsLibrary in 'ArquivosComuns\WindowsLibrary.pas',
  TelaSplash in 'ArquivosComuns\TelaSplash.pas' {FormSplash},
  UnitLibrary in 'ArquivosComuns\UnitLibrary.pas',
  DataModuloFaturamento in 'Faturamento\DataModuloFaturamento.pas' {DMFaturamento: TDataModule},
  DataModulo in 'DataModulo.pas' {DM: TDataModule},
  dialogs,
  TELALOGIN in 'TelaLogin.pas' {FormTelaLogin},
  PrincipalTemplate in '..\Template\PrincipalTemplate.pas' {FormPrincipalTemplate},
  TelaGerenciamentoAcesso in '..\Template\TelaGerenciamentoAcesso.pas' {FormTelaGerenciamentoAcesso},
  TelaAutenticaUsuario in '..\Template\TelaAutenticaUsuario.pas' {FormTelaAutenticaUsuario},
  Principal in 'Principal.pas' {FormPrincipal},
  FormResources in '..\Template\FormResources.pas',
  UnSoundPlay in '..\Template\UnSoundPlay.pas',
  CadastroTEMPLATE in '..\Template\CadastroTEMPLATE.pas' {FormCadastroTEMPLATE},
  CadastroContasPagar in 'Financeiro\CadastroContasPagar.pas' {FormCadastroContasPagar},
  TelaConsultaPagamento in 'Financeiro\TelaConsultaPagamento.pas' {FormTelaConsultaPagamento},
  TelaAssistenteLancamentoContasPagar in 'Financeiro\TelaAssistenteLancamentoContasPagar.pas',
  TelaGeralModalTemplate in '..\Template\TelaGeralModalTemplate.pas' {FormTelaGeralModalTemplate},
  TelaBaixaContasPagarAVista in 'Financeiro\TelaBaixaContasPagarAVista.pas' {FormTelaBaixaContasPagarAVista},
  TelaLembreteTarefa in 'TelaLembreteTarefa.pas' {FormTelaLembreteTarefa},
  TelaConsultaTarefa in 'TelaConsultaTarefa.pas' {FormTelaConsultaTarefa};

{$R *.res}

begin
  Application.Initialize ;
  VersaoSistema := '3.2' ;
  bRetaguarda := true;
  Application.Title := 'Gestão Empresarial - Módulo Faturamento';

  Application.CreateForm(TDM, DM);
  if dm.SQLConfigGeralCFGECBLOQ.AsString = 'S' then
    begin
      ShowMessage('Sistema Bloqueado!!! Ligue para a Suporte');
      application.terminate;
    end
  else
    begin
      FormTelaLogin := TFormTelaLogin.Create(Application);
      FormTelaLogin.Caption := 'Bem Vindo ao Gestão Empresarial - Módulo Faturamento' ;

      if FormTelaLogin.ShowModal <> idOk then
        begin
          application.terminate;
        end;

      Application.CreateForm(TFormPrincipal, FormPrincipal);
      FormPrincipal.RodapePrincipal.Panels[0].Text := 'Empresa: ' +DM.SQLConfigGeralEmpresaPadraoCalcField.Value;
      FormPrincipal.RodapePrincipal.Panels[1].Text := 'Terminal: '+Dm.SQLTerminalAtivo.fieldbyname('TERMA60DESCR').AsString;
      FormPrincipal.RodapePrincipal.Panels[2].Text := 'Usuário: ' +DM.SQLUsuarioUSUAA60LOGIN.Value;
      FormPrincipal.RodapePrincipal.Panels[4].Text := 'Validade da Licença: ' +DM.SQLConfigGeralCFGEDBLOQ.AsString;
      Application.Run;
    end;
end.
