unit RelatorioListagemProduto;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, DBTables, DB, ComCtrls, StdCtrls,
  Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, RxQuery,RxDBComb, UCrpe32,
  Placemnt, jpeg, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers;
type
  TFormRelatorioListagemProduto = class(TFormRelatorioTEMPLATE)
    SQLProduto: TRxQuery;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaPRODA30ADESCRREDUZ: TStringField;
    TblTemporariaPRODA255DESCRTEC: TStringField;
    TblTemporariaGRUPICOD: TIntegerField;
    TblTemporariaSUBGICOD: TIntegerField;
    TblTemporariaVARIICOD: TIntegerField;
    TblTemporariaPRODN3VLRVENDA: TFloatField;
    TblTemporariaPRODN3VLRVENDAPROM: TFloatField;
    TblTemporariaPRODDINIPROMO: TDateTimeField;
    TblTemporariaPRODDFIMPROMO: TDateTimeField;
    TblTemporariaPRODN3VLRCOMPRA: TFloatField;
    TblTemporariaPRODN3VLRCUSTO: TFloatField;
    TblTemporariaSALDO: TFloatField;
    GroupFiltro: TGroupBox;
    ComboGrupo: TRxDBLookupCombo;
    Label5: TLabel;
    Label6: TLabel;
    ComboSubGrupo: TRxDBLookupCombo;
    Label7: TLabel;
    ComboVariacao: TRxDBLookupCombo;
    Label9: TLabel;
    ComboGrade: TRxDBLookupCombo;
    Label10: TLabel;
    ComboUnidade: TRxDBLookupCombo;
    DSSQLGrupo: TDataSource;
    SQLGrupo: TRxQuery;
    DSSQLSubGrupo: TDataSource;
    SQLSubGrupo: TRxQuery;
    DSSQLVariacao: TDataSource;
    SQLVariacao: TRxQuery;
    DSSQLMarca: TDataSource;
    SQLMarca: TRxQuery;
    DSSQLGrade: TDataSource;
    SQLGrade: TRxQuery;
    DSSQLUnidade: TDataSource;
    SQLUnidade: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    SQLSubGrupoGRUPICOD: TIntegerField;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    SQLVariacaoGRUPICOD: TIntegerField;
    SQLVariacaoSUBGICOD: TIntegerField;
    SQLVariacaoVARIICOD: TIntegerField;
    SQLVariacaoVARIA60DESCR: TStringField;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    SQLGradeGRADICOD: TIntegerField;
    SQLGradeGRADA30DESCR: TStringField;
    SQLUnidadeUNIDICOD: TIntegerField;
    SQLUnidadeUNIDA5DESCR: TStringField;
    GroupCodDesc: TGroupBox;
    OrdemCodigo: TRadioButton;
    OrdemDescricao: TRadioButton;
    Report: TCrpe;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    HidePrcCompra: TCheckBox;
    HidePrcVenda: TCheckBox;
    SQLGeralProd: TRxQuery;
    SaldoMaiorZero: TRadioButton;
    SaldoMenorZero: TRadioButton;
    TodosSaldos: TRadioButton;
    CheckPorGrade: TCheckBox;
    CheckDetalhe: TCheckBox;
    SQLCorTamanho: TRxQuery;
    TblTemporariaCORA30DESCR: TStringField;
    TblTemporariaGRTMA5DESCR: TStringField;
    CheckSaldo: TCheckBox;
    OrdemRef: TRadioButton;
    GroupImprimir: TGroupBox;
    RadioImpCodBarras: TRadioButton;
    RadioImpRefer: TRadioButton;
    RadioImpCodAntigo: TRadioButton;
    TblTemporariaCodProduto: TStringField;
    RadioImpCodBalanca: TRadioButton;
    OrdemCodAntigo: TRadioButton;
    CKOcultarProdNaoMovimentaEstoque: TCheckBox;
    TblTemporariaPRODCTIPOBAIXA: TStringField;
    SaldosDiferenteZero: TRadioButton;
    CKporGrupo: TCheckBox;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    AlteradosDE: TDateEdit;
    AlteradosATE: TDateEdit;
    TblTemporariaREGISTRO: TDateField;
    TblTemporariaUnidadeDesc5: TStringField;
    GroupBox5: TGroupBox;
    Label8: TLabel;
    ComboMarca: TRxDBLookupCombo;
    ListaMarca: TListBox;
    Label14: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    TblTemporariaMarcaDescr: TStringField;
    TblTemporariaVLRMargem: TFloatField;
    CKEspecialMargemLucro: TCheckBox;
    OrdemDescRef: TRadioButton;
    SaldoIgualZero: TRadioButton;
    CKAtivos: TCheckBox;
    CKInativos: TCheckBox;
    TblTemporariaGrupoDescr: TStringField;
    HideMarca: TCheckBox;
    Label13: TLabel;
    EditLetraInicial: TEdit;
    Label15: TLabel;
    EditLetraFinal: TEdit;
    Label16: TLabel;
    ComboFornecedor: TRxDBLookupCombo;
    SQLFornecedor: TRxQuery;
    dsSQLFornecedor: TDataSource;
    SQLFornecedorFORNICOD: TIntegerField;
    SQLFornecedorFORNA60RAZAOSOC: TStringField;
    Label17: TLabel;
    ComboIcms: TRxDBLookupCombo;
    SQLIcms: TRxQuery;
    dsSQLIcms: TDataSource;
    SQLIcmsICMSICOD: TIntegerField;
    SQLIcmsICMSA60DESCR: TStringField;
    TblTemporariaICMSICOD: TIntegerField;
    CKCofins: TCheckBox;
    OrdemBalanca: TRadioButton;
    CKporMarca: TCheckBox;
    RadioICMS: TRadioButton;
    TblTemporariaPRODN3VLRVENDA2: TFloatField;
    ckImpVlrAtacadoVarejo: TCheckBox;
    ckCatalogoFoto: TCheckBox;
    ppCatalogoFoto: TppReport;
    Pipe: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    TblTemporariaPRODN2VLRVENDA2835D: TFloatField;
    TblTemporariaPRODN2VLRVENDA283542D: TFloatField;
    Foto: TppImage;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckPorGradeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaldoMaiorZeroClick(Sender: TObject);
    procedure CheckSaldoClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    function  SQLDeListaMarca(ListaMarca:TListBox) : String ;
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioListagemProduto: TFormRelatorioListagemProduto;

implementation

uses DataModulo, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioListagemProduto.ExecutarBtnClick(Sender: TObject);
var
 I : Integer;
begin
  inherited;
  SQLProduto.Close ;
  If CKOcultarProdNaoMovimentaEstoque.Checked then
    SQLProduto.MacroByName('MOcultar').AsString := 'PRODUTO.PRODCTIPOBAIXA <> "N"'
  Else
    SQLProduto.MacroByName('MOcultar').AsString := '0=0';

  If CheckPorGrade.Checked Then
    Begin
      SQLProduto.MacroByName('MProduto').AsString     := 'PRODUTO.PRODIAGRUPGRADE AS PRODICOD,';
      SQLProduto.MacroByName('DemaisCampos').AsString := 'PRODUTO.PRODA60DESCR,'+
                                                         'PRODUTO.PRODN3VLRVENDA,'+
                                                         'PRODUTO.PRODN3VLRVENDA2,'+
                                                         'PRODUTO.PRODN3VLRVENDAPROM,'+
                                                         'PRODUTO.PRODDINIPROMO,'+
                                                         'PRODUTO.PRODDFIMPROMO,'+
                                                         'PRODUTO.PRODN3VLRCOMPRA,'+
                                                         'PRODUTO.PRODN3VLRCUSTO,'+
                                                         'PRODUTO.ICMSICOD,'+
                                                         'PRODUTO.NCMICOD,';

      SQLProduto.MacroByName('MGroup').AsString   :=
         'Group By   PRODUTO.PRODIAGRUPGRADE,'+
                    'PRODUTO.PRODA60DESCR,'+
                    'PRODUTO.PRODN3VLRVENDA,'+
                    'PRODUTO.PRODN3VLRVENDA2,'+
                    'PRODUTO.PRODN3VLRVENDAPROM,'+
                    'PRODUTO.PRODDINIPROMO,'+
                    'PRODUTO.PRODDFIMPROMO,'+
                    'PRODUTO.PRODN3VLRCOMPRA,'+
                    'PRODUTO.PRODN3VLRCUSTO' +
                    'PRODUTO.ICMSICOD,' +
                    'PRODUTO.NCMICOD,';
    End
  Else
    Begin
      SQLProduto.MacroByName('MProduto').AsString     := 'PRODUTO.PRODICOD,';
      SQLProduto.MacroByName('DemaisCampos').AsString := 'PRODUTO.PRODA60DESCR,'+
                                                         'PRODUTO.PRODA30ADESCRREDUZ,'+
                                                         'PRODUTO.PRODA255DESCRTEC,'+
                                                         'PRODUTO.PRODCTIPOBAIXA,'+
                                                         'PRODUTO.GRUPICOD,'+
                                                         'PRODUTO.SUBGICOD,'+
                                                         'PRODUTO.VARIICOD,'+
                                                         'PRODUTO.UNIDICOD,'+
                                                         'PRODUTO.MARCICOD,'+
                                                         'PRODUTO.PRODN3VLRVENDA,'+
                                                         'PRODUTO.PRODN3VLRVENDA2,'+
                                                         'PRODUTO.PRODN2VLRVENDA2835D,'+
                                                         'PRODUTO.PRODN2VLRVENDA283542D,'+
                                                         'PRODUTO.PRODN3VLRVENDAPROM,'+
                                                         'PRODUTO.PRODDINIPROMO,'+
                                                         'PRODUTO.PRODDFIMPROMO,'+
                                                         'PRODUTO.PRODN3VLRCOMPRA,'+
                                                         'PRODUTO.PRODN3VLRCUSTO,'+
                                                         'PRODUTO.PRODN3PERCMARGLUCR as VLRMargem,'+
                                                         'PRODUTO.REGISTRO,'+
                                                         'PRODUTO.ICMSICOD,'+
                                                         'PRODUTO.NCMICOD,';
    End;

    if not CheckSaldo.Checked then
      begin
        if ComboEmpresa.KeyValue = null then
          begin
            SQLProduto.MacrobyName('MSaldo').Value := '(select sum(PRODUTOSALDO.PSLDN3QTDE) ' +
                                                      'from PRODUTOSALDO ' +
                                                      'where PRODUTOSALDO.PRODICOD = PRODUTO.PRODICOD) as Saldo';
          end
        else
          begin
            SQLProduto.MacrobyName('MSaldo').Value := '(select sum(PRODUTOSALDO.PSLDN3QTDE) ' +
                                                      'from PRODUTOSALDO ' +
                                                      'where PRODUTOSALDO.PRODICOD = PRODUTO.PRODICOD ' +
                                                      'and ('+ SQLDeLista(ComboEmpresa, ListaEmpresas, '', 'PRODUTOSALDO', 'EMPRICOD') +')) as Saldo' ;

          end;
      end
    else
      SQLProduto.MacrobyName('MSaldo').Value   := '(Cast(0 as Numeric(15,3))) as Saldo';

   //SETAR MACROS
   if ComboGrupo.KeyValue <> null then
     SQLProduto.MacroByName('MGrupo').Value := 'PRODUTO.GRUPICOD = ' + ComboGrupo.KeyValue
   else
     SQLProduto.MacroByName('MGrupo').Value := '0=0';

   if ComboSubGrupo.KeyValue <> null then
     SQLProduto.MacroByName('MSubGrupo').Value := 'PRODUTO.SUBGICOD = ' + ComboSubGrupo.KeyValue
   else
     SQLProduto.MacroByName('MSubGrupo').Value := '0=0';

   if ComboVariacao.KeyValue <> null then
     SQLProduto.MacroByName('MVariacao').Value := 'PRODUTO.VARIICOD = ' + ComboVariacao.KeyValue
   else
     SQLProduto.MacroByName('MVariacao').Value := '0=0';

   SQLProduto.MacrobyName('MMarca').Value  := SQLDeListaMarca(ListaMarca) ;

   if ComboGrade.KeyValue <> null then
     SQLProduto.MacroByName('MGrade').Value := 'PRODUTO.GRADICOD = ' + ComboGrade.KeyValue
   else
     SQLProduto.MacroByName('MGrade').Value := '0=0';

   if ComboUnidade.KeyValue <> null then
     SQLProduto.MacroByName('MUnidade').Value := 'PRODUTO.UNIDICOD = ' + ComboUnidade.KeyValue
   else
     SQLProduto.MacroByName('MUnidade').Value := '0=0';

   if AlteradosDE.Date > 0 then
     SQLProduto.MacroByName('MAlterados').Value := 'PRODUTO.REGISTRO >= "' + FormatDateTime('mm/dd/yyyy 00:00:00',AlteradosDE.Date) + '" AND ' +
                                                   'PRODUTO.REGISTRO <= "' + FormatDateTime('mm/dd/yyyy 23:59:00',AlteradosATE.Date) + '"'
   else
     SQLProduto.MacroByName('MAlterados').Value := '0=0';


  {   SQLProduto.MacroByName('MLetras').Value := 'PRODUTO.PRODA60DESCR >= "' + EditLetraInicial.Text + '"' +
                                                ' AND PRODUTO.PRODA60DESCR <= "' + EditLetraFinal.Text + '"'}

   if (EditLetraInicial.Text <> '') and (EditLetraFinal.Text <> '') then
     SQLProduto.MacroByName('MLetras').Value := 'PRODUTO.PRODA60DESCR Between "' + EditLetraInicial.Text  +'"'+
                                                ' AND "' + EditLetraFinal.Text + '"'
   else
     SQLProduto.MacroByName('MLetras').Value := '0=0';

   if ComboFornecedor.KeyValue <> null then
     SQLProduto.MacroByName('MFornecedor').Value := 'PRODUTO.PRODICOD IN (Select PRODICOD From PRODUTOFORNECEDOR Where FORNICOD = '+ComboFornecedor.Value+')'
   else
     SQLProduto.MacroByName('MFornecedor').Value := '0=0';

   if ComboIcms.KeyValue <> null then
     SQLProduto.MacroByName('MIcms').Value := 'PRODUTO.ICMSICOD = '+ ComboIcms.Value
   else
     SQLProduto.MacroByName('MIcms').Value := '0=0';

  If not CheckPorGrade.Checked Then
    begin
      if OrdemCodigo.Checked then
        SQLProduto.MacroByName('MOrdem').Value := ' order by PRODUTO.PRODICOD ' ;
      if OrdemDescricao.Checked then
        SQLProduto.MacroByName('MOrdem').Value := ' order by PRODUTO.PRODA60DESCR ' ;
      if OrdemRef.Checked then
        SQLProduto.MacroByName('MOrdem').Value := ' order by PRODUTO.PRODA60REFER ' ;
      if OrdemCodAntigo.Checked then
        SQLProduto.MacroByName('MOrdem').Value := ' order by PRODUTO.PRODA15CODANT ' ;
      if OrdemBalanca.Checked then
        SQLProduto.MacroByName('MOrdem').Value := ' order by PRODUTO.PRODICODBALANCA ' ;
    end;
  if OrdemDescRef.Checked then
    SQLProduto.MacroByName('MOrdem').Value := ' order by PRODUTO.PRODA60DESCR,PRODUTO.PRODA60REFER ' ;

  if RadioImpCodBarras.Checked then
    SQLProduto.MacroByName('CodProduto').Value := 'PRODUTO.PRODA60CODBAR as CodProduto,';
  if RadioImpCodAntigo.Checked then
    SQLProduto.MacroByName('CodProduto').Value := 'PRODUTO.PRODA15CODANT as CodProduto,';

  if RadioImpRefer.Checked then
    SQLProduto.MacroByName('CodProduto').Value := 'PRODUTO.PRODA60REFER as CodProduto,';

  if RadioImpCodBalanca.Checked then
    SQLProduto.MacroByName('CodProduto').Value := 'PRODUTO.PRODICODBALANCA as CodProduto,';

  if RadioICMS.Checked then
    SQLProduto.MacroByName('CodProduto').Value := 'ICMS.ICMSA60DESCR as CodProduto,';

  SQLProduto.MacroByName('MAtivos').Value := '0=0';

  if CKAtivos.Checked then
    SQLProduto.MacroByName('MAtivos').Value := 'PRODUTO.PRODCATIVO = "S"';

  if CKInativos.Checked then
    SQLProduto.MacroByName('MAtivos').Value := 'PRODUTO.PRODCATIVO = "N"';

   if CKCofins.Checked then
     SQLProduto.MacroByName('MCofins').Value := 'PRODUTO.PRODCCOFINS = "S"'
   else
     SQLProduto.MacroByName('MCofins').Value := '0=0';

  // showmessage(SQLProduto.realsql.Text);
  SQLProduto.Open ;
  if (SQLProduto.IsEmpty) then
    begin
      Showmessage('Não existem dados para ser impressos!');
      Abort;
    end;

  while not SQLProduto.Eof do
    begin
      TblTemporaria.Append ;
      TblTemporariaPRODICOD.AsString               := sqlproduto.FieldByName('PRODICOD').AsString;
      TblTemporariaCodProduto.AsString             := sqlproduto.FieldByName('CodProduto').AsString;
      TblTemporariaGRUPICOD.AsString               := sqlproduto.FieldByName('GRUPICOD').AsString;
      TblTemporariaPRODA60DESCR.AsString           := sqlproduto.FieldByName('PRODA60DESCR').AsString;
      TblTemporariaPRODA30ADESCRREDUZ.AsString     := sqlproduto.FieldByName('PRODA30ADESCRREDUZ').AsString;
      TblTemporariaPRODA255DESCRTEC.AsString       := sqlproduto.FieldByName('PRODA255DESCRTEC').AsString;
      TblTemporariaPRODCTIPOBAIXA.AsString         := sqlproduto.FieldByName('PRODCTIPOBAIXA').AsString;
      TblTemporariaPRODDFIMPROMO.AsDateTime        := sqlproduto.FieldByName('PRODDFIMPROMO').AsDateTime;
      TblTemporariaPRODDINIPROMO.AsDateTime        := sqlproduto.FieldByName('PRODDINIPROMO').AsDateTime;
      TblTemporariaPRODN3VLRCOMPRA.AsString        := sqlproduto.FieldByName('PRODN3VLRCOMPRA').AsString;
      TblTemporariaPRODN3VLRCUSTO.AsString         := sqlproduto.FieldByName('PRODN3VLRCUSTO').AsString;
      TblTemporariaPRODN3VLRVENDA.AsString         := sqlproduto.FieldByName('PRODN3VLRVENDA').AsString;
      TblTemporariaPRODN3VLRVENDA2.AsString        := sqlproduto.FieldByName('PRODN3VLRVENDA2').AsString;
      TblTemporariaPRODN2VLRVENDA2835D.AsString    := sqlproduto.FieldByName('PRODN2VLRVENDA2835D').AsString;
      TblTemporariaPRODN2VLRVENDA283542D.AsString  := sqlproduto.FieldByName('PRODN2VLRVENDA283542D').AsString;
      TblTemporariaPRODN3VLRVENDAPROM.AsString     := sqlproduto.FieldByName('PRODN3VLRVENDAPROM').AsString;
      TblTemporariaVLRMargem.AsString              := sqlproduto.FieldByName('VLRMARGEM').AsString;
      TblTemporariaREGISTRO.AsDateTime             := sqlproduto.FieldByName('REGISTRO').AsDateTime;
      TblTemporariaSALDO.AsString                  := sqlproduto.FieldByName('SALDO').AsString;
      TblTemporariaSUBGICOD.AsString               := sqlproduto.FieldByName('SUBGICOD').AsString;
      TblTemporariaVARIICOD.AsString               := sqlproduto.FieldByName('VARIICOD').AsString;
      TblTemporariaICMSICOD.AsString               := sqlproduto.FieldByName('ICMSICOD').AsString;
      TblTemporariaUnidadeDesc5.AsString           := dm.SQLLocate('UNIDADE','UNIDICOD','UNIDA5DESCR',SQLPRODUTO.FieldByName('UNIDICOD').AsString);
      if RadioICMS.Checked then
        TblTemporariaMarcaDescr.AsString           := dm.SQLLocate('NCM','NCMICOD','NCMA30CODIGO',SQLPRODUTO.FieldByName('NCMICOD').AsString)
      else
        TblTemporariaMarcaDescr.AsString           := dm.SQLLocate('MARCA','MARCICOD','MARCA60DESCR',SQLPRODUTO.FieldByName('MARCICOD').AsString);

      TblTemporariaGrupoDescr.AsString             := dm.SQLLocate('GRUPO','GRUPICOD','GRUPA60DESCR',SQLPRODUTO.FieldByName('GRUPICOD').AsString);
      if CheckDetalhe.Checked then
        begin
          SQLCorTamanho.Close;
          SQLCorTamanho.Open;
          TblTemporaria.FieldByName('CORA30DESCR').AsString := SQLCorTamanho.FieldByName('CORA30DESCR').AsString;
          TblTemporaria.FieldByName('GRTMA5DESCR').AsString := SQLCorTamanho.FieldByName('GRTMA5DESCR').AsString;
        end;
      TblTemporaria.Post;
      SQLProduto.Next;
    end;
    if CheckDetalhe.Checked then
      begin
        if ckImpVlrAtacadoVarejo.Checked then
          begin
            Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem de Produtos com Preco Atacado e Varejo.rpt';
            Report.ReportTitle       := 'Listagem de Produtos com Preco de Atacado e Varejo' ;
            Report.WindowStyle.Title := 'Listagem de Produtos com Preco de Atacado e Varejo' ;
          end
        else
          begin
            Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem de Produtos Detalhada.rpt' ;
            Report.ReportTitle       := 'Listagem de Produtos Detalhada' ;
            Report.WindowStyle.Title := 'Listagem de Produtos Detalhada' ;
          end;
        //SETAR FORMULAS NO RPT
        Report.Formulas.Retrieve ;
        //--------------------------------------------------------------------------\\
        Report.Formulas.Name         := 'Emissao' ;
        Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
        //--------------------------------------------------------------------------\\
        Report.Formulas.Name := 'Grupo' ;
        if ComboGrupo.Text <> '' then
          Report.Formulas.Formula.Text := '"' + ComboGrupo.Text + '"'
        else
          Report.Formulas.Formula.Text := '"Todos"' ;
        //--------------------------------------------------------------------------\\
        Report.Formulas.Name := 'SubGrupo' ;
        if ComboSubGrupo.Text <> '' then
          Report.Formulas.Formula.Text := '"' + ComboSubGrupo.Text + '"'
        else
          Report.Formulas.Formula.Text := '"Todos"' ;
        //--------------------------------------------------------------------------\\
        Report.Formulas.Name := 'Variacao' ;
        if ComboVariacao.Text <> '' then
          Report.Formulas.Formula.Text := '"' + ComboVariacao.Text + '"'
        else
          Report.Formulas.Formula.Text := '"Todos"' ;
        //--------------------------------------------------------------------------\\
        Report.Formulas.Name := 'Marca' ;
        if SQLDeListaMarca(ListaMarca) <> '' then
          Report.Formulas.Formula.Text := '"' + SQLDeListaMarca(ListaMarca) + '"'
        else
          Report.Formulas.Formula.Text := '"Todos"' ;
        //--------------------------------------------------------------------------\\
        Report.Formulas.Name := 'Grade' ;
        if ComboGrade.Text <> '' then
          Report.Formulas.Formula.Text := '"' + ComboGrade.Text + '"'
        else
          Report.Formulas.Formula.Text := '"Todos"' ;
        //--------------------------------------------------------------------------\\
        Report.Formulas.Name := 'Unidade' ;
        if ComboUnidade.Text <> '' then
          Report.Formulas.Formula.Text := '"' + ComboUnidade.Text + '"'
        else
          Report.Formulas.Formula.Text := '"Todos"' ;
        //--------------------------------------------------------------------------\\
        Report.Formulas.Name := 'OrdemImpressao' ;
        if OrdemCodigo.Checked then
          Report.Formulas.Formula.Text := '"Código"' ;
        if OrdemDescricao.Checked then
          Report.Formulas.Formula.Text := '"Descrição"' ;
        if OrdemRef.Checked then
          Report.Formulas.Formula.Text := '"Referência"' ;
      end
    else
      begin
        if not CKporGrupo.Checked then
          begin
            if not CKEspecialMargemLucro.Checked then
              begin
                Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem de Produtos.rpt';
                Report.ReportTitle       := 'Listagem de Produtos' ;
                Report.WindowStyle.Title := 'Listagem de Produtos' ;
              end
            else
              begin
                Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem de Produtos com Margem.rpt';
                Report.ReportTitle       := 'Listagem de Produtos com Margem' ;
                Report.WindowStyle.Title := 'Listagem de Produtos com Margem' ;
              end;
            if CKCofins.Checked then
              begin
                Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem de Produtos Cofins Isentos.rpt';
                Report.ReportTitle       := 'Listagem de Produtos com Cofins e IPI Isentos' ;
                Report.WindowStyle.Title := 'Listagem de Produtos com Cofins e IPI Isentos' ;
              end;
            if CKCofins.Checked then
              begin
                Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem de Produtos Cofins Isentos.rpt';
                Report.ReportTitle       := 'Listagem de Produtos com Cofins e IPI Isentos' ;
                Report.WindowStyle.Title := 'Listagem de Produtos com Cofins e IPI Isentos' ;
              end;
            if CKporMarca.Checked then
              begin
                Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem de Produtos Sem Degrade Quebra por Marca.rpt';
                Report.ReportTitle       := 'Listagem de Produtos por Marca' ;
                Report.WindowStyle.Title := 'Listagem de Produtos por Marca' ;
              end;
            if ckImpVlrAtacadoVarejo.Checked then
              begin
                Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem de Produtos com Preco Atacado e Varejo.rpt';
                Report.ReportTitle       := 'Listagem de Produtos com Preco de Atacado e Varejo' ;
                Report.WindowStyle.Title := 'Listagem de Produtos com Preco de Atacado e Varejo' ;
              end;
          end
        else
          Report.ReportName := DM.SQLConfigGeralCFGEA255PATHREPORT.Value + '\Listagem de Produtos Sem Degrade Quebra por Grupo.rpt';
        //SETAR FORMULAS NO RPT
        Report.Formulas.Retrieve ;
        //--------------------------------------------------------------------------\\
          Report.Formulas.Name         := 'Emissao' ;
        Report.Formulas.Formula.Text := '"' + FormatDateTime('dd/mm/yyyy hh:mm:ss', Now) + '"' ;
        //--------------------------------------------------------------------------\\
        Report.Formulas.Name := 'Grupo' ;
        if ComboGrupo.Text <> '' then
          Report.Formulas.Formula.Text := '"' + ComboGrupo.Text + '"'
        else
          Report.Formulas.Formula.Text := '"Todos"' ;
        //--------------------------------------------------------------------------\\
        Report.Formulas.Name := 'SubGrupo' ;
        if ComboSubGrupo.Text <> '' then
          Report.Formulas.Formula.Text := '"' + ComboSubGrupo.Text + '"'
        else
          Report.Formulas.Formula.Text := '"Todos"' ;
        //--------------------------------------------------------------------------\\
        Report.Formulas.Name := 'Variacao' ;
        if ComboVariacao.Text <> '' then
          Report.Formulas.Formula.Text := '"' + ComboVariacao.Text + '"'
        else
          Report.Formulas.Formula.Text := '"Todos"' ;
        //--------------------------------------------------------------------------\\
        Report.Formulas.Name := 'Marca' ;
        if ComboMarca.Text <> '' then
          Report.Formulas.Formula.Text := '"' + ComboMarca.Text + '"'
        else
          Report.Formulas.Formula.Text := '"Todos"' ;
        //--------------------------------------------------------------------------\\
        Report.Formulas.Name := 'Grade' ;
        if ComboGrade.Text <> '' then
          Report.Formulas.Formula.Text := '"' + ComboGrade.Text + '"'
        else
          Report.Formulas.Formula.Text := '"Todos"' ;
        //--------------------------------------------------------------------------\\
        Report.Formulas.Name := 'Unidade' ;
        if ComboUnidade.Text <> '' then
          Report.Formulas.Formula.Text := '"' + ComboUnidade.Text + '"'
        else
          Report.Formulas.Formula.Text := '"Todos"' ;
        //--------------------------------------------------------------------------\\
        Report.Formulas.Name := 'OrdemImpressao' ;
        if OrdemCodigo.Checked then
          Report.Formulas.Formula.Text := '"Código"' ;
        if OrdemDescricao.Checked then
          Report.Formulas.Formula.Text := '"Descrição"' ;
        if OrdemRef.Checked then
          Report.Formulas.Formula.Text := '"Referência"' ;

      end;

  if SaldoMaiorZero.Checked then
  begin
    SQLGeralProd.Close ;
    SQLGeralProd.SQL.Clear ;
    SQLGeralProd.SQL.Add('delete from') ;
    SQLGeralProd.SQL.Add('RelListagemProduto.db') ;
    SQLGeralProd.SQL.Add('where Saldo <= 0') ;
    SQLGeralProd.ExecSQL ;
  end ;

  if SaldoMenorZero.Checked then
  begin
    SQLGeralProd.Close ;
    SQLGeralProd.SQL.Clear ;
    SQLGeralProd.SQL.Add('delete from') ;
    SQLGeralProd.SQL.Add('RelListagemProduto.db') ;
    SQLGeralProd.SQL.Add('where Saldo >= 0') ;
    SQLGeralProd.ExecSQL ;
  end ;

  if SaldosDiferenteZero.Checked then
  begin
    SQLGeralProd.Close ;
    SQLGeralProd.SQL.Clear ;
    SQLGeralProd.SQL.Add('delete from') ;
    SQLGeralProd.SQL.Add('RelListagemProduto.db') ;
    SQLGeralProd.SQL.Add('where Saldo = 0') ;
    SQLGeralProd.ExecSQL ;
  end ;

  if SaldoIgualZero.Checked then
  begin
    SQLGeralProd.Close ;
    SQLGeralProd.SQL.Clear ;
    SQLGeralProd.SQL.Add('delete from') ;
    SQLGeralProd.SQL.Add('RelListagemProduto.db') ;
    SQLGeralProd.SQL.Add('where Saldo <> 0') ;
    SQLGeralProd.ExecSQL ;
  end ;

  if HidePrcCompra.Checked then
  begin
    SQLGeralProd.Close ;
    SQLGeralProd.SQL.Clear ;
    SQLGeralProd.SQL.Add('update RelListagemProduto.db') ;
    SQLGeralProd.SQL.Add('set PRODN3VLRCOMPRA = 0') ;
    SQLGeralProd.ExecSQL ;
  end ;

  if HidePrcVenda.Checked then
  begin
    SQLGeralProd.Close ;
    SQLGeralProd.SQL.Clear ;
    SQLGeralProd.SQL.Add('update RelListagemProduto.db') ;
    SQLGeralProd.SQL.Add('set PRODN3VLRVENDA = 0') ;
    SQLGeralProd.ExecSQL ;
  end ;

  if HideMarca.Checked then
  begin
    SQLGeralProd.Close ;
    SQLGeralProd.SQL.Clear ;
    SQLGeralProd.SQL.Add('update RelListagemProduto.db') ;
    SQLGeralProd.SQL.Add('set MarcaDescr = ""') ;
    SQLGeralProd.ExecSQL ;
  end ;

  if ckCatalogoFoto.Checked then
    begin
      ppCatalogoFoto.Print;
    end
  else
    Report.Execute ;
end;

procedure TFormRelatorioListagemProduto.FormCreate(Sender: TObject);
begin
  inherited;
  SQLGrupo.Open;
  SQLSubGrupo.Open;
  SQLVariacao.Open;
  SQLMarca.Open;
  SQLGrade.Open;
  SQLUnidade.Open;
  SQLFornecedor.Open;
  SQLIcms.Open;
end;

procedure TFormRelatorioListagemProduto.CheckPorGradeClick(
  Sender: TObject);
begin
  inherited;
  OrdemDescricao.Enabled := Not CheckPorGrade.Checked;
  OrdemCodigo.Enabled    := Not CheckPorGrade.Checked;
  If Not OrdemDescricao.Enabled Then
    Begin
      OrdemDescricao.Checked := True;
      OrdemCodigo.Checked    := False;
    End;
end;

procedure TFormRelatorioListagemProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  TblTemporaria.Close;
end;

procedure TFormRelatorioListagemProduto.SaldoMaiorZeroClick(
  Sender: TObject);
begin
  inherited;
  if CheckSaldo.Checked then
    begin
      Informa('Para selecionar somente produtos com saldo positivo, você deve desmarcar a opção de ocultar "Saldo de Estoque". O sistema fará isso automaticamente !');
      CheckSaldo.Checked := False;
    end;
end;

procedure TFormRelatorioListagemProduto.CheckSaldoClick(Sender: TObject);
begin
  inherited;
  if SaldoMaiorZero.Checked then
    begin
      Informa('Para selecionar ocultar "Saldo de Estoque", você deve desmarcar a opção de "Somente Produtos com Saldo Positivo". O sistema fará isso automaticamente !');
      SaldoMaiorZero.Checked := False;
    end;
end;

procedure TFormRelatorioListagemProduto.SpeedButton3Click(Sender: TObject);
var i : integer ;
begin
  inherited;
  if ComboMarca.Value <> 'Todas' then
  begin
    for i := 0 to ListaMarca.Items.Count-1 do
      if ListaMarca.Items.Strings[i] = ComboMarca.Text then
        exit ;

    ListaMarca.Items.Add(ComboMarca.Text) ;
  end ;

end;

procedure TFormRelatorioListagemProduto.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if ListaMarca.Items.Count > 0 then
    ListaMarca.Items.Delete(ListaMarca.ItemIndex) ;

end;

Function TFormRelatorioListagemProduto.SQLDeListaMarca(ListaMarca:TListBox) : String ;
var i   : integer ;
    SQLMarca : string ;
begin
  if ListaMarca.Items.Count = 0 then
  begin
    if (ComboMarca.Text <> '') and (ComboMarca.Text <> 'Todas')then
      SQLMarca := 'PRODUTO.MARCICOD = ' +  ComboMarca.Value
    else
      SQLMarca := '0=0' ;
  end
  else begin
    SQLMarca := '' ;
    for I:=0 To ListaMarca.Items.Count-1 Do
    begin
      if I = ListaMarca.Items.Count-1 Then
        SQLMarca := SQLMarca + 'PRODUTO.MARCICOD = ' + '"' + Copy(ListaMarca.Items[I],1,Pos('-',ListaMarca.Items[I]) - 1) + '"'
      else
        SQLMarca := SQLMarca + 'PRODUTO.MARCICOD = ' + '"' + Copy(ListaMarca.Items[I],1,Pos('-',ListaMarca.Items[I]) - 1) + '"' + ' or '
    end ;
  end ;

  SQLDeListaMarca := SQLMarca ;
end ;

procedure TFormRelatorioListagemProduto.ppDetailBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
 // Corrigir a chamada -> Foto.Picture.LoadFromFile();
end;

end.
