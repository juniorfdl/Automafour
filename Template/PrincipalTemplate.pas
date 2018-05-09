unit PrincipalTemplate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, Menus, StdCtrls, ExtCtrls, OleCtrls, SHDocVw, jpeg, ComCtrls,
  RXCtrls, ToolWin, DBCtrls, EWall, IniFiles, VarSys, ImgList,  DB, DBTables,
  RxQuery, ShellApi, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvGlowButton, dxGDIPlusClasses, XPMan;

const
  MAX = 10;
type
  TInfoForm = record
    FormClass : TFormClass;
    FormName : String;
  end;
  TFormPrincipalTemplate = class(TForm)
    RodapePrincipal: TStatusBar;
    BackGround: TEvWallPaper;
    PopupMenuSeguranca: TPopupMenu;
    mnControlarAcesso: TMenuItem;
    ImagensSeguranca: TImageList;
    MainMenu: TMainMenu;
    mnSair: TMenuItem;
    ptopo: TAdvOfficeStatusBar;
    logo_parceiro: TImage;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    XPManifest1: TXPManifest;
    procedure MnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RodapePrincipalMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RodapePrincipalDrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure mnControlarAcessoClick(Sender: TObject);
    procedure MudaForm(Sender: TObject);
    procedure RodapePrincipalMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure AppEventos(var Msg : TMsg; var Handle: Boolean);
  private
    { Private declarations }
  public
    ListForm : array [0..MAX] of TInfoForm;
    PosicaoInicioPanelSeg, PosicaoFinalPanelSeg : Integer;
    { Public declarations }
    function ReturnClass : Integer;
    procedure MyOnCLick(Sender: TObject);

  end;

var
  FormPrincipalTemplate: TFormPrincipalTemplate;

implementation

uses DataModulo, UnitLibrary, TelaGerenciamentoAcesso;

{$R *.DFM}

procedure TFormPrincipalTemplate.MudaForm(Sender: TObject);
begin
  if ActiveMDIChild <> nil then
     begin
        DM.JanelaAtiva.Nome    := ActiveMDIChild.Name;
        DM.JanelaAtiva.Caption := ActiveMDIChild.Caption;
        DM.JanelaAtiva.Bloqueio:= DM.VerificaBloqueioJanela(ActiveMDIChild.Name);
        RodapePrincipal.Repaint;
     end
  else
     begin
        DM.JanelaAtiva.Nome    := '';
        DM.JanelaAtiva.Caption := '';
        DM.JanelaAtiva.Bloqueio:= False;
        if RodapePrincipal <> nil then
          RodapePrincipal.Repaint;
     end;
end;


function TFormPrincipalTemplate.ReturnClass : Integer;
var
  I : Integer;
  Form : TIniFile;
  Temp : String;
begin
  Form := TIniFile.Create(GetCurrentDir + '\SystemControls.ini');
  Temp := Form.ReadString('Form','Name','');
  Result := -1;
  if Temp <> '' then
    begin
      for I := 0 to MAX do
        begin
          if UpperCase(ListForm[I].FormName) = UpperCase(Temp) then
            begin
              Result := I;
              Break;
            end;
        end;
        if Result = -1 then
          Application.MessageBox('Erro Interno: Classe não encontrada','Atenção',MB_OK + MB_SETFOREGROUND + MB_SYSTEMMODAL + MB_ICONINFORMATION);
    end;
  Form.WriteString('Form','Name',' ');
  Form.UpdateFile;
end;

procedure TFormPrincipalTemplate.MnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormPrincipalTemplate.FormClose(Sender: TObject;
  var Action: TCloseAction);
Var
  I:Integer;
begin
{  for I:=0 to Screen.FormCount-1 do
    if Screen.Forms[I].Name <> Name then
      Screen.Forms[I].Close;
  if application.messagebox('Confirma o encerramento do Sistema?','Aviso!',mb_yesno+MB_ICONWARNING) = idyes then
    begin
       Dm.DB.Close;
       action := cafree;
       Halt;
    end
  else
    abort; }
end;

procedure TFormPrincipalTemplate.AppEventos(var Msg : TMsg; var Handle: Boolean);
begin
//   if (Msg.message = wm_Syscommand) and (Msg.wParam = 99) then
//      ShellExecute(0,'open','http://www.atwnet.com.br', Nil, Nil, SW_SHOWMAXIMIZED);
end;

procedure TFormPrincipalTemplate.FormCreate(Sender: TObject);
var I : Integer;
    Modulos : String;
begin
  VersaoSistema := GetBuildInfo(Application.ExeName);
  Caption := Application.Title + ' - v.' + VersaoSistema;
  // Inserir Logo Personalizado do Cliente
  if FileExists('Bmp\Logo Retaguarda.Bmp') then
    BackGround.Picture.LoadFromFile('Bmp\Logo Retaguarda.Bmp') ;
  if FileExists('Bmp\Logo Retaguarda.Jpg') then
    BackGround.Picture.LoadFromFile('Bmp\Logo Retaguarda.Jpg') ;

    // Inserir Logo Personalizado do Parceiro
  if FileExists('Bmp\Logo Parceiro.Jpg') then
    logo_parceiro.Picture.LoadFromFile('Bmp\Logo Parceiro.Jpg') ;

  //  if UsuarioMaster then
//    RodapePrincipal.Panels[2].Bevel := pbRaised;

// Incluidos por FC
   Screen.OnActiveFormChange := MudaForm;

   PosicaoInicioPanelSeg := RodapePrincipal.Panels.Items[0].Width +
                            RodapePrincipal.Panels.Items[1].Width +
                            RodapePrincipal.Panels.Items[2].Width ;

   PosicaoFinalPanelSeg  := RodapePrincipal.Panels.Items[0].Width +
                            RodapePrincipal.Panels.Items[1].Width +
                            RodapePrincipal.Panels.Items[2].Width +
                            RodapePrincipal.Panels.Items[3].Width;
//   Application.OnMessage := AppEventos;
end;

procedure TFormPrincipalTemplate.MyOnCLick(Sender: TObject);
var Cont : integer ;
begin
  for Cont := 0 to Screen.FormCount-1 do
    if Screen.Forms[Cont].Name = (Sender as TMenuItem).Name then
      begin
        Screen.Forms[Cont].Show ;
        Break ;
      end ;
end ;

procedure TFormPrincipalTemplate.RodapePrincipalMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Var PosMouse : TPoint;
begin
   if (Button = mbRight) and ((X > PosicaoInicioPanelSeg) and (X < PosicaoFinalPanelSeg)) and (DM.JanelaAtiva.Nome <> '') then
      begin
         GetCursorPos(PosMouse);
         PopupMenuSeguranca.Popup(PosMouse.X,PosMouse.Y);
      end;
end;

procedure TFormPrincipalTemplate.RodapePrincipalDrawPanel(
  StatusBar: TStatusBar; Panel: TStatusPanel; const Rect: TRect);
begin
  if Panel.Index = 3 then
     begin
       RodapePrincipal.Canvas.Font.Name := 'Tahoma';
       RodapePrincipal.Canvas.Font.Color:= clBlack;
       RodapePrincipal.Canvas.Font.Size := 8;
       RodapePrincipal.Canvas.TextOut(Rect.Left+5,Rect.Top+1,'Controle de Acesso ');

       RodapePrincipal.Canvas.Font.Name := 'Wingdings 2';
       RodapePrincipal.Canvas.Font.Color:= clBlack;
       RodapePrincipal.Canvas.Font.Style:= [fsBold];
       RodapePrincipal.Canvas.Font.Size := 20;
       RodapePrincipal.Canvas.TextOut(Rect.Left+100,Rect.Top-5,'C');

       ImagensSeguranca.Draw(RodapePrincipal.Canvas,Rect.Left+130,Rect.Top+1,0);          //Desenha Usuarios
       if DM.JanelaAtiva.Nome <> '' then
          if DM.JanelaAtiva.Bloqueio then
             ImagensSeguranca.Draw(RodapePrincipal.Canvas,Rect.Left+145,Rect.Top,1)      //Desenha Cadeado Fechado
          else
             ImagensSeguranca.Draw(RodapePrincipal.Canvas,Rect.Left+145,Rect.Top,2);     //Desenha Cadeado Aberto
     end;
end;

procedure TFormPrincipalTemplate.mnControlarAcessoClick(Sender: TObject);
Var PosGrid : Pointer;
    RetornoUser : TInfoRetornoUser;
begin
    if AutenticaUsuario(UsuarioAtualNome,'USUACUSERMASTER',RetornoUser) = 'S' then
      begin
        Application.CreateForm(TFormTelaGerenciamentoAcesso,FormTelaGerenciamentoAcesso);
        FormTelaGerenciamentoAcesso.ShowModal;
        Application.ProcessMessages;
        if FormTelaGerenciamentoAcesso.ModalResult = MrOK then
           if DM.DB.InTransaction then
              DM.DB.Commit;
        if FormTelaGerenciamentoAcesso.ModalResult = MrCancel then
           if DM.DB.InTransaction then
              DM.DB.Rollback;
        FormTelaGerenciamentoAcesso.Close;
        FormTelaGerenciamentoAcesso.Free;

        ExecSql(' UPDATE USUARIOPERMISSOES SET FANTASIA = ' + QuotedStr(DM.JanelaAtiva.Caption)
          + ' WHERE uspea60nometela = ' + QuotedStr(DM.JanelaAtiva.Nome), 1);

        if Application.FindComponent(DM.JanelaAtiva.Nome) <> nil then
           begin
              try
                PosGrid := ((Application.FindComponent(DM.JanelaAtiva.Nome) as TForm).FindComponent('SQLTemplate') as TRxQuery).GetBookmark;
                ((Application.FindComponent(DM.JanelaAtiva.Nome) as TForm).FindComponent('SQLTemplate') as TRxQuery).Close;
                ((Application.FindComponent(DM.JanelaAtiva.Nome) as TForm).FindComponent('SQLTemplate') as TRxQuery).Open;
                ((Application.FindComponent(DM.JanelaAtiva.Nome) as TForm).FindComponent('SQLTemplate') as TRxQuery).GotoBookmark(PosGrid);
              except
              end;
           end;
        RodapePrincipal.Repaint;
      end
    else
      begin
        if RetornoUser.CodUsuarioAutenticado > 0 then
          begin
            Informa('Somente um usuário do tipo MASTER pode controlar acessos no sistema!');
            Abort;
            Exit;
          end;
      end;
end;

procedure TFormPrincipalTemplate.RodapePrincipalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   if ((X > PosicaoInicioPanelSeg) and (X < PosicaoFinalPanelSeg)) then
      begin
        if (DM.JanelaAtiva.Nome <> '') then
            begin
              if DM.JanelaAtiva.Bloqueio then
                 RodapePrincipal.Hint := 'Controla Acesso da Janela <' + DM.JanelaAtiva.Caption + '> (Controlando Acessos)'
              else
                 RodapePrincipal.Hint := 'Controla Acesso da Janela <' + DM.JanelaAtiva.Caption + '> (Não Controlando Acessos)';
           end
        else
            RodapePrincipal.Hint := 'Controla Acesso da Janela (Sem Controle)';
      end
   else
      RodapePrincipal.Hint := '';
end;

end.
