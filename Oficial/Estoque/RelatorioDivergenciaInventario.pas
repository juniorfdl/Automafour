unit RelatorioDivergenciaInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, DBTables, Placemnt, DB, ComCtrls,
  StdCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, Grids,
  DBGrids, UCrpe32, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioDivergenciaInventario = class(TFormRelatorioTEMPLATE)
    SQLGrupo: TRxQuery;
    SQLVariacao: TRxQuery;
    SQLMarca: TRxQuery;
    SQLSubgrupo: TRxQuery;
    DSSQLGrupo: TDataSource;
    DSSQLSubgrupo: TDataSource;
    DSSQLVariacao: TDataSource;
    DSSQLMarca: TDataSource;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    SQLSubgrupoGRUPICOD: TIntegerField;
    SQLSubgrupoSUBGICOD: TIntegerField;
    SQLSubgrupoSUBGA60DESCR: TStringField;
    SQLVariacaoGRUPICOD: TIntegerField;
    SQLVariacaoSUBGICOD: TIntegerField;
    SQLVariacaoVARIICOD: TIntegerField;
    SQLVariacaoVARIA60DESCR: TStringField;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    RadioTipoRel: TRadioGroup;
    SqlTerminal: TRxQuery;
    DSSqlTerminal: TDataSource;
    SqlTerminalTERMICOD: TIntegerField;
    SqlTerminalTERMA60DESCR: TStringField;
    DataSource1: TDataSource;
    Report: TCrpe;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaTERMICOD: TIntegerField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaINVDDATA: TDateTimeField;
    TblTemporariaPRODA60CODBAR: TStringField;
    TblTemporariaPRODA15CODANT: TStringField;
    TblTemporariaPRODA60REFER: TStringField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaPRODN3VLRVENDA: TFloatField;
    TblTemporariaPRODN3VLRCOMPRA: TFloatField;
    TblTemporariaPRODN3VLRCUSTO: TFloatField;
    TblTemporariaCONTAGEM: TFloatField;
    SQLProduto: TRxQuery;
    CheckProdutos: TCheckBox;
    TblTempProduto: TTable;
    GroupBox2: TGroupBox;
    Grupo: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    ComboGrupo: TRxDBLookupCombo;
    ComboSubgrupo: TRxDBLookupCombo;
    ComboVaricao: TRxDBLookupCombo;
    ComboMarca: TRxDBLookupCombo;
    ComboTerminal: TRxDBLookupCombo;
    TblTempProdutoTERMICOD: TIntegerField;
    TblTempProdutoEMPRICOD: TIntegerField;
    TblTempProdutoPRODICOD: TIntegerField;
    TblTempProdutoINVDDATA: TDateTimeField;
    TblTempProdutoPRODA60CODBAR: TStringField;
    TblTempProdutoPRODA15CODANT: TStringField;
    TblTempProdutoPRODA60REFER: TStringField;
    TblTempProdutoPRODA60DESCR: TStringField;
    TblTempProdutoPRODN3VLRVENDA: TFloatField;
    TblTempProdutoPRODN3VLRCOMPRA: TFloatField;
    TblTempProdutoPRODN3VLRCUSTO: TFloatField;
    TblTempProdutoPSLDN3QTDE: TFloatField;
    TblTempProdutoCONTAGEM: TFloatField;
    RadioOrdem: TRadioGroup;
    SQLProdutoPRODA60CODBAR: TStringField;
    SQLProdutoPRODA15CODANT: TStringField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLProdutoPRODN3VLRCOMPRA: TFloatField;
    SQLProdutoPRODN3VLRCUSTO: TFloatField;
    SQLProdutoPSLDN3QTDE: TFloatField;
    SQLProdutoEMPRICOD: TIntegerField;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoCORA30DESCR: TStringField;
    SQLProdutoGRTMA5DESCR: TStringField;
    TblTempProdutoCORA30DESCR: TStringField;
    TblTempProdutoGRTMA5DESCR: TStringField;
    SQLInventario: TRxQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    DateTimeField1: TDateTimeField;
    TblTemporariaPSLDN3QTDE: TFloatField;
    TblTemporariaCORA30DESCR: TStringField;
    TblTemporariaGRTMA5DESCR: TStringField;
    SQLInventarioPRODA60CODBAR: TStringField;
    SQLInventarioPRODA15CODANT: TStringField;
    SQLInventarioPRODA60REFER: TStringField;
    SQLInventarioPRODA60DESCR: TStringField;
    SQLInventarioPRODN3VLRVENDA: TFloatField;
    SQLInventarioPRODN3VLRCOMPRA: TFloatField;
    SQLInventarioPRODN3VLRCUSTO: TFloatField;
    SQLInventarioPSLDN3QTDE: TFloatField;
    SQLInventarioCONTAGEM: TFloatField;
    SQLInventarioCORA30DESCR: TStringField;
    SQLInventarioGRTMA5DESCR: TStringField;
    TblTemporaria2: TTable;
    TblTemporaria2TERMICOD: TIntegerField;
    TblTemporaria2EMPRICOD: TIntegerField;
    TblTemporaria2PRODICOD: TIntegerField;
    TblTemporaria2INVDDATA: TDateTimeField;
    TblTemporaria2PRODA60CODBAR: TStringField;
    TblTemporaria2PRODA15CODANT: TStringField;
    TblTemporaria2PRODA60REFER: TStringField;
    TblTemporaria2PRODA60DESCR: TStringField;
    TblTemporaria2PRODN3VLRVENDA: TFloatField;
    TblTemporaria2PRODN3VLRCOMPRA: TFloatField;
    TblTemporaria2PRODN3VLRCUSTO: TFloatField;
    TblTemporaria2CONTAGEM: TFloatField;
    TblTemporaria2GRTMA5DESCR: TStringField;
    TblTemporaria2CORA30DESCR: TStringField;
    TblTemporaria2PSLDN3QTDE: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  FormRelatorioDivergenciaInventario: TFormRelatorioDivergenciaInventario;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioDivergenciaInventario.FormCreate(Sender: TObject);
begin
  inherited;
  if not SQLGrupo.Active then SQLGrupo.Open;
  if not SQLSubgrupo.Active then SQLSubgrupo.Open;
  if not SQLVariacao.Active then SQLVariacao.Open;
  if not SQLMarca.Active then SQLMarca.Open;
  if not SqlTerminal.Active then SqlTerminal.Open;
  TblTemporaria2.Close;
end;

procedure TFormRelatorioDivergenciaInventario.ExecutarBtnClick(
  Sender: TObject);
var
  I : Integer;
begin
  inherited;
  SQLInventario.Close;
  SQLProduto.MacroByName('Empresa').Value   := '0=0';
  SQLProduto.MacroByName('Empresa1').Value  := '0=0';
  case RadioTipoRel.ItemIndex of
  0 : begin
        SQLInventario.MacroByName('TipoRelatorio').Value := '0=0';
        SQLInventario.MacroByName('INVICONTAGEM1').Value := 'InventarioEstoque.INVICONTAGEM1';
      end;
  1 : begin
        SQLInventario.MacroByName('TipoRelatorio').Value := 'InventarioEstoque.INVICONTAGEM2 <> ProdutoSaldo.PSLDN3QTDE';
        SQLInventario.MacroByName('INVICONTAGEM1').Value := 'InventarioEstoque.INVICONTAGEM2';
      end;
  2 : begin
        SQLInventario.MacroByName('TipoRelatorio').Value := 'InventarioEstoque.INVICONTAGEM3 <> ProdutoSaldo.PSLDN3QTDE';
        SQLInventario.MacroByName('INVICONTAGEM1').Value := 'InventarioEstoque.INVICONTAGEM3';
      end;
  end;

  case RadioOrdem.ItemIndex of
    0 : begin
          SQLInventario.MacroByName('Ordem').Value := 'Order By PRODA60DESCR';
          SQLProduto.MacroByName('Ordem').Value    := 'Order By PRODA60DESCR';
        end;
    1 : begin
          SQLInventario.MacroByName('Ordem').Value := 'Order By PRODA15CODANT';
          SQLProduto.MacroByName('Ordem').Value    := 'Order By PRODA15CODANT';
        end;
    2 : begin
          SQLInventario.MacroByName('Ordem').Value := 'Order By PRODA60CODBAR';
          SQLProduto.MacroByName('Ordem').Value    := 'Order By PRODA60CODBAR';
        end;
    3 : begin
          SQLInventario.MacroByName('Ordem').Value := 'Order By PRODICOD';
          SQLProduto.MacroByName('Ordem').Value    := 'Order By PRODICOD';
        end;
    4 : begin
          SQLInventario.MacroByName('Ordem').Value := 'Order By PRODA60REFER';
          SQLProduto.MacroByName('Ordem').Value    := 'Order By PRODA60REFER';
        end;
    end;

  SQLInventario.MacroByName('Empresa').Value := SQLDeLista(ComboEmpresa,ListaEmpresas,'','InventarioEstoque','EMPRICOD');

  SQLInventario.MacroByName('Data').Value := 'InventarioEstoque.INVDDATA >= ' + '''' + FormatDateTime('mm/dd/yy',De.Date) + ''' and ' +
                                             'InventarioEstoque.INVDDATA <= ' + '''' + FormatDateTime('mm/dd/yy',Ate.Date) + '''';

  if ComboTerminal.Value <> '' then
    SQLInventario.MacroByName('Terminal').Value := 'InventarioEstoque.TERMICOD = ' + ComboTerminal.Value
  else
    SQLInventario.MacroByName('Terminal').Value := '0=0';

  if ComboGrupo.Value <> '' then
    SQLInventario.MacroByName('Grupo').Value := 'Produto.GRUPICOD = ' + ComboGrupo.Value
  else
    SQLInventario.MacroByName('Grupo').Value := '0=0';

  if ComboSubgrupo.Value <> '' then
    SQLInventario.MacroByName('SubGrupo').Value := 'Produto.SUBGICOD = ' + ComboSubgrupo.Value
  else
    SQLInventario.MacroByName('SubGrupo').Value := '0=0';

  if ComboVaricao.Value <> '' then
    SQLInventario.MacroByName('Variacao').Value := 'Produto.VARIICOD = ' + ComboVaricao.Value
  else
    SQLInventario.MacroByName('Variacao').Value := '0=0';

  if ComboMarca.Value <> '' then
    SQLInventario.MacroByName('Marca').Value := 'Produto.MARCICOD = ' + ComboMarca.Value
  else
    SQLInventario.MacroByName('Marca').Value := '0=0';

  SQLInventario.Open;
  if (SQLInventario.IsEmpty) then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  if SQLInventario.IsEmpty then
    begin
      ShowMessage('Não existe Dados a serem impresso!');
      Abort;
    end;

  TblTemporaria.close;
  TblTemporaria2.close;

  BatchExec(SQLInventario,TblTemporaria);

 TblTemporaria.Close;
  TblTemporaria.Open;
  TblTemporaria2.Close;
  TblTemporaria2.Open;
  while not TblTemporaria.eof do
    begin
      if TblTemporaria2.Locate('PRODICOD', TblTemporariaPRODICOD.AsString,[]) then
        begin
          if TblTemporariaTERMICOD.Value <> TblTemporaria2TERMICOD.Value then
            begin
              TblTemporaria.Edit;
              TblTemporariaCONTAGEM.Value := TblTemporariaCONTAGEM.Value + TblTemporaria2CONTAGEM.Value;
              TblTemporaria.Post;
              TblTemporaria2.delete;
            {  TblTemporaria2.Close;
              TblTemporaria2.Open; }
            end;
        end
      else
        TblTemporaria2.First;

      TblTemporaria.Next;
    end;

  TblTemporaria.Close;
  TblTemporaria2.Close;

  if CheckProdutos.Checked then
    begin
      SQLProduto.Close;
      SQLProduto.MacroByName('Empresa1').Value := SQLDeLista(ComboEmpresa,ListaEmpresas,'','InventarioEstoque','EMPRICOD');
      SQLProduto.MacroByName('Empresa').Value  := SQLDeLista(ComboEmpresa,ListaEmpresas,'','ProdutoSaldo','EMPRICOD');

      SQLProduto.MacroByName('Data1').Value := 'InventarioEstoque.INVDDATA >= ' + '''' + FormatDateTime('mm/dd/yy',De.Date) + ''' and ' +
                                               'InventarioEstoque.INVDDATA <= ' + '''' + FormatDateTime('mm/dd/yy',Ate.Date) + '''';

      if ComboTerminal.Value <> '' then
        SQLProduto.MacroByName('Terminal1').Value := 'InventarioEstoque.TERMICOD = ' + ComboTerminal.Value
      else
        SQLProduto.MacroByName('Terminal1').Value := '0=0';

      if ComboGrupo.Value <> '' then
        SQLProduto.MacroByName('Grupo').Value := 'Produto.GRUPICOD = ' + ComboGrupo.Value
      else
        SQLProduto.MacroByName('Grupo').Value := '0=0';

      if ComboSubgrupo.Value <> '' then
        SQLProduto.MacroByName('SubGrupo').Value := 'Produto.SUBGICOD = ' + ComboSubgrupo.Value
      else
        SQLProduto.MacroByName('SubGrupo').Value := '0=0';

      if ComboVaricao.Value <> '' then
        SQLProduto.MacroByName('Variacao').Value := 'Produto.VARIICOD = ' + ComboVaricao.Value
      else
        SQLProduto.MacroByName('Variacao').Value := '0=0';

      if ComboMarca.Value <> '' then
        SQLProduto.MacroByName('Marca').Value := 'Produto.MARCICOD = ' + ComboMarca.Value
      else
        SQLProduto.MacroByName('Marca').Value := '0=0';

     SQLProduto.Open;

     if SQLProduto.IsEmpty then
       begin
         ShowMessage('Não existe dados a ser impresso!');
         Abort;
       end;

     SQLProduto.First;
     try
       TblTempProduto.Close;
       TblTempProduto.DeleteTable;
       TblTempProduto.CreateTable;
     except
       TblTempProduto.CreateTable;
     end;
       TblTempProduto.Open;

      while not SQLProduto.Eof do
        begin
         TblTempProduto.Append ;
          for i := 0 to SQLProduto.FieldCount-1 do
            begin
              if (SQLProduto.Fields[i].AsString <> '') and (TblTempProduto.FindField(SQLProduto.Fields[i].FieldName)<>Nil) then
                TblTempProduto.FieldByName(SQLProduto.Fields[i].FieldName).AsVariant := SQLProduto.Fields[i].AsVariant ;
            end;
          TblTempProduto.Post;
          SQLProduto.Next;
        end;
    end
  else
    begin
     try
       TblTempProduto.Close;
       TblTempProduto.DeleteTable;
       TblTempProduto.CreateTable;
     except
       TblTempProduto.CreateTable;
     end;
    end;
  Report.ReportName        := Dm.SQLConfigGeralCFGEA255PATHREPORT.AsString + '\Divergencias de Inventario.rpt';
  Report.ReportTitle       := 'Divergências de Inventário';
  Report.WindowStyle.Title := 'Divergências de Inventário';
  //SETAR LEGENDA DE FILTROS NO RPT\\
  Report.Formulas.Retrieve;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'PeriodoEmissao' ;
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy', De.Date) + ' até ' +
                                  FormatDateTime('dd/mm/yyyy', Ate.Date) + '''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '''' + ComboEmpresa.Text + '''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Terminal' ;
  if ComboTerminal.Text <> '' then
    Report.Formulas.Formula.Text := '''' + ComboTerminal.Text + ''''
  else
    Report.Formulas.Formula.Text := '''Todos''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Contagem';
  Report.Formulas.Formula.Text := '''' + RadioTipoRel.Items[RadioTipoRel.ItemIndex] + '''';
  //--------------------------------------------------------------------------\\
  Report.Execute;
end;

end.
