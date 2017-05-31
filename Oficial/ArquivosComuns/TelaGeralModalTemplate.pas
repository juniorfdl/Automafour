unit TelaGeralModalTemplate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls, RxLookup, DBGrids, DB, FormResources,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaGeralModalTemplate = class(TForm)
    PanelCentral: TPanel;
    ScrollBoxTopo: TScrollBox;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    AdvPanelNavigator: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    BtnFecharTela: TSpeedButton;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaGeralModalTemplate: TFormTelaGeralModalTemplate;

implementation

{$R *.dfm}

procedure TFormTelaGeralModalTemplate.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  BtnFecharTela.Left := (Sender as TForm).Width - (BtnFecharTela.Width + 15) ;
  BtnFecharTela.Update;
end;

procedure TFormTelaGeralModalTemplate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaGeralModalTemplate.FormCreate(Sender: TObject);
begin
  LabelTitulo.Caption := Caption ;
end;

procedure TFormTelaGeralModalTemplate.FormKeyPress(Sender: TObject; var Key: Char);
var
  Clausula, ColunaOrdem:String;
  Objeto:TComponent;
  I:Integer;
begin
  if Key=char(13) Then
    begin
      Objeto:=(Sender as TForm).ActiveControl;
      If (Objeto is TDBMemo) Then Exit;
      if (Objeto is TMemo) Then Exit;
      if (Objeto is TDBGrid) then
        begin
          Exit; {Adilson coloquei pq ao lancar nota de compra ou venda quando procurava produto pelo nome, ao retornar da tela de consulta se perdia e fechava o sistema}
          if (Objeto as TDBGrid).SelectedIndex<(Objeto as TDBGrid).Columns.Count-1 then
            begin
              (Objeto as TDBGrid).Columns[(Objeto as TDBGrid).SelectedIndex+1].Field.FocusControl;
              if ((Objeto as TDBGrid).Columns[(Objeto as TDBGrid).SelectedIndex].ReadOnly) or ((Objeto as TDBGrid).Columns[(Objeto as TDBGrid).SelectedIndex].Field.FieldKind=fkCalculated) then
                FormKeyPress(Sender,Key);
            end
          else
            Begin
              if (Objeto as TDBGrid).DataSource.DataSet.State in dsEditModes then
              begin
                (Objeto as TDBGrid).DataSource.DataSet.Post;
                (Objeto as TDBGrid).DataSource.DataSet.Next;
              end ;

              if not (Objeto as TDBGrid).DataSource.DataSet.Eof then
                Begin
                  (Objeto as TDBGrid).DataSource.DataSet.Next;
                  (Objeto as TDBGrid).Columns[0].Field.FocusControl;
                end
              else
                if not ((Objeto as TDBGrid).ReadOnly) Then (Objeto as TDBGrid).DataSource.DataSet.Append;
            end;
          Key:=CHR(0);Exit;
        end;
      Key:=CHR(0);
      If Visible Then
        Perform(Wm_NextDlgCtl,0,0);
    End;
end;

procedure TFormTelaGeralModalTemplate.BtnFecharTelaClick(Sender: TObject);
begin
  close;
end;

procedure TFormTelaGeralModalTemplate.FormResize(Sender: TObject);
begin
  BtnFecharTela.Left:= Width - (BtnFecharTela.Width + 60);
  BtnFecharTela.Update;
end;

end.
