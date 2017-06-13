unit RelatorioLotePorProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppCtrls,
  ppVar, ppPrnabl, ppCache, ppViewr, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormRelatorioLotePorProduto = class(TFormRelatorioTEMPLATE)
    SQLLoteProduto: TRxQuery;
    SqlProduto: TRxQuery;
    SqlProdutoPRODICOD: TIntegerField;
    SqlProdutoPRODA60DESCR: TStringField;
    DSSqlProduto: TDataSource;
    GroupBox2: TGroupBox;
    ComboProduto: TRxDBLookupCombo;
    SQLLoteProdutoPRODICOD: TIntegerField;
    SQLLoteProdutoPRODA60DESCR: TStringField;
    SQLLoteProdutoLOTEA30NRO: TStringField;
    SQLLoteProdutoLOTEDVECTO: TDateTimeField;
    Pipeline: TppDBPipeline;
    ReportLoteProd: TppReport;
    DSSQLLoteProduto: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    Produto: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine2: TppLine;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine4: TppLine;
    ppFooterBand1: TppFooterBand;
    SQLLoteProdutoPRODA60REFER: TStringField;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    SQLLoteProdutoSALDO: TFloatField;
    ppLabel3: TppLabel;
    ppDBText6: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBCalc2: TppDBCalc;
    CheckSaldo: TCheckBox;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaPRODA60REFER: TStringField;
    TblTemporariaLOTEA30NRO: TStringField;
    TblTemporariaLOTEDVECTO: TDateTimeField;
    TblTemporariaSALDO: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ReportLoteProdBeforePrint(Sender: TObject);
    procedure ComboProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ReportLoteProdPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioLotePorProduto: TFormRelatorioLotePorProduto;

implementation

{$R *.dfm}

procedure TFormRelatorioLotePorProduto.FormCreate(Sender: TObject);
begin
  inherited;
  if not SqlProduto.Active then SqlProduto.Open; 
end;

procedure TFormRelatorioLotePorProduto.ExecutarBtnClick(Sender: TObject);
begin
  inherited;
  SQLLoteProduto.Close;

  if ComboProduto.KeyValue <> null then
    SQLLoteProduto.MacroByName('Produto').Value := 'Produto.PRODICOD = ' + ComboProduto.Value
  else
    SQLLoteProduto.MacroByName('Produto').Value := '0=0';

  SQLLoteProduto.Open;
  if (SQLLoteProduto.IsEmpty) then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;
  BatchExec(SQLLoteProduto,TblTemporaria);
  if CheckSaldo.Checked then
    begin
      Progresso.Position := 0;
      Progresso.Min := 0;
      Progresso.Max := TblTemporaria.RecordCount;
      TblTemporaria.First;
      while not TblTemporaria.Eof do
        begin
          if TblTemporariaSALDO.AsFloat <= 0 then
            TblTemporaria.Delete
          else
            TblTemporaria.Next;

          Progresso.Position := Progresso.Position + 1;
          Progresso.Update;
          Application.ProcessMessages;     
        end;
    end;
  ReportLoteProd.Print;
end;

procedure TFormRelatorioLotePorProduto.ReportLoteProdBeforePrint(
  Sender: TObject);
begin
  inherited;
  if ComboProduto.Value <> '' then
    Produto.Caption := ComboProduto.DisplayValue
  else
    Produto.Caption := 'Todos os Produtos';
end;

procedure TFormRelatorioLotePorProduto.ComboProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;
end;

procedure TFormRelatorioLotePorProduto.ReportLoteProdPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  (Sender as TppReport).PreviewForm.WindowState := wsMaximized ;
  TppViewer((Sender as TppReport).PreviewForm.Viewer).ZoomPercentage := 100 ;

end;

end.
