unit TelaNotaFiscalItemFiltro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, StdCtrls, Buttons, Grids, DBGrids,
  DBCtrls, Mask, ToolEdit, RxLookup, DB, DBTables, RxQuery, jpeg, ExtCtrls,
  {ENumEd,} CurrEdit, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaNotaFiscalitemFiltro = class(TFormTelaGeralModalTemplate)
    DSTblTemporaria: TDataSource;
    TblTemporaria: TTable;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaPRODN3VLRVENDA: TFloatField;
    TblTemporariaQTDENFOrigem: TFloatField;
    TblTemporariaQTDENFDest: TFloatField;
    SQLProdutos: TRxQuery;
    SQLProdutosPRODICOD: TIntegerField;
    SQLProdutosPRODA30CODESTRUT: TStringField;
    SQLProdutosPRODA60CODBAR: TStringField;
    SQLProdutosPRODA15CODANT: TStringField;
    SQLProdutosPRODIAGRUPGRADE: TIntegerField;
    SQLProdutosPRODA60REFER: TStringField;
    SQLProdutosPRODA60DESCR: TStringField;
    SQLProdutosPRODA30ADESCRREDUZ: TStringField;
    SQLProdutosPRODA255DESCRTEC: TStringField;
    SQLProdutosPRODICODBALANCA: TIntegerField;
    SQLProdutosPRODA15APAVIM: TStringField;
    SQLProdutosPRODA15RUA: TStringField;
    SQLProdutosPRODA15PRATEL: TStringField;
    SQLProdutosCLFSICOD: TIntegerField;
    SQLProdutosMARCICOD: TIntegerField;
    SQLProdutosUNIDICOD: TIntegerField;
    SQLProdutosGRADICOD: TIntegerField;
    SQLProdutosGRTMICOD: TIntegerField;
    SQLProdutosGRUPICOD: TIntegerField;
    SQLProdutosSUBGICOD: TIntegerField;
    SQLProdutosVARIICOD: TIntegerField;
    SQLProdutosICMSICOD: TIntegerField;
    SQLProdutosPRODN3PESOBRUTO: TFloatField;
    SQLProdutosPRODN3PESOLIQ: TFloatField;
    SQLProdutosPRODN3CAPACEMBAL: TFloatField;
    SQLProdutosPRODDCAD: TDateTimeField;
    SQLProdutosPRODDULTALTER: TDateTimeField;
    SQLProdutosPRODN3VLRVENDA: TFloatField;
    SQLProdutosPRODN3VLRVENDAPROM: TFloatField;
    SQLProdutosPRODDINIPROMO: TDateTimeField;
    SQLProdutosPRODDFIMPROMO: TDateTimeField;
    SQLProdutosPRODN3VLRCOMPRA: TFloatField;
    SQLProdutosPRODN3VLRCUSTO: TFloatField;
    SQLProdutosPRODN3VLRCUSTOMED: TFloatField;
    SQLProdutosPRODN3PERCIPI: TFloatField;
    SQLProdutosPRODN3PERCMARGLUCR: TFloatField;
    SQLProdutosPRODCATIVO: TStringField;
    SQLProdutosPRODCSERVICO: TStringField;
    SQLProdutosPRODCGERACOMIS: TStringField;
    SQLProdutosPRODN2COMISVISTA: TFloatField;
    SQLProdutosPRODN2COMISPRAZO: TFloatField;
    SQLProdutosPRODDIMOBOLIZ: TDateTimeField;
    SQLProdutosPRODICODPAI: TIntegerField;
    SQLProdutosPRODCTIPOBAIXA: TStringField;
    SQLProdutosPRODN3QTDEBAIXA: TFloatField;
    SQLProdutosCORICOD: TIntegerField;
    SQLProdutosPRODIORIGEM: TIntegerField;
    SQLProdutosPENDENTE: TStringField;
    SQLProdutosREGISTRO: TDateTimeField;
    SQLProdutosPRODDULTATUALIZ: TDateTimeField;
    SQLProdutosPRODA60DIMENSAO: TStringField;
    SQLProdutosPRODISITTRIB: TIntegerField;
    SQLProdutosPRODITIPOPRODBALAN: TStringField;
    SQLProdutosPRODICODETIQBAL: TIntegerField;
    SQLProdutosPRODIDIASVALIDADE: TIntegerField;
    SQLProdutosPRODN3VLRCOMPRAMED: TFloatField;
    SQLProdutosPRODN3DOLARCUSTO: TFloatField;
    SQLProdutosPRODN3DOLARCOMPRA: TFloatField;
    SQLProdutosPRODN3DOLARVENDA: TFloatField;
    SQLProdutosPRODBIMAGEM: TBlobField;
    SQLProdutosPRODCSUBSTRIB: TStringField;
    SQLProdutosPRODCTEMNROSERIE: TStringField;
    SQLProdutosPRODA03GARANTIA: TStringField;
    SQLProdutosPRODA254COMPQUIMICA: TStringField;
    SQLProdutosPRODCTIPO: TStringField;
    SQLProdutosPRODN2PERCFRETE: TFloatField;
    SQLProdutosPRODN2PERDA: TFloatField;
    SQLProdutosPRODN2PIS: TFloatField;
    SQLProdutosPRODN3ALTURA: TFloatField;
    SQLProdutosPRODN3COMPRIMENTO: TFloatField;
    SQLProdutosPRODN3DIMENTOTAL: TFloatField;
    SQLProdutosPRODN3LARGURA: TFloatField;
    SQLProdutosPRODA30INF01ETQBARRAS: TStringField;
    SQLProdutosPRODA30INF02ETQBARRAS: TStringField;
    SQLProdutosCOLEICOD: TIntegerField;
    SQLProdutosPRODN2PERCDESP: TFloatField;
    SQLProdutosPRODN2PERCSUBST: TFloatField;
    SQLProdutosPRODN2PERCDESC1: TFloatField;
    SQLProdutosPRODN2PERCDESC2: TFloatField;
    SQLProdutosPRODN2PERCDESC3: TFloatField;
    SQLProdutosPRODN2PERCDESC4: TFloatField;
    SQLProdutosPRODN2PERCDESC5: TFloatField;
    SQLProdutosPRODN2PERCAUME1: TFloatField;
    SQLProdutosPRODN2PERCAUME2: TFloatField;
    SQLProdutosPRODN2PERCAUME3: TFloatField;
    SQLProdutosPRODN2PERCAUME4: TFloatField;
    SQLProdutosPRODN2PERCAUME5: TFloatField;
    SQLProdutosDECRICOD: TIntegerField;
    SQLProdutosPRODN2VLRVENDA2: TFloatField;
    SQLProdutosPRODN3PERCMARGLUC2: TFloatField;
    SQLProdutosPRODN3PERCMGLVFIXA: TFloatField;
    SQLProdutosPRODN3PERCMGLAFIXA: TFloatField;
    SQLProdutosPRODDULTCOMPRA: TDateTimeField;
    SQLProdutosPRODDULTVENDA: TDateTimeField;
    SQLProdutosPRODN3QTDULTCOMPRA: TFloatField;
    Panel1: TPanel;
    GroupFiltro: TGroupBox;
    Panel3: TPanel;
    BTFiltrar: TBitBtn;
    BTGravar: TBitBtn;
    EditNota: TEdit;
    Label9: TLabel;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    ComboSerie: TRxDBLookupCombo;
    SQLSerie: TRxQuery;
    SQLSerieSERIA5COD: TStringField;
    SQLSerieEMPRICOD: TIntegerField;
    DSSQLSerie: TDataSource;
    lbFornecedor: TLabel;
    EditChave: TEdit;
    Label1: TLabel;
    EditDesconto: TCurrencyEdit;
    procedure BTFiltrarClick(Sender: TObject);
    procedure TblTemporariaNewRecord(DataSet: TDataSet);
    procedure GridProdutosFiltradosEnter(Sender: TObject);
    procedure GridProdutosFiltradosExit(Sender: TObject);
    procedure ComboVariacaoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaNotaFiscalitemFiltro: TFormTelaNotaFiscalitemFiltro;

implementation

uses DataModulo, WaitWindow, DataModuloTemplate;

{$R *.dfm}

procedure TFormTelaNotaFiscalitemFiltro.BTFiltrarClick(Sender: TObject);
var Item : integer;
    IDNota, Tipo, TabelaCab, TabelaItem, CampoID, CampoSerie, CampoNumero, CampoChave : String;

begin
  inherited;
  if labeltitulo.Caption = 'Importar Produtos apartir de uma Nota de Entrada' then
    begin
      Tipo := 'E';
      TabelaCab   := 'NotaCompra';
      TabelaItem  := 'NotaCompraItem';
      CampoID     := 'NOCPA13ID';
      CampoSerie  := 'NOCPA5SERIE';
      CampoNumero := 'NOCPA30NRO';
      CampoChave  := 'NOFIA44CHAVEACESSO';
    end
  else
    begin
      Tipo := 'S';
      TabelaCab   := 'NotaFiscal';
      TabelaItem  := 'NotaFiscalItem';
      CampoID     := 'NOFIA13ID';
      CampoSerie  := 'SERIA5COD';
      CampoNumero := 'NOFIINUMERO';
      CampoChave  := 'NOFIA44CHAVEACESSO';
    end;

  dm.SQLTemplate.Close;
  dm.SQLTemplate.SQL.Clear;
  dm.SQLTemplate.SQL.Add('Select * from '+ TabelaCab +' where %mSerie and %mNumero and %mChave');
  if ComboSerie.Value <> '' then
    dm.SQLTemplate.MacroByName('mSerie').Value := CampoSerie + '=''' + ComboSerie.Value + ''''
  else
    dm.SQLTemplate.MacroByName('mSerie').Value := '0=0';
  if EditNota.Text <> '' then
    dm.SQLTemplate.MacroByName('mNumero').Value := CampoNumero + '=' + EditNota.Text
  else
    dm.SQLTemplate.MacroByName('mNumero').Value := '0=0';
  if EditChave.Text <> '' then
    dm.SQLTemplate.MacroByName('mChave').Value := CampoChave + '=''' + EditChave.Text + ''''
  else
    dm.SQLTemplate.MacroByName('mChave').Value := '0=0';

  dm.SQLTemplate.Open;
  if not dm.SQLTemplate.IsEmpty then
    begin
      if Tipo = 'S' then
        IDNota := dm.SQLTemplate.fieldbyname('NOFIA13ID').Value
      else
        IDNota := dm.SQLTemplate.fieldbyname('NOCPA13ID').Value;

      TblTemporaria.Close ;
      try
        TblTemporaria.DeleteTable ;
        TblTemporaria.CreateTable ;
      except
        on E:Exception do
          begin
            if pos('Table is busy',E.Message) > 0 then
              ShowMessage('A tabela já está sendo usada por outro módulo, por favor verifique e tente novamente.');
            TblTemporaria.CreateTable ;
          end;
      end ;
      TblTemporaria.Open ;
      // Filtrar Itens da Nota Fiscal
      dm.SQLTemplate.Close;
      dm.SQLTemplate.SQL.Clear;
      dm.SQLTemplate.SQL.Add('Select * from '+ TabelaItem);
      dm.SQLTemplate.SQL.Add('Where '+CampoID+'='''+ IDNota +'''');
      dm.SQLTemplate.Open;
      if not dm.SQLTemplate.IsEmpty then
        begin
          Item := 1;
          MakeWindow(dm.SQLTemplate.RecordCount, 'Aguarde, Executando Filtro!');
          while not dm.SQLTemplate.Eof do
            begin
              SetProgress(Item);
              Item := Item + 1;
              TblTemporaria.Append;
              TblTemporariaPRODICOD.Value        := dm.SQLTemplate.fieldbyname('PRODICOD').Value;
              TblTemporariaPRODA60DESCR.Value    := dm.SQLLocate('PRODUTO','PRODICOD','PRODA60DESCR',TblTemporariaPRODICOD.AsString);
              if Tipo = 'S' then
                begin
                  TblTemporariaPRODN3VLRVENDA.Value     := dm.SQLTemplate.fieldbyname('NFITN2VLRUNIT').Value;
                  TblTemporariaQTDENFOrigem.Value       := dm.SQLTemplate.fieldbyname('NFITN3QUANT').Value;
                end
              else
                begin
                  TblTemporariaQTDENFOrigem.Value    := dm.SQLTemplate.fieldbyname('NOCIN3QTDEMBAL').Value;
                  TblTemporariaPRODN3VLRVENDA.Value  := dm.SQLTemplate.fieldbyname('NOCIN3VLREMBAL').Value;
                end;

              TblTemporaria.Post;
              dm.SQLTemplate.Next;
            end;
          DestroyWindow;
          TblTemporaria.First;
          DBGrid1.SetFocus;
        end;
    end
  else
    begin
      Application.ProcessMessages;
      ShowMessage('Nota Fiscal não foi encontrada! Verifique o Filtro!');
    end;
end;

procedure TFormTelaNotaFiscalitemFiltro.TblTemporariaNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  TblTemporariaQTDENFDest.Value := 0;
end;

procedure TFormTelaNotaFiscalitemFiltro.GridProdutosFiltradosEnter(
  Sender: TObject);
begin
  inherited;
  FormTelaNotaFiscalItemFiltro.KeyPreview := False;
end;

procedure TFormTelaNotaFiscalitemFiltro.GridProdutosFiltradosExit(
  Sender: TObject);
begin
  inherited;
  FormTelaNotaFiscalItemFiltro.KeyPreview := True;
end;

procedure TFormTelaNotaFiscalitemFiltro.ComboVariacaoExit(
  Sender: TObject);
begin
  inherited;
  BTFiltrar.Click;
end;

procedure TFormTelaNotaFiscalitemFiltro.FormCreate(Sender: TObject);
begin
  inherited;
  SQLSerie.Open;
end;

end.
