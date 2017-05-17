unit TelaPlanoContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls,
  RxDBComb, ComCtrls, Mask, DB, Menus, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaPlanoContas = class(TFormTelaGeralTEMPLATE)
    Panel4: TPanel;
    Label50: TLabel;
    GroupBox22: TGroupBox;
    LNivel1: TLabel;
    LNivel2: TLabel;
    LNivel3: TLabel;
    LNivel4: TLabel;
    LNivel5: TLabel;
    LNivel6: TLabel;
    LNivel7: TLabel;
    LNivel8: TLabel;
    LNivel9: TLabel;
    LNivel10: TLabel;
    ComboNivel1: TRxDBComboBox;
    ComboNivel2: TRxDBComboBox;
    ComboNivel3: TRxDBComboBox;
    ComboNivel4: TRxDBComboBox;
    ComboNivel5: TRxDBComboBox;
    ComboNivel6: TRxDBComboBox;
    ComboNivel7: TRxDBComboBox;
    ComboNivel8: TRxDBComboBox;
    ComboNivel9: TRxDBComboBox;
    ComboNivel10: TRxDBComboBox;
    ComboNiveis: TRxDBComboBox;
    Panel_Reg: TPanel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    CodReduzido: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    CodigoEdit: TDBEdit;
    NomeEdit: TDBEdit;
    ListaConta: TListBox;
    BtnGravar: TSpeedButton;
    DSSQLConfigConta: TDataSource;
    PopupMenu1: TPopupMenu;
    NovaConta: TMenuItem;
    SubConta: TMenuItem;
    Excluir: TMenuItem;
    N1: TMenuItem;
    Mn_Exp_Nivel: TMenuItem;
    Mn_Cnt_Nivel: TMenuItem;
    N2: TMenuItem;
    Mn_Exp_Tudo: TMenuItem;
    Mn_Cnt_Tudo: TMenuItem;
    PanelArvore: TPanel;
    Arvore: TTreeView;
    ProgressBar: TProgressBar;
    procedure ComboNiveisChange(Sender: TObject);
    procedure DSSQLConfigContaStateChange(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure ArvoreChange(Sender: TObject; Node: TTreeNode);
    procedure ArvoreCompare(Sender: TObject; Node1, Node2: TTreeNode;
      Data: Integer; var Compare: Integer);
    procedure ArvoreDblClick(Sender: TObject);
    procedure CodReduzidoEnter(Sender: TObject);
    procedure CodReduzidoExit(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure NovaContaClick(Sender: TObject);
    procedure SubContaClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure Mn_Exp_NivelClick(Sender: TObject);
    procedure Mn_Cnt_NivelClick(Sender: TObject);
    procedure Mn_Exp_TudoClick(Sender: TObject);
    procedure Mn_Cnt_TudoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NomeEditChange(Sender: TObject);
    procedure NomeEditExit(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaCombosContas;
    Function Captura_Mae(Conta:TTreeNode):String;
    Function Converte_Codigo(Codigo:String):String;
    Function Testa_Grau(Codigo:String):Integer;
    Function Tamanho_Grau(Codigo:String;Grau:Integer):String;
    Function Prepara_Codigo_Conta(Codigo:String):String;
    Function Prepara_Codigo_SubConta(Codigo:String):String;
    Function Procura_Mae(Codigo:String):Boolean;
    procedure Insere_Nodo(Codigo:String);
  public
    { Public declarations }
  end;

Type
  CodigoNodo=Record
    Codigo:String[15];
  End;
  NodoArvore=^CodigoNodo;

var
  FormTelaPlanoContas: TFormTelaPlanoContas;

implementation

uses DataModulo;

{$R *.dfm}
procedure TFormTelaPlanoContas.AtualizaCombosContas;
var
  I:Integer;
  Hab:boolean;
begin
  for I:=1 To 10 do
    begin
      Hab:=(I<=DM.SQLConfigConta.FieldByName('CFGNIVEIS').AsInteger);
      (FindComponent('ComboNivel'+IntToStr(I)) as TRXDBComboBox).Enabled:=Hab;
      (FindComponent('LNivel'+IntToStr(I)) as TLabel).Enabled:=Hab;
    end;
end;

Function TFormTelaPlanoContas.Captura_Mae(Conta:TTreeNode):String;
Var
  Nodo:NodoArvore;
Begin
  If Conta.Parent <> Nil Then
    Begin
      Nodo:=Conta.Parent.Data;
      Captura_Mae:=Nodo.Codigo;
    End;
End;
Function TFormTelaPlanoContas.Converte_Codigo(Codigo:String):String;
Var
  Cont,Cont1:Integer;
  Resposta:String;
begin
  Cont1:=1;Cont:=1;Resposta:='';
  While Codigo[Cont]<>'' Do
    Begin
      If DM.SQLConfigConta.FieldByName('CFGCA30MASCARA').asString[Cont1]='_' Then
        Begin Resposta:=Resposta+Codigo[Cont];Inc(Cont);End
      Else
        Resposta:=Resposta+'.';
      Inc(Cont1);
    End;
  Converte_Codigo:=Resposta;
end;
Function TFormTelaPlanoContas.Testa_Grau(Codigo:String):Integer;
Var
  ContaGrau,Grau,Tamanho:Integer;
Begin
  ContaGrau:=0;
  Grau:=1;
  Tamanho:=DM.SQLConfigConta.FieldByName('CFGCINIVEL1').asInteger;
  While Copy(Codigo,Grau,Tamanho)<>'' Do
    Begin
      Inc(ContaGrau);
      Grau:=Grau+Tamanho;
      Tamanho:=DM.SQLConfigConta.FieldByName('CFGCINIVEL'+IntToStr(ContaGrau+1)).asInteger;
    End;
  Testa_Grau:=ContaGrau;
End;
Function TFormTelaPlanoContas.Tamanho_Grau(Codigo:String;Grau:Integer):String;
Var
  I:Integer;
begin
  Result:=Codigo;
  I:=Length(Codigo);
  While I<DM.SQLConfigConta.FieldByName('CFGCINIVEL'+IntToStr(Grau)).asInteger Do
    Begin Result:='0'+Result; Inc(I); End;
End;
Function TFormTelaPlanoContas.Prepara_Codigo_Conta(Codigo:String):String;
Var
  ContaGrau,Grau,Tamanho,Aux:Integer;
  MemPos,MemTam,Incremento:Integer;
  Sair:Boolean;
Begin
  MemPos:=0;MemTam:=0;
  ContaGrau:=0;
  Grau:=1;
  Tamanho:=DM.SQLConfigConta.FieldByName('CFGCINIVEL1').asInteger;
  While Copy(Codigo,Grau,Tamanho)<>'' Do
    Begin
      Inc(ContaGrau);
      MemPos:=Grau; MemTam:=Tamanho;
      Grau:=Grau+Tamanho;
      Tamanho:=DM.SQLConfigConta.FieldByName('CFGCINIVEL'+IntToStr(ContaGrau+1)).asInteger;
    End;
  Aux:=StrToInt(Copy(Codigo,MemPos,MemTam));
  DM.SQLPlanodeContas.MacroByName('MFiltro').asString:='PLCTA15COD='''+Copy(Codigo,1,MemPos-1)+Tamanho_Grau(IntToStr(Aux+5),ContaGrau)+'''';
  DM.SQLPlanodeContas.Close;
  DM.SQLPlanodeContas.Open;
  DM.SQLPlanodeContas.First;
  If (ContaGrau=DM.SQLConfigConta.FieldByName('CFGCNIVEIS').AsInteger) AND (DM.SQLPlanodeContas.Eof) Then
    Incremento:=5
  Else
    Incremento:=1;
  Sair := False;
  While Not Sair Do
    Begin
      DM.SQLPlanodeContas.MacroByName('MFiltro').asString:='PLCTA15COD='''+Copy(Codigo,1,MemPos-1)+Tamanho_Grau(IntToStr(Aux),ContaGrau)+'''';
      DM.SQLPlanodeContas.Close;
      DM.SQLPlanodeContas.Open;
      DM.SQLPlanodeContas.First;
      If DM.SQLPlanodeContas.Eof Then
        Sair := True
      Else
        Inc(Aux,Incremento);
    End;
  If Length(IntToStr(Aux))>MemTam Then
    Begin
      Aux:=StrToInt(Copy(Codigo,MemPos,MemTam));
      Sair := False;
      While Not Sair Do
        Begin
          DM.SQLPlanodeContas.MacroByName('MFiltro').AsString:='PLCTA15COD='''+Copy(Codigo,1,MemPos-1)+Tamanho_Grau(IntToStr(Aux),ContaGrau)+'''';
          DM.SQLPlanodeContas.Close;
          DM.SQLPlanodeContas.Open;
          DM.SQLPlanodeContas.First;
          If DM.SQLPlanodeContas.Eof Then
            Sair := True
          Else
            Inc(Aux);
        End;
      If Length(IntToStr(Aux))>MemTam Then
        Begin
          Aux:=StrToInt(Copy(Codigo,MemPos,MemTam));
          Sair := False;
          While Not Sair Do
            Begin
              DM.SQLPlanodeContas.MacroByName('MFiltro').AsString:='PLCTA15COD='''+Copy(Codigo,1,MemPos-1)+Tamanho_Grau(IntToStr(Aux),ContaGrau)+'''';
              DM.SQLPlanodeContas.Close;
              DM.SQLPlanodeContas.Open;
              DM.SQLPlanodeContas.First;
              If DM.SQLPlanodeContas.Eof or (Aux=0) Then
                Sair := True
              Else
                Dec(Aux);
            End;

          If Aux=0 Then
            Begin
              Application.Messagebox('Nível Esgotado!','Informa',MB_Ok+MB_IconStop);
              Abort;
            End;
        End;
    End;
  Result:=Copy(Codigo,1,MemPos-1)+Tamanho_Grau(IntToStr(Aux),ContaGrau);
End;
Function TFormTelaPlanoContas.Prepara_Codigo_SubConta(Codigo:String):String;
Var
  Aux,Incremento:Integer;
  Sair : Boolean;
Begin
  If Testa_Grau(Codigo)+1=DM.SQLConfigConta.FieldByName('CFGCNIVEIS').asInteger Then
    Incremento:=5
  Else
    Incremento:=1;
  Aux:=1;

  Sair := False;
  While Not Sair Do
    Begin
      DM.SQLPlanodeContas.MacroByName('MFiltro').AsString:='PLCTA15COD='''+Codigo+Tamanho_Grau(IntToStr(Aux),Testa_Grau(Codigo)+1)+'''';
      DM.SQLPlanodeContas.Close;
      DM.SQLPlanodeContas.Open;
      DM.SQLPlanodeContas.First;
      If DM.SQLPlanodeContas.Eof Then
        Sair := True
      Else
        Inc(Aux,Incremento);
    End;
  If Length(IntToStr(Aux))>Length(Tamanho_Grau('1',Testa_Grau(Codigo)+1)) then
    Begin
      Aux:=1;
      Sair := False;
      While Not Sair Do
        Begin
          DM.SQLPlanodeContas.MacroByName('MFiltro').AsString:='PLCTA15COD='''+Codigo+Tamanho_Grau(IntToStr(Aux),Testa_Grau(Codigo)+1)+'''';
          DM.SQLPlanodeContas.Close;
          DM.SQLPlanodeContas.Open;
          DM.SQLPlanodeContas.First;
          If DM.SQLPlanodeContas.Eof Then
            Sair := True
          Else
            Inc(Aux);
        End;
      If Length(IntToStr(Aux))>Length(Tamanho_Grau('1',Testa_Grau(Codigo)+1)) Then
        Begin
          Application.Messagebox('Nível Esgotado!','Informa',MB_Ok+MB_IconStop);
          Abort;
        End;
    End;
  Result:=Codigo+Tamanho_Grau(IntToStr(Aux),Testa_Grau(Codigo)+1)
End;
Function TFormTelaPlanoContas.Procura_Mae(Codigo:String):Boolean;
Var
  Cont:Integer;
Begin
  Cont:=ListaConta.Items.IndexOf(Codigo);
  If Cont<>-1 Then
    Begin
      Arvore.Selected:=Arvore.Items[Cont];
      Result:=True;
    End
  Else
    Result:=False;
End;
procedure TFormTelaPlanoContas.Insere_Nodo(Codigo:String);
Var
  NovoNodo:NodoArvore;
  Nome:String;
Begin
{  NovoNodo:=New(NodoArvore); #ver
  NovoNodo.Codigo:=Codigo;
  Nome:=DM.SQLContaPLCTA60DESCR.asString;
  If Not Procura_Mae(DM.SQLContaPLCTA15CODPAI.asString) Then
    Begin
      If Arvore.Items.Count<>0 Then Arvore.Selected:=Arvore.Items[0];
      Arvore.Selected:=Arvore.Items.AddObject(Arvore.Selected,Nome,NovoNodo);
      ListaConta.Items.Add(NovoNodo.Codigo);
    End
  Else
    Begin
      Arvore.Selected:=Arvore.Items.AddChildObject(Arvore.Selected,Nome,NovoNodo);
      ListaConta.Items.Add(NovoNodo.Codigo);
    End;}
End;
procedure TFormTelaPlanoContas.ComboNiveisChange(Sender: TObject);
begin
  inherited;
  (Sender as TRxDBComboBox).Field.AsString:=(Sender as TRxDBComboBox).Values[(Sender as TRxDBComboBox).ItemIndex];
  AtualizaCombosContas;
end;

procedure TFormTelaPlanoContas.DSSQLConfigContaStateChange(
  Sender: TObject);
begin
  inherited;
  BtnGravar.Enabled := (DSSQLConfigConta.State in DsEditModes);
end;

procedure TFormTelaPlanoContas.BtnGravarClick(Sender: TObject);
begin
  inherited;
  DM.SQLConfigConta.Post;
end;

procedure TFormTelaPlanoContas.ArvoreChange(Sender: TObject;
  Node: TTreeNode);
Var
  Nodo:NodoArvore;
begin
  inherited;
  If Not Arvore.Visible Then Exit;
  DM.SQLPlanodeContas.Close;
  DM.SQLPlanodeContas.MacroByName('MFiltro').AsString:='0=0';
  DM.SQLPlanodeContas.Open;
  DM.SQLPlanodeContas.First;
  if Not DM.SQLPlanodeContas.Eof Then
    Begin
      if Visible Then
        Begin
          Nodo:=Arvore.Selected.Data;
          DM.SQLPlanodeContas.Close;
          DM.SQLPlanodeContas.MacroByName('MFiltro').asString:='PLCTA15COD='''+Nodo.Codigo+'''';
          DM.SQLPlanodeContas.Open;
        end;
      If (Arvore.Selected.Level+1=DM.SQLConfigConta.FieldByName('CFGCNIVEIS').asInteger) OR (Arvore.Selected.HasChildren) Then
        DBRadioGroup1.Enabled:=False
      Else
        DBRadioGroup1.Enabled:=True;
    End;
end;

procedure TFormTelaPlanoContas.ArvoreCompare(Sender: TObject; Node1,
  Node2: TTreeNode; Data: Integer; var Compare: Integer);
Var
  Nodo1,Nodo2:NodoArvore;
begin
  inherited;
  if visible then
    begin
      Nodo1:=Node1.Data;
      Nodo2:=Node2.Data;
      If Nodo1.Codigo>Nodo2.Codigo Then
        Compare:=1
      Else
        Compare:=-1;
    end;
end;

procedure TFormTelaPlanoContas.ArvoreDblClick(Sender: TObject);
begin
  inherited;
  NomeEdit.SetFocus;
end;

procedure TFormTelaPlanoContas.CodReduzidoEnter(Sender: TObject);
begin
  inherited;
  PanelArvore.Enabled:=False;
end;

procedure TFormTelaPlanoContas.CodReduzidoExit(Sender: TObject);
begin
  inherited;
  If (DM.SQLPlanodeContas.State=dsEdit) OR (DM.SQLPlanodeContas.State=dsInsert) Then
    Begin
      DM.SQLPlanodeContas.Post;
      PanelArvore.Enabled:=True;
      Arvore.SetFocus;
    end
  Else
    PanelArvore.Enabled:=True;
end;

procedure TFormTelaPlanoContas.PopupMenu1Popup(Sender: TObject);
begin
  inherited;
  If Arvore.Items.Count<>0 Then
    begin
      If (Arvore.Selected.HasChildren) Then
        Excluir.Visible:=False
      Else
        Excluir.Visible:=True;
      If (Arvore.Selected.Level+1=DM.SQLConfigConta.FieldByName('CFGCNIVEIS').AsInteger) OR (DM.SQLPlanodeContasPLCTCANALSINT.asString='A') Then
        SubConta.Visible:=False
      Else
        SubConta.Visible:=True;
    End
  Else
    Begin
      SubConta.Visible:=False;
      Excluir.Visible:=False;
    End;
end;

procedure TFormTelaPlanoContas.NovaContaClick(Sender: TObject);
Var
  Nodo,NovoNodo:NodoArvore;
begin
  inherited;
{  if DM.SQLPlanodeContas.State in DSEditModes then #ver
    DM.SQLPlanodeContas.Post ;

  NovoNodo:=New(NodoArvore);
  DM.SQLPlanodeContas.Close;
  DM.SQLPlanodeContas.MacroByName('MFiltro').asString:='0=0';
  DM.SQLPlanodeContas.Open;
  DM.SQLPlanodeContas.First;
  If DM.SQLPlanodeContas.Eof Then
    NovoNodo.Codigo:=Tamanho_Grau('1',1)
  Else
    Begin
      Nodo:=Arvore.Selected.Data;
      NovoNodo.Codigo:=Prepara_Codigo_Conta(Nodo.Codigo);
    End;
  Arvore.Selected:=Arvore.Items.AddObject(Arvore.Selected,'Nova Conta',NovoNodo);
  DM.SQLPlanodeContas.Append;
  DM.SQLPlanodeContasPLCTA15COD.asString:=NovoNodo.Codigo;
  DM.SQLPlanodeContasPLCTA60DESCR.asString:='Nova Conta';
  DM.SQLPlanodeContasPLCTA30CODEDIT.asString:=Converte_Codigo(NovoNodo.Codigo);
  DM.SQLPlanodeContasPLCTINIVEL.asInteger:=Testa_Grau(NovoNodo.Codigo);
  DM.SQLPlanodeContasPLCTA15CODPAI.asString:=Captura_Mae(Arvore.Selected);
  If (Arvore.Selected.Level+1=DM.SQLConfigConta.FieldByName('CFGCNIVEIS').asInteger) OR (Arvore.Selected.HasChildren) Then
    Begin
      DBRadioGroup1.Enabled:=False;
      DM.SQLPlanodeContasPLCTCANALSINT.asString:='A';
    End
  Else
    DBRadioGroup1.Enabled:=True;
  DM.SQLPlanodeContas.Post;
  Panel_Reg.Enabled:=True;
  NomeEdit.SetFocus;
  Arvore.AlphaSort;
  PanelArvore.Enabled:=True;}
end;

procedure TFormTelaPlanoContas.SubContaClick(Sender: TObject);
Var
  Nodo,NovoNodo:NodoArvore;
begin
  inherited;
{  if DM.SQLPlanodeContas.State in DSEditModes then #ver
    DM.SQLPlanodeContas.Post ;

  NovoNodo:=New(NodoArvore);
  DM.SQLPlanodeContas.Close;
  DM.SQLPlanodeContas.MacroByName('MFiltro').asString:='0=0';
  DM.SQLPlanodeContas.Open;
  DM.SQLPlanodeContas.First;
  If DM.SQLPlanodeContas.Eof Then
    NovoNodo.Codigo:=Tamanho_Grau('1',1)
  Else
    Begin
      Nodo:=Arvore.Selected.Data;
      NovoNodo.Codigo:=Prepara_Codigo_SubConta(Nodo.Codigo);
    End;
  Arvore.Selected:=Arvore.Items.AddChildObject(Arvore.Selected,'Nova Conta',NovoNodo);
  DM.SQLPlanodeContas.Append;
  DM.SQLPlanodeContasPLCTA15COD.asString:=NovoNodo.Codigo;
  DM.SQLPlanodeContasPLCTA60DESCR.asString:='Nova Conta';
  DM.SQLPlanodeContasPLCTA30CODEDIT.asString:=Converte_Codigo(NovoNodo.Codigo);
  DM.SQLPlanodeContasPLCTINIVEL.asInteger:=Testa_Grau(NovoNodo.Codigo);
  DM.SQLPlanodeContasPLCTA15CODPAI.asString:=Captura_Mae(Arvore.Selected);
  If (Arvore.Selected.Level+1=DM.SQLConfigConta.FieldByName('CFGCNIVEIS').asInteger) OR (Arvore.Selected.HasChildren) Then
    Begin
      DBRadioGroup1.Enabled:=False;
      DM.SQLPlanodeContasPLCTCANALSINT.asString:='A';
    End
  Else
    DBRadioGroup1.Enabled:=True;
  DM.SQLPlanodeContas.Post;
  Arvore.Selected.Expand(True);
  NomeEdit.SetFocus;}
end;

procedure TFormTelaPlanoContas.ExcluirClick(Sender: TObject);
begin
  inherited;
  DM.SQLPlanodeContas.Delete;
  Dispose(Arvore.Selected.Data);
  Arvore.Selected.Delete;
  DM.SQLPlanodeContas.Close;
  DM.SQLPlanodeContas.MacroByName('MFiltro').asString:='0=0';
  DM.SQLPlanodeContas.Open;
  DM.SQLPlanodeContas.First;
  If DM.SQLPlanodeContas.Eof Then
    Panel_Reg.Enabled:=False;
  ArvoreChange(Arvore,Arvore.Selected);
end;

procedure TFormTelaPlanoContas.Mn_Exp_NivelClick(Sender: TObject);
begin
  inherited;
  Arvore.Selected.Expand(True);
end;

procedure TFormTelaPlanoContas.Mn_Cnt_NivelClick(Sender: TObject);
begin
  inherited;
  Arvore.Selected.Collapse(True);
end;

procedure TFormTelaPlanoContas.Mn_Exp_TudoClick(Sender: TObject);
begin
  inherited;
  Arvore.FullExpand;
end;

procedure TFormTelaPlanoContas.Mn_Cnt_TudoClick(Sender: TObject);
begin
  inherited;
  Arvore.FullCollapse;
end;

procedure TFormTelaPlanoContas.FormCreate(Sender: TObject);
begin
  inherited;
{  If (Arvore.Items.Count = 0) then #ver
    Begin
      DM.SQLConfigConta.Open;
      DM.SQLPlanodeContas.Open;
      Arvore.Visible:=False;
      ProgressBar.Position:=0;
      ProgressBar.Update;
      ProgressBar.Visible:=True;
      DM.SQLConta.Open;
      ProgressBar.Max:=DM.SQLConta.RecordCount;
      DM.SQLConta.First;
      While not DM.SQLConta.Eof Do
        Begin
          ProgressBar.Position:=ProgressBar.Position+1;
          ProgressBar.UpDate;
          Insere_Nodo(DM.SQLContaPLCTA15COD.asString);
          DM.SQLConta.Next;
        End;
      if Arvore.Items.Count<>0 Then
        Arvore.Selected:=Arvore.Items[0];
      DM.SQLConta.First;
      If Not DM.SQLConta.Eof Then
        Panel_Reg.Enabled:=True;
      Arvore.FullCollapse;
      ProgressBar.Position:=0;
      ProgressBar.Update;
      ProgressBar.Visible:=False;
      Arvore.Visible:=True;
    End;}
end;

procedure TFormTelaPlanoContas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  If (DSSQLConfigConta.State in DsEditModes) and (Application.MessageBox('Deseja sair sem Gravar?','Atenção',MB_YesNo+MB_IconQuestion)=Id_No) Then
    Abort
  Else
    DM.SQLConfigConta.Cancel;
  inherited;
end;

procedure TFormTelaPlanoContas.NomeEditChange(Sender: TObject);
begin
  inherited;
  If (Visible) AND (NomeEdit.Focused) Then
    Begin
      if Arvore.Items.Count<>0 Then
        Arvore.Selected.Text:=NomeEdit.Text;
    End;
end;

procedure TFormTelaPlanoContas.NomeEditExit(Sender: TObject);
begin
  inherited;
  if (DM.SQLPlanodeContas.State=dsEdit) OR (DM.SQLPlanodeContas.State=dsInsert) then
    Begin
      DM.SQLPlanodeContas.Post;
      PanelArvore.Enabled:=True;
      Arvore.SetFocus;
    end
  Else
    Begin
      PanelArvore.Enabled:=True;
      Arvore.SetFocus;
    End;
end;

end.
