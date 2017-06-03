unit CadastroClasse;
                                                                                                                                                   
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, DBCtrls, Db, DBTables, RxQuery, Menus, StdCtrls, Mask,
  Grids, DBGrids, ComCtrls, Buttons, ExtCtrls, VarSys, FormResources,
  ImgList, RXCtrls, jpeg, DBActns, ActnList, Variants, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroClasse = class(TFormCadastroTEMPLATE)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    PaginaModulos: TTabSheet;
    Panel4: TPanel;
    Arvore: TTreeView;
    BtnBloq: TSpeedButton;
    BtnLiber: TSpeedButton;
    TblClasseModulo: TRxQuery;
    TblClasseModuloCLASSICOD: TIntegerField;
    TblClasseModuloCLMDA60NOME: TStringField;
    ImageList: TImageList;
    TblClasseModuloCLMDITIPO: TIntegerField;
    RxSpeedButton1: TRxSpeedButton;
    SQLTemplateCLASSICOD: TIntegerField;
    SQLTemplateCLASSA60DESCRICAO: TStringField;
    SQLClasseModulo: TRxQuery;
    SQLClasse: TRxQuery;
    DSSQLClasse: TDataSource;
    procedure Button3Click(Sender: TObject);
    procedure PagePrincipalChange(Sender: TObject);
    procedure DSMasterTemplateDataChange(Sender: TObject; Field: TField);
    procedure BtnBloqClick(Sender: TObject);
    procedure RxSpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Flag:boolean;
    procedure AtualizaNivel(Item: TTreeNode; Tipo: integer) ;
    procedure IniciaArvore(MainMenu:TMainMenu;TreeView:TTreeView;classe:Integer);
    procedure ConstroiArvore(MenuItem:TMenuItem; TreeView:TTreeView;Classe:Integer);

  public
    { Public declarations }
  end;

type
  Registro = record
    ModuloName:string;
  end;
  RegistroArvore=^Registro;

var
  FormCadastroClasse: TFormCadastroClasse;

implementation

uses CadastroClasseUsuario, DataModulo;

{$R *.DFM}
procedure TFormCadastroClasse.AtualizaNivel(Item: TTreeNode; Tipo: integer) ;
var
  Nodo : RegistroArvore ;
  i    : integer ;
begin
  Nodo := Item.Data ;
  SQLClasse.SQL.Text:='Update CLASSEMODULO SET CLMDITIPO='+IntToStr(Tipo)+' Where (CLASSICOD='+DSTemplate.DataSet.FindField('CLASSICOD').asString+') and (CLMDA60NOME='''+Nodo.ModuloName+''')';
  SQLClasse.ExecSQL;

  Item.ImageIndex := Tipo ;
  Item.SelectedIndex := Tipo ;

  if Item.Count >0 then
    for i := 0 To Item.Count-1 do
      AtualizaNivel(Item.Item[i], Tipo) ;
end ;
procedure TFormCadastroClasse.IniciaArvore(MainMenu:TMainMenu;TreeView:TTreeView;classe:Integer);
var
  I:Integer;
begin
  TreeView.Visible:=false;
  TreeView.Items.Clear;
  for I := 0 To MainMenu.Items.Count-1 do
    Begin
      ConstroiArvore(MainMenu.Items[I], TreeView, Classe);
      TreeView.Selected := nil ;
    end ;
  TreeView.FullCollapse;
  TreeView.Visible:=True;
end;
procedure TFormCadastroClasse.ConstroiArvore(MenuItem:TMenuItem; TreeView:TTreeView;classe:Integer);
var
  i : integer;
  Texto : string ;
  Nodo : RegistroArvore;
begin
  if (MenuItem.Tag = 1) then
    Exit ;

  if not (MenuItem.Visible) then
    Exit ;

  Texto := MenuItem.Caption ;
  Delete(Texto,Pos('&',Texto),1);

  SQLClasse.SQL.Text:='Select * From CLASSE';
  SQLClasse.Open;
  SQLClasse.First; TblClasseModulo.DataSource:=DSSQLClasse;
  If Not TblClasseModulo.Active Then TblClasseModulo.Open;
  while not SQLClasse.Eof do
    begin
      if not TblClasseModulo.Locate('CLASSICOD;CLMDA60NOME',VarArrayOf([SQLClasse.FindField('CLASSICOD').Value,MenuItem.Name]),[]) then
      begin
        SQLClasseModulo.SQL.Text:='Insert into CLASSEMODULO VALUES ('+SQLClasse.FindField('CLASSICOD').asString+','''+MenuItem.Name+''',1,''S'','''+FormatDateTime('mm/dd/yyyy hh:nn:ss',Now)+''')';
        SQLClasseModulo.ExecSQL;
      end ;
      SQLClasse.Next;
    end;
  SQLClasse.Close;
  TblClasseModulo.Close;
  TblClasseModulo.DataSource:=DSTemplate;
  TblClasseModulo.Open;
  TblClasseModulo.Locate('CLASSICOD;CLMDA60NOME',VarArrayOf([DSTemplate.DataSet.FindField('CLASSICOD').Value,MenuItem.Name]),[]);
  Nodo := New(RegistroArvore);
  Nodo.ModuloName := MenuItem.Name;
  TreeView.Selected := TreeView.Items.AddChildObject(TreeView.Selected,Texto,Nodo);
  TreeView.Selected.ImageIndex     := TblClasseModuloCLMDITIPO.asInteger;
  TreeView.Selected.SelectedIndex  := TblClasseModuloCLMDITIPO.asInteger;
  if MenuItem.Count<>0 then
    begin
      for I := 0 To MenuItem.Count-1 Do
        ConstroiArvore(MenuItem.Items[I], TreeView,Classe);
      if TreeView.Selected.Parent <> nil Then
        TreeView.Selected := TreeView.Selected.Parent
      else
        TreeView.Selected := TreeView.Items[0];
    end
  else
    TreeView.Selected := TreeView.Selected.Parent;
end;

procedure TFormCadastroClasse.Button3Click(Sender: TObject);
begin
  inherited;
  PagePrincipal.ActivePage:=PaginaModulos;
  PagePrincipal.OnChange(PagePrincipal);
end;

procedure TFormCadastroClasse.PagePrincipalChange(Sender: TObject);
Var
  MainMenu:TMainMenu;
begin
  inherited;
  if PagePrincipal.ActivePage = PaginaModulos then
    begin
      Screen.Cursor := crhourglass ;
      DSTemplate.Enabled := false ;
      if Application.FindComponent('FormPrincipal') <> nil then
      begin
        MainMenu := (Application.FindComponent('FormPrincipal') as TForm).FindComponent('MainMenu') as TMainMenu;
        IniciaArvore(MainMenu , Arvore, DSTemplate.DataSet.FieldByName('CLASSICOD').Value);
      end ;
      Flag:=true;
      DSTemplate.Enabled:=True;
      Flag:=False;
      Screen.Cursor := crDefault ;
    end ;
end;

procedure TFormCadastroClasse.DSMasterTemplateDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if (Field = nil) and (not Flag) Then
    if (not (DSTemplate.State in DsEditModes)) and (PagePrincipal.ActivePage=PaginaModulos) then
      PagePrincipal.OnChange(PagePrincipal);
end;

procedure TFormCadastroClasse.BtnBloqClick(Sender: TObject);
var
  Nodo : RegistroArvore ;
begin
  inherited;
  if Arvore.Selected <> nil then
  begin
    AtualizaNivel(Arvore.Selected, (Sender as TSpeedButton).Tag) ;
    Arvore.Refresh ;
  end ;
end;

procedure TFormCadastroClasse.RxSpeedButton1Click(Sender: TObject);
begin
  inherited;
  DSMasterSys:=DSTemplate;
  CriaFormulario(TFormCadastroClasseUsuario,'FormCadastroClasseUsuario',True,False,True,DSTemplate.DataSet.FieldByName('CLASSA60DESCRICAO').asString);
end;

procedure TFormCadastroClasse.FormCreate(Sender: TObject);
begin
  inherited;
  TABELA := 'CLASSE'; 
end;

end.
