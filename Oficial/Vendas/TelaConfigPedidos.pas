unit TelaConfigPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ConerBtn, Mask, ToolEdit, CurrEdit, ExtCtrls,
  ComCtrls, RxLookup, DB, DBTables, RxQuery, DBCtrls, RxDBComb;

type
  TFormTelaConfigPedidos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edColuna: TCurrencyEdit;
    edLinha: TCurrencyEdit;
    LabelTitulo: TLabel;
    lblNomeControle: TLabel;
    PageControl: TPageControl;
    TabSheetControle: TTabSheet;
    TabSheetImpressao: TTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    ConerBtn1: TConerBtn;
    ConerBtn2: TConerBtn;
    Label4: TLabel;
    Label14: TLabel;
    ComboVendedor: TRxDBLookupCombo;
    Label9: TLabel;
    ComboRota: TRxDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SQLVendedor: TRxQuery;
    SQLVendedorVENDICOD: TIntegerField;
    SQLVendedorVENDA60NOME: TStringField;
    DSSQLVendedor: TDataSource;
    SQLRota: TRxQuery;
    SQLRotaROTAICOD: TIntegerField;
    SQLRotaROTAA60NOME: TStringField;
    DSSQLRota: TDataSource;
    Label3: TLabel;
    Label5: TLabel;
    DataEmissao: TDateEdit;
    Label6: TLabel;
    ComboTransp: TRxDBLookupCombo;
    Label7: TLabel;
    ComboVeiculo: TRxDBLookupCombo;
    SQLTransportadora: TRxQuery;
    DSSQLTransportadora: TDataSource;
    SQLTransportadoraTRANICOD: TIntegerField;
    SQLTransportadoraTRANA60RAZAOSOC: TStringField;
    SQLVeiculo: TRxQuery;
    DSSQLVeiculo: TDataSource;
    SQLVeiculoVEICA13ID: TStringField;
    SQLVeiculoVEICA7PLACA: TStringField;
    SQLVeiculoVEICA60DESCR: TStringField;
    Label8: TLabel;
    ComboSerie: TRxDBLookupCombo;
    SQLSerie: TRxQuery;
    DSSQLSerie: TDataSource;
    SQLSerieSERIA5COD: TStringField;
    DataEntrega: TEdit;
    Label10: TLabel;
    ComboFrete: TComboBox;
    Label35: TLabel;
    Label53: TLabel;
    Label30: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    MemoObs: TMemo;
    Label11: TLabel;
    EditVolume: TEdit;
    EditEspecie: TEdit;
    EditMarca: TEdit;
    EditPesoBruto: TEdit;
    EditPesoLiquido: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConfigPedidos: TFormTelaConfigPedidos;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaConfigPedidos.BitBtn1Click(Sender: TObject);
begin
 try
    try
      dm.DataEntregaPedidos   := StrToDateTime(DataEntrega.Text);
    except
      dm.DataEntregaPedidos   := 0;
    end;
    try
      dm.DataEmissaoPedidos   := DataEmissao.Date;
    except
    end;
    try
      dm.SerieAtualPedidos    := ComboSerie.Value;
    except
    end;
    try
      dm.VendedorAtualPedidos := ComboVendedor.KeyValue;
    except
    end;
    try
      dm.RotaAtualPedidos     := ComboRota.KeyValue;
    except
    end;
    try
      dm.TranspAtualPedidos   := ComboTransp.KeyValue;
    except
    end;
    try
      dm.VeiculoAtualPedidos  := ComboVeiculo.Value;
    except
    end;
    try
      dm.FretePorConta        := Copy(ComboFrete.Text,0,1);
    except
    end;
    try
      dm.PedidoVolume         := EditVolume.Text;
    except
    end;
    try
      dm.PedidoEspecie        := EditEspecie.Text;
    except
    end;
    try
      dm.PedidoMarca         := EditMarca.Text;
    except
    end;
    try
      dm.PedidoPesoB         := EditPesoBruto.Text;
    except
    end;
    try
      dm.PedidoPesoL         := EditPesoLiquido.Text;
    except
    end;
    try
      dm.PedidoObs         := UpperCase(MemoObs.Text);
    except
    end;
  except
    dm.DataEmissaoPedidos   := Date;
    dm.DataEntregaPedidos   := Date+1;
    dm.SerieAtualPedidos    := '';
    dm.VendedorAtualPedidos := 0;
    dm.RotaAtualPedidos     := 0;
    dm.TranspAtualPedidos   := 0;
    dm.VeiculoAtualPedidos  := '';
    Application.ProcessMessages;
  end;
  if Dm.DataEmissaoPedidos < StrToDate('01/01/2000')  then
  begin
    Showmessage('Informe Data de Emissão');
    DataEmissao.SetFocus;
    ModalResult := mrNone;
    Exit;
  end;
  if (DM.SerieAtualPedidos = '' ) then
  begin
    Showmessage('Informe Série da NF');
    ComboSerie.SetFocus;
    ModalResult := mrNone;
    Exit;
  end;

  ModalResult := mrOk
end;

procedure TFormTelaConfigPedidos.FormCreate(Sender: TObject);
begin
  SQLVendedor.Open;
  SQLRota.Open;
  SQLTransportadora.Open;
  SQLVeiculo.Open;
  SQLSerie.Open;
  DataEntrega.Text := FormatDateTime('dd/mm/yy hh:mm',now);
end;

procedure TFormTelaConfigPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SQLVendedor.Close;
  SQLRota.Close;
  SQLTransportadora.Close;
  SQLVeiculo.Close;
  Action := caFree;
end;

procedure TFormTelaConfigPedidos.BitBtn2Click(Sender: TObject);
begin
  dm.DataEmissaoPedidos   := Date;
  dm.DataEntregaPedidos   := Date+1;
  dm.SerieAtualPedidos    := '';
  dm.VendedorAtualPedidos := 0;
  dm.RotaAtualPedidos     := 0;
  dm.TranspAtualPedidos   := 0;
  dm.VeiculoAtualPedidos  := ''
end;

procedure TFormTelaConfigPedidos.FormActivate(Sender: TObject);
begin
  DataEmissao.SetFocus;
end;

procedure TFormTelaConfigPedidos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF Key = #13 then
  Begin
    Key := #0;
    Perform(CM_DIALOGKEY,VK_TAB,0);
  end;
end;

end.
