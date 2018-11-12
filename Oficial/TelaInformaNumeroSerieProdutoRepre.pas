unit TelaInformaNumeroSerieProdutoRepre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, RXCtrls, Grids, DBGrids, ExtCtrls,
  RxQuery, RxMemDS, DBClient, Mask, DBCtrls;

type
  TFormTelaInformaNumeroSerieProdutoRepre = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    LblNomeSistema: TRxLabel;
    DSSQLProdutoSerie: TDataSource;
    Panel1: TPanel;
    DBGridLista: TDBGrid;
    RXSerie: TRxMemoryData;
    RXSerieNumeroSerie: TStringField;
    cdsSerie: TClientDataSet;
    cdsSerieNumeroSerie: TStringField;
    dbedtNumeroSerie: TDBEdit;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    CdProduto: string;
  public
    { Public declarations }
  end;

var
  FormTelaInformaNumeroSerieProdutoRepre: TFormTelaInformaNumeroSerieProdutoRepre;

implementation

uses
  UnitLibrary, TelaInformaNumeroSerieProduto;

{$R *.dfm}

procedure TFormTelaInformaNumeroSerieProdutoRepre.BitBtn1Click(Sender: TObject);
begin
  if RXSerieNumeroSerie.AsString <> '' then
    RXSerie.Post;
  RXSerie.Insert;
end;


procedure TFormTelaInformaNumeroSerieProdutoRepre.FormCreate(Sender: TObject);
begin
  RXSerie.EmptyTable;
  RXSerie.Open;
end;

procedure TFormTelaInformaNumeroSerieProdutoRepre.BitBtn2Click(Sender: TObject);
begin
   RXSerie.EmptyTable;
   Close;
end;

procedure TFormTelaInformaNumeroSerieProdutoRepre.FormShow(Sender: TObject);
begin
  dbedtNumeroSerie.SetFocus;
end;

procedure TFormTelaInformaNumeroSerieProdutoRepre.DBGridListaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = 40) and not (RXSerie.State in [dsEdit, dsInsert]) then
  begin
    RXSerie.Insert;
  end;
end;

procedure TFormTelaInformaNumeroSerieProdutoRepre.BitBtn3Click(
  Sender: TObject);
begin
  FormTelaInformaNumeroSerieProdutoRepre.ModalResult := MrOK
end;

end.

