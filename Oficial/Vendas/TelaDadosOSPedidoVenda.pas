unit TelaDadosOSPedidoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, ExtCtrls, StdCtrls, DBCtrls, RxLookup, Mask,
  ToolEdit, RXDBCtrl, DB, DBTables, RxQuery, Grids, DBGrids;

type
  TFormTelaDadosOSPedidoVenda = class(TForm)
    PanelCabecalho: TPanel;
    LabelTitulo: TLabel;
    PanelNavigator: TPanel;
    Image1: TImage;
    BtnOK: TSpeedButton;
    PanelCentral: TPanel;
    PanelBarra: TPanel;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    DataPrevistaEntrega: TDBDateEdit;
    Label13: TLabel;
    DBLFuncionario: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    Label12: TLabel;
    DBMemo5: TDBMemo;
    SQLOS: TRxQuery;
    SQLOSOSA13ID: TStringField;
    SQLOSTERMICOD: TIntegerField;
    SQLOSEMPRICOD: TIntegerField;
    SQLOSOSICOD: TIntegerField;
    SQLOSOSDEMISSAO: TDateTimeField;
    SQLOSCLIEA13ID: TStringField;
    SQLOSOSDPREVENTREGA: TDateTimeField;
    SQLOSOSCSTATUS: TStringField;
    SQLOSOSOBS: TMemoField;
    SQLOSTRANICOD: TIntegerField;
    SQLOSPENDENTE: TStringField;
    SQLOSREGISTRO: TDateTimeField;
    SQLOSItem: TRxQuery;
    SQLOSItemOSA13ID: TStringField;
    SQLOSItemOSITICOD: TIntegerField;
    SQLOSItemOSITTSTATUS: TStringField;
    SQLOSItemPRODICOD: TIntegerField;
    SQLOSItemOSITA30NRONF: TStringField;
    SQLOSItemOSITCORIGNF: TStringField;
    SQLOSItemOSITA60EMPRESANF: TStringField;
    SQLOSItemOSITTDESCREQUIP: TMemoField;
    SQLOSItemOSITTOBS: TMemoField;
    SQLOSItemOSITN2QTDE: TFloatField;
    DsSQLOS: TDataSource;
    DsSQLOSItem: TDataSource;
    SQLCount: TRxQuery;
    SQLOSItemFUNCA13ID: TStringField;
    SQLFunc: TRxQuery;
    DsSQLFunc: TDataSource;
    SQLFuncFUNCA13ID: TStringField;
    SQLFuncFUNCA60NOME: TStringField;
    SQLProduto: TRxQuery;
    DsSQLProduto: TDataSource;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLOSItemUSUA60LOGIN: TStringField;
    SQLOSItemPENDENTE: TStringField;
    SQLOSItemREGISTRO: TDateTimeField;
    SQLOSUSUA60LOGIN: TStringField;
    SQLOSItemOSITN2VLRITEM: TFloatField;
    SQLOSItemOSITN2VLRDESC: TFloatField;
    SQLOSItemOSITN2PERCDESC: TFloatField;
    DsMarterTamplate: TDataSource;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLOSItemOSITTPROBLEMA: TMemoField;
    DBMemo2: TDBMemo;
    Label1: TLabel;
    SQLOSItemOSITN2VLRTOTITEM: TFloatField;
    SQLOSOSN2VLRSERVICO: TFloatField;
    SQLOSOSN2VLRDESC: TFloatField;
    SQLOSOSN2PERCDESC: TFloatField;
    SQLOSOSN2VLRTOTAL: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure SQLOSBeforePost(DataSet: TDataSet);
    procedure SQLOSItemBeforePost(DataSet: TDataSet);
    procedure SQLOSAfterPost(DataSet: TDataSet);
    procedure BtnOKClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SQLOSItemNewRecord(DataSet: TDataSet);
    procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo5KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PegaItens;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaDadosOSPedidoVenda: TFormTelaDadosOSPedidoVenda;

implementation

uses UnitLibrary, VarSYS, FormResources, DataModulo;

{$R *.dfm}

procedure TFormTelaDadosOSPedidoVenda.PegaItens;
Var Itens : Integer;
begin
    if not DM.SQLProduto.Active then DM.SQLProduto.Active := True;
    Itens := 0;

    SQLCount.DataSource := DsMarterTamplate;
    SQLCount.Close;
    SQLCount.SQL.Text := 'Select * From PEDIDOVENDAITEM Where PDVDA13ID=:PDVDA13ID ';
    SQLCount.Open;

    SQLCount.First;
    while not SQLCount.Eof do
       begin
          if Itens = 0 then
             SQLOSItemOSITTDESCREQUIP.AsString := 'Itens do Pedido de Venda:' + char(#13);
          SQLOSItemOSITTDESCREQUIP.AsString := SQLOSItemOSITTDESCREQUIP.AsString + IntToStr(Itens) + ' - ' + DM.SQLProduto.Lookup('PRODICOD',SQLCount.FieldByName('PRODICOD').AsString, 'PRODA60DESCR');
          SQLOSItemOSITTDESCREQUIP.AsString := SQLOSItemOSITTDESCREQUIP.AsString + ' Qtde : ' + SQLCount.FieldByName('PVITN3QUANT').AsString + Char(#13);
          SQLCount.Next;
          Itens := Itens + 1;
       end;
    SQLCount.DataSource := Nil;
end;

procedure TFormTelaDadosOSPedidoVenda.FormCreate(Sender: TObject);
begin
    if DSMasterSys <> nil then
       DsMarterTamplate := DSMasterSys;
    if not SQLOS.Active      then SQLOS.Active      :=True;
    SQLOS.Append;
    if not SQLOSItem.Active  then SQLOSItem.Active  :=True;
    SQLOSItem.Append;
    if not SQLFunc.Active    then SQLFunc.Active    :=True;
    if not SQLProduto.Active then SQLProduto.Active :=True;
    PegaItens;
end;

procedure TFormTelaDadosOSPedidoVenda.SQLOSBeforePost(DataSet: TDataSet);
begin
   DM.CodigoAutomatico('OS', DsSQLOS, DsSQLOS.DataSet, 1, 0);

   SQLOSTERMICOD.AsInteger    := TerminalCorrente;
   SQLOSEMPRICOD.AsInteger    := EmpresaCorrente;
   SQLOSOSDEMISSAO.AsDateTime := Date;
   SQLOSOSCSTATUS.AsString    := 'A';
   SQLOSUSUA60LOGIN.AsString  := UsuarioAtualNome;
   SQLOSPENDENTE.AsString     := 'S';
   SQLOSREGISTRO.AsDateTime   := Now;
   SQLOSCLIEA13ID.AsString    := DsMarterTamplate.DataSet.FieldByName('CLIEA13ID').AsString;
   SQLOSOSN2VLRSERVICO.AsFloat:= SQLProdutoPRODN3VLRVENDA.AsFloat;
   SQLOSOSN2VLRDESC.AsFloat   := 0;
   SQLOSOSN2PERCDESC.AsFloat  := 0;
   SQLOSOSN2VLRTOTAL.AsFloat  := SQLProdutoPRODN3VLRVENDA.AsFloat;

end;

procedure TFormTelaDadosOSPedidoVenda.SQLOSItemBeforePost(
  DataSet: TDataSet);
begin
   //Items
   SQLOSItemOSA13ID.AsString        := SQLOSOSA13ID.AsString;

   SQLCount.Close;
   SQLCount.SQL.Text                := 'select count(OSITICOD) as Prox from OSITEM';
   SQLCount.Open;

   SQLOSItemOSITICOD.AsInteger      := SQLCount.FieldByName('Prox').AsInteger;

   SQLOSItemOSITTSTATUS.AsString    := 'A';
   SQLOSItemUSUA60LOGIN.AsString    := UsuarioAtualNome;
   SQLOSItemPENDENTE.AsString       := 'S';
   SQLOSItemREGISTRO.AsDateTime     := Now;
   SQLOSItemOSITA30NRONF.AsString   := 'Ped ' + DsMarterTamplate.DataSet.FieldByName('PDVDA13ID').AsString;
   SQLOSItemOSITCORIGNF.AsString    := 'I';
   SQLOSItemOSITA60EMPRESANF.AsString := DM.SQLEmpresa.Lookup('EMPRICOD', EmpresaCorrente,'EMPRA60NOMEFANT');
   SQLOSItemOSITN2VLRITEM.AsFloat     := SQLProdutoPRODN3VLRVENDA.AsFloat;
   SQLOSItemOSITN2VLRDESC.AsFloat     := 0;
   SQLOSItemOSITN2PERCDESC.AsFloat    := 0;
   SQLOSItemOSITN2QTDE.AsInteger       := 1;
   SQLOSItemOSITN2VLRTOTITEM.AsFloat  := SQLOSItemOSITN2VLRITEM.AsFloat;

end;

procedure TFormTelaDadosOSPedidoVenda.SQLOSAfterPost(DataSet: TDataSet);
begin
   SQLOSItem.Post;
end;

procedure TFormTelaDadosOSPedidoVenda.BtnOKClick(Sender: TObject);
begin
   try
     if SQLProdutoPRODN3VLRVENDA.Value = 0 then
        raise Exception.Create('Produto com Valor de Venda Zerado!');
     SQLOS.Post;
     Close;
   except
     raise Exception.Create('Não há valor para o produto "' + SQLProdutoPRODA60DESCR.AsString + '".' + char(#13) + 'Por favor edite este Produto e adicione o valor.');
   end;
end;

procedure TFormTelaDadosOSPedidoVenda.SpeedButton1Click(Sender: TObject);
begin
   SQLOS.Cancel;
   SQLOSItem.Cancel;
   Close;
end;

procedure TFormTelaDadosOSPedidoVenda.SQLOSItemNewRecord(
  DataSet: TDataSet);
begin
     SQLOSItemOSITTPROBLEMA.AsString := 'PEDIDO DE VENDA';
end;

procedure TFormTelaDadosOSPedidoVenda.DBMemo2KeyPress(Sender: TObject;
  var Key: Char);
begin
    Key := UpCase(Key);
end;

procedure TFormTelaDadosOSPedidoVenda.DBMemo5KeyPress(Sender: TObject;
  var Key: Char);
begin
    Key := UpCase(Key);
end;

procedure TFormTelaDadosOSPedidoVenda.DBMemo1KeyPress(Sender: TObject;
  var Key: Char);
begin
    Key := UpCase(Key);
end;

procedure TFormTelaDadosOSPedidoVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    DSMasterSys := nil;
end;

end.
