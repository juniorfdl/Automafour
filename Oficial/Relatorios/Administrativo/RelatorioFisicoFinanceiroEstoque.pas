unit RelatorioFisicoFinanceiroEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelatorioTemplate, RxQuery, StdCtrls, DBTables, Placemnt, DB,
  ComCtrls, Mask, ToolEdit, RxLookup, ExtCtrls, Buttons, jpeg, UCrpe32,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls,
  ppPrnabl, ppBands, ppCache, ppVar, ppViewr, ppModule, Grids,
  DBGrids, AdvOfficeStatusBar, AdvOfficeStatusBarStylers;

type
  TFormRelatorioFisicoFinanceiroEstoque = class(TFormRelatorioTEMPLATE)
    EditPage: TEdit;
    SQLEstoque: TRxQuery;
    LabelPage: TLabel;
    ReportRel: TppReport;
    DSSQLEstoque: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    LblTitulo: TppLabel;
    ppLabel2: TppLabel;
    Empresa: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText4: TppDBText;
    ppLabel9: TppLabel;
    VlrCusto: TppDBText;
    ppLabel10: TppLabel;
    TotCustoProd: TppDBText;
    ppDBCalc1: TppDBCalc;
    TotalCusto: TppDBCalc;
    ppLabel11: TppLabel;
    ppLine2: TppLine;
    ppLabel12: TppLabel;
    Pagina: TppLabel;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    LabelExtenso: TppLabel;
    Label5: TLabel;
    Data: TppLabel;
    EditTextoEnd: TEdit;
    ppLabel3: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel4: TppLabel;
    GroupBox2: TGroupBox;
    ComboMarca: TRxDBLookupCombo;
    SQLMarca: TRxQuery;
    DSSQLMarca: TDataSource;
    SQLMarcaMARCICOD: TIntegerField;
    SQLMarcaMARCA60DESCR: TStringField;
    RadioOrdem: TRadioGroup;
    ppLabel5: TppLabel;
    Acumulado: TppDBCalc;
    RadioCalcSobre: TRadioGroup;
    GroupBox3: TGroupBox;
    DSSQLEstoqueRetroativo: TDataSource;
    SQLEstoqueRetroativo: TRxQuery;
    ppLabel13: TppLabel;
    LblDtBase: TppLabel;
    SQLReajuste: TRxQuery;
    SQLReajustePRRJN3VLRCUSTO: TBCDField;
    SQLReajustePRRJN2VLRCOMPRA: TBCDField;
    SQLReajustePRRJN3ULTCUSTOMED: TBCDField;
    SQLReajustePRRJDREAJUSTE: TDateTimeField;
    SQLReajustePRRJVLRVENDA: TBCDField;
    ComboMes: TComboBox;
    ComboAno: TDateTimePicker;
    SQLGrupo: TRxQuery;
    SQLGrupoGRUPICOD: TIntegerField;
    SQLGrupoGRUPA60DESCR: TStringField;
    DSSQLGrupo: TDataSource;
    SQLSubGrupo: TRxQuery;
    SQLSubGrupoSUBGICOD: TIntegerField;
    SQLSubGrupoSUBGA60DESCR: TStringField;
    DSSQLSubGrupo: TDataSource;
    EditTituloRel: TEdit;
    Label6: TLabel;
    TblTemporariaPRODICOD: TIntegerField;
    TblTemporariaPRODA60DESCR: TStringField;
    TblTemporariaPRODN3VLRCUSTO: TBCDField;
    TblTemporariaPRODN3VLRCOMPRA: TBCDField;
    TblTemporariaPRODN3VLRVENDA: TBCDField;
    TblTemporariaPSLDN3QTDE: TBCDField;
    TblTemporariaTOTCUSTO: TFloatField;
    TblTemporariaTOTCOMPRA: TFloatField;
    TblTemporariaTOTVENDA: TFloatField;
    TblTemporariaUNIDICOD: TIntegerField;
    TblTemporariaUNIDA5DESCR: TStringField;
    TblTemporariaPRODN3VLRCUSTOMED: TBCDField;
    TblTemporariaTOTCUSTOMEDIO: TFloatField;
    TblTemporariaGRADICOD: TIntegerField;
    TblTemporariaGRTMICOD: TIntegerField;
    DBPipeline: TppDBPipeline;
    SQLEstoquePRODICOD: TIntegerField;
    SQLEstoquePRODA60DESCR: TStringField;
    SQLEstoquePRODN3VLRCUSTO: TBCDField;
    SQLEstoquePRODN3VLRCOMPRA: TBCDField;
    SQLEstoquePRODN3VLRVENDA: TBCDField;
    SQLEstoquePRODN3VLRCUSTOMED: TBCDField;
    SQLEstoquePSLDN3QTDE: TBCDField;
    SQLEstoqueTOTCUSTO: TFloatField;
    SQLEstoqueTOTCOMPRA: TFloatField;
    SQLEstoqueTOTVENDA: TFloatField;
    SQLEstoqueTOTCUSTOMEDIO: TFloatField;
    SQLEstoqueUNIDICOD: TIntegerField;
    SQLEstoqueUNIDA5DESCR: TStringField;
    SQLEstoqueGRADICOD: TIntegerField;
    SQLEstoqueGRTMICOD: TIntegerField;
    SQLEstoqueRetroativoPRODICOD: TIntegerField;
    SQLEstoqueRetroativoPRODA60DESCR: TStringField;
    SQLEstoqueRetroativoPRODN3VLRCUSTO: TBCDField;
    SQLEstoqueRetroativoPRODN3VLRCOMPRA: TBCDField;
    SQLEstoqueRetroativoPRODN3VLRVENDA: TBCDField;
    SQLEstoqueRetroativoPRODN3VLRCUSTOMED: TBCDField;
    SQLEstoqueRetroativoPSLDN3QTDE: TBCDField;
    SQLEstoqueRetroativoTOTCUSTO: TBCDField;
    SQLEstoqueRetroativoTOTCOMPRA: TBCDField;
    SQLEstoqueRetroativoTOTVENDA: TFloatField;
    SQLEstoqueRetroativoTOTCUSTOMEDIO: TBCDField;
    SQLEstoqueRetroativoUNIDICOD: TIntegerField;
    SQLEstoqueRetroativoUNIDA5DESCR: TStringField;
    SQLEstoqueRetroativoGRADICOD: TIntegerField;
    SQLEstoqueRetroativoGRTMICOD: TIntegerField;
    CheckMes: TCheckBox;
    ppDBCalc2: TppDBCalc;
    ppLabel1: TppLabel;
    sqlColecao: TRxQuery;
    sqlColecaoCOLEICOD: TIntegerField;
    sqlColecaoCOLEA60DESCR: TStringField;
    dsColecao: TDataSource;
    Label8: TLabel;
    ComboGrupo: TRxDBLookupCombo;
    ComboSubgrupo: TRxDBLookupCombo;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ComboColecao: TRxDBLookupCombo;
    procedure ExecutarBtnClick(Sender: TObject);
    procedure ReportRelStartPage(Sender: TObject);
    procedure ppHeaderBand1AfterGenerate(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ReportCustoMedioPreviewFormCreate(Sender: TObject);
    procedure ReportRelBeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ReportRelPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioFisicoFinanceiroEstoque: TFormRelatorioFisicoFinanceiroEstoque;

  RetornaMes: array [0..11] of string = ('01','02','03','04','05','06','07','08','09','10','11','12');
  
implementation

uses DataModulo, ExtensoLib, UnitLibrary;

{$R *.dfm}

procedure TFormRelatorioFisicoFinanceiroEstoque.ExecutarBtnClick(
  Sender: TObject);
begin
  inherited;
  if ComboEmpresa.Value = '' then
    begin
      Informa('Por favor selecione uma empresa!');
      Abort;
      Exit;
    end;

  if not CheckMes.Checked then
    begin
      BatchMove.Source :=  SQLEstoque;
      SQLEstoque.Close;

      SQLEstoque.MacroByName('Empresa').Value := SQLDeLista(ComboEmpresa,ListaEmpresas,'','ProdutoSaldo','');

      if ComboColecao.KeyValue <> null then
        SQLEstoque.MacroByName('MColecao').Value := 'PRODUTO.COLEICOD = ' + ComboColecao.Value
      else
        SQLEstoque.MacroByName('MColecao').Value := '0=0';

      if ComboMarca.Value <> '' then
        SQLEstoque.MacroByName('Marca').Value := 'PRODUTO.MARCICOD = ' + ComboMarca.Value
      else
        SQLEstoque.MacroByName('Marca').Value := '0=0';

      if ComboGrupo.Value <> '' then
        SQLEstoque.MacroByName('Grupo').AsString    := 'PRODUTO.GRUPICOD = ' + ComboGrupo.Value
      else
        SQLEstoque.MacroByName('Grupo').AsString    := '0=0';

      if ComboSubgrupo.Value <> '' then
        SQLEstoque.MacroByName('SubGrupo').AsString := 'PRODUTO.SUBGICOD = ' + ComboSubgrupo.Value
      else
        SQLEstoque.MacroByName('SubGrupo').AsString := '0=0';

      case RadioOrdem.ItemIndex of
        0 : SQLEstoque.MacroByName('CampoOrdem').Value := 'Produto.PRODICOD';
        1 : SQLEstoque.MacroByName('CampoOrdem').Value := 'Produto.PRODA60DESCR';
      end;

      SQLEstoque.Open;
      if (SQLEstoque.IsEmpty) then
        begin
          Showmessage('Não existem dados para ser impressos!');
          Abort;
        end;
    end
  else
    begin
      BatchMove.Source :=  SQLEstoqueRetroativo;

      SQLEstoqueRetroativo.Close;

      SQLEstoqueRetroativo.MacroByName('MEmpresaSaldo').Value := SQLDeLista(ComboEmpresa,ListaEmpresas,'','PRODUTOSALDO','EMPRICOD');

      SQLEstoqueRetroativo.MacroByName('Mes').AsString   := 'PSMEA2MES = "'   + RetornaMes[ComboMes.ItemIndex] + '"';

      SQLEstoqueRetroativo.MacroByName('Ano').AsString   := 'PSMEA4ANO = "' + FormatDateTime('yyyy', ComboAno.Date) + '"';

      SQLEstoqueRetroativo.Open;
      if (SQLEstoqueRetroativo.IsEmpty) then
        begin
          Showmessage('Não existem dados para ser impressos!');
          Abort;
        end;

      if ComboMarca.Value <> '' then
        SQLEstoqueRetroativo.MacroByName('Marca').Value := 'Produto.MARCICOD = ' + ComboMarca.Value
      else
        SQLEstoqueRetroativo.MacroByName('Marca').Value := '0=0';

      if ComboGrupo.Value <> '' then
        SQLEstoqueRetroativo.MacroByName('Grupo').AsString    := 'PRODUTO.GRUPICOD = ' + ComboGrupo.Value
      else
        SQLEstoqueRetroativo.MacroByName('Grupo').AsString    := '0=0';

      if ComboSubgrupo.Value <> '' then
        SQLEstoqueRetroativo.MacroByName('SubGrupo').AsString := 'PRODUTO.SUBGICOD = ' + ComboSubgrupo.Value
      else
        SQLEstoqueRetroativo.MacroByName('SubGrupo').AsString := '0=0';

      case RadioOrdem.ItemIndex of
        0 : SQLEstoqueRetroativo.MacroByName('CampoOrdem').Value := 'Produto.PRODICOD';
        1 : SQLEstoqueRetroativo.MacroByName('CampoOrdem').Value := 'Produto.PRODA60DESCR';
      end;

      SQLEstoqueRetroativo.Open;

      if SQLEstoqueRetroativo.IsEmpty then
        begin
          ShowMessage('Nenhum registro encontrado!');
          Abort;
        end;
    end;

    TblTemporaria.Close;
    TblTemporaria.DeleteTable;
    TblTemporaria.CreateTable;

    BatchMove.Execute;

  // Coloca cor e tamanho
  TblTemporaria.Open;
  TblTemporaria.First;
  while not TblTemporaria.eof do
    begin
      TblTemporaria.Edit;
      TblTemporariaPRODA60DESCR.Value   := TblTemporariaPRODA60DESCR.Value+'/'+dm.SQLLocate('COR','CORICOD','CORA30DESCR',dm.SQLLocate('PRODUTO','PRODICOD','CORICOD',TblTemporariaPRODICOD.AsString));
      if(TblTemporariaGRADICOD.AsString <> '') and (TblTemporariaGRTMICOD.AsString <> '') then
        TblTemporariaPRODA60DESCR.Value   := TblTemporariaPRODA60DESCR.Value+'/'+RetornaTamanhoProduto(TblTemporariaGRADICOD.AsString,TblTemporariaGRTMICOD.AsString);
      TblTemporaria.Post;
      TblTemporaria.Next;
    end;
  TblTemporaria.Close;

  if EditPage.Text <> '' then
    Pagina.Caption := IntToStr(StrToInt(EditPage.Text)-1)
  else
    Pagina.Caption := IntToStr(1);

  ReportRel.Print;
end;

procedure TFormRelatorioFisicoFinanceiroEstoque.ReportRelStartPage(
  Sender: TObject);
begin
  inherited;
  if ReportRel.Page = 1 then
    begin
      if EditPage.Text <> '' then
        Pagina.Caption := IntToStr(StrToInt(EditPage.Text)-1)
      else
        Pagina.Caption := IntToStr(1);
    end;
end;

procedure TFormRelatorioFisicoFinanceiroEstoque.ppHeaderBand1AfterGenerate(
  Sender: TObject);
begin
  inherited;
  Pagina.Caption := IntToStr(StrToInt(Pagina.Caption) + 1);
end;

procedure TFormRelatorioFisicoFinanceiroEstoque.ppSummaryBand1BeforePrint(
  Sender: TObject);
begin
  inherited;
  Empresa.Caption := ComboEmpresa.Text;
  ValorExtenso(VExt,TotalCusto.Value,'', '', 02, 300, '*',3);
//  TblDuplicatasExtensoLin2.AsString           := VExt[1];
  LabelExtenso.Caption := VExt[0];
  Data.Caption := EditTextoEnd.Text;
end;

procedure TFormRelatorioFisicoFinanceiroEstoque.ReportCustoMedioPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  (Sender as TppReport).PreviewForm.WindowState := wsMaximized ;
  TppViewer((Sender as TppReport).PreviewForm.Viewer).ZoomPercentage := 100;
end;

procedure TFormRelatorioFisicoFinanceiroEstoque.ReportRelBeforePrint(
  Sender: TObject);
begin
  inherited;
  if RadioCalcSobre.ItemIndex >= 0 then
    case RadioCalcSobre.ItemIndex of
      0 : begin
            TotCustoProd.DataField := 'TotCustoMedio';
            VlrCusto.DataField     := 'PRODN3VLRCUSTOMED';
            TotalCusto.DataField   := 'TotCustoMedio';
            Acumulado.DataField    := 'TotCustoMedio';
          end;
      1 : begin
            TotCustoProd.DataField := 'TOTCOMPRA';
            VlrCusto.DataField     := 'PRODN3VLRCOMPRA';
            TotalCusto.DataField   := 'TOTCOMPRA';
            Acumulado.DataField    := 'TOTCOMPRA';
          end;
      2 : begin
            TotCustoProd.DataField := 'TOTCUSTO';
            VlrCusto.DataField     := 'PRODN3VLRCUSTO';
            TotalCusto.DataField   := 'TOTCUSTO';
            Acumulado.DataField    := 'TOTCUSTO';
          end;
    end;
    
  if CheckMes.Checked then
    LblDtBase.Caption := ComboMes.Text
  else
    LblDtBase.Caption := FormatDateTime('dd/mm/yyyy',Now);

  if EditTituloRel.Text <> '' then
    LblTitulo.Caption := EditTituloRel.Text
  else
    LblTitulo.Caption := 'Relatório Posição Físico Financeira de Estoque';
end;

procedure TFormRelatorioFisicoFinanceiroEstoque.FormCreate(
  Sender: TObject);
begin
  inherited;
  if not sqlColecao.Active then sqlColecao.Open;
  if not SQLMarca.Active then SQLMarca.Open;
  ComboEmpresa.KeyValue := EmpresaPadrao;
  if not SQLGrupo.Active then SQLGrupo.Open;
  if not SQLSubGrupo.Active then SQLSubGrupo.Open; 
end;

procedure TFormRelatorioFisicoFinanceiroEstoque.ReportRelPreviewFormCreate(
  Sender: TObject);
begin
  inherited;
  (Sender as TppReport).PreviewForm.WindowState := wsMaximized ;
  TppViewer((Sender as TppReport).PreviewForm.Viewer).ZoomPercentage := 100 ;
end;

end.
