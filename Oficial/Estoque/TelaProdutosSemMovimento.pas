unit TelaProdutosSemMovimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralTEMPLATE, DB, DBTables, Buttons, jpeg, ExtCtrls,
  StdCtrls, Mask, ToolEdit, Grids, DBGrids, RxQuery, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaProdutosSemMov = class(TFormTelaGeralTEMPLATE)
    dsProdutosTemp: TDataSource;
    TblProdutosTemp: TTable;
    TblProdutosTempCodigo: TIntegerField;
    TblProdutosTempDescricao: TStringField;
    TblProdutosTempMarcar: TBooleanField;
    PanelTopBxDocREc: TPanel;
    Label3: TLabel;
    Data2: TDateEdit;
    DBGridLista: TDBGrid;
    SQLProdutos: TRxQuery;
    TblProdutosTempSaldo: TFloatField;
    BtnBaixarDoc: TSpeedButton;
    BtnSelecionarDoc: TSpeedButton;
    CKAtivos: TCheckBox;
    CKInativos: TCheckBox;
    TblProdutosTempUltCompra: TDateField;
    TblProdutosTempUltVenda: TDateField;
    procedure DBGridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnSelecionarDocClick(Sender: TObject);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridListaColExit(Sender: TObject);
    procedure DBGridListaColEnter(Sender: TObject);
    procedure DBGridListaCellClick(Column: TColumn);
    procedure BtnBaixarDocClick(Sender: TObject);
  private
    { Private declarations }
    OriginalOptions : TDBGridOptions;
    procedure SaveBoolean(Grid : TDBGrid) ;
    
  public
    { Public declarations }
  end;

var
  FormTelaProdutosSemMov: TFormTelaProdutosSemMov;

implementation

uses DataModulo;

{$R *.dfm}

procedure TFormTelaProdutosSemMov.SaveBoolean(Grid : TDBGrid) ;
begin
  Grid.SelectedField.Dataset.Edit ;
  Grid.SelectedField.AsBoolean := not Grid.SelectedField.AsBoolean ;
  Grid.SelectedField.Dataset.Post ;
end ;

procedure TFormTelaProdutosSemMov.DBGridListaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Const
  CtrlState : array[Boolean] of Integer = (DFCS_BUTTONCHECK,
                                           DFCS_BUTTONCHECK or DFCS_CHECKED);
begin
  inherited;
  DBGridLista.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  if Column.Field.DataType = ftBoolean then
    begin
      DBGridLista.Canvas.FillRect(Rect);
      DrawFrameControl(DBGridLista.Canvas.Handle,
                       Rect,
                       DFC_BUTTON,
                       CtrlState[Column.Field.AsBoolean]);
    end;
end;

procedure TFormTelaProdutosSemMov.BtnSelecionarDocClick(Sender: TObject);
begin
  inherited;
  try
    TblProdutosTemp.Close;
    TblProdutosTemp.DeleteTable;
    TblProdutosTemp.CreateTable;
  except
    TblProdutosTemp.CreateTable;
  end;

  TblProdutosTemp.Open ;

  SQLProdutos.Close ;
  SQLProdutos.MacroByName('MAtivo').Value   := '0=0';
  SQLProdutos.MacroByName('MEmpresa').Value := 'produtosaldo.EMPRICOD = ' + dm.SQLEmpresaEMPRICOD.AsString ;

  if CKAtivos.Checked then
    SQLProdutos.MacroByName('MAtivo').Value := 'produto.PRODCATIVO = ''S''';

  if CKInativos.Checked then
    SQLProdutos.MacroByName('MAtivo').Value := 'produto.PRODCATIVO = ''N''';

  SQLProdutos.Open;

  SQLProdutos.First;
  while not SQLProdutos.EOF do
  begin
    TblProdutosTemp.Append;
    TblProdutosTempCodigo.Value      := SQLprodutos.fieldbyname('PRODICOD').Value;
    TblProdutosTempDescricao.Value   := SQLprodutos.fieldbyname('PRODA60DESCR').Value;
    TblProdutosTempSaldo.Value       := SQLprodutos.fieldbyname('PSLDN3QTDE').Value;
    TblProdutosTempUltCompra.AsString   := SQLprodutos.fieldbyname('PRODDULTCOMPRA').AsString;
    TblProdutosTempUltVenda.AsString    := SQLprodutos.fieldbyname('PRODDULTVENDA').AsString;
    TblProdutosTempMarcar.Value      := False;
    TblProdutosTemp.Post;
    SQLProdutos.Next;
    Application.ProcessMessages;
  end;
  SQLProdutos.Close ;
  TblProdutosTemp.Close;
  TblProdutosTemp.Open;
end;

procedure TFormTelaProdutosSemMov.DBGridListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ( Key = VK_SPACE ) and ( DBGridLista.SelectedField.DataType = ftBoolean ) then
    SaveBoolean(DBGridLista);
  if Key = VK_Return then
    if TblProdutosTemp.State in DsEditModes then
      TblProdutosTemp.Post;
end;

procedure TFormTelaProdutosSemMov.DBGridListaColExit(Sender: TObject);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    DBGridLista.Options := OriginalOptions;
end;

procedure TFormTelaProdutosSemMov.DBGridListaColEnter(Sender: TObject);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    begin
      OriginalOptions := DBGridLista.Options ;
      DBGridLista.Options := DBGridLista.Options - [dgEditing] ;
    end ;
end;

procedure TFormTelaProdutosSemMov.DBGridListaCellClick(Column: TColumn);
begin
  inherited;
  if DBGridLista.SelectedField.DataType = ftBoolean then
    SaveBoolean(DBGridLista) ;
end;

procedure TFormTelaProdutosSemMov.BtnBaixarDocClick(Sender: TObject);
var erro : boolean;
begin
  inherited;
  TblProdutosTemp.First;
  while not TblProdutosTemp.EOF do
    begin
      if TblProdutosTempMarcar.Value then
        begin
          try
            erro := False;
            dm.SQLTemplate.Close;
            dm.SQLTemplate.sql.Text := 'update produto set prodcativo = ''N'' where prodicod = ' + TblProdutosTempCodigo.AsString;
            dm.SQLTemplate.Prepare;
            dm.SQLTemplate.Open;
            Application.ProcessMessages;
          except
            erro := True;
            Application.ProcessMessages;
          end;

          if not erro then
            TblProdutosTemp.Delete;
        end;
      TblProdutosTemp.Next;
    end;
  ShowMessage('Concluido com Sucesso!');
  TblProdutosTemp.close;
  TblProdutosTemp.open;
end;

end.

