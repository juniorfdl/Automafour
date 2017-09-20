unit RelatorioExtratoProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, Placemnt, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, RxQuery, UCrpe32,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioExtratoProdutos = class(TFormRelatorioTEMPLATE)
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
    DSSQLMarca: TDataSource;
    SQLMarca: TRxQuery;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    DSSQLGrade: TDataSource;
    SQLGrade: TRxQuery;
    SQLGradeGRADICOD: TIntegerField;
    SQLGradeGRADA30DESCR: TStringField;
    DSSQLUnidade: TDataSource;
    SQLUnidade: TRxQuery;
    SQLUnidadeUNIDICOD: TIntegerField;
    SQLUnidadeUNIDA5DESCR: TStringField;
    GroupFiltro: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ComboGrupo: TRxDBLookupCombo;
    ComboSubGrupo: TRxDBLookupCombo;
    ComboVariacao: TRxDBLookupCombo;
    ComboMarca: TRxDBLookupCombo;
    ComboGrade: TRxDBLookupCombo;
    ComboUnidade: TRxDBLookupCombo;
    GroupOrdem: TGroupBox;
    OrdemCodigo: TRadioButton;
    OrdemDescricao: TRadioButton;
    OrdemRef: TRadioButton;
    SQLProduto: TRxQuery;
    SQLProdutoEMPRICOD: TIntegerField;
    SQLProdutoMVESDMOV: TDateTimeField;
    SQLProdutoMVESICOD: TIntegerField;
    SQLProdutoPRODICOD: TIntegerField;
    SQLProdutoMVESN3QTDENTRADA: TFloatField;
    SQLProdutoMVESN3QTDSAIDA: TFloatField;
    SQLProdutoCUPOA13ID: TStringField;
    SQLProdutoMOVDA13ID: TStringField;
    SQLProdutoNOCPA13ID: TStringField;
    SQLProdutoNOFIA13ID: TStringField;
    SQLProdutoPRODA60DESCR: TStringField;
    SQLProdutoPRODIAGRUPGRADE: TIntegerField;
    SQLProdutoPRODA60REFER: TStringField;
    SQLProdutoCORA30DESCR: TStringField;
    SQLProdutoGRTMA5DESCR: TStringField;
    GroupGrade: TGroupBox;
    EditGrade: TEdit;
    EditDesc: TEdit;
    EditGradeCodigo: TEdit;
    SQLProdutoGrade: TRxQuery;
    SQLProdutoGradePRODICOD: TIntegerField;
    SQLProdutoGradePRODIAGRUPGRADE: TIntegerField;
    SQLProdutoGradePRODA60DESCR: TStringField;
    Report: TCrpe;
    SQLOperacaoEstoque: TRxQuery;
    DSSQLOperacaoEstoque: TDataSource;
    GroupOper: TGroupBox;
    ComboOperacaoEstoque: TRxDBLookupCombo;
    SQLOperacaoEstoqueOPESICOD: TIntegerField;
    SQLOperacaoEstoqueOPESA60DESCR: TStringField;
    CheckPeriodo: TCheckBox;
    SQLProdutoOPESA60DESCR: TStringField;
    GroupCliente: TGroupBox;
    ComboCliente: TRxDBLookupCombo;
    DSSQLCliente: TDataSource;
    SQLCliente: TRxQuery;
    DSSQLProdutoAux: TDataSource;
    SQLProdutoAux: TRxQuery;
    SQLClienteCLIEA13ID: TStringField;
    SQLClienteCLIEA60RAZAOSOC: TStringField;
    SQLProdutoAuxPRODICOD: TIntegerField;
    SQLProdutoAuxPRODA60DESCR: TStringField;
    GroupProduto: TGroupBox;
    ComboProduto: TRxDBLookupCombo;
    SQLProdutoAuxCORA30DESCR: TStringField;
    SQLProdutoAuxGRTMA5DESCR: TStringField;
    Label11: TLabel;
    ComboColecao: TRxDBLookupCombo;
    DSSQLColecao: TDataSource;
    SQLColecao: TRxQuery;
    SQLColecaoCOLEICOD: TIntegerField;
    SQLColecaoCOLEA60DESCR: TStringField;
    SQLProdutoUNIDA5DESCR: TStringField;
    ckTotOperacao: TCheckBox;
    ckMostraCusto: TCheckBox;
    TblTemporariaEMPRICOD: TIntegerField;
    TblTemporariaMVESDMOV: TDateTimeField;
    TblTemporariaMVESICOD: TIntegerField;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaDOCUMENTO: TStringField;
    TblTemporariaMVESN3QTDENTRADA: TBCDField;
    TblTemporariaMVESN3QTDSAIDA: TBCDField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaPRODA60REFER: TStringField;
    TblTemporariaCORA30DESCR: TStringField;
    TblTemporariaGRTMA5DESCR: TStringField;
    TblTemporariaOPESA60DESCR: TStringField;
    TblTemporariaValorCusto: TCurrencyField;
    procedure FormCreate(Sender: TObject);
    procedure ComboGrupoChange(Sender: TObject);
    procedure ComboSubGrupoChange(Sender: TObject);
    procedure EditGradeExit(Sender: TObject);
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ComboGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioExtratoProdutos: TFormRelatorioExtratoProdutos;

implementation

uses UnitLibrary, DataModulo;

{$R *.dfm}

procedure TFormRelatorioExtratoProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  SQLGrupo.Open;
  SQLSubGrupo.Open;
  SQLVariacao.Open;
  SQLMarca.Open;
  SQLGrade.Open;
  SQLUnidade.Open;
  SQLOperacaoEstoque.Open;
  SQLCliente.Open;
  SQLProdutoAux.Open;
  SQLColecao.Open;
end;

procedure TFormRelatorioExtratoProdutos.ComboGrupoChange(Sender: TObject);
begin
  inherited;
  ComboSubGrupo.Enabled:=(ComboGrupo.Value<>'');
  If ComboGrupo.Value = '' Then
    ComboSubGrupo.Value:='';
end;

procedure TFormRelatorioExtratoProdutos.ComboSubGrupoChange(
  Sender: TObject);
begin
  inherited;
  ComboVariacao.Enabled:=(ComboSubGrupo.Value<>'');
  If ComboSubGrupo.Value = '' Then
    ComboVariacao.Value:='';
end;

procedure TFormRelatorioExtratoProdutos.EditGradeExit(Sender: TObject);
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
    end
  Else
    EditDesc.Text:= '';
end;

procedure TFormRelatorioExtratoProdutos.ExecutarBtnClick(Sender: TObject);
Var
  Cupom:String;
begin
  inherited;
  If SQLProduto.Active Then SQLProduto.Close;

  SQLProduto.MacrobyName('MEmpresa').Value := SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'MOVIMENTOESTOQUE', '');

  if not CheckPeriodo.Checked then
    SQLProduto.MacrobyName('MData').Value    := 'MOVIMENTOESTOQUE.MVESDMOV >= ''' + FormatDateTime('mm/dd/yyyy', De.Date) + ''' and ' +
                                                'MOVIMENTOESTOQUE.MVESDMOV <= ''' + FormatDateTime('mm/dd/yyyy', Ate.Date) + ''''

  else
    SQLProduto.MacrobyName('MData').Value    := '0=0';

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

  if ComboColecao.KeyValue <> null then
    SQLProduto.MacroByName('MColecao').Value := 'PRODUTO.COLEICOD = ' + ComboColecao.Value
  else
    SQLProduto.MacroByName('MColecao').Value := '0=0';

  if ComboGrade.KeyValue <> null then
    SQLProduto.MacroByName('MGrade').Value := 'PRODUTO.GRADICOD = ' + ComboGrade.Value
  else
    SQLProduto.MacroByName('MGrade').Value := '0=0';

  if ComboUnidade.KeyValue <> null then
    SQLProduto.MacroByName('MUnidade').Value := 'PRODUTO.UNIDICOD = ' + ComboUnidade.Value
  else
    SQLProduto.MacroByName('MUnidade').Value := '0=0';

  If (EditGrade.Text<>'') then
    SQLProduto.MacroByName('MGrade').Value :='PRODUTO.PRODIAGRUPGRADE='+EditGradeCodigo.Text
  else
    SQLProduto.MacroByName('MGrade').Value := '0=0';

  if ComboOperacaoEstoque.KeyValue <> null then
    SQLProduto.MacroByName('MOperacaoEstoque').Value := 'MOVIMENTOESTOQUE.OPESICOD = ' + ComboOperacaoEstoque.Value
  else
    SQLProduto.MacroByName('MOperacaoEstoque').Value := '0=0';

  if ComboProduto.Value <> '' then
    SQLProduto.MacroByName('Produto').Value := 'PRODUTO.PRODICOD = ' + ComboProduto.Value
  else
    SQLProduto.MacroByName('Produto').Value := '0=0';
    
  if OrdemCodigo.Checked then
    SQLProduto.MacroByName('MOrdem').Value := 'MOVIMENTOESTOQUE.MVESDMOV,PRODUTO.PRODICOD';
//    SQLProduto.MacroByName('MOrdem').Value := 'MOVIMENTOESTOQUE.MVESDMOV,MOVIMENTOESTOQUE.MVESICOD,PRODUTO.PRODICOD';

  if OrdemDescricao.Checked then
    SQLProduto.MacroByName('MOrdem').Value := 'MOVIMENTOESTOQUE.MVESDMOV,PRODUTO.PRODA60DESCR';
  If OrdemRef.Checked then
    SQLProduto.MacroByName('MOrdem').Value := 'MOVIMENTOESTOQUE.MVESDMOV,PRODUTO.PRODA60REFER';

  if ComboCliente.Value <> '' then
    begin
      SQLProduto.MacroByName('CamposCliente').Value := ' , NOTAFISCAL.CLIEA13ID , PEDIDOVENDA.CLIEA13ID , CUPOM.CLIEA13ID , MOVIMENTODIVERSO.CLIEA13ID ';
      SQLProduto.MacroByName('JoinCliente').Value   := 'left outer join NOTAFISCAL on MOVIMENTOESTOQUE.NOFIA13ID       = NOTAFISCAL.NOFIA13ID '  +
                                                       'left outer join PEDIDOVENDA on MOVIMENTOESTOQUE.PDVDA13ID      = PEDIDOVENDA.PDVDA13ID ' +
                                                       'left outer join CUPOM on MOVIMENTOESTOQUE.CUPOA13ID            = CUPOM.CUPOA13ID '       +
                                                       'left outer join MOVIMENTODIVERSO on MOVIMENTOESTOQUE.MOVDA13ID = MOVIMENTODIVERSO.MOVDA13ID ';

      SQLProduto.MacroByName('Cliente').Value :=' (NOTAFISCAL.CLIEA13ID = ''' + ComboCliente.Value + ''' or ' +
                                                ' PEDIDOVENDA.CLIEA13ID = ''' + ComboCliente.Value + ''' or ' +
                                                ' CUPOM.CLIEA13ID = ''' + ComboCliente.Value       + ''' or ' +
                                                ' MOVIMENTODIVERSO.CLIEA13ID = ''' + ComboCliente.Value + ''')' ;

    end
  else
    begin
      SQLProduto.MacroByName('CamposCliente').Clear;
      SQLProduto.MacroByName('JoinCliente').Clear;
      SQLProduto.MacroByName('Cliente').Value := '0=0';
    end;

  SQLProduto.Open;
  if (SQLProduto.IsEmpty) then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  SQLProduto.First;
  TblTemporaria.Open;
  While Not SQLProduto.Eof Do
    Begin
      TblTemporaria.Append;
      TblTemporariaPRODICOD.asInteger       := SQLProdutoPRODICOD.asInteger;
      TblTemporariaPRODA60REFER.asString    := SQLProdutoPRODA60REFER.asString;
      TblTemporariaPRODA60DESCR.asString    := SQLProdutoPRODA60DESCR.asString+'/'+SQLProdutoUNIDA5DESCR.AsString;
      TblTemporariaMVESN3QTDSAIDA.asFloat   := SQLProdutoMVESN3QTDSAIDA.asFloat;
      TblTemporariaMVESN3QTDENTRADA.asFloat := SQLProdutoMVESN3QTDENTRADA.asFloat;
      TblTemporariaMVESICOD.asInteger       := SQLProdutoMVESICOD.asInteger;
      TblTemporariaMVESDMOV.asDateTime      := SQLProdutoMVESDMOV.asDateTime;
      TblTemporariaGRTMA5DESCR.asString     := SQLProdutoGRTMA5DESCR.asString;
      TblTemporariaEMPRICOD.asInteger       := SQLProdutoEMPRICOD.asInteger;
      TblTemporariaCORA30DESCR.asString     := SQLProdutoCORA30DESCR.asString;
      if SQLProdutoMOVDA13ID.asString<>'' then
        TblTemporariaDOCUMENTO.asString := 'MD-'+SQLProdutoMOVDA13ID.asString;
      if SQLProdutoCUPOA13ID.asString<>'' then
        begin
          Cupom := SQLLocate('CUPOM', 'CUPOA13ID', 'CUPOINRO',  '''' + SQLProdutoCUPOA13ID.asString + '''');
          if Cupom<>'' then
            TblTemporariaDOCUMENTO.asString := 'CP-'+Cupom
          else
            TblTemporariaDOCUMENTO.asString := 'CP-'+SQLProdutoCUPOA13ID.asString;
        end;
      if SQLProdutoNOCPA13ID.asString<>'' then
        TblTemporariaDOCUMENTO.asString := 'NC-'+SQLLocate('NOTACOMPRA', 'NOCPA13ID', 'NOCPA30NRO',  '''' + SQLProdutoNOCPA13ID.asString + '''');
      if SQLProdutoNOFIA13ID.asString<>'' then
        TblTemporariaDOCUMENTO.asString := 'NF-'+SQLLocate('NOTAFISCAL', 'NOFIA13ID', 'NOFIINUMERO',  '''' + SQLProdutoNOFIA13ID.asString + '''');
      if SQLProdutoMOVDA13ID.asString<>'' then
        TblTemporariaDOCUMENTO.asString := 'MD-'+SQLProdutoMOVDA13ID.asString;


      if SQLProdutoOPESA60DESCR.asString<>'' then
        TblTemporariaOPESA60DESCR.asString := SQLProdutoOPESA60DESCR.asString;

      try
        TblTemporariaValorCusto.asString := SQLLocate('PRODUTO', 'PRODICOD', 'PRODN3VLRCUSTO',  SQLProdutoPRODICOD.asString);
      except
        TblTemporariaValorCusto.Value := 0;
        Application.ProcessMessages;
      end;
      TblTemporaria.Post;
      SQLProduto.Next;
    end;
  if ckTotOperacao.Checked then
    begin
      Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Movimentacao de Estoque por Operacao.rpt';
      Report.ReportTitle       := 'Relatório de Movimentação de Estoque Total por Operações' ;
      Report.WindowStyle.Title := 'Relatório de Movimentação de Estoque Total por Operações' ;
    end
  else
    begin
      Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Movimentacao de Estoque.rpt';
      Report.ReportTitle       := 'Relatório de Movimentação de Estoque' ;
      Report.WindowStyle.Title := 'Relatório de Movimentação de Estoque' ;
    end;

  if ckMostraCusto.Checked then
    begin
      Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Movimentacao de Estoque com Custo.rpt';
      Report.ReportTitle       := 'Relatório de Movimentação de Estoque com Custo' ;
      Report.WindowStyle.Title := 'Relatório de Movimentação de Estoque com Custo' ;
    end;

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
  Report.Formulas.Name := 'Grade' ;
  if ComboGrade.Text <> '' then
    Report.Formulas.Formula.Text := '''' + ComboGrade.Text + ''''
  else
    Report.Formulas.Formula.Text := '''Todos''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Unidade' ;
  if ComboUnidade.Text <> '' then
    Report.Formulas.Formula.Text := '''' + ComboUnidade.Text + ''''
  else
    Report.Formulas.Formula.Text := '''Todos''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'OrdemImpressao' ;
  if OrdemCodigo.Checked then
    Report.Formulas.Formula.Text := '''Código''' ;
  if OrdemDescricao.Checked then
    Report.Formulas.Formula.Text := '''Descrição''' ;
  if OrdemRef.Checked then
    Report.Formulas.Formula.Text := '''Referência''' ;
  //--------------------------------------------------------------------------\\
  Report.Formulas.Name := 'Operacao' ;
  if ComboOperacaoEstoque.Text <> '' then
    Report.Formulas.Formula.Text := '''' + ComboOperacaoEstoque.Text + ''''
  else
    Report.Formulas.Formula.Text := '''Todos''' ;
  //--------------------------------------------------------------------------\\

  Report.Execute;
end;

procedure TFormRelatorioExtratoProdutos.ComboGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = Vk_Return then
    if ((sender as trxdblookupcombo).Value = '')
    or ((sender as trxdblookupcombo).Value <> (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value) then
      (sender as trxdblookupcombo).KeyValue := (sender as trxdblookupcombo).LookupSource.DataSet.FieldByName((sender as trxdblookupcombo).LookupField).Value;

end;

end.
