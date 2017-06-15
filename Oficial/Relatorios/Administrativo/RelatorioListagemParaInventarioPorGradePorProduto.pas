unit RelatorioListagemParaInventarioPorGradePorProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, StdCtrls, DBTables, Placemnt, DB, Mask,
  ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, ComCtrls, UCrpe32, RxQuery,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioListagemParaInventarioPorGradePorProduto = class(TFormRelatorioTEMPLATE)
    GroupOrdem: TGroupBox;
    OrdemCodigo: TRadioButton;
    OrdemDescricao: TRadioButton;
    OrdemRef: TRadioButton;
    GroupFiltro: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ComboGrupo: TRxDBLookupCombo;
    ComboSubGrupo: TRxDBLookupCombo;
    ComboVariacao: TRxDBLookupCombo;
    ComboMarca: TRxDBLookupCombo;
    GroupGrade: TGroupBox;
    EditGrade: TEdit;
    EditDesc: TEdit;
    EditGradeCodigo: TEdit;
    DSSQLMarca: TDataSource;
    DSSQLGrupo: TDataSource;
    SQLGrupo: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    DSSQLSubGrupo: TDataSource;
    SQLSubGrupo: TRxQuery;
    SQLSubGrupoGRUPICOD: TIntegerField;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    DSSQLVariacao: TDataSource;
    SQLVariacao: TRxQuery;
    SQLVariacaoGRUPICOD: TIntegerField;
    SQLVariacaoSUBGICOD: TIntegerField;
    SQLVariacaoVARIICOD: TIntegerField;
    SQLVariacaoVARIA60DESCR: TStringField;
    SQLMarca: TRxQuery;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    TblLegenda: TTable;
    TblLegendaLEGENDA: TIntegerField;
    TblLegendaTOTAL: TStringField;
    TblLegendaQTD1: TStringField;
    TblLegendaQTD2: TStringField;
    TblLegendaQTD3: TStringField;
    TblLegendaQTD4: TStringField;
    TblLegendaQTD5: TStringField;
    TblLegendaQTD6: TStringField;
    TblLegendaQTD7: TStringField;
    TblLegendaQTD8: TStringField;
    TblLegendaQTD9: TStringField;
    TblLegendaQTD10: TStringField;
    TblLegendaQTD11: TStringField;
    TblLegendaQTD12: TStringField;
    TblLegendaQTD13: TStringField;
    TblLegendaQTD14: TStringField;
    TblLegendaQTD15: TStringField;
    SQLProduto: TRxQuery;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoCORA30DESCR: TStringField;
    SQLProdutoMARCA60DESCR: TStringField;
    SQLProdutoPRODN3VLRCUSTO: TFloatField;
    SQLProdutoPRODN3VLRVENDA: TFloatField;
    SQLProdutoSALDO: TFloatField;
    SQLProdutoGRUPICOD: TIntegerField;
    SQLProdutoSUBGICOD: TIntegerField;
    SQLProdutoVARIICOD: TIntegerField;
    SQLProdutoGRUPA60DESCR: TStringField;
    SQLProdutoSUBGA60DESCR: TStringField;
    SQLProdutoVARIA60DESCR: TStringField;
    SQLProdutoCORICOD: TIntegerField;
    SQLProdutoGRADICOD: TIntegerField;
    SQLProdutoGRTMICOD: TIntegerField;
    SQLProdutoEMPRICOD: TIntegerField;
    SQLProdutoPRODA60DESCR: TStringField;
    TblTemporariaEmpresa: TStringField;
    TblTemporariaCORA60DESCR: TStringField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60REFER: TStringField;
    TblTemporariaPRODA60MARCA: TStringField;
    TblTemporariaPRODN2VLRCUSTO: TFloatField;
    TblTemporariaPRODN2VLRVENDA: TFloatField;
    TblTemporariaPRODN2MARGEM: TFloatField;
    TblTemporariaPRODDULTRECTO: TDateField;
    TblTemporariaTOTAL: TFloatField;
    TblTemporariaQTD1: TFloatField;
    TblTemporariaQTD2: TFloatField;
    TblTemporariaQTD3: TFloatField;
    TblTemporariaQTD4: TFloatField;
    TblTemporariaQTD5: TFloatField;
    TblTemporariaQTD6: TFloatField;
    TblTemporariaQTD7: TFloatField;
    TblTemporariaQTD8: TFloatField;
    TblTemporariaQTD9: TFloatField;
    TblTemporariaQTD10: TFloatField;
    TblTemporariaQTD11: TFloatField;
    TblTemporariaQTD12: TFloatField;
    TblTemporariaQTD13: TFloatField;
    TblTemporariaQTD14: TFloatField;
    TblTemporariaQTD15: TFloatField;
    TblTemporariaGRUPICOD: TIntegerField;
    TblTemporariaSUBGICOD: TIntegerField;
    TblTemporariaVARIICOD: TIntegerField;
    TblTemporariaGRUPA60DESCR: TStringField;
    TblTemporariaSUBGA60DESCR: TStringField;
    TblTemporariaVARIA60DESCR: TStringField;
    TblTemporariaTotVenda: TFloatField;
    TblTemporariaTotCusto: TFloatField;
    TblTemporariaPRODA60DESCR: TStringField;
    Report: TCrpe;
    SQLProdutoGrade: TRxQuery;
    SQLProdutoGradePRODICOD: TIntegerField;
    SQLProdutoGradePRODIAGRUPGRADE: TIntegerField;
    SQLProdutoGradePRODA60DESCR: TStringField;
    SQLCor: TRxQuery;
    DSSQLCor: TDataSource;
    Label9: TLabel;
    ComboCor: TRxDBLookupCombo;
    SQLCorCORICOD: TIntegerField;
    SQLCorCORA30DESCR: TStringField;
    GroupRef: TGroupBox;
    SQLReferencia: TRxQuery;
    DSSQLReferencia: TDataSource;
    SQLReferenciaPRODA60REFER: TStringField;
    ComboRefer: TRxDBLookupCombo;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure VerificaGrade(Grade:Integer);
    procedure FormCreate(Sender: TObject);
    procedure EditGradeExit(Sender: TObject);
    procedure ComboGrupoChange(Sender: TObject);
    procedure ComboSubGrupoChange(Sender: TObject);
    procedure ComboReferKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioListagemParaInventarioPorGradePorProduto: TFormRelatorioListagemParaInventarioPorGradePorProduto;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioListagemParaInventarioPorGradePorProduto.ExecutarBtnClick(
  Sender: TObject);
Var
  CorAnt, GradeAnt, EmpresaAnt:String;
  Posicao : Integer;
begin
  inherited;
  If TblLegenda.Active Then TblLegenda.Close;
  If TblLegenda.Exists Then TblLegenda.DeleteTable;
  TblLegenda.CreateTable;
  TblLegenda.Open;

  If SQLProduto.Active Then SQLProduto.Close;

  SQLProduto.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'PRODUTOSALDO', '');
  //SETAR MACROS
  if ComboGrupo.KeyValue <> null then
    SQLProduto.MacroByName('MGrupo').Value := 'PRODUTO.GRUPICOD = ' + ComboGrupo.Value
  else
    SQLProduto.MacroByName('MGrupo').Value := '0=0';

  if ComboSubGrupo.KeyValue <> null then
    SQLProduto.MacroByName('MSubGrupo').Value := 'PRODUTO.SUBGICOD = ' + ComboSubGrupo.Value
  else
    SQLProduto.MacroByName('MSubGrupo').Value := '0=0';

  if ComboVariacao.KeyValue <> null then
    SQLProduto.MacroByName('MVariacao').Value := 'PRODUTO.VARIICOD = ' + ComboVariacao.Value
  else
    SQLProduto.MacroByName('MVariacao').Value := '0=0';

  if ComboMarca.KeyValue <> null then
    SQLProduto.MacroByName('MMarca').Value := 'PRODUTO.MARCICOD = ' + ComboMarca.Value
  else
    SQLProduto.MacroByName('MMarca').Value := '0=0';

  if EditGradeCodigo.Text <> '' then
    SQLProduto.MacroByName('Grade').Value    := 'PRODUTO.PRODIAGRUPGRADE = ' + EditGradeCodigo.Text
  else
    SQLProduto.MacroByName('Grade').Value    := '0=0';

  if ComboCor.Value <> '' then
    SQLProduto.MacroByName('MCor').Value := 'PRODUTO.CORICOD = ' + ComboCor.Value
  else
    SQLProduto.MacroByName('MCor').Value := '0=0';

  if ComboRefer.Value <> '' then
    SQLProduto.MacroByName('MRefer').Value := 'PRODUTO.PRODA60REFER = ''' + ComboRefer.Value + ''''
  else
    SQLProduto.MacroByName('MRefer').Value := '0=0';

  if OrdemCodigo.Checked then
    SQLProduto.MacroByName('MOrdem').Value := 'GRUPO.GRUPA60DESCR,SUBGRUPO.SUBGA60DESCR,VARIACAO.VARIA60DESCR,PRODUTO.PRODIAGRUPGRADE, PRODUTO.CORICOD, PRODUTO.GRADICOD, PRODUTO.GRTMICOD, PRODUTOSALDO.EMPRICOD';
  if OrdemDescricao.Checked then
    SQLProduto.MacroByName('MOrdem').Value := 'GRUPO.GRUPA60DESCR,SUBGRUPO.SUBGA60DESCR,VARIACAO.VARIA60DESCR,PRODUTO.PRODA60DESCR, PRODUTO.PRODIAGRUPGRADE, PRODUTO.CORICOD, PRODUTO.GRADICOD, PRODUTO.GRTMICOD, PRODUTOSALDO.EMPRICOD';
  If OrdemRef.Checked then
    SQLProduto.MacroByName('MOrdem').Value := 'GRUPO.GRUPA60DESCR,SUBGRUPO.SUBGA60DESCR,VARIACAO.VARIA60DESCR,PRODUTO.PRODA60REFER, PRODUTO.PRODIAGRUPGRADE, PRODUTO.CORICOD, PRODUTO.GRADICOD, PRODUTO.GRTMICOD, PRODUTOSALDO.EMPRICOD';

  SQLProduto.Open ;
  if (SQLProduto.IsEmpty) then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  If TblTemporaria.Active Then TblTemporaria.Close;
  TblTemporaria.Open;
  SQLProduto.First;CorAnt:='';GradeAnt:=''; EmpresaAnt := '';
  While Not SQLProduto.Eof Do
    Begin
      If (CorAnt<>SQLProdutoCORICOD.asString) or
         (GradeAnt<>SQLProdutoPRODIAGRUPGRADE.asString) or
         (SQLProdutoEMPRICOD.AsString <> EmpresaAnt)  Then
        Begin
          GradeAnt := SQLProdutoPRODIAGRUPGRADE.asString;
          CorAnt   := SQLProdutoCORICOD.asString;
          EmpresaAnt := SQLProdutoEMPRICOD.AsString;
          VerificaGrade(SQLProdutoGRADICOD.asInteger);
          TblTemporaria.Append;
          SQLEmpresa.Locate('EMPRICOD',SQLProdutoEMPRICOD.AsString,[]);
          TblTemporariaEmpresa.AsString        := SQLEmpresaEMPRA60RAZAOSOC.AsString;
          TblTemporariaPRODDULTRECTO.AsVariant := Null;
          TblTemporariaPRODICOD.asInteger      := SQLProdutoPRODIAGRUPGRADE.asInteger;
          TblTemporariaPRODN2VLRCUSTO.asFloat  := SQLProdutoPRODN3VLRCUSTO.asFloat;
          TblTemporariaPRODN2VLRVENDA.asFloat  := SQLProdutoPRODN3VLRVENDA.asFloat;
          If SQLProdutoPRODN3VLRCUSTO.asFloat > 0 Then
            TblTemporariaPRODN2MARGEM.asFloat    := ((SQLProdutoPRODN3VLRVENDA.asFloat/SQLProdutoPRODN3VLRCUSTO.asFloat)-1)*100
          Else
            TblTemporariaPRODN2MARGEM.asFloat    := 0;
          TblTemporariaPRODA60DESCR.AsString   := SQLProdutoPRODA60DESCR.AsString;
          TblTemporariaPRODA60REFER.asString   := SQLProdutoPRODA60REFER.asString;
          TblTemporariaPRODA60MARCA.asString   := SQLProdutoMARCA60DESCR.asString;
          TblTemporariaSUBGICOD.asInteger      := SQLProdutoSUBGICOD.asInteger;
          TblTemporariaSUBGA60DESCR.asString   := SQLProdutoSUBGA60DESCR.asString;
          TblTemporariaGRUPICOD.asInteger      := SQLProdutoGRUPICOD.asInteger;
          TblTemporariaGRUPA60DESCR.asString   := SQLProdutoGRUPA60DESCR.asString;
          TblTemporariaVARIICOD.asInteger      := SQLProdutoVARIICOD.asInteger;
          TblTemporariaVARIA60DESCR.asString   := SQLProdutoVARIA60DESCR.asString;
          TblTemporariaCORA60DESCR.asString    := SQLProdutoCORA30DESCR.asString;
        End
      Else
        TblTemporaria.Edit;
      TblTemporariaTOTAL.asFloat    := TblTemporariaTOTAL.asFloat    + SQLProdutoSALDO.asFloat;
      TblTemporariaTotVenda.asFloat := TblTemporariaTotVenda.asFloat + (SQLProdutoPRODN3VLRVENDA.asFloat*SQLProdutoSALDO.asFloat);
      TblTemporariaTotCusto.asFloat := TblTemporariaTotCusto.asFloat + (SQLProdutoPRODN3VLRCUSTO.asFloat*SQLProdutoSALDO.asFloat);
      If (SQLProdutoGRADICOD.asVariant<>Null) and (SQLProdutoGRTMICOD.asVariant<>Null) Then
        Begin
          Posicao := PosicaoGrade(SQLProdutoGRADICOD.asInteger,SQLProdutoGRTMICOD.asInteger);
          TblTemporaria.FindField('QTD'+IntToStr(Posicao)).asFloat := TblTemporaria.FindField('QTD'+IntToStr(Posicao)).asFloat + SQLProdutoSALDO.asFloat;
        End;
      TblTemporaria.Post;
      SQLProduto.Next;
    End;
  Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem Para Inventario por Grade por Produto.rpt' ;
  Report.ReportTitle       := 'Listagem Para Inventario por Grade por Produto' ;
  Report.WindowStyle.Title := 'Listagem Para Inventario por Grade por Produto' ;
  //SETAR FORMULAS NO RPT
  Report.Formulas.Retrieve ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Empresa' ;
  Report.Formulas.Formula.Text := '''' + ComboEmpresa.Text + '''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name         := 'Emissao' ;
  Report.Formulas.Formula.Text := '''' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Grupo' ;
  if ComboGrupo.Text <> '' then
    Report.Formulas.Formula.Text := '''' + ComboGrupo.Text + ''''
  else
    Report.Formulas.Formula.Text := '''Todos''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'SubGrupo' ;
  if ComboSubGrupo.Text <> '' then
    Report.Formulas.Formula.Text := '''' + ComboSubGrupo.Text + ''''
  else
    Report.Formulas.Formula.Text := '''Todos''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Variacao' ;
  if ComboVariacao.Text <> '' then
    Report.Formulas.Formula.Text := '''' + ComboVariacao.Text + ''''
  else
    Report.Formulas.Formula.Text := '''Todos''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Marca' ;
  if ComboMarca.Text <> '' then
    Report.Formulas.Formula.Text := '''' + ComboMarca.Text + ''''
  else
    Report.Formulas.Formula.Text := '''Todos''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'OrdemImpressao' ;
  if OrdemCodigo.Checked then
    Report.Formulas.Formula.Text := '''Código''' ;
  if OrdemDescricao.Checked then                    
    Report.Formulas.Formula.Text := '''Descrição''' ;

  Report.Execute;

end;
Procedure TFormRelatorioListagemParaInventarioPorGradePorProduto.VerificaGrade(Grade:Integer);
Var
  I:Integer;
Begin
  If Not TblLegenda.Locate('LEGENDA',Grade,[LoCaseInsensitive]) Then
    Begin
      TblLegenda.Append;
      TblLegendaLEGENDA.Value  := Grade;
      TblLegendaTOTAL.asString := 'Total';
      DM.SQLTemplate.Close;
      DM.SQLTemplate.SQL.Text:= 'Select * From GRADETAMANHO Where GRADICOD='+IntToStr(Grade);
      DM.SQLTemplate.Open;
      I:=0;
      DM.SQLTemplate.First;
      While Not DM.SQLTemplate.Eof Do
        Begin
          Inc(I);
          TblLegenda.FindField('QTD'+IntToStr(I)).AsString:=DM.SQLTemplate.FindField('GRTMA5DESCR').asString;
          DM.SQLTemplate.Next;
        End;
      DM.SQLTemplate.Close;
      TblLegenda.Post;
    End;
End;

procedure TFormRelatorioListagemParaInventarioPorGradePorProduto.FormCreate(
  Sender: TObject);
begin
  inherited;
  SQLGrupo.Open;
  SQLSubGrupo.Open;
  SQLVariacao.Open;
  SQLMarca.Open;
  SQLCor.Open;
  SQLReferencia.Open;
end;

procedure TFormRelatorioListagemParaInventarioPorGradePorProduto.EditGradeExit(
  Sender: TObject);
begin
  inherited;
  if (EditGrade.Text<>'') then
    begin
      if not SQLProdutoGrade.Active then SQLProdutoGrade.Open;
      if EncontrouProduto(EditGrade.Text,SQLProdutoGrade) then
        Begin
          EditGradeCodigo.Text:=SQLProdutoGradePRODIAGRUPGRADE.asString;
          EditDesc.Text:= SQLProdutoGradePRODA60DESCR.AsString;
        End
      else
        begin
          Application.MessageBox('Grade não encontrada!', 'Atenção', MB_SYSTEMMODAL + MB_Ok + MB_IconExclamation);
          EditGrade.SetFocus;
          EditDesc.Text:= '';
        end;
    end;

end;

procedure TFormRelatorioListagemParaInventarioPorGradePorProduto.ComboGrupoChange(
  Sender: TObject);
begin
  inherited;
  ComboSubGrupo.Enabled:=(ComboGrupo.Value<>'');
  If ComboGrupo.Value = '' Then
    ComboSubGrupo.Value:='';

end;

procedure TFormRelatorioListagemParaInventarioPorGradePorProduto.ComboSubGrupoChange(
  Sender: TObject);
begin
  inherited;
  ComboVariacao.Enabled:=(ComboSubGrupo.Value<>'');
  If ComboSubGrupo.Value = '' Then
    ComboVariacao.Value:='';

end;

procedure TFormRelatorioListagemParaInventarioPorGradePorProduto.ComboReferKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value    <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
       (sender  as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.
