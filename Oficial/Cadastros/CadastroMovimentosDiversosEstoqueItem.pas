unit CadastroMovimentosDiversosEstoqueItem;

interface

uses
  FormResources, VarSYS, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadastroTEMPLATE, DBActns, ActnList, ImgList, DB, DBTables,
  RxQuery, Menus, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls,
  RXCtrls, Buttons, jpeg, DBCtrls, ppCtrls, ppVar, ppPrnabl, ppClass, ppDB,
  ppBands, ppCache, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, Placemnt,
  ToolEdit, CurrEdit, EDBNum, Serial, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvPanel ;

type
  TFormCadastroMovimentosDiversosEstoqueItem = class(TFormCadastroTEMPLATE)
    SQLTemplateMOVDA13ID: TStringField;
    SQLTemplateMVDIIITEM: TIntegerField;
    SQLTemplatePRODICOD: TIntegerField;
    SQLTemplatePENDENTE: TStringField;
    SQLTemplateREGISTRO: TDateTimeField;
    SQLTemplateMVDIN3QTD: TFloatField;
    SQLTemplateProdutoLookup: TStringField;
    SQLTemplateLOTEA30NRO: TStringField;
    MnImprimirItens: TMenuItem;
    ReportItens: TppReport;
    ppDBPipeline: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    Qtde: TppDBText;
    ppDBText4: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel7: TppLabel;
    MnImportaritensdocoletor: TMenuItem;
    SQLCor: TRxQuery;
    SQLCorCORICOD: TIntegerField;
    SQLCorCORA30DESCR: TStringField;
    DSSQLCor: TDataSource;
    GroupBox1: TGroupBox;
    AcessaProduto: TSpeedButton;
    DBEdit11: TDBEdit;
    SQLTemplatePRODIAGRUPGRADE: TIntegerField;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    MnNumerosdeSerie: TMenuItem;
    SQLTemplateControlaSerieLookup: TStringField;
    DBGrid1: TDBGrid;
    SQLItens: TRxQuery;
    DSSQLItens: TDataSource;
    SQLItensMOVDA13ID: TStringField;
    SQLItensMVDIIITEM: TIntegerField;
    SQLItensPRODICOD: TIntegerField;
    SQLItensProdutoLookup: TStringField;
    SQLItensMVDIN3QTD: TFloatField;
    SQLItensPENDENTE: TStringField;
    SQLItensREGISTRO: TDateTimeField;
    SQLItensLOTEA30NRO: TStringField;
    SQLItensPRODIAGRUPGRADE: TIntegerField;
    Label5: TLabel;
    Visualizargradedoproduto1: TMenuItem;
    FormStorage1: TFormStorage;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    LabelLote: TLabel;
    DBEditLote: TDBEdit;
    CheckGrade: TCheckBox;
    SQLItensPRODA60REFER: TStringField;
    SQLItensPRODA60CODBAR: TStringField;
    LSaldo: TLabel;
    SaldoAtual: TCurrencyEdit;
    SQLGeral: TRxQuery;
    DBEditQtde: TEvDBNumEdit;
    SQLTemplateReferenciaLookup: TStringField;
    SQLTemplatePRODN3VLRCOMPRA: TFloatField;
    SQLTemplatePRODN3VLRVENDA: TFloatField;
    DBEdit1: TDBEdit;
    DBEditCompra: TEvDBNumEdit;
    Label3: TLabel;
    Label4: TLabel;
    EvDBNumVenda: TEvDBNumEdit;
    EditCdProduto: TEdit;
    Label1: TLabel;
    Label49: TLabel;
    EditReferencia: TEdit;
    Label50: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SQLTemplateCalcFields(DataSet: TDataSet);
    procedure AcessaProdutoClick(Sender: TObject);
    procedure SQLTemplateNewRecord(DataSet: TDataSet);
    procedure DSTemplateDataChange(Sender: TObject; Field: TField);
    procedure SQLTemplateBeforePost(DataSet: TDataSet);
    procedure SQLTemplateLOTEA30NROChange(Sender: TField);
    procedure MnImprimirItensClick(Sender: TObject);
    procedure MnImportaritensdocoletorClick(Sender: TObject);
    procedure SQLTemplatePRODICODChange(Sender: TField);
    procedure DSTemplateStateChange(Sender: TObject);
    procedure MnNumerosdeSerieClick(Sender: TObject);
    procedure SQLTemplateBeforeDelete(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EditProdutoEnter(Sender: TObject);
    procedure SQLItensCalcFields(DataSet: TDataSet);
    procedure SQLTemplateAfterPost(DataSet: TDataSet);
    procedure Visualizargradedoproduto1Click(Sender: TObject);
    procedure SQLTemplateBeforeEdit(DataSet: TDataSet);
    procedure SQLTemplateBeforeInsert(DataSet: TDataSet);
    procedure DBEditQtdeExit(Sender: TObject);
    procedure EditCdProdutoEnter(Sender: TObject);
    procedure EditReferenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQLTemplateMVDIN3QTDChange(Sender: TField);
    procedure EditCdProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditQtdeEnter(Sender: TObject);
    procedure EvDBNumVendaExit(Sender: TObject);
    procedure EditReferenciaEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroMovimentosDiversosEstoqueItem: TFormCadastroMovimentosDiversosEstoqueItem;

implementation

uses DataModulo, CadastroProdutos, UnitLibrary, TelaImportaItens, TelaConsultaProdutoGeral,
  TelaLancamentoGradeMovto, TelaProdutoNumeroSerieTEMP, SearchLibrary;
{$R *.dfm}

procedure TFormCadastroMovimentosDiversosEstoqueItem.FormCreate(
  Sender: TObject);
begin
  inherited;
  Tabela := 'MOVIMENTODIVERSOITEM' ;
  if not SQLItens.Active then SQLItens.Open;
   MnNumerosdeSerie.Enabled := DSMasterTemplate.DataSet.FieldByName('MOVDCCONLUIDO').AsString = 'N';
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.SQLTemplateCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if Dm.GerandoMovtoDiverso then exit;

  if DataSet.FieldByName('PRODICOD').AsVariant <> Null then
    begin
      if DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) then
        begin
          DataSet.FieldByName('ProdutoLookup').AsVariant := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;
          if (DM.SQLTemplate.FindField('GRADICOD').AsVariant <> Null) and (DM.SQLTemplate.FindField('GRTMICOD').AsVariant <> Null) then
            begin
               DataSet.FieldByName('ProdutoLookup').AsVariant := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                                 ' / ' + RetornaTamanhoProduto(DM.SQLTemplate.FindField('GRADICOD').AsString,
                                                                                               DM.SQLTemplate.FindField('GRTMICOD').AsString);

            end;

          if DM.SQLTemplate.FindField('CORICOD').AsVariant <> Null then
            begin
              DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                                 ' / ' + RetornaCorProduto(DM.SQLTemplate.FindField('CORICOD').AsString);
            end;

          DataSet.FieldByName('PRODIAGRUPGRADE').AsVariant  := DM.SQLTemplate.FindField('PRODIAGRUPGRADE').AsVariant;
          ProdutoAgrupGrade_MovDiv := DM.SQLTemplate.FindField('PRODIAGRUPGRADE').AsVariant;
          DataSet.FieldByName('ControlaSerieLookup').AsVariant := DM.SQLTemplate.FindField('PRODCTEMNROSERIE').AsVariant;
        end
      else
        begin
          DataSet.FieldByName('ProdutoLookup').asString        := MensagemLookUp;
          DataSet.FieldByName('ControlaSerieLookup').AsVariant := Null;
        end;
    end
  else
    begin
      DataSet.FieldByName('ProdutoLookup').AsVariant       := Null;
      DataSet.FieldByName('ControlaSerieLookup').AsVariant := Null;
    end;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.AcessaProdutoClick(
  Sender: TObject);
begin
  inherited;
  FieldLookup  := SQLTemplate.FindField('PRODICOD');
  FieldOrigem := 'PRODICOD';
  EditReferencia.SetFocus;
          CriaFormulario(TFormCadastroProduto,'FormCadastroProduto',False,True,False,'');
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.SQLTemplateNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FindField('MOVDA13ID').Value    := DataSet.DataSource.DataSet.FindField('MOVDA13ID').Value ;
  DataSet.FindField('MVDIN3QTD').AsFloat  := 1;
  EditCdProduto.Clear;
end ;

procedure TFormCadastroMovimentosDiversosEstoqueItem.DSTemplateDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;
  LabelLote.Visible    := DM.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S';
  DbEditLote.Visible   := DM.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S';
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.SQLTemplateBeforePost(
  DataSet: TDataSet);
begin
  if SQLTemplatePRODICOD.AsString = '' then
    begin
      Informa('O Produto não foi informado. Tente novamente !');
      SQLTemplatePRODICOD.FocusControl;
      Abort;
    end;
  if SQLTemplateMVDIN3QTD.Value = 0 then
    begin
      Informa('A Quantidade não foi informada. Tente novamente !');
      SQLTemplatePRODICOD.FocusControl;
      Abort;
    end;

  if SQLTemplateLOTEA30NRO.AsString <> '' then
    if SQLLocate('LOTE','LOTEA30NRO','LOTEA30NRO','''' + SQLTemplateLOTEA30NRO.AsString + '''') = '' then
      begin
        Informa('O número de lote informado está incorreto ou não foi cadastrado. Tente novamente !');
        SQLTemplateLOTEA30NRO.FocusControl;
        Abort;
      end;

  if (DM.SQLConfigGeralCFGECESTOQUEPORLOTE.AsString = 'S') and (SQLTemplateLOTEA30NRO.AsString = '') then
    if Application.MessageBox('O número do lote não foi informado, Deseja continuar mesmo assim ?','Advanced Control',MB_YESNO + MB_SYSTEMMODAL + MB_SETFOREGROUND + MB_ICONQUESTION + MB_DEFBUTTON1)= iDNo then
      begin
        SQLTemplateLOTEA30NRO.FocusControl;
        Abort;
      end;

  if SQLTemplateControlaSerieLookup.AsVariant <> Null then
    if SQLTemplateControlaSerieLookup.AsString = 'S' then
      begin
        Application.CreateForm(TFormTelaGeralModalCadastroProdutoNumeroSerieTEMP,FormTelaGeralModalCadastroProdutoNumeroSerieTEMP);
        FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.SQLProdutoSerie.Close;
        FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.SQLProdutoSerie.MacroByName('MFiltro').AsString := 'MOVDA13ID = ''' + SQLTemplateMOVDA13ID.AsString + ''' AND PRODICOD = ' + SQLTemplatePRODICOD.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.SQLProdutoSerie.Open;
        FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.CodProduto    := SQLTemplatePRODICOD.AsInteger;
        FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.Destino       := 'E';
        FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.IDMovDiverso  := SQLTemplateMOVDA13ID.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.CodEmpresa    := DSMasterTemplate.DataSet.FieldByName('EMPRICOD').AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.LabelTitulo.Caption := FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.LabelTitulo.Caption + ' - ' + SQLTemplateProdutoLookUp.AsString;
        FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.LabelTitulo.Update;
        FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.QtdeSerie     := SQLTemplateMVDIN3QTD.AsInteger;
        FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.ShowModal;
        if FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.ModalResult = MrCancel then
          Abort;
        FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.Destroy;
      end;

  inherited;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.SQLTemplateLOTEA30NROChange(
  Sender: TField);
begin
  inherited;
  if (Sender as TField).AsString <> '' then
    if SQLLocate('LOTE','LOTEA30NRO','LOTEA30NRO','''' + SQLTemplateLOTEA30NRO.AsString + '''') = '' then
      begin
        Informa('O número de lote informado está incorreto ou não foi cadastrado. Tente novamente !');
        SQLTemplateLOTEA30NRO.FocusControl;
      end;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.MnImprimirItensClick(
  Sender: TObject);
begin
  inherited;
  ReportItens.Print;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.MnImportaritensdocoletorClick(
  Sender: TObject);
begin
  inherited;
  if DSMasterTemplate.DataSet.FieldByName('MOVDCCONLUIDO').AsString = 'N' then
    begin
      Application.CreateForm(TFormTelaImportaItens,FormTelaImportaItens);
      FormTelaImportaItens.SetParams(SQLTemplate,'MVDIN3QTD',
                                     SQLTemplate.DataSource.DataSet.FieldByName('EMPRICOD').AsInteger,
                                     1,
                                     SQLTemplate.DataSource.DataSet.FieldByName('MOVDDMOVIMENTO').AsDateTime );
      FormTelaImportaItens.ShowModal;
    end
  else
    begin
      Informa('Este movimento já foi encerrado, não é possível incluir produtos !');
      Abort;
    end;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.SQLTemplatePRODICODChange(
  Sender: TField);
begin
  inherited;
  EditCdProduto.Text := (Sender as TField).AsString;
  if SQLTemplatePRODICOD.AsVariant <> Null then
    begin
      SaldoAtual.Value := 0 ;
      if not FileExists('NaoMostraSaldoConsultaProduto.Arq') then
        begin
          SQLGeral.Close ;
          SQLGeral.SQL.Clear ;
          SQLGeral.SQL.Add('select PSLDN3QTDE, PSLDN3QTDMIN, PSLDN3QTDMAX from PRODUTOSALDO') ;
          SQLGeral.SQL.Add('where EMPRICOD = ' + EmpresaPadrao) ;
          SQLGeral.SQL.Add('and   PRODICOD = ' + SQLTemplate.FieldByName('PRODICOD').AsString) ;
          SQLGeral.Open ;
          if not SQLGeral.Eof then
            begin
              SaldoAtual.Font.Color := clBlack ;
              SaldoAtual.Value := SQLGeral.FieldByName('PSLDN3QTDE').asFloat;
              if SQLGeral.FieldByName('PSLDN3QTDMIN').Value > 0 then
                if SQLGeral.FieldByName('PSLDN3QTDMIN').Value > SQLGeral.FieldByName('PSLDN3QTDE').Value then
                  SaldoAtual.Font.Color := clRed ;
              if SQLGeral.FieldByName('PSLDN3QTDMAX').Value > 0 then
                if SQLGeral.FieldByName('PSLDN3QTDMAX').Value < SQLGeral.FieldByName('PSLDN3QTDE').Value then
                  SaldoAtual.Font.Color := clBlue ;
            end ;
          SQLGeral.Close ;
        end ;
    end;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.DSTemplateStateChange(
  Sender: TObject);
begin
  inherited;
  if (DSMasterTemplate.DataSet.FindField('MOVDCCONLUIDO').AsString = 'S') or
     ((UsuarioCorrente <>  DSMasterTemplate.DataSet.FieldByName('USUAICOD').AsInteger) and (DSMasterTemplate.DataSet.FieldByName('USUAICOD').AsVariant <> null)) then
       DesabilitarBotoes(True,True,True,True,True);
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.MnNumerosdeSerieClick(
  Sender: TObject);
begin
  inherited;
  if SQLTemplateControlaSerieLookup.AsVariant <> Null then
    begin
      if SQLTemplateControlaSerieLookup.AsString = 'S' then
        begin
          Application.CreateForm(TFormTelaGeralModalCadastroProdutoNumeroSerieTEMP,FormTelaGeralModalCadastroProdutoNumeroSerieTEMP);
          FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.SQLProdutoSerie.Close;
          FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.SQLProdutoSerie.MacroByName('MFiltro').AsString := 'MOVDA13ID = ''' + SQLTemplateMOVDA13ID.AsString + ''' AND PRODICOD = ' + SQLTemplatePRODICOD.AsString;
          FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.SQLProdutoSerie.Open;
          FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.CodProduto    := SQLTemplatePRODICOD.AsInteger;
          FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.Destino       := 'E';
          FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.IDMovDiverso  := SQLTemplateMOVDA13ID.AsString;
          FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.CodEmpresa    := DSMasterTemplate.DataSet.FieldByName('EMPRICOD').AsString;
          FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.LabelTitulo.Caption := FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.LabelTitulo.Caption + ' - ' + SQLTemplateProdutoLookUp.AsString;
          FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.LabelTitulo.Update;
          FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.ShowModal;
          FormTelaGeralModalCadastroProdutoNumeroSerieTEMP.Destroy;
        end;
    end
  else
    begin
      Informa('Este produto não foi configurado para controlar o número de série!');
    end;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.SQLTemplateBeforeDelete(
  DataSet: TDataSet);
begin
 if DSMasterTemplate.DataSet.fieldbyname('EMPRICOD').AsString <> EmpresaPadrao then
    begin
      Informa('Esta movimentação foi realizada em outra Filial, portanto, não pode ser excluida !');
      Abort;
    end;

  inherited;
  // Deleta Numero de serie
  DeletaNumeroSerie(SQLTemplatePRODICOD.AsString,'','',SQLTemplateMOVDA13ID.AsString);
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.FormKeyPress(
  Sender: TObject; var Key: Char);
begin
  if (((Sender as TForm).ActiveControl <> EditCdProduto))
     or ((Application.FindComponent('FormTelaConsultaProduto') = nil)
         and ( Application.FindComponent('FormTelaLancamentoGradeMovto') = nil)) then
  inherited;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.EditProdutoEnter(
  Sender: TObject);
begin
  inherited;
  EditCdProduto.SelectAll;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.SQLItensCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('PRODICOD').AsVariant <> null then
    begin
      if DM.ProcuraRegistro('PRODUTO',['PRODICOD'],[DataSet.FieldByName('PRODICOD').AsString],1) then
        begin
          DataSet.FieldByName('ProdutoLookup').AsVariant    := DM.SQLTemplate.FindField('PRODA60DESCR').AsVariant;
          if (DM.SQLTemplate.FindField('GRADICOD').AsVariant <> NULL) and (DM.SQLTemplate.FindField('GRTMICOD').AsVariant <> NULL) then
                DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                                   ' / ' + RetornaTamanhoProduto(DM.SQLTemplate.FindField('GRADICOD').AsString,
                                                                                                 DM.SQLTemplate.FindField('GRTMICOD').AsString);
          if DM.SQLTemplate.FindField('CORICOD').AsVariant <> NULL then
              DataSet.FieldByName('ProdutoLookup').AsVariant  := DataSet.FieldByName('ProdutoLookup').AsVariant +
                                                               ' / ' + RetornaCorProduto(DM.SQLTemplate.FindField('CORICOD').AsString);

          DataSet.FieldByName('PRODA60REFER').AsVariant     := DM.SQLTemplate.FindField('PRODA60REFER').AsVariant;
          DataSet.FieldByName('PRODA60CODBAR').AsVariant    := DM.SQLTemplate.FindField('PRODA60CODBAR').AsVariant;
          DataSet.FieldByName('PRODIAGRUPGRADE').AsVariant  := DM.SQLTemplate.FindField('PRODIAGRUPGRADE').AsVariant;
        end
      else
        begin
          DataSet.FieldByName('ProdutoLookup').asString        := MensagemLookUp;
        end;
    end
  else
    begin
      DataSet.FieldByName('ProdutoLookup').AsVariant       := Null;
    end;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.SQLTemplateAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  SQLItens.Close;
  SQLItens.Open;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.Visualizargradedoproduto1Click(
  Sender: TObject);
begin
  inherited;
  if SQLTemplatePRODICOD.AsVariant <> Null then
    begin
      if (SQLLocate('PRODUTO','PRODICOD','GRADICOD',SQLTemplatePRODICOD.AsString) <> '') then
        CriaFormulario(TFormTelaLancamentoGradeMovto,'FormTelaLancamentoGradeMovto',False,False,True,'');
    end;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.SQLTemplateBeforeEdit(
  DataSet: TDataSet);
begin
 if DSMasterTemplate.DataSet.fieldbyname('EMPRICOD').AsString <> EmpresaPadrao then
    begin
      Informa('Esta movimentação foi realizada em outra Filial, portanto, não pode ser alterada !');
      Abort;
    end;
  inherited;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.SQLTemplateBeforeInsert(
  DataSet: TDataSet);
begin
 if DSMasterTemplate.DataSet.fieldbyname('EMPRICOD').AsString <> EmpresaPadrao then
    begin
      Informa('Esta movimentação foi realizada em outra Filial, portanto, não pode ser alterada !');
      Abort;
    end;

  inherited;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.DBEditQtdeExit(
  Sender: TObject);
begin
  inherited;
  If DSTemplate.DataSet.State in dsEditModes Then
    begin
      SQLTemplatePRODN3VLRCOMPRA.AsString := SQLLocate('PRODUTO','PRODICOD','PRODN3VLRCOMPRA',SQLTemplatePRODICOD.AsString);
      SQLTemplatePRODN3VLRVENDA.AsString  := SQLLocate('PRODUTO','PRODICOD','PRODN3VLRVENDA',SQLTemplatePRODICOD.AsString);
    end;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.EditCdProdutoEnter(
  Sender: TObject);
begin
  inherited;
  EditCdProduto.SelectAll;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.EditReferenciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  ProdutoDescricao  := '';
  ProdutoReferencia := '';
  if Key = VK_F2 then
    AcessaProduto.Click;
  if Key = VK_RETURN then
    begin
      if (SQLTemplate.State in DSEditModes) then
        begin
          ProdutoDescricao  := EditCdProduto.Text;
          ProdutoReferencia := EditReferencia.Text;
          EditReferencia.Text := '';
          if FindProduct(EditCdProduto,SQLTemplate.FieldByName('PRODICOD')) then
            EditReferencia.SetFocus;
        end;
    end;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.SQLTemplateMVDIN3QTDChange(
  Sender: TField);
begin
  inherited;
  if (Frac(SQLTemplateMVDIN3QTD.asFloat)>0) and (DSTemplate.State in dseditmodes) then
    begin
      if SQLLocate('UNIDADE','UNIDICOD','UNIDCFRAC',SQLLocate('PRODUTO','PRODICOD','UNIDICOD', SQLTemplatePRODICOD.AsString)) = 'N' then
        begin
          ShowMessage('Este Produto não permite Quantidade Fracionada!') ;
          SQLTemplateMVDIN3QTD.asFloat := 0;
          DBEditQtde.SetFocus;
        end;
    end ;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.EditCdProdutoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    AcessaProduto.Click;
  if Key = VK_F3 then
    begin
      FieldLookup := SQLTemplate.FieldByName('PRODICOD');
      FieldOrigem := 'PRODICOD';
      CriaFormulario(TFormTelaConsultaProdutoGeral,'FormTelaConsultaProdutoGeral',False,True,True,'');
    end;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.DBEditQtdeEnter(
  Sender: TObject);
begin
  inherited;
  if SQLTemplate.FieldByName('PRODICOD').AsString <> '' then
    if (not CheckGrade.Checked) and (DSTemplate.State = dsInsert) then
      if (SQLLocate('PRODUTO','PRODICOD','GRADICOD',SQLTemplate.FieldByName('PRODICOD').AsString) <> '') then
         CriaFormulario(TFormTelaLancamentoGradeMovto,'FormTelaLancamentoGradeMovto',False,False,True,'');
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.EvDBNumVendaExit(
  Sender: TObject);
begin
  inherited;
  if (SQLTemplate.State in ([dsInsert, dsEdit])) then
  begin
    LabelGravar.Click;
    LabelNovo.Click;
  end;
end;

procedure TFormCadastroMovimentosDiversosEstoqueItem.EditReferenciaEnter(
  Sender: TObject);
begin
  inherited;
  if FileExists('Rede.txt') then
  begin
    if (SQLTemplate.State in DSEditModes) then
    begin
      ProdutoDescricao  := EditCdProduto.Text;
      ProdutoReferencia := EditReferencia.Text;
      EditReferencia.Text := '';
      if FindProduct(EditCdProduto,SQLTemplate.FieldByName('PRODICOD')) then
        EditReferencia.SetFocus;
    end;
    DBEditQtde.SetFocus;
  end;

end;

end.
