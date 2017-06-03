unit TelaLoginTerminal;
interface
uses
  VarSYS, JPEG, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Db, DBTables, ConerBtn, Grids, DBGrids,
  DBCtrls, Placemnt, RxQuery;
type
  TFormTelaLogin = class(TForm)
    FormStorage: TFormStorage;
    DSTblTerminal: TDataSource;
    ComboPDV: TDBLookupComboBox;
    EditTerminal: TEdit;
    EditUsuario: TEdit;
    EditSenha: TEdit;
    BtnOk: TBitBtn;
    BitBtn2: TBitBtn;
    RxLabel2: TLabel;
    RxLabel1: TLabel;
    RxLabel3: TLabel;
    SQLTerminal: TRxQuery;
    SQLTerminalTERMICOD: TIntegerField;
    SQLTerminalTERMCTIPO: TStringField;
    SQLTerminalTERMCSTATUSCAIXA: TStringField;
    SQLTerminalTERMDSTATUSCAIXA: TDateTimeField;
    SQLTerminalTERMA60DESCR: TStringField;
    SQLTerminalTERMCATIVO: TStringField;
    SQLTerminalECFA13ID: TStringField;
    SQLTerminalTERMA60NOMECOMPUT: TStringField;
    Image1: TImage;
    procedure BitBtn2Click(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormStorageRestorePlacement(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditSenhaExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboPDVExit(Sender: TObject);
  private
    { Private declarations }
    JPG : TJPEGImage ;
    BMP : TBitMap;
    NumTentativas:Integer;
  public
    { Public declarations }
  end;
var
  FormTelaLogin: TFormTelaLogin;
implementation

uses TelaSplash, DataModulo, UnitLibrary, UnitCheckoutLibrary;

{$R *.DFM}

procedure TFormTelaLogin.BitBtn2Click(Sender: TObject);
begin
  ModalResult := mrCancel ;
end;

procedure TFormTelaLogin.BtnOkClick(Sender: TObject);
begin
  if not (DM.SQLConfigGeralCFGEIEMPPADRAO.Value > 0) then
  begin
    Informa('Não há nehuma Empresa Padrão selecionada,  o sistema não pode iniciar !');
    ComboPDV.SetFocus;
    ModalResult := mrCancel ;
    Exit;
  end ;

  if ComboPDV.Text = '' then
  begin
    Informa('Selecione o Terminal');
    ComboPDV.SetFocus;
    Exit;
  end ;

  if not DM.SQLUsuario.Locate('USUAA60LOGIN', EditUsuario.Text, []) then
  begin
    Informa('Usuário não cadastrado');
    EditUsuario.SetFocus;
    Exit;
  end ;

  if SQLTerminal.RecordCount = 0 then
  begin
    ModalResult := mrOk ;
  end
  else begin
    if DM.SQLUsuarioUSUAA5SENHA.Value = EditSenha.Text then
    begin
      ModalResult := mrOk ;
    end
    else begin
      Informa('Senha Inválida');
      Inc(NumTentativas) ;
      if NumTentativas = 3 then
        ModalResult := mrCancel
      else
        EditSenha.SetFocus ;

      exit ;
    end ;
  end ;

  //TESTAR SE ESTE TERMINAL JÁ ESTÁ ATIVO
  {if not AlterarUsuario then
  begin
    DM.SQLTemplate.Close ;
    DM.SQLTemplate.SQL.Clear ;
    DM.SQLTemplate.SQL.Add('select TERMICOD, TERMCATIVO') ;
    DM.SQLTemplate.SQL.Add('from TERMINAL') ;
    DM.SQLTemplate.SQL.Add('where TERMICOD = ' + SQLTerminalTERMICOD.AsString) ;
    DM.SQLTemplate.Open ;
    if DM.SQLTemplate.FieldByName('TERMCATIVO').AsString = 'S' then
    begin
      Informa('Este terminal já está ativo !') ;
      ComboPDV.Setfocus ;
      ModalResult := mrCancel ;
      Exit ;
    end ;
  end ;}

  EmpresaPadrao     := DM.SQLConfigGeralCFGEIEMPPADRAO.AsString ;
  DM.UsuarioAtual   := DM.SQLUsuarioUSUAICOD.Value ;
  UsuarioAtualNome  := DM.SQLUsuarioUSUAA60LOGIN.AsString ;
  if DM.SQLUsuarioUSUAN2PERCDESC.Value > 0 then
      PercDesqMaxUsario := DM.SQLUsuarioUSUAN2PERCDESC.Value
    else
      PercDesqMaxUsario := 0 ;

  if not AlterarUsuario then
  begin
    TerminalAtual     := SQLTerminalTERMICOD.Value ;
    TerminalAtualNome := SQLTerminalTERMA60DESCR.Value ;
    TerminalAtualData := SQLTerminalTERMDSTATUSCAIXA.AsString ;
    TerminalModo      := SQLTerminalTERMCTIPO.Value ;

    if DM.SQLEmpresa.Locate('EMPRICOD', DM.SQLConfigGeralCFGEIEMPPADRAO.Value, []) then
      MatrizFilial := DM.SQLEmpresa.FieldByName('EMPRCMATRIZFILIAL').AsString ;

    EmpresaCorrente   := DM.SQLConfigGeralCFGEIEMPPADRAO.Value ;
    TerminalCorrente  := TerminalAtual ;

    //FILTRAR TERMINAL ATIVO
    DM.SQLTerminalAtivo.Close ;
    DM.SQLTerminalAtivo.MacroByName('MFiltro').Value := 'TERMICOD = ' + IntToStr(TerminalAtual) ;
    DM.SQLTerminalAtivo.Open ;
    //SETAR DADOS ECF
    if DM.SQLTerminalAtivoECFA13ID.AsString <> '' then
    begin
      DM.SQLTemplate.Close ;
      DM.SQLTemplate.SQL.Clear ;
      DM.SQLTemplate.SQL.Add('select * from ECF') ;
      DM.SQLTemplate.SQL.Add('where ECFA13ID = "' + DM.SQLTerminalAtivoECFA13ID.AsString + '"') ;
      DM.SQLTemplate.Open ;
      if not DM.SQLTemplate.EOF then
      begin
        if DM.SQLTemplate.FieldByNAme('ECFA5IDENTIFICADORCNFV').AsString = '' then
        begin
          Informa('O Cupom Não Fiscal Vinculado não foi informado. Podem ocorrer problemas na autenticação !') ;
        end ;

        if DM.SQLTemplate.FieldByNAme('ECFA5IDENTIFICADORCNFNV').AsString = '' then
        begin
          Informa('O Cupom Não Fiscal Não Vinculado não foi informado. Podem ocorrer problemas na autenticação !') ;
        end ;

        Ecf_ID        := DM.SQLTemplate.FieldByNAme('ECFA13ID').Value ;
        ECFAtual      := DM.SQLTemplate.FieldByNAme('ECFA30MODELO').Value ;
        PortaECFAtual := DM.SQLTerminalAtivoTERMA5ECFPORTACOM.Value ;
        Ecf_CNFV      := DM.SQLTemplate.FieldByNAme('ECFA5IDENTIFICADORCNFV').Value ;
        Ecf_CNFNV     := DM.SQLTemplate.FieldByNAme('ECFA5IDENTIFICADORCNFNV').Value ;

        //CamImprMatr := SQLTerminalTERMA60PATHIMPRMATR.Value ;
        if (ECFAtual <> '') and (PortaECFAtual = '') then
        begin
          Informa('A porta serial do ECF não está configurada, o sistema não irá funcionar corretamente!') ;
          ModalResult := mrCancel ;
          exit ;
        end ;
      end ;
    end
    else begin
      Ecf_ID        := '' ;
      ECFAtual      := '' ;
      PortaECFAtual := '' ;
      Ecf_CNFV      := '' ;
      Ecf_CNFNV     := '' ;
    end ;

    if TerminalModo = '' then
    begin
      Informa('O Tipo de terminal não foi informado, o sistema não pode iniciar !') ;
      ModalResult := mrCancel ;
      exit ;
    end ;

    {if not DM.BloquearTerminal(IntToStr(DM.UsuarioAtual), IntToStr(TerminalAtual)) then
    begin
      Informa('Este terminal já está ativo !') ;
      ModalResult := mrCancel ;
      exit ;
    end ;}
  end ;

  AlterarUsuario := false ;
end ;

procedure TFormTelaLogin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaLogin.FormCreate(Sender: TObject);
begin
  FormStorage.IniFileName := Application.Title + '.ini' ;
  FormStorage.IniSection  := Name ;
  FormStorage.Active      := true ;

  if RetornarNomeComputador = '' then
  begin
    Informa('Não foi possível Descobrir o nome deste computador, poderão havera execução do sistema será cancelada!') ;
    Halt ;
    exit ;
  end ;

  SQLTerminal.Close ;
  SQLTerminal.MacroByName('MFiltro').Value := 'TERMA60NOMECOMPUT = "' + AnsiUpperCase(RetornarNomeComputador) + '"';
  SQLTerminal.Open ;

  if SQLTerminal.EOF then
  begin
    Informa('Não há nenhum terminal configurado para ser usado neste computador !') ;
    Halt ;
    exit ;
  end ;

  NumTentativas := 0 ;
end;

procedure TFormTelaLogin.FormStorageRestorePlacement(Sender: TObject);
begin
  try
    if EditTerminal.Text <> '' then
      ComboPDV.KeyValue := EditTerminal.Text ;
  except
    Application.ProcessMessages ;
  end ;
end;

procedure TFormTelaLogin.FormShow(Sender: TObject);
begin
  //FECHAR TELA DE SPLASH
  if Application.FindComponent('FormTelaSplash') <> nil then
    (Application.FindComponent('FormTelaSplash') as TForm).Close ;

  Application.ProcessMessages ;

  if (ComboPDV.KeyValue <> '') then
  begin
    if (EditUsuario.Text <> '') and (DM.SQLUsuario.Locate('USUAA60LOGIN', EditUsuario.Text,[])) then
      EditSenha.SetFocus
    else
      EditUsuario.SetFocus ;
  end
  else ComboPDV.SetFocus ;
End ;

procedure TFormTelaLogin.FormKeyPress(Sender: TObject; var Key: Char);
Var
  Objeto:TComponent;
begin
  if Key=char(13) Then
    begin
      Objeto:=(Sender as TForm).ActiveControl;
      //If (Objeto is TDBLookUpComboBox) AND (Objeto as TDBLookUpComboBox).IsDropDown Then Begin (Objeto as TDBLookUpComboBox).CloseUp(True);Application.ProcessMessages;End;
      Key:=CHR(0);
      Perform(Wm_NextDlgCtl,0,0);
    End;
end;

procedure TFormTelaLogin.EditSenhaExit(Sender: TObject);
begin
   if (EditSenha.Text <> '') Then
    if (DM.SQLUsuarioUSUAA5SENHA.Value = EditSenha.Text) then
    begin
    end
    else
      begin
        Informa('Senha Inválida');
        Inc(NumTentativas) ;
        if NumTentativas = 3 Then
          ModalResult := mrCancel
        else
          EditSenha.SetFocus;
      End;
end;

procedure TFormTelaLogin.FormActivate(Sender: TObject);
begin
  FormTelaLogin.Caption := 'Bem Vindo ao ' + Application.Title ;

  if Application.FindComponent('FormTelaItens') <> nil then
    ComboPDV.Setfocus ;
end;

procedure TFormTelaLogin.ComboPDVExit(Sender: TObject);
begin
  if (Sender as TDBLookUpComboBox).Text <> '' then
    EditTerminal.Text := IntToStr((Sender as TDBLookUpComboBox).KeyValue) ;
end;

end.
