unit CadastroGrupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CadastroTemplate, Db, DBTables, RxQuery, Menus, RXCtrls, StdCtrls, Mask,
  Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, jpeg, DBCtrls, FormResources,
  VarSys, DBActns, ActnList, ImgList, ExtDlgs, Variants, RxDBComb,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroGrupo = class(TFormCadastroTEMPLATE)
    SQLTemplateGRUPICOD: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLGrupoAux: TRxQuery;
    SQLGrupoAuxGRUPICOD: TIntegerField;
    SQLGrupoAuxGRUPA60DESCR: TStringField;
    SQLTemplateGRUPA60DESCR: TStringField;
    GroupBoxFOTO: TGroupBox;
    ImageGrupo: TImage;
    BtnCapturaFoto: TSpeedButton;
    BtnRemoveFoto: TSpeedButton;
    BtSalvarImagem: TSpeedButton;
    SQLTemplateGRUPBIMAGEM: TBlobField;
    PictureDialog: TOpenPictureDialog;
    SQLTemplateGRUPINIVEL: TIntegerField;
    ComboOrigem: TRxDBComboBox;
    Label3: TLabel;
    SQLTemplateLISTARMOBILE: TStringField;
    DBCheckBox3: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure BtnCapturaFotoClick(Sender: TObject);
    procedure BtnRemoveFotoClick(Sender: TObject);
    procedure BtSalvarImagemClick(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroGrupo: TFormCadastroGrupo;

implementation

uses CadastroSubgrupo, UnitLibrary;

{$R *.DFM}

procedure TFormCadastroGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'GRUPO' ;
end;

procedure TFormCadastroGrupo.Button1Click(Sender: TObject);
begin
  inherited;
  If (Sender as TRxSpeedButton).Name='Button3' Then
    Begin
      DSMasterSys := DsTemplate;
      CriaFormulario(TFormCadastroSubGrupo,'FormCadastroSubGrupo',True,False,True,'Grupo ' + SQLTemplateGRUPA60DESCR.Value);
    End;
end;

procedure TFormCadastroGrupo.SQLTemplateBeforePost(DataSet: TDataSet);
begin
  inherited;
  if SQLTemplateGRUPA60DESCR.Value = '' Then
    begin
      Beep ;
      ShowMessage('O campo Descrição deve ser preenchido!') ;
      Abort ;
    end;
  // Testar se a Grupo ja existe!!!
 { SQLGrupoAux.Close;
  SQLGrupoAux.MacroByName('Descricao').Value := 'GRUPA60DESCR = ' + '''' + SQLTemplateGRUPA60DESCR.Value + '''';
  SQLGrupoAux.Open;
  If not SQLGrupoAux.IsEmpty Then
    Begin
      Beep ;
      ShowMessage('Este Grupo já está cadastrado!');
      Abort;
    End; }
end;

procedure TFormCadastroGrupo.DSTemplateDataChange(Sender: TObject;
  Field: TField);
var
  BlobStream : TStream;
  JPEGImage  : TJPEGImage;
begin
  inherited;
  // Mostra Imagem Associada ao Grupo
  if SQLTemplateGRUPBIMAGEM.BlobSize <> 0 then
  begin
    BlobStream:= SQLTemplate.CreateBlobStream(SQLTemplateGRUPBIMAGEM,bmRead);
    JPEGImage := TJPEGImage.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      ImageGrupo.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
    ImageGrupo.Picture:=nil;
end;

procedure TFormCadastroGrupo.BtnCapturaFotoClick(Sender: TObject);
var
  FileStream : TFileStream;
  BlobStream : TStream;
begin
  inherited;
  if not (SQLTemplate.State in ([dsEdit, dsInsert])) then
    SQLTemplate.Edit;
  if PictureDialog.Execute then
  begin
    FileStream:=TFileStream.Create(PictureDialog.FileName,
      fmOpenRead or fmShareDenyWrite);
    BlobStream:=SQLTemplate.CreateBlobStream(SQLTemplateGRUPBIMAGEM,bmWrite);
    try
      BlobStream.CopyFrom(FileStream,FileStream.Size);
    finally
      FileStream.Free;
      BlobStream.Free;
    end;
  end;
  SQLTemplate.BeforePost := nil;
  sqltemplate.Post;
  SQLTemplate.BeforePost := SQLTemplateBeforePost;

end;

procedure TFormCadastroGrupo.BtnRemoveFotoClick(Sender: TObject);
begin
  inherited;
  if Pergunta('NAO','Tem certeza que deseja remover esta imagem?') then
    begin
      SQLTemplate.DisableControls;
      if not (SQLTemplate.State in ([dsEdit, dsInsert])) then
        begin
          SQLTemplate.Edit;
          SQLTemplateGRUPBIMAGEM.AsVariant := Null;
          SQLTemplate.Post;
        end;
      SQLTemplate.EnableControls;
    end;
end;

procedure TFormCadastroGrupo.BtSalvarImagemClick(Sender: TObject);
begin
  inherited;
  ImageGrupo.Picture.SaveToFile('..\Foto_Grupo_'+SQLTemplateGRUPICOD.AsString+'.jpg');
end;

procedure TFormCadastroGrupo.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplateGRUPINIVEL.Value := 2;
end;

end.
