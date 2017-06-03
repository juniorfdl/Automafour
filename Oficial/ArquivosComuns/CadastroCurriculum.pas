unit CadastroCurriculum;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Variants,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery, jpeg,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, DBCtrls, ToolEdit, RXDBCtrl, EDBNum, ExtDlgs,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroCurriculum = class(TFormCadastroTEMPLATE)
    SQLTemplateCUVIA13ID: TStringField;
    SQLTemplateEMPRICOD: TIntegerField;
    SQLTemplateCUVIICOD: TIntegerField;
    SQLTemplateCUVIDENTREGA: TDateTimeField;
    SQLTemplateCUVIDNASC: TDateTimeField;
    SQLTemplateCUVIA60NOME: TStringField;
    SQLTemplateCUVIA60END: TStringField;
    SQLTemplateCUVIA60BAI: TStringField;
    SQLTemplateCUVIA60CID: TStringField;
    SQLTemplateCUVIA15FONE1: TStringField;
    SQLTemplateCUVIA15FONE2: TStringField;
    SQLTemplateCUVIA11CPF: TStringField;
    SQLTemplateCUVIA10RG: TStringField;
    SQLTemplateCUVIA20CTPS: TStringField;
    SQLTemplateCUVIA20CARTMOT: TStringField;
    SQLTemplateCUVIA20TITELEIT: TStringField;
    SQLTemplateCUVIA30SETOR: TStringField;
    SQLTemplateCUVIN2ULTSALARIO: TBCDField;
    SQLTemplateCUVIN2PRETSALARIO: TBCDField;
    SQLTemplateCUVITEMPRESAS: TMemoField;
    SQLTemplateCUVITREFPESSOAL: TMemoField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    Label2: TLabel;
    DBEditNome: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label40: TLabel;
    DBEditEnd: TDBEdit;
    Label42: TLabel;
    DBEdit21: TDBEdit;
    Label43: TLabel;
    DBEdit22: TDBEdit;
    LabelCgc_CPF: TLabel;
    DBEditCpf: TDBEdit;
    LabelIE_RG: TLabel;
    DBEditIE: TDBEdit;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label77: TLabel;
    DBDateEdit8: TDBDateEdit;
    Label22: TLabel;
    EvDBNumEdit2: TEvDBNumEdit;
    Label4: TLabel;
    EvDBNumEdit1: TEvDBNumEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    MemoREF: TDBMemo;
    Label21: TLabel;
    Label6: TLabel;
    DBMemo1: TDBMemo;
    GroupBoxFOTO: TGroupBox;
    ImageProduto: TImage;
    BtnCapturaFoto: TSpeedButton;
    BtnRemoveFoto: TSpeedButton;
    SQLTemplateCUVIBIMAGEM: TBlobField;
    PictureDialog: TOpenPictureDialog;
    SQLTemplateCUVITANTECED: TMemoField;
    Label8: TLabel;
    DBMemo2: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure BtnCapturaFotoClick(Sender: TObject);
    procedure BtnRemoveFotoClick(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCurriculum: TFormCadastroCurriculum;

implementation

uses UnitLibrary;

{$R *.dfm}

procedure TFormCadastroCurriculum.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'CURRICULUM';
end;

procedure TFormCadastroCurriculum.BtnCapturaFotoClick(Sender: TObject);
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
    BlobStream:=SQLTemplate.CreateBlobStream(SQLTemplateCUVIBIMAGEM,bmWrite);
    try
      BlobStream.CopyFrom(FileStream,FileStream.Size);
    finally
      FileStream.Free;
      BlobStream.Free;
    end;
  end;
end;

procedure TFormCadastroCurriculum.BtnRemoveFotoClick(Sender: TObject);
begin
  inherited;
  if Pergunta('NAO','Tem certeza que deseja remover esta imagem?') then
    begin
      SQLTemplate.DisableControls;
      if not (SQLTemplate.State in ([dsEdit, dsInsert])) then
        begin
          SQLTemplate.Edit;
          SQLTemplateCUVIBIMAGEM.AsVariant := Null;
          SQLTemplate.Post;
        end;
      SQLTemplate.EnableControls;
    end;
end;

procedure TFormCadastroCurriculum.DSTemplateDataChange(Sender: TObject;
  Field: TField);
var
  BlobStream : TStream;
  JPEGImage  : TJPEGImage;
begin
  inherited;
  // Mostra Imagem Associada
  if SQLTemplateCUVIBIMAGEM.BlobSize <> 0 then
  begin
    BlobStream:= SQLTemplate.CreateBlobStream(SQLTemplateCUVIBIMAGEM,bmRead);
    JPEGImage := TJPEGImage.Create;
    try
      JPEGImage.LoadFromStream(BlobStream);
      ImageProduto.Picture.Assign(JPEGImage);
    finally
      BlobStream.Free;
      JPEGImage.Free;
    end;
  end
  else
    ImageProduto.Picture:=nil;

end;

end.
