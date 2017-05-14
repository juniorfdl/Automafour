unit CadastroAnimais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, DB, RxQuery,
  Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls, Buttons,
  ExtCtrls, DBCtrls, RxLookup, VarSys, FormResources, ExtDlgs, UnitLibrary, jpeg,
  ToolEdit, RXDBCtrl, RxDBComb, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroAnimais = class(TFormCadastroTEMPLATE)
    CarteirinhadeVacinao1: TMenuItem;
    SQLTemplateANIICOD: TIntegerField;
    SQLTemplateCLIEA13ID: TStringField;
    SQLTemplateANIA40NOME: TStringField;
    SQLTemplateANIIESPECIE: TIntegerField;
    SQLTemplateANIIRACA: TIntegerField;
    SQLTemplateANICSEXO: TStringField;
    SQLTemplateANIDNASC: TDateTimeField;
    SQLTemplateANIA40PELAGEM: TStringField;
    SQLTemplateANIA40IDENTIF: TStringField;
    SQLTemplateANIBIMAGEM: TBlobField;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    ButtonCep: TSpeedButton;
    SQLRaca: TRxQuery;
    DSSQLRaca: TDataSource;
    SQLRacaRACAICOD: TIntegerField;
    SQLRacaRACAA50RACA: TStringField;
    ComboUnidade: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    SQLEspecie: TRxQuery;
    DSSQLEspecie: TDataSource;
    SQLEspecieESPEICOD: TIntegerField;
    SQLEspecieESPEA50TIPO: TStringField;
    PictureDialog: TOpenPictureDialog;
    DBDateEdit8: TDBDateEdit;
    RxSpeedButton1: TRxSpeedButton;
    SQLTemplateEspecie: TStringField;
    SQLTemplateRaca: TStringField;
    ImageProduto: TImage;
    Label8: TLabel;
    BtnCapturaFoto: TSpeedButton;
    BtnRemoveFoto: TSpeedButton;
    BtSalvarImagem: TSpeedButton;
    ComboOrigem: TRxDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure ButtonCepClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnCapturaFotoClick(Sender: TObject);
    procedure BtnRemoveFotoClick(Sender: TObject);
    procedure BtSalvarImagemClick(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure RxSpeedButton1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroAnimais: TFormCadastroAnimais;

implementation

uses CadastroAnimaisRaca, CadastroAnimaisEspecie, CadastroAnimaisAgenda,
  CadastroAnimaisVacinacao;

{$R *.dfm}

procedure TFormCadastroAnimais.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'Animais';
  SQLRaca.Open;
  SQLEspecie.Open;
end;

procedure TFormCadastroAnimais.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  TRxQuery(DataSet).FieldByName('CLIEA13ID').Value := TrxQuery(DataSet).DataSource.DataSet.FieldByName('CLIEA13ID').Value;
end;

procedure TFormCadastroAnimais.ButtonCepClick(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('ANIIRACA');
  FieldOrigem := 'RACAICOD' ;
  DataSetLookup := SQLRaca;
  CriaFormulario(TFormCadastroAnimaisRaca,'FormCadastroAnimaisRaca',False,True,True,'Raças') ;
end;

procedure TFormCadastroAnimais.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FieldLookup := DsTemplate.DataSet.FieldByName('ANIIESPECIE');
  FieldOrigem := 'ESPEICOD' ;
  DataSetLookup := SQLEspecie;
  CriaFormulario(TFormCadastroAnimais_especie,'FormCadastroAnimais_especie',False,True,True,'Espécies') ;
end;

procedure TFormCadastroAnimais.BtnCapturaFotoClick(Sender: TObject);
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
    BlobStream:=SQLTemplate.CreateBlobStream(SQLTemplateANIBIMAGEM,bmWrite);
    try
      BlobStream.CopyFrom(FileStream,FileStream.Size);
    finally
      FileStream.Free;
      BlobStream.Free;
    end;
  end;

end;

procedure TFormCadastroAnimais.BtnRemoveFotoClick(Sender: TObject);
begin
  inherited;
  if Pergunta('NAO','Tem certeza que deseja remover esta imagem?') then
    begin
      SQLTemplate.DisableControls;
      if not (SQLTemplate.State in ([dsEdit, dsInsert])) then
        begin
          SQLTemplate.Edit;
          SQLTemplateANIBIMAGEM.AsVariant := Null;
          SQLTemplate.Post;
        end;
      SQLTemplate.EnableControls;  
    end;

end;

procedure TFormCadastroAnimais.BtSalvarImagemClick(Sender: TObject);
begin
  inherited;
  ImageProduto.Picture.SaveToFile('..\Foto_Animais_'+SQLTemplateANIICOD.AsString+'.jpg');
end;

procedure TFormCadastroAnimais.DSTemplateDataChange(Sender: TObject;
  Field: TField);
var
  BlobStream : TStream;
  JPEGImage  : TJPEGImage;
begin
  inherited;
  // Mostra Imagem Associada ao Produto
  if SQLTemplateANIBIMAGEM.BlobSize <> 0 then
  begin
    BlobStream:= SQLTemplate.CreateBlobStream(SQLTemplateANIBIMAGEM,bmRead);
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

procedure TFormCadastroAnimais.RxSpeedButton1Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  CriaFormulario(TFormCadastroAnimaisAgenda,
                     'FormCadastroAnimaisAgenda',
                     True,
                     False,True, '=> ' + SQLTemplateANIA40NOME.asString);
end;

procedure TFormCadastroAnimais.Button3Click(Sender: TObject);
begin
  inherited;
  DSMasterSys := DSTemplate;
  CriaFormulario(TFormCadastroAnimaisVacinas,
                     'FormCadastroAnimaisVacinas',
                     True,
                     False,True, '=> ' +  SQLTemplateANIA40NOME.asString);
end;

end.
