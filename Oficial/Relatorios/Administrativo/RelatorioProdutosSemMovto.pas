unit RelatorioProdutosSemMovto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, UCrpe32, DBTables, Placemnt, DB, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, RxQuery,
  ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, ppViewr, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormRelatorioProdutosSemMovto = class(TFormRelatorioTEMPLATE)
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaVALORCUSTOUNIT: TFloatField;
    TblTemporariaVALORVENDAUNIT: TFloatField;
    TblTemporariaBARRAS: TStringField;
    SQLPRODUTO: TRxQuery;
    SQLGrupo: TRxQuery;
    DSSQLGrupo: TDataSource;
    SQLSubgrupo: TRxQuery;
    DSSQLSubgrupo: TDataSource;
    SQLVariacao: TRxQuery;
    DSSQLVariacao: TDataSource;
    SQLMarca: TRxQuery;
    DSSQLMarca: TDataSource;
    GroupBox3: TGroupBox;
    LabelSubGrupo: TLabel;
    LabelVariacao: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    ComboSubGrupo: TRxDBLookupCombo;
    ComboVariacao: TRxDBLookupCombo;
    ComboGrupo: TRxDBLookupCombo;
    ComboMarca: TRxDBLookupCombo;
    ppReport1: TppReport;
    dsSQLPRODUTO: TDataSource;
    SQLPRODUTOPRODICOD: TIntegerField;
    SQLPRODUTOPRODA60DESCR: TStringField;
    SQLPRODUTOPRODA60CODBAR: TStringField;
    SQLPRODUTOPRODN3VLRCUSTO: TBCDField;
    Pipe: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    lbEmpresa: TppLabel;
    lbPeriodo: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    SQLPRODUTOPSLDN3QTDE: TBCDField;
    PSLDN3QTDE: TppField;
    ppCustoTotal: TppLabel;
    ppLabel7: TppLabel;
    ppCustoTotalGeral: TppLabel;
    ppLine2: TppLine;
    ppLabel9: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    Timer1: TTimer;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ComboGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboSubGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    vCustoTotal : double;
  public
    { Public declarations }
  end;

var
  FormRelatorioProdutosSemMovto: TFormRelatorioProdutosSemMovto;

implementation

{$R *.dfm}

procedure TFormRelatorioProdutosSemMovto.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLProduto.Close;
  if (ComboEmpresa.Value <> '') then
    SQLProduto.MacroByName('MEmpresaSaldo').Value := 'And PRODUTOSALDO.EMPRICOD = ' + ComboEmpresa.Value;

  if (ComboEmpresa.Value <> '') then
    SQLProduto.MacroByName('MEmpresa').Value := 'EMPRICOD = ' + ComboEmpresa.Value
  else
    SQLProduto.MacroByName('MEmpresa').Value := '0=0';

  SQLProduto.MacrobyName('MData').Value    := 'MVESDMOV >= "' + FormatDateTime('mm/dd/yyyy', De.Date) + '" and ' +
                                              'MVESDMOV <= "' + FormatDateTime('mm/dd/yyyy', Ate.Date) + '"' ;
  if (ComboGrupo.Value <> '') then
    SQLProduto.MacroByName('MGrupo').Value := 'Produto.GRUPICOD = ' + ComboGrupo.Value
  else
    SQLProduto.MacroByName('MGrupo').Value := '0=0';

  if (ComboSubGrupo.Value <> '') then
    SQLProduto.MacroByName('MSubGrupo').Value := 'Produto.SUBGICOD = ' + ComboSubGrupo.Value
  else
    SQLProduto.MacroByName('MSubGrupo').Value := '0=0';

  if (ComboVariacao.Value <> '') then
    SQLProduto.MacroByName('MVariacao').Value := 'Produto.VARIICOD = ' + ComboVariacao.Value
  else
    SQLProduto.MacroByName('MVariacao').Value := '0=0';

  if (ComboMarca.Value <> '') then
    SQLProduto.MacroByName('MMarca').Value := 'Produto.MARCICOD = ' + ComboMarca.Value
  else
    SQLProduto.MacroByName('MMarca').Value := '0=0';

  SQLProduto.Open;
  vCustoTotal := 0;
  ppReport1.Print;
end;

procedure TFormRelatorioProdutosSemMovto.ppHeaderBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  lbEmpresa.Caption := 'Empresa: ' + ComboEmpresa.DisplayValue;
  lbPeriodo.Caption := 'Periodo: ' + FormatDateTime('dd/mm/yyyy',De.date) + ' até ' + FormatDateTime('dd/mm/yyyy',Ate.date);
end;

procedure TFormRelatorioProdutosSemMovto.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  ppReport1.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormRelatorioProdutosSemMovto.ppDetailBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  vCustoTotal := vCustoTotal + (SQLPRODUTOPRODN3VLRCUSTO.value * SQLPRODUTOPSLDN3QTDE.value);
  ppCustoTotal.Caption := FloatToStr(SQLPRODUTOPRODN3VLRCUSTO.value * SQLPRODUTOPSLDN3QTDE.value);
  ppCustoTotalGeral.Caption := FormatFloat('###,##0.00',vCustoTotal);
end;

procedure TFormRelatorioProdutosSemMovto.FormCreate(Sender: TObject);
begin
  inherited;
  SQLMarca.Open;
  SQLGrupo.Open;
  SQLSubgrupo.Open;
  SQLVariacao.Open;
end;

procedure TFormRelatorioProdutosSemMovto.Timer1Timer(Sender: TObject);
begin
  inherited;
  if ComboGrupo.Text <> '' then
    ComboSubGrupo.Enabled := true
  else
    ComboSubGrupo.Enabled := false ;

  if ComboSubGrupo.Text <> '' then
    ComboVariacao.Enabled := true
  else
    ComboVariacao.Enabled := false ;

end;

procedure TFormRelatorioProdutosSemMovto.ComboGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value    <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
       (sender  as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

procedure TFormRelatorioProdutosSemMovto.ComboSubGrupoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value    <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
       (sender  as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

end.
