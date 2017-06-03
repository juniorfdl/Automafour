unit TelaAtualizaPrecoProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, DB, RxLookup, StdCtrls, DBTables, RxQuery,
  Grids, DBGrids, ComCtrls, Buttons, jpeg, ExtCtrls, Menus, RXCtrls,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormTelaAtualizaPrecoProduto = class(TFormTelaGeralTEMPLATE)
    ProgressBar1: TProgressBar;
    DBGridLista: TDBGrid;
    SQLProduto: TRxQuery;
    DSSQLProduto: TDataSource;
    UpdateSQLProduto: TUpdateSQL;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    ComboGrupo: TRxDBLookupCombo;
    LabelSubGrupo: TLabel;
    ComboSubGrupo: TRxDBLookupCombo;
    LabelVariacao: TLabel;
    ComboVariacao: TRxDBLookupCombo;
    Label5: TLabel;
    ComboMarca: TRxDBLookupCombo;
    SQLGrupo: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    DSSQLGrupo: TDataSource;
    SQLSubGrupo: TRxQuery;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoGRUPICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    DSSQLSubGrupo: TDataSource;
    SQLVariacao: TRxQuery;
    SQLVariacaoVARIICOD: TIntegerField;
    SQLVariacaoGRUPICOD: TIntegerField;
    SQLVariacaoSUBGICOD: TIntegerField;
    SQLVariacaoVARIA60DESCR: TStringField;
    SQLVariacaoPENDENTE: TStringField;
    SQLVariacaoREGISTRO: TDateTimeField;
    DSSQLVariacao: TDataSource;
    SQLMarca: TRxQuery;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    DSSQLMarca: TDataSource;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLProdutoPRODN3VLRCOMPRA: TFloatField;
    SQLProdutoPRODN3VLRCUSTO: TFloatField;
    SQLProdutoPRODN3PERCMARGLUCR: TFloatField;
    PopupMenu: TPopupMenu;
    LOJMnAtualizarMargemdeLucro: TMenuItem;
    SQLProdutoPRODN3VLRCUSTOMED: TFloatField;
    BtnSelecionarProd: TSpeedButton;
    AtualizarProd: TRxSpeedButton;
    procedure BtnSelecionarProdClick(Sender: TObject);
    procedure LOJMnAtualizarMargemdeLucroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaAtualizaPrecoProduto: TFormTelaAtualizaPrecoProduto;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormTelaAtualizaPrecoProduto.BtnSelecionarProdClick(Sender: TObject);
begin
  inherited;
  SQLProduto.Close;

  if ComboGrupo.Value <> '' then
    SQLProduto.MacroByName('Grupo').Value := 'GRUPICOD = ' + ComboGrupo.Value
  else
    SQLProduto.MacroByName('Grupo').Value := '0=0';

  if ComboSubGrupo.Value <> '' then
    SQLProduto.MacroByName('SubGrupo').Value := 'SUBGICOD = ' + ComboSubGrupo.Value
  else
    SQLProduto.MacroByName('SubGrupo').Value := '0=0';

  if ComboVariacao.Value <> '' then
    SQLProduto.MacroByName('Variacao').Value := 'VARIICOD = ' + ComboVariacao.Value
  else
    SQLProduto.MacroByName('Variacao').Value := '0=0';

  if ComboMarca.Value <> '' then
    SQLProduto.MacroByName('Marca').Value := 'MARCICOD = ' + ComboMarca.Value
  else
    SQLProduto.MacroByName('Marca').Value := '0=0';
    
  SQLProduto.Open;
end;

procedure TFormTelaAtualizaPrecoProduto.LOJMnAtualizarMargemdeLucroClick(
  Sender: TObject);
var
  ValorBase : Double;
begin
  inherited;
  SQLProduto.First;
  DM.DB.StartTransaction;
  try
    While not SQLProduto.Eof do
      begin
        SQLProduto.Edit;
        if Dm.SQLConfigCompraCFCOCTOTPRCVENPROD.AsString = 'C' then
          ValorBase := SQLProdutoPRODN3VLRCUSTO.AsFloat
        else
          ValorBase := SQLProdutoPRODN3VLRCUSTOMED.AsFloat;

        SQLProdutoPRODN3VLRVENDA.AsFloat := CalculaMargemLucro(SQLProdutoPRODICOD.AsInteger,ValorBase,SQLProdutoPRODN3VLRVENDA.AsFloat);
        SQLProduto.Post;
        SQLProduto.ApplyUpdates;
        SQLProduto.Next;
      end;
      DM.DB.Commit;
   except
     on E:Exception do
       begin
         DM.DB.Rollback;
         Informa('Problemas ao atualizar os produtos!' + 'ERRO: ' + E.Message);
         Exit;
       end;
   end;
end;

end.
