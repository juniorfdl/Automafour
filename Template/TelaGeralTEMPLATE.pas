unit TelaGeralTEMPLATE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, jpeg, ExtCtrls, DBCtrls, StdCtrls, RxLookup, DBGrids, DB, FormResources,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaGeralTEMPLATE = class(TForm)
    ScrollBoxFundo: TScrollBox;
    PanelCentral: TPanel;
    PanelBarra: TPanel;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ScrollBoxTopo: TScrollBox;
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    AdvPanelNavigator: TAdvOfficeStatusBar;
    BtnFecharTela: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnFecharTelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaGeralTEMPLATE: TFormTelaGeralTEMPLATE;

implementation

{$R *.DFM}

procedure TFormTelaGeralTEMPLATE.FormCreate(Sender: TObject);
begin
  LabelTitulo.Caption := Caption ;
end;

procedure TFormTelaGeralTEMPLATE.BtnFecharTelaClick(Sender: TObject);
begin
  Close ;
end;

procedure TFormTelaGeralTEMPLATE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree ;
end;

procedure TFormTelaGeralTEMPLATE.FormKeyPress(Sender: TObject;
  var Key: Char);
var
  Clausula, ColunaOrdem:String;
  Objeto:TComponent;
  I:Integer;
begin
  if Key=char(13) Then
    begin
      Objeto:=(Sender as TForm).ActiveControl;
      If (Objeto is TRxDBLookUpCombo) AND (Objeto as TRxDBLookUpCombo).IsDropDown Then
      Begin
        (Objeto as TRxDBLookUpCombo).CloseUp(True);Application.ProcessMessages;
      End;
      If (Objeto is TDBMemo) Then Exit;
      if (Objeto is TMemo) Then Exit;
      if (Objeto is TDBGrid) then
        begin
          if (Objeto as TDBGrid).SelectedIndex<(Objeto as TDBGrid).Columns.Count-1 then
            begin
              (Objeto as TDBGrid).Columns[(Objeto as TDBGrid).SelectedIndex+1].Field.FocusControl;
              if ((Objeto as TDBGrid).Columns[(Objeto as TDBGrid).SelectedIndex].ReadOnly) or ((Objeto as TDBGrid).Columns[(Objeto as TDBGrid).SelectedIndex].Field.FieldKind=fkCalculated) then
                FormKeyPress(Sender,Key);
            End
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

procedure TFormTelaGeralTEMPLATE.FormCanResize(Sender: TObject;
  var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  BtnFecharTela.Left := (Sender as TForm).Width - (BtnFecharTela.Width + 15) ;
  BtnFecharTela.Update;
end;

procedure TFormTelaGeralTEMPLATE.FormResize(Sender: TObject);
begin
  BtnFecharTela.Left:= Width - (BtnFecharTela.Width + 60);
  BtnFecharTela.Update;
end;

end.
