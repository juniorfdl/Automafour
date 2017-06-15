unit BalancaFilizola;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask, BalancaToledo, IniFiles, ACBrBase,
  ACBrBAL, ACBrDevice, jpeg, AdvSmoothPanel;

type
  TFormBalancaFilizola = class(TForm)
    Timer1: TTimer;
    btnConfigura: TBitBtn;
    btnPara: TBitBtn;
    BTEsc: TBitBtn;
    Label15: TLabel;
    EditProduto: TMaskEdit;
    lblStatus: TLabel;
    ACBrBAL1: TACBrBAL;
    Image1: TImage;
    AdvSmoothPanel3: TAdvSmoothPanel;
    Label14: TLabel;
    pnlLiquido: TPanel;
    Label5: TLabel;
    PnDescrProd: TPanel;
    Label1: TLabel;
    lblModelo: TLabel;
    Label3: TLabel;
    lblBaudRate: TLabel;
    Label2: TLabel;
    lblSerial: TLabel;

    procedure btnParaClick(Sender: TObject);
    procedure btnConfiguraClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTEscClick(Sender: TObject);
  private
    { Private declarations }
    Peso          : Double;
    PesoP05A      : array[0..5]of char;
    PesoP05B      : array[0..7]of char;
    Toledo_Dir, PesoSTR : String;
    Toledo_Porta, Toledo_Baud, Toledo_Paridade, Toledo_DataBits, Toledo_OpcoesDiponibilizar, Toledo_TipoLeitura : Integer;

    Urano_Modelo, Urano_Operacao : Integer;
    Urano_Porta : string;
    Urano_PesoLido : TextFile;

    procedure MudaPanelsCaption(Valor: String); //Função complementar que muda
                                                //todos os captions dos objetos Panels
                                                //com o valor desejado.

    procedure ObtemConfiguracoes; //Função complementar que chama a função
                                  //ObtemParametrosBalanca da Dll.

  public
    { Public declarations }
    VlrUnitarioSTR : String;

  end;

//Declaração de um novo tipo de variável(PInteger) referente à um ponteiro Integer,
//para uso na função ObtemParametrosBalanca.

//Isto é necessário pois a função ObtemParametrosBalança não retorna valor, e sim
//preenche a variável ponteiro com o valor requisitado.
type
  PInteger = ^Integer;

var
  FormBalancaFilizola: TFormBalancaFilizola;

  //Variaveis que armazenarão os retornos da função ObtemParametrosBalanca
  BalancaModelo, BalancaPorta, BalancaBaudRate: Integer;

  //Mascara para formatacao do peso com casas decimais
  mascara : String;

  //Variável que armazenará o modelo da balança, função ObtemNomeBalanca
  CModelo: array[0..50] of char;

Const
  PcScale = 'PcScale.dll'; //Contante para não ficar repetindo
                           //o nome do arquivo da Dll

implementation

uses UnitLibrary, TelaItens, DataModulo;

{$R *.DFM}

//----------------------------------------------------------------//
{                   INICIO FUNCOES DA DLL PcScale                  }
//----------------------------------------------------------------//
{Declara a função ConfiguraBalanca existente na DLL ''PcScale.dll''}
function ConfiguraBalanca(Balanca: Integer; Aplicativo: THandle): Boolean;
             stdcall; external PcScale;

{Declara a função InicializaLeitura existente na DLL ''PcScale.dll''}
function InicializaLeitura(Balanca: Integer): Boolean;
             stdcall; external PcScale;

{Declara a função ObtemInformacao existente na DLL ''PcScale.dll''}
function ObtemInformacao(Balanca: Integer; Campo: Integer): double;
             stdcall; external PcScale;

{Declara a função FinalizaLeitura existente na DLL ''PcScale.dll''}
function FinalizaLeitura(Balanca: Integer) : Boolean;
             stdcall; external PcScale;

{Declara a função ExibeMsgErro existente na DLL ''PcScale.dll''}
function EnviaPrecoCS(Balanca : integer; Preco : double) : Boolean;
             stdcall; external PcScale;

{Declara a função FinalizaLeitura existente na DLL ''PcScale.dll''}
function ObtemParametrosBalanca(Balanca: Integer; Modelo: PInteger;
                             Porta: PInteger; BaudRate: PInteger
                             ): Boolean
             stdcall; external PcScale;

{Declara a função ObtemNomeBalanca existente na DLL ''PcScale.dll''}
Procedure ObtemNomeBalanca(Modelo: Integer; Ret: PChar);
             stdcall; external PcScale;

{Declara a função ExibeMsgErro existente na DLL ''PcScale.dll''}
Procedure ExibeMsgErro(Aplicativo : THandle);
             stdcall; external PcScale;



//----------------------------------------------------------------//
{                     FIM FUNCOES DA DLL PcScale                  }
//----------------------------------------------------------------//

//----------------------------LEMBRETES---------------------------//
{
  - Lembre-se que neste exemplo foi usado um objeto Timer para
    que o mesmo repeta as chamadas da Dll. Como opção pederiamos
    ter usado uma Thread.

  - A Dll PcScale.dll deve sempre estar no diretório Windows\System,
    ou no mesmo caminho onde do executável que a usa estiver rodando.

}
//----------------------------LEMBRETES---------------------------//
procedure TFormBalancaFilizola.ObtemConfiguracoes;
begin
  if ObtemParametrosBalanca(0, @BalancaModelo, @BalancaPorta, @BalancaBaudRate) then
    begin
      ObtemNomeBalanca(BalancaModelo, CModelo);
      lblModelo.Caption   := CModelo;
      lblSerial.Caption   := 'COM' + IntToStr(BalancaPorta);
      lblBaudRate.Caption := IntToStr(BalancaBaudRate);
    end;
end;

procedure TFormBalancaFilizola.MudaPanelsCaption(Valor: String);
var
  i: Integer;
begin
  for i := 0 to FormBalancaFilizola.ComponentCount - 1 do
    begin
      if (FormBalancaFilizola.Components[i] is TPanel) then
        (FormBalancaFilizola.Components[i] as TPanel).Caption := Valor
    end;
end;

procedure TFormBalancaFilizola.btnParaClick(Sender: TObject);
begin
  if FileExists('BalancaCheckoutFilizola.txt') then
    begin
      if (Sender as TBitBtn).Caption = '&Testar' then
        begin
          if InicializaLeitura(0) then
            begin
                Timer1.Enabled := True;
                btnConfigura.Enabled := false;
                (Sender as TBitBtn).Caption := '&Parar';
                (Sender as TBitBtn).Hint := 'Para o teste de leitura da balança.';
            end
          else
            ExibeMsgErro(Self.Handle);
        end
      else
        begin
          Timer1.Enabled := false;
          if not FinalizaLeitura(0) then ExibeMsgErro(Self.Handle);
          MudaPanelsCaption('---------');
          btnConfigura.Enabled := true;
          lblStatus.Caption := 'Parado...';
          (Sender as TBitBtn).Caption := '&Testar';
          (Sender as TBitBtn).Hint := 'Inicia o teste de leitura da balança.'
        end;
    end;
end;

procedure TFormBalancaFilizola.btnConfiguraClick(Sender: TObject);
begin
  if Not ConfiguraBalanca(0, Self.Handle)  then
    ExibeMsgErro(Self.Handle)
  else
    ObtemConfiguracoes;
end;

procedure TFormBalancaFilizola.FormShow(Sender: TObject);
var ArquivoINI: TIniFile;
begin
  if FileExists('BalancaCheckoutFilizola.txt') then
    begin
      ObtemConfiguracoes;
      Timer1.Enabled := false;
      if not FinalizaLeitura(0) then ExibeMsgErro(Self.Handle);
      btnConfigura.Enabled := true;
      lblStatus.Caption := 'Parado...';
      lblStatus.Refresh;
      if InicializaLeitura(0) then
        Timer1.Enabled := True;
    end;

  if FileExists('BalancaCheckoutToledo.txt') then
    begin
      Timer1.Enabled := False;
      btnConfigura.Enabled := False;
      btnPara.Enabled := False;

      if acbrBal1.Ativo then
        ACBrBAL1.Desativar;

      // Pega Configs do arquivo P05.INI
      IniFile:=TIniFile.Create(ExtractFilePath(ParamStr(0))+cArquivoINI);
      try
        Toledo_Porta                   := IniFile.ReadInteger(cSessaoConf,cPorta,0);
        Toledo_Baud                    := IniFile.ReadInteger(cSessaoConf,cBaudRate,0);
        Toledo_Paridade                := IniFile.ReadInteger(cSessaoConf,cParidade,2);
        Toledo_DataBits                := IniFile.ReadInteger(cSessaoConf,cDataBits,0);
        Toledo_OpcoesDiponibilizar     := IniFile.ReadInteger(cSessaoConf,cDiponibi,0);
        Toledo_TipoLeitura             := IniFile.ReadInteger(cSessaoConf,cTipoLeitura,0);
        Toledo_Dir                     := IniFile.ReadString(cSessaoConf,cDirPESO,ExtractFilePath(ParamStr(0)));
      finally
        IniFile.Free;
      end;

      lblModelo.Caption := 'Toledo Checkout';
      lblModelo.update;

      case Toledo_Porta of
        0 : lblSerial.Caption := 'COM1';
        1 : lblSerial.Caption := 'COM2';
        2 : lblSerial.Caption := 'COM3';
        3 : lblSerial.Caption := 'COM4';
        4 : lblSerial.Caption := 'COM5';
        5 : lblSerial.Caption := 'COM6';
        6 : lblSerial.Caption := 'COM7';
        7 : lblSerial.Caption := 'COM8';
      end;
      lblSerial.Refresh;

      case Toledo_Baud of
        0 : lblBaudRate.Caption := '2400';
        1 : lblBaudRate.Caption := '4800';
        2 : lblBaudRate.Caption := '9600';
        3 : lblBaudRate.Caption := '1200';
        4 : lblBaudRate.Caption := '19200';
      end;
      lblBaudRate.Refresh;

      // configura porta de comunicação
      ACBrBAL1.Modelo           := balToledo;
      ACBrBAL1.Device.HandShake := TACBrHandShake(0);
      ACBrBAL1.Device.Parity    := TACBrSerialParity(0); {zero}
      ACBrBAL1.Device.Stop      := TACBrSerialStop(0); {s1}
      ACBrBAL1.Device.Data      := 8; {8}
      if Toledo_Porta = 0 then
        ACBrBAL1.Device.Porta := 'COM1';
      if Toledo_Porta = 1 then
        ACBrBAL1.Device.Porta := 'COM2';
      if Toledo_Porta = 2 then
        ACBrBAL1.Device.Porta := 'COM3';
      if Toledo_Porta = 3 then
        ACBrBAL1.Device.Porta := 'COM4';
      if Toledo_Porta = 4 then
        ACBrBAL1.Device.Porta := 'COM5';
      if Toledo_Porta = 5 then
        ACBrBAL1.Device.Porta := 'COM6';
      if Toledo_Porta = 6 then
        ACBrBAL1.Device.Porta := 'COM7';
      if Toledo_Porta = 7 then
        ACBrBAL1.Device.Porta := 'COM8';

      if Toledo_Baud = 0 then
        ACBrBAL1.Device.Baud      := 2400;
      if Toledo_Baud = 1 then
        ACBrBAL1.Device.Baud      := 4800;
      if Toledo_Baud = 2 then
        ACBrBAL1.Device.Baud      := 9600;
      if Toledo_Baud = 3 then
        ACBrBAL1.Device.Baud      := 1200;
      if Toledo_Baud = 4 then
        ACBrBAL1.Device.Baud      := 19200;

      // Conecta com a balança
      ACBrBAL1.Ativar;
      Timer1.Enabled := True;
    end;

  if FileExists('BalancaCheckoutUrano.txt') then
    begin
      Timer1.Enabled := False;
      btnConfigura.Enabled := False;
      btnPara.Enabled := False;

      IniFile:=TIniFile.Create(dm.PathAplicacao+'LePesoUrano.INI');
      try
        Urano_Porta                   := IniFile.ReadString('Configuracao','IPortaSerial','');
        Urano_Modelo                  := IniFile.ReadInteger('Configuracao','IModeloBalanca',0);
        Urano_Operacao                := IniFile.ReadInteger('Configuracao','IModoOperacao',0);
      finally
        IniFile.Free;
      end;

      if acbrBal1.Ativo then
        ACBrBAL1.Desativar;

      lblModelo.Caption := 'Urano Checkout';
      lblModelo.update;

      if Urano_Porta = 'COM1' then lblSerial.Caption := 'COM1';
      if Urano_Porta = 'COM2' then lblSerial.Caption := 'COM2';
      if Urano_Porta = 'COM3' then lblSerial.Caption := 'COM3';
      if Urano_Porta = 'COM4' then lblSerial.Caption := 'COM4';
      if Urano_Porta = 'COM5' then lblSerial.Caption := 'COM5';
      if Urano_Porta = 'COM6' then lblSerial.Caption := 'COM6';
      if Urano_Porta = 'COM7' then lblSerial.Caption := 'COM7';
      if Urano_Porta = 'COM8' then lblSerial.Caption := 'COM8';
      if Urano_Porta = 'COM9' then lblSerial.Caption := 'COM9';
      if Urano_Porta = 'COM10' then lblSerial.Caption := 'COM10';
      if Urano_Porta = 'COM11' then lblSerial.Caption := 'COM11';
      if Urano_Porta = 'COM12' then lblSerial.Caption := 'COM12';
      lblSerial.Refresh;

      lblBaudRate.Caption := '2400';
      lblBaudRate.Refresh;

      // configura porta de comunicação
      ACBrBAL1.Modelo           := balUrano;
      ACBrBAL1.Device.HandShake := TACBrHandShake(0);
      ACBrBAL1.Device.Parity    := TACBrSerialParity(0); {zero}
      ACBrBAL1.Device.Stop      := TACBrSerialStop(0); {s1}
      ACBrBAL1.Device.Data      := 8; {8}
      ACBrBAL1.Device.Porta     := Urano_Porta;
      ACBrBAL1.Device.Baud      := 9600;

      // Conecta com a balança
      ACBrBAL1.Ativar;
      Timer1.Enabled := True;
    end;
end;

procedure TFormBalancaFilizola.Timer1Timer(Sender: TObject);
var status, aux   : integer;
    Peso : Double;
    PesoP05A      : array[0..5]of char;
    PesoP05B      : array[0..14] of char;
    dadoPeso      : TDadosPeso;
    Texto : TextFile;
    Info  : string;
begin
  timer1.Enabled := false;
  if FileExists('BalancaCheckoutToledo.txt') or FileExists('BalancaCheckoutUrano.txt') then
    begin
      // Pega Peso
      lblStatus.Caption := 'Comunicando com a balança...';
      Peso := ACBrBAL1.LePeso(ACBrBAL1.Intervalo);
      pnlLiquido.Caption := FloatToStr(Peso);
    end;

  if FileExists('BalancaCheckoutFilizola.txt') then
    begin
      status := StrToInt(FloatToStr(ObtemInformacao(0,0)));
      case status of
        0:  lblStatus.Caption := 'Falha de comunicação com a balança.';
        1:  lblStatus.Caption := 'Peso Oscilando.';
        2:  lblStatus.Caption := 'Peso Estável.';
        3:  lblStatus.Caption := 'Sobrecarga de Peso ou Alivio de Plataforma.';
        4:  lblStatus.Caption := 'Erro lendo licensa do Software.';
      end;

      if ( status = 1 ) or ( status = 2 ) then
        begin
          // vamos construir uma mascara para formatar o peso com as casas
          // decimais da balança

          {if mascara = '' then
          begin
              mascara := '0.';
              for aux := 1 to StrToInt(FloatToStr(ObtemInformacao(0,8))) do
              begin
                  mascara := mascara + '0';
              end;
          end;    }

        {  pnlBruto.Caption  := FormatFloat(mascara,ObtemInformacao(0,1));
          pnlTara.Caption    := FormatFloat(mascara,ObtemInformacao(0,2));
          pnlCont.Caption    := FloatToStr(ObtemInformacao(0,4)); }
          mascara := '##0.000';
          pnlLiquido.Caption := TrocaPontoPorVirgula(FormatFloat('#0,000',ObtemInformacao(0,3)));
        end
      else
        MudaPanelsCaption('0');
    end;

  timer1.Enabled := true;
end;

procedure TFormBalancaFilizola.EditProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  timer1.Enabled := False;

  if key = vk_Escape then
    BTEsc.Click;

  if key = vk_F3 then
    BTEsc.Click;

  if Key = VK_Return then
    if EditProduto.Text <> '' then
      begin
        VlrUnitarioSTR := SQLLocate('PRODUTO','PRODICODBALANCA','PRODN3VLRVENDA',EditProduto.Text);

        if VlrUnitarioSTR = '' then
          begin
            PnDescrProd.Caption := 'Produto sem Preço! Informe Produto!';
            PnDescrProd.Update;
            EditProduto.text := '';
            EditProduto.Update;
          end
        else
          begin
            if StrToFloat(VlrUnitarioSTR) > 0 then
              begin
                PnDescrProd.Caption := SQLLocate('PRODUTO','PRODICODBALANCA','PRODA30ADESCRREDUZ',EditProduto.Text);
                PnDescrProd.Update;
                // Vender Itens
                FormTelaItens.EstadoPDVChk    := 'InformandoItens';
                FormTelaItens.EntradaDados.Text := SQLLocate('PRODUTO','PRODICODBALANCA','PRODICOD',EditProduto.Text);
                FormTelaItens.EditQtde.Value    := StrToFloat(pnlLiquido.Caption);
                FormTelaItens.EntradaDadosKeyDown(Sender, Enter, [ssAlt]);
                EditProduto.text := '';
                EditProduto.Update;
              end;
          end;
      end;
  timer1.Enabled := True;
end;

procedure TFormBalancaFilizola.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if FileExists('BalancaCheckoutFilizola.txt') then
    begin
      Timer1.Enabled := false;
      if Not FinalizaLeitura(0) then ExibeMsgErro(Self.Handle);
      CanClose := true;
    end;
end;

procedure TFormBalancaFilizola.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Timer1.Enabled := false;
  if FileExists('BalancaCheckoutToledo.txt') then
    begin
      if Toledo_TipoLeitura = 0 then // P05A
        if FechaPorta = cSucesso then   // Conseguiu Fechar a porta Serial OK

      if Toledo_TipoLeitura = 1 then // P05B
        begin
          try
            FechaPortaP05;
          except
            Application.ProcessMessages;
          end;
        end;

      // Apaga arquivos Temporarios vindos da Balanca
      try DeleteFile(pchar(Toledo_Dir+'\PESO.TXT')) except Application.ProcessMessages; end;
      try DeleteFile(pchar(Toledo_Dir+'\OK.TXT'))   except Application.ProcessMessages; end;
    end;
  Action := cafree ;
end;

procedure TFormBalancaFilizola.BTEscClick(Sender: TObject);
begin
  timer1.Enabled := False;
  ModalResult := MrCancel;
  Close;
end;

end.
