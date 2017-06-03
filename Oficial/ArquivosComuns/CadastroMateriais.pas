unit CadastroMateriais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBTables, DBActns, ActnList, ImgList, DB,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, RXCtrls,
  ExtCtrls, Buttons, jpeg, EDBNum, RxDBComb, DBCtrls, RxLookup, VarSys, FormResources,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvPanel;

type
  TFormCadastroMateriais = class(TFormCadastroTEMPLATE)
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePRODIAGRUPGRADE: TIntegerField;
    SQLTemplatePRODA60REFER: TStringField;
    SQLTemplatePRODA60DESCR: TStringField;
    SQLTemplateUNIDICOD: TIntegerField;
    SQLTemplateGRUPICOD: TIntegerField;
    SQLTemplateSUBGICOD: TIntegerField;
    SQLTemplateVARIICOD: TIntegerField;
    SQLTemplateICMSICOD: TIntegerField;
    SQLTemplatePRODDCAD: TDateTimeField;
    SQLTemplatePRODN3VLRCOMPRA: TBCDField;
    SQLTemplatePRODN3PERCIPI: TBCDField;
    SQLTemplatePRODCSERVICO: TStringField;
    SQLTemplatePRODDIMOBOLIZ: TDateTimeField;
    SQLTemplatePRODICODPAI: TIntegerField;
    SQLTemplatePRODCTIPOBAIXA: TStringField;
    SQLTemplatePRODN3QTDEBAIXA: TBCDField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplatePRODN3CAPACEMBAL: TBCDField;
    SQLTemplatePRODCATIVO: TStringField;
    SQLTemplatePRODCGERACOMIS: TStringField;
    SQLTemplatePRODIORIGEM: TIntegerField;
    SQLTemplatePRODCSUBSTRIB: TStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label11: TLabel;
    ComboGrupo: TRxDBLookupCombo;
    LabelSubGrupo: TLabel;
    ComboSubGrupo: TRxDBLookupCombo;
    AcessaSubgrupo: TSpeedButton;
    LabelVariacao: TLabel;
    ComboVariacao: TRxDBLookupCombo;
    AcessaVariacao: TSpeedButton;
    AcessaGrupo: TSpeedButton;
    Label9: TLabel;
    ComboUnidade: TRxDBLookupCombo;
    AcessaUnidade: TSpeedButton;
    Label68: TLabel;
    DBEdit27: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label13: TLabel;
    ComboOrigem: TRxDBComboBox;
    Label36: TLabel;
    ComboClasFiscal: TRxDBLookupCombo;
    AcessaClasFiscal: TSpeedButton;
    DBEditVlrCompra: TEvDBNumEdit;
    Label4: TLabel;
    Label38: TLabel;
    DBEdit37: TEvDBNumEdit;
    SQLTemplatePRODN3PESOBRUTO: TBCDField;
    SQLTemplatePRODN3PESOLIQ: TBCDField;
    SQLTemplatePRODCTEMNROSERIE: TStringField;
    SQLGrupo: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    DSSQLGrupo: TDataSource;
    SQLSubGrupo: TRxQuery;
    SQLSubGrupoGRUPICOD: TIntegerField;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    DSSQLSubGrupo: TDataSource;
    SQLVariacao: TRxQuery;
    SQLVariacaoVARIICOD: TIntegerField;
    SQLVariacaoVARIA60DESCR: TStringField;
    DSSQLClasFiscal: TDataSource;
    SQLClasFiscal: TRxQuery;
    SQLClasFiscalCLFSICOD: TIntegerField;
    SQLClasFiscalCLFSA30DESCR: TStringField;
    SQLUnidade: TRxQuery;
    SQLUnidadeUNIDICOD: TIntegerField;
    SQLUnidadeUNIDA5DESCR: TStringField;
    SQLUnidadeUNIDA15DESCR: TStringField;
    DSSQLUnidade: TDataSource;
    DSSQLVariacao: TDataSource;
    SQLTemplatePRODISITTRIB: TIntegerField;
    SQLTemplateCLFSICOD: TIntegerField;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure AcessaGrupoClick(Sender: TObject);
    procedure AcessaSubgrupoClick(Sender: TObject);
    procedure AcessaVariacaoClick(Sender: TObject);
    procedure AcessaClasFiscalClick(Sender: TObject);
    procedure AcessaUnidadeClick(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroMateriais: TFormCadastroMateriais;

implementation

uses CadastroGrupo, CadastroSubgrupo, CadastroVariacao, CadastroUnidade,
  CadastroClassificacaoFiscal;

{$R *.dfm}

procedure TFormCadastroMateriais.FormCreate(Sender: TObject);
begin
  inherited;
  Tabela := 'PRODUTO';
  SQLGrupo.Open;
  SQLSubGrupo.Open;
  SQLVariacao.Open;
  SQLUnidade.Open;
  SQLClasFiscal.Open;
end;

procedure TFormCadastroMateriais.AcessaGrupoClick(Sender: TObject);
begin
  inherited;
    ComboGrupo.SetFocus;
    FieldLookup := DsTemplate.DataSet.FieldByName('GRUPICOD');
    FieldOrigem := 'GRUPICOD' ;
    DataSetLookup := SQLGrupo;
    CriaFormulario(TFormCadastroGrupo,'FormCadastroGrupo',False,True,True,'Produto ' + IntToStr(SQLTemplatePRODICOD.Value));
end;

procedure TFormCadastroMateriais.AcessaSubgrupoClick(Sender: TObject);
begin
  inherited;
  ComboSubGrupo.SetFocus;
  DSMasterSys := DSTemplate;
  FieldLookup := DsTemplate.DataSet.FieldByName('SUBGICOD');
  FieldOrigem := 'SUBGICOD' ;
  DataSetLookup := SQLSubGrupo;
  CriaFormulario(TFormCadastroSubgrupo,'FormCadastroSubgrupo',False,True,True,SQLGrupo.FieldByName('GRUPA60DESCR').AsString);
end;

procedure TFormCadastroMateriais.AcessaVariacaoClick(Sender: TObject);
begin
  inherited;
  ComboVariacao.SetFocus;
  DSMasterSys := DSTemplate;
  FieldLookup := DsTemplate.DataSet.FieldByName('VARIICOD');
  FieldOrigem := 'VARIICOD' ;
  DataSetLookup := SQLVariacao;
  CriaFormulario(TFormCadastroVariacao,'FormCadastroVariacao',False,True,True,SQLSubGrupo.FieldByName('SUBGA60DESCR').AsString);
end;

procedure TFormCadastroMateriais.AcessaClasFiscalClick(Sender: TObject);
begin
  inherited;
  ComboClasFiscal.SetFocus;
  FieldLookup := DsTemplate.DataSet.FieldByName('CLFSICOD');
  FieldOrigem := 'CLFSICOD' ;
  DataSetLookup := SQLClasFiscal;
  CriaFormulario(TFormCadastroClassificacaoFiscal,'FormCadastroClassificacaoFiscal',False,True,True,'Produto ' + IntToStr(SQLTemplatePRODICOD.Value));
end;

procedure TFormCadastroMateriais.AcessaUnidadeClick(Sender: TObject);
begin
  inherited;
  ComboUnidade.SetFocus;
  FieldLookup := DsTemplate.DataSet.FieldByName('UNIDICOD');
  FieldOrigem := 'UNIDICOD' ;
  DataSetLookup := SQLUnidade;
  CriaFormulario(TFormCadastroUnidade,'FormCadastroUnidade',False,True,True,'Produto ' + IntToStr(SQLTemplatePRODICOD.Value));
end;

procedure TFormCadastroMateriais.SQLTemplateNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLTemplatePRODCATIVO.asString          := 'S';
  SQLTemplatePRODCGERACOMIS.asString      := 'N';
  SQLTemplatePRODCSERVICO.asString        := 'M';
  SQLTemplatePRODCTIPOBAIXA.asString      := 'P';
  SQLTemplatePRODCTEMNROSERIE.AsString    := 'N';
  SQLTemplatePRODN3PESOBRUTO.asFloat      := 0;
  SQLTemplatePRODN3PESOLIQ.asFloat        := 0;
  SQLTemplatePRODN3CAPACEMBAL.asFloat     := 1;
  SQLTemplatePRODN3VLRCOMPRA.asFloat      := 0;
  SQLTemplatePRODN3QTDEBAIXA.asFloat      := 0;
  SQLTemplatePRODDCAD.asDateTime          := Date;
  ComboOrigem.ItemIndex                   := 0;
end;

end.
