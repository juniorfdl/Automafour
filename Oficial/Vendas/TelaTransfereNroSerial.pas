unit TelaTransfereNroSerial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, Buttons, jpeg, ExtCtrls, StdCtrls, DB,
  RxLookup, DBTables, RxQuery, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaTransfereNroSerial = class(TFormTelaGeralTEMPLATE)
    SQLProdutoSerie: TRxQuery;
    SQLProdutoSeriePRODICOD: TIntegerField;
    SQLProdutoSeriePRSEA60NROSERIE: TStringField;
    SQLProdutoSerieEMPRICOD: TIntegerField;
    SQLProdutoSerieEMPRICODDEST: TIntegerField;
    SQLProdutoSerieFORNICOD: TIntegerField;
    SQLProdutoSerieCLIEA13ID: TStringField;
    SQLProdutoSerieNOCPA13ID: TStringField;
    SQLProdutoSerieNOFIA13ID: TStringField;
    SQLProdutoSerieCUPOA13ID: TStringField;
    SQLProdutoSeriePDVDA13ID: TStringField;
    SQLProdutoSerieOSA13ID: TStringField;
    SQLProdutoSerieMOVDA13ID: TStringField;
    SQLProdutoSeriePENDENTE: TStringField;
    SQLProdutoSerieREGISTRO: TDateTimeField;
    SQLProdutoSeriePRSECSTATUS: TStringField;
    Label1: TLabel;
    EditCodSerial: TEdit;
    Label2: TLabel;
    ComboProduto: TRxDBLookupCombo;
    DSSQLProdutoAux: TDataSource;
    SQLProdutoAux: TRxQuery;
    SQLProdutoAuxPRODICOD: TIntegerField;
    SQLProdutoAuxPRODA60DESCR: TStringField;
    EditDescProduto: TEdit;
    BTProcurar: TBitBtn;
    BTTrocar: TBitBtn;
    SQLProdutoAuxPRODCTEMNROSERIE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BTProcurarClick(Sender: TObject);
    procedure BTTrocarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaTransfereNroSerial: TFormTelaTransfereNroSerial;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaTransfereNroSerial.FormCreate(Sender: TObject);
begin
  inherited;
  SQLProdutoAux.Open;
end;

procedure TFormTelaTransfereNroSerial.BTProcurarClick(Sender: TObject);
begin
  inherited;
  SQLProdutoSerie.close;
  SQLProdutoSerie.MacroByName('Filtro').Value := 'PRSEA60NROSERIE = "' + EditCodSerial.Text + '"';
  SQLProdutoSerie.Open;
  if not SQLProdutoSerie.IsEmpty then
    EditDescProduto.Text := SQLProdutoSeriePRODICOD.AsString+'-'+ dm.SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',SQLProdutoSeriePRODICOD.AsString)
  else
    begin
      EditDescProduto.Text := 'Serial não foi encontrado, Verifique!';
      SQLProdutoSerie.close;
    end;
end;

procedure TFormTelaTransfereNroSerial.BTTrocarClick(Sender: TObject);
begin
  inherited;
  if not SQLProdutoSerie.IsEmpty then
    begin
      if Pergunta('SIM','Tem certeza que deseja trocar o serial para este produto...') then
        begin
          SQLProdutoSerie.Edit;
          SQLProdutoSeriePRODICOD.Value := SQLProdutoAuxPRODICOD.Value;
          SQLProdutoSerie.Post;
          SQLProdutoSerie.Close;
          EditCodSerial.Text   := '';
          EditDescProduto.Text := '';
          EditCodSerial.SetFocus;
        end;
    end
  else
    ShowMessage('Operação não foi concluida, porque não foi encontrado Nro Serial');
end;

end.
