unit TelaConsultaProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaConsultaTemplate, DB, DBTables, RxQuery, Grids, DBGrids, VarSys,
  StdCtrls, Mask, Buttons, jpeg, ExtCtrls, DBCtrls, RXCtrls, Placemnt,
  ComCtrls, EDBNum, RxDBComb, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaProduto = class(TFormTelaConsultaTemplate)
    SQLClassificacaoFiscal: TRxQuery;
    SQLUnidade: TRxQuery;
    SQLCor: TRxQuery;
    SQLIcms: TRxQuery;
    SQLGradeTamanho: TRxQuery;
    SQLGrade: TRxQuery;
    SQLMarca: TRxQuery;
    SQLVariacao: TRxQuery;
    SQLGrupo: TRxQuery;
    SQLSubGrupo: TRxQuery;
    SQLProdutoSaldo: TRxQuery;
    SQLProdutoSaldoEMPRICOD: TIntegerField;
    SQLProdutoSaldoPRODICOD: TIntegerField;
    SQLProdutoSaldoPSLDN3QTDE: TFloatField;
    SQLProdutoSaldoPSLDN3QTDMIN: TFloatField;
    SQLProdutoSaldoPSLDN3QTDMAX: TFloatField;
    SQLProdutoSaldoEmpresaLookup: TStringField;
    DSSQLProdutoSaldo: TDataSource;
    DBGrid1: TDBGrid;
    SQLEmpresa: TRxQuery;
    SQLEmpresaEMPRICOD: TIntegerField;
    SQLEmpresaEMPRA60NOMEFANT: TStringField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePRODA30ADESCRREDUZ: TStringField;
    SQLTemplatePRODIAGRUPGRADE: TIntegerField;
    SQLTemplatePRODA15CODANT: TStringField;
    SQLTemplateGRADICOD: TIntegerField;
    SQLTemplateGradeLookup: TStringField;
    SQLTemplateGRTMICOD: TIntegerField;
    SQLTemplateTAMANHOLOOKUP: TStringField;
    SQLTemplateCORICOD: TIntegerField;
    SQLTemplateCorLookup: TStringField;
    SQLTemplateICMSICOD: TIntegerField;
    SQLTemplateIcmsLookup: TStringField;
    SQLTemplateCLFSICOD: TIntegerField;
    SQLTemplateClassificacaoLookup: TStringField;
    SQLTemplateUNIDICOD: TIntegerField;
    SQLTemplateUnidadeLookup: TStringField;
    SQLTemplateMARCICOD: TIntegerField;
    SQLTemplateMarcaLookup: TStringField;
    SQLTemplateGRUPICOD: TIntegerField;
    SQLTemplateGrupoLookup: TStringField;
    SQLTemplateSUBGICOD: TIntegerField;
    SQLTemplateSubGrupoLookup: TStringField;
    SQLTemplateVARIICOD: TIntegerField;
    SQLTemplateVariacaoLookup: TStringField;
    SQLTemplatePRODICODPAI: TIntegerField;
    SQLTemplatePRODCTIPOBAIXA: TStringField;
    SQLTemplatePRODA30CODESTRUT: TStringField;
    SQLTemplatePRODA60CODBAR: TStringField;
    SQLTemplatePRODA60REFER: TStringField;
    SQLTemplatePRODICODBALANCA: TIntegerField;
    SQLTemplatePRODA15APAVIM: TStringField;
    SQLTemplatePRODA15RUA: TStringField;
    SQLTemplatePRODA15PRATEL: TStringField;
    SQLTemplatePRODN3PESOBRUTO: TFloatField;
    SQLTemplatePRODN3PESOLIQ: TFloatField;
    SQLTemplatePRODN3CAPACEMBAL: TFloatField;
    SQLTemplatePRODDCAD: TDateTimeField;
    SQLTemplatePRODDULTALTER: TDateTimeField;
    SQLTemplatePRODDINIPROMO: TDateTimeField;
    SQLTemplatePRODDFIMPROMO: TDateTimeField;
    SQLTemplatePRODN2COMISVISTA: TFloatField;
    SQLTemplatePRODN3VLRCOMPRA: TFloatField;
    SQLTemplatePRODN3VLRCUSTO: TFloatField;
    SQLTemplatePRODDIMOBOLIZ: TDateTimeField;
    SQLTemplatePRODN3VLRVENDA: TFloatField;
    SQLTemplatePRODN3QTDEBAIXA: TFloatField;
    SQLTemplatePRODN3VLRVENDAPROM: TFloatField;
    SQLTemplatePRODN3VLRCUSTOMED: TFloatField;
    SQLTemplatePRODN3PERCIPI: TFloatField;
    SQLTemplatePRODN3PERCMARGLUCR: TFloatField;
    SQLTemplatePRODCATIVO: TStringField;
    SQLTemplatePRODCSERVICO: TStringField;
    SQLTemplatePRODCGERACOMIS: TStringField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePRODN2COMISPRAZO: TFloatField;
    SQLTemplatePRODIORIGEM: TIntegerField;
    FormStorage1: TFormStorage;
    SQLTemplatePRODA60DESCR: TStringField;
    Panel4: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit56: TDBEdit;
    SQLProdutoSerie: TRxQuery;
    SQLProdutoSeriePRSEA60NROSERIE: TStringField;
    DSSQLProdutoSerie: TDataSource;
    SQLProdutoComposicao: TRxQuery;
    SQLProdutoComposicaoPRODICOD: TIntegerField;
    DSSQLProdutoComposicao: TDataSource;
    TabSheet3: TTabSheet;
    DBEdit13: TDBMemo;
    SQLTemplatePRODBIMAGEM: TBlobField;
    SQLTemplatePRODCTEMNROSERIE: TStringField;
    Panel5: TPanel;
    Label42: TLabel;
    Label15: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    RxDBComboBox4: TRxDBComboBox;
    Label38: TLabel;
    Label28: TLabel;
    DBEdit37: TEvDBNumEdit;
    DBEdit9: TDBEdit;
    Panel6: TPanel;
    ImageProduto: TImage;
    Panel7: TPanel;
    DBGridProdutoSerie: TDBGrid;
    Panel8: TPanel;
    DBCheckBox2: TDBCheckBox;
    LabelValorProcura: TLabel;
    SQLTemplatePRODA255DESCRTEC: TMemoField;
    procedure EditProcuraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
  private
    TeclaEnter : Char;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaProduto: TFormTelaConsultaProduto;

implementation

uses DataModulo, DataModuloTemplate, UnitLibrary;

{$R *.dfm}

procedure TFormTelaConsultaProduto.EditProcuraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_DOWN then
    begin
      DBGridLista.SetFocus;
    end;
end;

procedure TFormTelaConsultaProduto.DBGridListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_Return then
    begin
      LabelRetornar.Click;
    end;
end;

procedure TFormTelaConsultaProduto.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLGrupo.Active then SQLGrupo.Open;
  if not SQLMarca.Active then SQLMarca.Open;
  if not SQLSubGrupo.Active then SQLSubGrupo.Open;
  if not SQLVariacao.Active then SQLVariacao.Open;
  if not SQLGrade.Active then SQLGrade.Open;
  if not SQLGradeTamanho.Active then SQLGradeTamanho.Open;
  if not SQLUnidade.Active then SQLUnidade.Open;
  if not SQLCor.Active then SQLCor.Open;
  if not SQLIcms.Active then SQLIcms.Open;
  if not SQLClassificacaoFiscal.Active then SQLClassificacaoFiscal.Open;
  if not SQLEmpresa.Active then SQLEmpresa.Open;
  if not SQLProdutoSaldo.Active then SQLProdutoSaldo.Open;
  if not SQLProdutoComposicao.Active then SQLProdutoComposicao.Open;
  if not SQLProdutoSerie.Active then SQLProdutoSerie.Open;
end;

procedure TFormTelaConsultaProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if SQLGrupo.Active then SQLGrupo.Close;
  if SQLMarca.Active then SQLMarca.Close;
  if SQLSubGrupo.Active then SQLSubGrupo.Close;
  if SQLVariacao.Active then SQLVariacao.Close;
  if SQLGrade.Active then SQLGrade.Close;
  if SQLGradeTamanho.Active then SQLGradeTamanho.Close;
  if SQLUnidade.Active then SQLUnidade.Close;
  if SQLCor.Active then SQLCor.Close;
  if SQLIcms.Active then SQLIcms.Close;
  if SQLClassificacaoFiscal.Active then SQLClassificacaoFiscal.Close;
  if SQLEmpresa.Active then SQLEmpresa.Close;
end;

procedure TFormTelaConsultaProduto.FormActivate(Sender: TObject);
begin
  inherited;
  if ProdutoDescricao <> '' then
    begin
      ComboOrdem.Text  := SQLTemplate.FieldByName('PRODA60DESCR').DisplayLabel;
      ComboOrder.Text  := SQLTemplate.FieldByName('PRODA60DESCR').DisplayLabel;
      EditProcura.Text := ProdutoDescricao;
      TeclaEnter := Char(13);
      KeyPress(TeclaEnter);
    end;
end;

procedure TFormTelaConsultaProduto.DSTemplateDataChange(Sender: TObject;
  Field: TField);
  var
  BlobStream : TStream;
  JPEGImage  : TJPEGImage;  
begin
  inherited;
  // Mostra Imagem Associada ao Produto
  if SQLTemplatePRODBIMAGEM.BlobSize <> 0 then
  begin
    BlobStream:= SQLTemplate.CreateBlobStream(SQLTemplatePRODBIMAGEM,bmRead);
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
