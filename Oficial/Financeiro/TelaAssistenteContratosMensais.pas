unit TelaAssistenteContratosMensais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, CurrEdit, StdCtrls, Mask, ToolEdit,
  Buttons, DB, RxMemDS, jpeg, ExtCtrls, RxLookup, DBTables, RxQuery, Grids,
  DBGrids, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaAssistenteContratosMensais = class(TFormTelaGeralModalTemplate)
    RxTable: TRxMemoryData;
    RxTableEMI: TDateField;
    RxTableVENCI: TDateField;
    RxTableCLIEA60RAZAOSOC: TStringField;
    RxTableVALOR: TFloatField;
    DataSource1: TDataSource;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    edtVencimento: TDateEdit;
    DSSQLTipoDocumento: TDataSource;
    SQLTipoDocumento: TRxQuery;
    DSSQLPortador: TDataSource;
    SQLPortador: TRxQuery;
    Label8: TLabel;
    ComboTipoDoc: TRxDBLookupCombo;
    Label2: TLabel;
    ComboPortador: TRxDBLookupCombo;
    Label3: TLabel;
    SQLCliente: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLClienteTPDCICOD: TIntegerField;
    SQLClientePORTICOD: TIntegerField;
    SQLClienteDIAVENCTO: TStringField;
    SQLClienteCTRCN2VLR: TFloatField;
    SQLClientePLCTA15COD: TStringField;
    RxTableCLIEA13ID: TStringField;
    RxTableTPDCICOD: TIntegerField;
    RxTablePORTICOD: TIntegerField;
    RxTablePLCTA15COD: TStringField;
    Panel3: TPanel;
    Label4: TLabel;
    edtValorTotal: TCurrencyEdit;
    Label5: TLabel;
    edtEmissao: TDateEdit;
    BtnSelecionarDoc: TSpeedButton;
    btGerar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure BtnBaixarDocSimplesClick(Sender: TObject);
    procedure RxTableBeforeDelete(DataSet: TDataSet);
    procedure btGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaAssistenteContratosMensais: TFormTelaAssistenteContratosMensais;

implementation

{$R *.dfm}

procedure TFormTelaAssistenteContratosMensais.FormCreate(Sender: TObject);
begin
  inherited;
  SQLTipoDocumento.Open;
  SQLPortador.Open;
end;

procedure TFormTelaAssistenteContratosMensais.BtnSelecionarDocClick(
  Sender: TObject);
var vdia, vmes, vano : string;
var vTotal : Double;
begin
  inherited;
  SQLCliente.Close;
  RxTable.Close;

  {
  if ComboTipoDoc.Value <> '' then
    SQLCliente.MacroByName('MTipoDoc').Value := 'TPDCICOD = ' + ComboTipoDoc.Value
  else
    begin
      ShowMessage('É necessário escolher algum Tipo de Documento para Filtro!');
      exit;
    end;
  if ComboPortador.Value <> '' then
    SQLCliente.MacroByName('MPortador').Value := 'PORTICOD = ' + ComboPortador.Value
  else
    begin
      ShowMessage('É necessário escolher algum Portador para Filtro!');
      exit;
    end;  }

  vdia := FormatDateTime('dd',edtVencimento.Date);
  SQLCliente.MacroByName('MDia').Value := 'DIAVENCTO = "' + vdia + '"';

  SQLCliente.Open;
  if SQLCliente.IsEmpty then
    begin
      ShowMessage('Nenhum registro encontrado!');
      exit;
    end;

  SQLCliente.First;
  RxTable.Open;
  while not SQLCliente.Eof do
    begin
      RxTable.Append;
      RxTableEMI.Value := edtEmissao.Date;
      vmes := FormatDateTime('mm',edtVencimento.Date);
      vano := FormatDateTime('yyyy',edtVencimento.Date);
      RxTableVENCI.AsString        := vdia + '/' + vmes + '/' + vano;
      RxTableVALOR.Value           := SQLClienteCTRCN2VLR.Value;
      RxTableCLIEA13ID.Value       := SQLClienteCLIEA13ID.Value;
      RxTableCLIEA60RAZAOSOC.Value := SQLClienteCLIEA60RAZAOSOC.Value;
      RxTableTPDCICOD.Value        := SQLClienteTPDCICOD.Value;
      RxTablePORTICOD.Value        := SQLClientePORTICOD.Value;
      RxTablePLCTA15COD.Value      := SQLClientePLCTA15COD.Value;
      RxTable.Post;
      vTotal := vTotal + SQLClienteCTRCN2VLR.Value;
      SQLCliente.Next;
    end;
  RxTable.First;  
  edtValorTotal.Value := vTotal;  
end;

procedure TFormTelaAssistenteContratosMensais.BtnBaixarDocSimplesClick(
  Sender: TObject);
begin
  inherited;
  ModalResult := 1;
  Close;
end;

procedure TFormTelaAssistenteContratosMensais.RxTableBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  edtValorTotal.Value := edtValorTotal.Value - RxTableVALOR.Value; 
end;

procedure TFormTelaAssistenteContratosMensais.btGerarClick(
  Sender: TObject);
begin
  ModalResult := MrOk;
  inherited;
end;

end.
