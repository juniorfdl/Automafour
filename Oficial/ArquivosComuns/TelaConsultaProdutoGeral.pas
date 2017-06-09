unit TelaConsultaProdutoGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TelaGeralModalTemplate, Buttons, jpeg, ExtCtrls, StdCtrls, Mask,
  Grids, DBGrids, DBTables, DB, RxQuery, VarSys, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;

type
  TFormTelaConsultaProdutoGeral = class(TFormTelaGeralModalTemplate)
    PanelProcura: TPanel;
    LabelValorProcura: TLabel;
    EditDescr: TMaskEdit;
    Label50: TLabel;
    Label1: TLabel;
    EditRef: TMaskEdit;
    DSTemplate: TDataSource;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODA30CODESTRUT: TStringField;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLProdutoPRODA15CODANT: TStringField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODA30ADESCRREDUZ: TStringField;
    SQLProdutoPRODN3PESOBRUTO: TFloatField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoTAMANHOLOOKUP: TStringField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoPRODN3PESOLIQ: TFloatField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODN3CAPACEMBAL: TFloatField;
    SQLProdutoMARCICOD: TIntegerField;
    SQLProdutoPRODDINIPROMO: TDateTimeField;
    SQLProdutoPRODN3VLRVENDAPROM: TFloatField;
    SQLProdutoPRODICODBALANCA: TIntegerField;
    SQLProdutoMarcaLookup: TStringField;
    SQLProdutoCorLookup: TStringField;
    SQLProdutoGrupoLookup: TStringField;
    SQLProdutoUNIDICOD: TIntegerField;
    SQLProdutoGRUPICOD: TIntegerField;
    SQLProdutoSUBGICOD: TIntegerField;
    SQLProdutoVARIICOD: TIntegerField;
    SQLProdutoSubGrupoLookup: TStringField;
    SQLProdutoUnidadeLookup: TStringField;
    SQLProdutoPRODDFIMPROMO: TDateTimeField;
    SQLProdutoPRODCSUBSTRIB: TStringField;
    SQLProdutoPRODA60DIMENSAO: TStringField;
    SQLProdutoPRODBIMAGEM: TBlobField;
    TblVariacao: TTable;
    TblSubGrupo: TTable;
    TblGrupo: TTable;
    SQLGradeTamanho: TTable;
    SQLMarca: TTable;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    SQLCOR: TTable;
    SQLCORCORICOD: TIntegerField;
    SQLCORCORA30DESCR: TStringField;
    TblUnidade: TTable;
    dsSQLMarcaCombo: TDataSource;
    SQLMarcaCombo: TRxQuery;
    DBGridLista: TDBGrid;
    SQLProdutoPRODN3VLRCOMPRA: TFloatField;
    SQLProdutoPRODN3VLRCUSTO: TFloatField;
    SQLProdutoPRODA255DESCRTEC: TMemoField;
    procedure FormCreate(Sender: TObject);
    procedure EditRefKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelaConsultaProdutoGeral: TFormTelaConsultaProdutoGeral;

implementation

{$R *.dfm}

procedure TFormTelaConsultaProdutoGeral.FormCreate(Sender: TObject);
begin
  inherited;
  if (ProdutoDescricao <> '') or (ProdutoReferencia <> '') then
    begin
      EditDescr.Text := ProdutoDescricao;
      EditRef.Text   := ProdutoReferencia;
      SQLProduto.Close ;
      SQLProduto.SQL.Clear ;
      SQLProduto.SQL.Add('Select * from PRODUTO') ;
      SQLProduto.SQL.Add('Where PRODCATIVO = ''S'' and ') ;
      if EditDescr.Text <> '' then
        begin
          if Pos('*', EditDescr.Text) > 0 then
            SQLProduto.SQL.Add('PRODA60DESCR like ''%' + Copy(EditDescr.Text, 2, Length(EditDescr.Text)) + '%''')
          else
            SQLProduto.SQL.Add('PRODA60DESCR like ''' + EditDescr.Text + '%''') ;
        end;
      if (EditRef.Text <> '') then
        begin
          if EditDescr.Text <> '' then
            begin
              if Pos('*', EditRef.Text) > 0 then
                SQLProduto.SQL.Add('and PRODA60REFER like ''%' + Copy(EditRef.Text, 2, Length(EditRef.Text)) + '%''')
              else
                SQLProduto.SQL.Add('and PRODA60REFER like ''' + EditRef.Text + '%''') ;
            end
          else
            begin
              if Pos('*', EditRef.Text) > 0 then
                SQLProduto.SQL.Add('PRODA60REFER like ''%' + Copy(EditRef.Text, 2, Length(EditRef.Text)) + '%''')
              else
                SQLProduto.SQL.Add('PRODA60REFER like ''' + EditRef.Text + '%''') ;
            end
        end;

      SQLProduto.SQL.Add('order by PRODA60DESCR, PRODA60REFER') ;
      SQLProduto.Open ;
    end;
  if not SQLCOR.Active then SQLCOR.Open;
  if not SQLMarca.Active then SQLMarca.Open;
  if not SQLGradeTamanho.Active then SQLGradeTamanho.Open;
  if not SQLMarcaCombo.Active then SQLMarcaCombo.Open;
end;

procedure TFormTelaConsultaProdutoGeral.EditRefKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  case key of
    VK_RETURN :
        begin
          SQLProduto.Close ;
          SQLProduto.SQL.Clear ;
          SQLProduto.SQL.Add('Select * from PRODUTO') ;
          SQLProduto.SQL.Add('Where PRODCATIVO = ''S'' and ') ;
          if EditDescr.Text <> '' then
            begin
              if Pos('*', EditDescr.Text) > 0 then
                SQLProduto.SQL.Add('PRODA60DESCR like ''%' + Copy(EditDescr.Text, 2, Length(EditDescr.Text)) + '%''')
              else
                SQLProduto.SQL.Add('PRODA60DESCR like ''' + EditDescr.Text + '%''') ;
            end;
          if (EditRef.Text <> '') then
            begin
              if EditDescr.Text <> '' then
                begin
                  if Pos('*', EditRef.Text) > 0 then
                    SQLProduto.SQL.Add('and PRODA60REFER like ''%' + Copy(EditRef.Text, 2, Length(EditRef.Text)) + '%''')
                  else
                    SQLProduto.SQL.Add('and PRODA60REFER like ''' + EditRef.Text + '%''') ;
                end
              else
                begin
                  if Pos('*', EditRef.Text) > 0 then
                    SQLProduto.SQL.Add('PRODA60REFER like ''%' + Copy(EditRef.Text, 2, Length(EditRef.Text)) + '%''')
                  else
                    SQLProduto.SQL.Add('PRODA60REFER like ''' + EditRef.Text + '%''') ;
                end
            end;

          SQLProduto.SQL.Add('order by PRODA60DESCR, PRODA60REFER') ;
          SQLProduto.Open ;
        end;
   end;
end;

procedure TFormTelaConsultaProdutoGeral.DBGridListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
    begin
      ProdutoReferencia := SQLProdutoPRODICOD.AsString;
      ModalResult := MrOK;
      Close;
    end;
  if Key = VK_ESCAPE then
    begin
      ProdutoReferencia := '';
      ModalResult := MrCancel;
      Close;      
    end;
end;

procedure TFormTelaConsultaProdutoGeral.FormActivate(Sender: TObject);
begin
  inherited;
  if not sqlproduto.IsEmpty then
    DBGridLista.SetFocus;
end;

end.
