unit CadastroRepresentante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DB, DBTables, DBActns, ActnList, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, DBCtrls, RxDBComb, ExtDlgs, jpeg, FormResources, VarSys, ImgList, Math,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroRepresentante = class(TFormCadastroTEMPLATE)
    SQLTemplateREPRICOD: TIntegerField;
    SQLTemplateREPRA60RAZAOSOC: TStringField;
    SQLTemplateREPRA60NOMEFANT: TStringField;
    SQLTemplateREPRA60END: TStringField;
    SQLTemplateREPRA60CID: TStringField;
    SQLTemplateREPRA30BAI: TStringField;
    SQLTemplateREPRA8CEP: TStringField;
    SQLTemplateREPRA2UF: TStringField;
    SQLTemplateREPRA60EMAIL: TStringField;
    SQLTemplateREPRA15FONE1: TStringField;
    SQLTemplateREPRA15FONE2: TStringField;
    SQLTemplateREPRA15FONECEL: TStringField;
    SQLTemplateREPRA200OBS: TStringField;
    SQLTemplateREPRDCAD: TDateTimeField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEditNome: TDBEdit;
    LabelNomeFantasia: TLabel;
    DBEditNomeFantasia: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    ComboUFRes: TRxDBComboBox;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label21: TLabel;
    MemoOBS: TDBMemo;
    Panel4: TPanel;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    GroupBox1: TGroupBox;
    DataCadastro: TDBEdit;
    GroupBoxFOTO: TGroupBox;
    Image: TImage;
    BtnCapturaFoto: TSpeedButton;
    BtnRemoveFoto: TSpeedButton;
    BtSalvarImagem: TSpeedButton;
    SQLTemplateREPRBIMAGEM: TBlobField;
    PictureDialog: TOpenPictureDialog;
    MnGerarListaEmail: TMenuItem;
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure BtnCapturaFotoClick(Sender: TObject);
    procedure BtnRemoveFotoClick(Sender: TObject);
    procedure BtSalvarImagemClick(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure MnGerarListaEmailClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Arquivo : TextFile;
  end;

var
  FormCadastroRepresentante: TFormCadastroRepresentante;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormCadastroRepresentante.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  SQLTemplateREPRDCAD.AsString := FormatDateTime('dd/mm/yyyy',now);
end;

procedure TFormCadastroRepresentante.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'Representante';
end;

procedure TFormCadastroRepresentante.BtnCapturaFotoClick(Sender: TObject);
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
    BlobStream:=SQLTemplate.CreateBlobStream(SQLTemplateREPRBIMAGEM,bmWrite);
    try
      BlobStream.CopyFrom(FileStream,FileStream.Size);
    finally
      FileStream.Free;
      BlobStream.Free;
    end;
  end;
end;

procedure TFormCadastroRepresentante.BtnRemoveFotoClick(Sender: TObject);
begin
  inherited;
  if Pergunta('NAO','Tem certeza que deseja remover esta imagem?') then
    begin
      SQLTemplate.DisableControls;
      if not (SQLTemplate.State in ([dsEdit, dsInsert])) then
        begin
          SQLTemplate.Edit;
          SQLTemplateREPRBIMAGEM.AsVariant := Null;
          SQLTemplate.Post;
        end;
      SQLTemplate.EnableControls;
    end;
end;

procedure TFormCadastroRepresentante.BtSalvarImagemClick(Sender: TObject);
begin
  inherited;
  Image.Picture.SaveToFile('..\Foto_Representante_'+SQLTemplateREPRICOD.AsString+'.jpg');
end;

procedure TFormCadastroRepresentante.DSTemplateDataChange(Sender: TObject;
  Field: TField);
var
  BlobStream : TStream;
  JPEGImage  : TJPEGImage;
begin
  inherited;
  // Mostra Imagem Associada ao Produto
  if SQLTemplateREPRBIMAGEM.BlobSize <> 0 then
    begin
      BlobStream:= SQLTemplate.CreateBlobStream(SQLTemplateREPRBIMAGEM,bmRead);
      JPEGImage := TJPEGImage.Create;
      try
        JPEGImage.LoadFromStream(BlobStream);
        Image.Picture.Assign(JPEGImage);
      finally
        BlobStream.Free;
        JPEGImage.Free;
      end;
    end
  else
    Image.Picture:=nil;
end;

procedure TFormCadastroRepresentante.MnGerarListaEmailClick(
  Sender: TObject);
var CaminhoNomeArquivo, Linha : String;
begin
  inherited;
  if not SQLTemplate.Active then
    begin
      ShowMessage('É necessário primeiro realizar o filtro nos Representantes...');
      Exit;
    end;
  if SQLTemplate.IsEmpty then
    begin
      ShowMessage('Nenhum Representante foi encontrado...');
      Exit;
    end;

  CaminhoNomeArquivo := '..\Email_Representante.txt';
  AssignFile(Arquivo,CaminhoNomeArquivo);
  Rewrite(Arquivo);
  Reset(Arquivo);
  Append(Arquivo);
  // Criar Proximas Linhas
  SQLTemplate.First;
  Linha := '';
  While not SQLTemplate.Eof Do
    begin
      if SQLTemplateREPRA60EMAIL.AsString <> '' then
        Linha := Linha + LowerCase(SQLTemplateREPRA60EMAIL.AsString) + ';' ;
      SQLTemplate.Next;
    end;
  // Gravar uma vez todos os email
  Writeln(Arquivo,Linha);

  // Fechar Arquivo
  CloseFile(Arquivo);
end;

end.
